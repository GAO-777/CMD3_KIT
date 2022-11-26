/*
длина пакета вклчает: длину пакета 2 байта + тип сервиса 2 байта + адрес и данные 0...n байт + конечный спец. символ 8 байт. Т.е. мин. длина пакета 12 байт

+------------------------+--------------+-------------+---------+----------+----+------------------------+
|			12           |    2 байта   |    2 байта  | 2 байта | 2 байта  |    |       ?                |
| начальный спец. символ | длина пакета | тип сервиса |  адрес  |  данные  |... |  конечный спец. символ |
+------------------------+--------------+-------------+---------+----------+----+------------------------+
минимальная длина пакета 12 байт

invert strobe to use this FT245R module with FT232H device
ПРОВЕРИТЬ  FT_WR!!!!!!!!!!!!!!!
*/
module USB_RAM_Reg
#(
	parameter DEVICE = "FT245R" // or FT232H
)
(
	input  FT_TXEn,				// Можно записать данные в FIFO	 				
	input  FT_RXFn,				// Можно прочитать данные из FIFO				
	output FT_RDn,				// Запрос на чтение			
	output FT_WR,				// Запрос на запись 
	input  [7:0]FT_DATA_In,		
	output [7:0]FT_DATA_Out,	

	output FT_ZZ,
	output USB_Active,
	output Header_recognized,
	output Trailer_recognized,

	output Packet_Proc,
	output RAM_WE,
	
	
	// Standard Bus signaling for Master/Slave connection
			// General Signals
	input  clk,
	input  [15:0]DataBus_In,
	output [15:0]DataBusOut,
	input  DataBusStrobe, 
	output Error,

	// Master Mode Signals 
	output AccessRequest,
	input AccessGranted,
	output DirectOut,
	output [15:0]AddrBusOut,

	// Slave Mode Signals	
	input Select,
	input Direct_In,
	input [8:0]AddrBus_In
);

// FT245R timing
parameter RD_END_CYCLE_TIME 	= 	25; //+2clocks in begig and 1clk at end on resynchro
parameter RD_SAMPLE_TIME		=	9; 
parameter RD_STROBE_START_TIME	=	2; 
parameter RD_STROBE_STOP_TIME	=	12; 

/*
// FT23H timing, FS mode
parameter RD_END_CYCLE_TIME		=	6; //+2clocks in beging and 1clk at end on resynchro
parameter RD_SAMPLE_TIME		=	4; 
parameter RD_STROBE_START_TIME	=	1; 
parameter RD_STROBE_STOP_TIME	=	5; 
*/


parameter WR_END_CYCLE_TIME		=	25; 
parameter WR_STROBE_START_TIME	=	5; 
parameter WR_STROBE_STOP_TIME	=	15; 
parameter WR_ZZZ_START_TIME		=	2; 
parameter WR_ZZZ_STOP_TIME		=	22; 

parameter BYTE_WIDTH			=	8; 
parameter WORD_WIDTH			=	16; 

parameter [(BYTE_WIDTH-1):0]HEADER_KEY_SYMBOL 	=	85;
parameter HEADER_KEY_SYMBOL_NUMBER			  	=	12;
parameter [(BYTE_WIDTH-1):0]TRAILER_KEY_SYMBOL	=	170;
parameter TRAILER_KEY_SYMBOL_NUMBER				=	8;
parameter [(BYTE_WIDTH-1):0]ERROR_SYMBOL        =   'hEE; 

parameter NUM_WORDS_RAM	= 2048; 

//=============================================================================
//					Nets
//=============================================================================
logic error;

// Процедура чтения одного слова
logic rxf_edge;
logic [2:0]rxf_delay;
logic start_read;	
logic rd_cycle_is_active; 
logic rd_strobe;
logic [(BYTE_WIDTH-1):0]rd_timing_cnt = '0;
logic [7:0]ft_inbus_buffer = '0;

// Управление процессом обработки пакета
logic sample_enable;						// Сигнализирует о пришедшем байте
logic packet_is_in_progress;				// Принимается пакет
logic [(WORD_WIDTH-1):0]byte_number_cnt; 	// подсчитывает кол-во пришедших байт
logic packet_length_is_wrong;
logic receive_error;						// Ошибка при приеме посылки
// Определение начального спец. символа
logic [3:0]h_key_cnt=0;
logic header_locked;
logic header_recognized;					// спец символ зафиксирован
// Определение конечного спец. символа
logic [3:0]t_key_cnt;
logic trailer_locked;
logic trailer_recognized;

// Процесс заполнения контрольных регистров
logic [(BYTE_WIDTH-1):0]length_of_packet_l; 
logic [(BYTE_WIDTH-1):0]length_of_packet_h;	
logic [(WORD_WIDTH-1):0]length_of_packet; 		// Кол-во байт в посылке
logic length_is_wrong;							// Кол-во байт в посылке меньше допустимой
logic [(BYTE_WIDTH-1):0]service_type_l;
logic [(BYTE_WIDTH-1):0]service_type_h;
logic [(WORD_WIDTH-1):0]service_type;
logic [(BYTE_WIDTH-1):0]load_data_l;
logic [(BYTE_WIDTH-1):0]load_data_h;
logic [(WORD_WIDTH-1):0]load_data;
// Запись принятых данных в память
logic ram_filling_is_in_progress;
logic ram_filling;
logic ram_from_usb_we;

//RAM & Command List control
logic [10:0] addr_page_offset;
logic [10:0] data_page_offset;
logic [(WORD_WIDTH-1):0] fast_module_buffer;
logic [(WORD_WIDTH-1):0]usb_cmdl_ram_out;

// Процедура записи одного слова
logic [7:0]ft_outbus_buffer;
logic [7:0]output_buffer;
logic [7:0]output_data;
logic wr_cycle_is_active;
logic [(BYTE_WIDTH-1):0]wr_timing_counter;
logic wr_strobe;

// Отправка данных в FT_FIFO
logic rd_paket_end_edge;
logic [2:0]packet_prog_delay;
logic [4:0]sample_enable_cnt;
logic ft_txen;
logic [(WORD_WIDTH-1):0]out_buff_byte_number_cnt;
logic command_list_has_control;

// Отправка ответной посылки
logic command_list_end_control;
logic [(WORD_WIDTH-1):0]usb_cmdl_ram_addr_cnt;
logic ram_addr_cnt_en;
logic usb_cmdl_ram_addr_cnt_en;

// Управление шиной данных 
logic wr_to_go;
logic rd_to_go;
logic condition_access_request;
logic [(WORD_WIDTH-1):0]data_path;
logic [(WORD_WIDTH-1):0]databusout_wire;
logic directout_wire;



//=============================================================================
//					Процедура чтения одного слова
//=============================================================================
/*
	FT выставляет сигнал о готовности (FT_RXFn) новых данных.
	Фиксируем фронт этого сигнала и начинаем цикл чтения одного слова.
	Запускается счетчик, по которому по временным отметкам выставляется строб для чтения (FT_RDn) 
		и защелкиваются параллельные данные с FIFO памяти.
*/

always_ff @(posedge clk) begin
// Фиксируем фронт FT_RXFn. Т.е. можно прочитать данные из FIFO 
	rxf_delay[0] <= ~FT_RXFn;
	rxf_delay[2:1] <= rxf_delay[1:0];
	rxf_edge <= rxf_delay[0] & ~rxf_delay[1];
end

assign 	start_read = rxf_edge; // | rd_to_go;

SRFFE 			RD_Active_SRTrig
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(start_read), 
	.r			(rd_timing_cnt == RD_END_CYCLE_TIME), 
	.q			(rd_cycle_is_active)
);

SRFFE 			RD_Strob_SRFF
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(rd_timing_cnt == RD_STROBE_START_TIME), 
	.r			(rd_timing_cnt == RD_STROBE_STOP_TIME), 
	.q			(rd_strobe)
);

always_ff @(posedge clk) begin
	if(~rd_cycle_is_active)
		rd_timing_cnt <= '0;
	else
		rd_timing_cnt <= rd_timing_cnt + 1'b1;
	
	if(rd_timing_cnt == RD_SAMPLE_TIME)
		ft_inbus_buffer	<= FT_DATA_In;
end

assign FT_RDn = ~rd_strobe;
	
	
//=============================================================================
//					Определение начального спец. символа
//=============================================================================
/*
	Header считается зафиксированным в случе, 
		если счетчик достчитает до HEADER_KEY_SYMBOL_NUMBER.
	Считчик сбрасывается в 0, если в Header содержит хотя бы один
		не спец. символ.
*/
always_ff @(posedge clk) begin

	if(sample_enable)
		h_key_cnt <= h_key_cnt + 1'b1;
	if(header_locked | (ft_inbus_buffer != HEADER_KEY_SYMBOL))
		h_key_cnt <= '0;

	header_locked <= (h_key_cnt == HEADER_KEY_SYMBOL_NUMBER);
end

assign header_recognized = header_locked;

//=============================================================================
//					Определение конечного спец. символа
//=============================================================================
/* Аналогично Header'y*/
always_ff @(posedge clk) begin

	if(sample_enable)
		t_key_cnt <= t_key_cnt + 1'b1;
	if(trailer_locked | (ft_inbus_buffer != TRAILER_KEY_SYMBOL))
		t_key_cnt <= '0;

	trailer_locked <= (t_key_cnt == TRAILER_KEY_SYMBOL_NUMBER);
end

assign trailer_recognized = trailer_locked;  

//=============================================================================
//					Управление процессом обработки пакета
//=============================================================================	
/*
	byte_number_cnt подсчитывает кол-во пришедших байт.
	Если подсчитанное кол-во байт превышает кол-во байт указанное а посылке,
		то пакет считвется невалидным.
*/
always_ff @(posedge clk) begin	
	sample_enable <= (rd_timing_cnt == RD_SAMPLE_TIME+1);

	// Счетчик подсчитывает кол-во байт в пакете
	if(rd_timing_cnt == RD_SAMPLE_TIME+2)
		byte_number_cnt <= byte_number_cnt +1'b1;
	if(~packet_is_in_progress)
		byte_number_cnt <= '0;
end

assign packet_length_is_wrong = (byte_number_cnt > length_of_packet) ? '1 : '0;  

SRFFE PACKET_PROGRESS
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(header_locked), 
	.r			(trailer_locked | error), 
	.q			(packet_is_in_progress)
);

assign Packet_Proc = packet_is_in_progress; 



// - - - Флаг ошибки - - - //
assign error	=   packet_length_is_wrong | length_is_wrong;

SRFFE RECEIVE_ERROR
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(header_locked), 
	.r			(error), 
	.q			(receive_error)
);		

//=============================================================================
//				Процесс заполнения контрольных регистров
//=============================================================================	

// - - - Кол-во байт в пакете - - - //	
always_ff @(posedge clk) begin
if(sample_enable & (byte_number_cnt==0) & packet_is_in_progress)
	length_of_packet_l <= ft_inbus_buffer;  
if(sample_enable & (byte_number_cnt==1) & packet_is_in_progress)
	length_of_packet_h <= ft_inbus_buffer;  
end

assign length_of_packet = {length_of_packet_h,length_of_packet_l}; 
assign length_is_wrong = (length_of_packet<12) & (sample_enable & (byte_number_cnt == 2));  

// - - - Тип сервиса - - - //	
always_ff @(posedge clk) begin
if(sample_enable & (byte_number_cnt==2) & packet_is_in_progress)
	service_type_l <= ft_inbus_buffer;
if(sample_enable & (byte_number_cnt==3) & packet_is_in_progress)	
	service_type_h <= ft_inbus_buffer;
end

assign service_type = {service_type_h,service_type_l};

// - - - Load_Data - - - //	
always_ff @(posedge clk) begin
if(sample_enable & (~byte_number_cnt[0]) & packet_is_in_progress)
	load_data_l <= ft_inbus_buffer;
if(sample_enable & (byte_number_cnt[0]) & packet_is_in_progress)	
	load_data_h <= ft_inbus_buffer;
end

assign load_data = {load_data_h,load_data_l};

//=============================================================================
//				Запись принятых данных в память
//=============================================================================	
SRFFE 			RAM_FILLING_PROGRESS
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(sample_enable & (byte_number_cnt==0)), 
	.r			(byte_number_cnt == length_of_packet), 
	.q			(ram_filling_is_in_progress)
);

assign ram_filling = ram_filling_is_in_progress;

assign ram_from_usb_we = sample_enable & ram_filling_is_in_progress 
						 & ~byte_number_cnt[0] & packet_is_in_progress;

assign RAM_WE = ram_from_usb_we; 

//=============================================================================
//				RAM & Command List control
//=============================================================================	

Dual_Port_RAM		
#(
	.WORD_WIDTH		(16),
	.ADDR_WIDTH		(11),
	.NUM_WORDS		(NUM_WORDS_RAM)
)
					USB_CMDL_RAM
(
	.clk			(clk),
	// port A
	.addr_a			(command_list_has_control ? addr_page_offset : byte_number_cnt[11:1]), 
	.data_a			(load_data),
	.wren_a			(ram_from_usb_we),
	.q_a			(AddrBusOut),
	// port B
	.addr_b			(Select ? {2'b0,AddrBus_In} : data_page_offset),
	.data_b			(DataBus_In),
	.wren_b			(Select & Direct_In & DataBusStrobe &  AddrBus_In[8]), // ЗАЧЕМ AddrBus_In[8]???????? 
	.q_b			(usb_cmdl_ram_out)
);

assign addr_page_offset = (usb_cmdl_ram_addr_cnt[11:1] + 'd1); 
assign data_page_offset = (usb_cmdl_ram_addr_cnt[11:1] + 'd2); 

always_ff @(posedge clk) 
if(DataBusStrobe & AccessGranted)
	fast_module_buffer <= DataBus_In; 


//=============================================================================
//				Процедура записи одного слова
//=============================================================================
always_ff @(posedge clk)
if(~wr_cycle_is_active)
	wr_timing_counter <= '0;	

SRFFE 			WR_Cycle_is_Active
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(byte_strobe /*| WR_to_Go*/), 
	.r			(wr_timing_counter == WR_END_CYCLE_TIME), 
	.q			(wr_cycle_is_active)
);

SRFFE 			WR_STROBE
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(wr_timing_counter == RD_STROBE_START_TIME),
	.r			(wr_timing_counter == RD_STROBE_STOP_TIME), 
	.q			(wr_strobe)
);

SRFFE 			WR_ZZZ
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(wr_timing_counter == WR_ZZZ_Start_Time),
	.r			(wr_timing_counter == WR_ZZZ_Stop_Time), 
	.q			(FT_ZZ)
);

assign FT_DATA_Out = ft_outbus_buffer;
//assign FT_WR = (DEVICE == "FT245R") ?  wr_strobe : ~wr_strobe;  
assign FT_WR = wr_strobe;   
assign USB_Active = rd_cycle_is_active | wr_cycle_is_active;  

//=============================================================================
//	   Отправка данных в FT_FIFO после опознания конечного спец. символа
//=============================================================================

// определяем конец работы процедуры приема пакета данных
always_ff @(posedge clk) begin
	packet_prog_delay[0] <= packet_is_in_progress;
	packet_prog_delay[2:1] <= packet_prog_delay[1:0];
	rd_paket_end_edge <= ~packet_prog_delay[1] & packet_prog_delay[2]; 
	
	if(command_list_has_control)
		sample_enable_cnt <= sample_enable_cnt +1'b1;
	if(rd_paket_end_edge | byte_strobe)
		sample_enable_cnt <= '0;
		
	ft_txen <= FT_TXEn;
end

assign byte_strobe = ((sample_enable_cnt >= WR_END_CYCLE_TIME+1) & ~ft_txen) ? 1'b1 : 1'b0;

SRFFE 			COMMAND_LIST_HAS_CONTROL
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(rd_paket_end_edge),
	.r			(command_list_end_control), 
	.q			(command_list_has_control)
);

always_ff @(posedge clk) begin
	if(byte_strobe)
		out_buff_byte_number_cnt <= out_buff_byte_number_cnt +1'b1;
	if(~command_list_has_control)
		out_buff_byte_number_cnt <= '0;
end


always_ff @(posedge clk) begin 
	ft_outbus_buffer <= output_buffer;
	
	if(byte_strobe)
		output_buffer <= output_data;
end

//=============================================================================
// 						Отправка ответной посылки
//=============================================================================

always_comb begin

	// Отправляем HEADER 
	if(out_buff_byte_number_cnt >= 0 
		& out_buff_byte_number_cnt < HEADER_KEY_SYMBOL_NUMBER)
		output_data = HEADER_KEY_SYMBOL;
		
		
	// Отправляем кол-во байт посылки
	if(out_buff_byte_number_cnt == HEADER_KEY_SYMBOL_NUMBER)
		output_data = length_of_packet[7:0];
	if(out_buff_byte_number_cnt == HEADER_KEY_SYMBOL_NUMBER +1)
		output_data = length_of_packet[15:8];
		
		
	// Отправляем тип сервиса
	if(out_buff_byte_number_cnt == HEADER_KEY_SYMBOL_NUMBER +2)
		if(receive_error)
			output_data = ERROR_SYMBOL;
		else
			output_data = service_type[7:0]; 
	if(out_buff_byte_number_cnt == HEADER_KEY_SYMBOL_NUMBER +3)
		if(receive_error)
			output_data = ERROR_SYMBOL;
		else
			output_data = service_type[15:8]; 
	
	// Отправляем данные
	if( (out_buff_byte_number_cnt >= HEADER_KEY_SYMBOL_NUMBER +4) 
			& out_buff_byte_number_cnt <= (HEADER_KEY_SYMBOL_NUMBER + length_of_packet - TRAILER_KEY_SYMBOL_NUMBER))
		if(usb_cmdl_ram_addr_cnt[0] == 0)
			output_data = data_path[7:0]; 
		else
			output_data = data_path[15:8];  
	
	
	// Отправляем конечный спец. символ
	if ( (out_buff_byte_number_cnt > HEADER_KEY_SYMBOL_NUMBER+length_of_packet-TRAILER_KEY_SYMBOL_NUMBER)
			& (out_buff_byte_number_cnt <= HEADER_KEY_SYMBOL_NUMBER+length_of_packet))
		output_data = TRAILER_KEY_SYMBOL; 
end

always_ff @(posedge clk) begin
	if(byte_strobe & usb_cmdl_ram_addr_cnt_en)
		usb_cmdl_ram_addr_cnt <= usb_cmdl_ram_addr_cnt +1'b1;
	if(rd_paket_end_edge)
		usb_cmdl_ram_addr_cnt <= '0;
end

assign ram_addr_cnt_en = (out_buff_byte_number_cnt == HEADER_KEY_SYMBOL_NUMBER) ? 
										1'b1 : 1'b0; 

SRFFE 			USB_CMDL_RAM_ADDR_CNT_EN
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(ram_addr_cnt_en),
	.r			(command_list_end_control), 
	.q			(usb_cmdl_ram_addr_cnt_en)
);

assign command_list_end_control = (out_buff_byte_number_cnt >= HEADER_KEY_SYMBOL_NUMBER+length_of_packet) ?
									1'b1 : 1'b0;  

//=============================================================================
// 					Управление шиной данных 
//=============================================================================

always_comb begin

	if(~AddrBus_In[8] & (Select == 1'b1))	// модуль работает в режиме Slave 
		case(AddrBus_In[7:0])
			0 : databusout_wire = service_type;
			
			1 : begin
				rd_to_go = (Select & DataBusStrobe);
				databusout_wire = '0;
				end
				
			2 : begin
				databusout_wire[0] = FT_TXEn;
				databusout_wire[1] = FT_RXFn;
				databusout_wire[15:2]  = '0;
				end
				
			3 : begin 
				/*Out_Buffer_Ena =(Select AND Direct_In AND DataBusStrobe);*/ 
				databusout_wire[7:0]  = output_buffer; 
				databusout_wire[15:8] = '0;
				end
			
			4 : begin 
				/*Out_Buffer_Ena =(Select AND Direct_In AND DataBusStrobe);*/ 
				wr_to_go = (Select & DataBusStrobe); 
				databusout_wire = '0;
				end
			
			5 : begin
				databusout_wire[7:0]  = output_buffer; 
				databusout_wire[15:8] = '0;
				end
			
			6 : begin
				databusout_wire[7:0]  = length_of_packet_l; 
				databusout_wire[15:8] = length_of_packet_h;
				end
			
			7 : begin
				databusout_wire[7:0]  = service_type_l; 
				databusout_wire[15:8] = service_type_h;
				end
			
			default: begin
				databusout_wire = '0; 
				wr_to_go   = '0; 
				rd_to_go   = '0; 
				/*Out_Buffer_Ena	=	GND;*/
				end
		endcase
		
	else
		databusout_wire = usb_cmdl_ram_out;
		
		
	if(receive_error) begin
		case(service_type)
			'hABCD : begin
				directout_wire = '0;
					if(usb_cmdl_ram_addr_cnt[1:0] <= 1) 
						data_path = AddrBusOut;
					else 
						data_path = fast_module_buffer; // Читаем данные из блока
				end
			
			'hCDAB : begin
					directout_wire = '1;
					data_path = AddrBusOut;
					end
				
			'hCCCC : 		// loop back test повторяем отправленные данные
					directout_wire = '0;
					
			default:
					directout_wire = '0;
		endcase
	end
	
end

assign DataBusOut = databusout_wire;
assign DirectOut = directout_wire;
// по окончанию получения пакета запускаем работу модуля USB
    
always_ff @(posedge clk)
	condition_access_request <= ( byte_strobe & ((usb_cmdl_ram_addr_cnt >= 4) 
									& (usb_cmdl_ram_addr_cnt <= length_of_packet-TRAILER_KEY_SYMBOL_NUMBER))
									& (usb_cmdl_ram_addr_cnt[1:0] == 0) & receive_error); 

	
	SRFFE 		dfdf
(
	.clrn		('1), 
	.clk		(clk), 
	.en			(1'b1), 
	.s			(condition_access_request),
	.r			(DataBusStrobe & AccessGranted), 
	.q			(AccessRequest)
);	

 
endmodule: USB_RAM_Reg