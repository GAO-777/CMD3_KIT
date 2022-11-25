/*
длина пакета вклчает: длину пакета 2 байта + тип сервиса 2 байта + адрес и данные 0...n байт + конечный спец. символ 8 байт. Т.е. мин. длина пакета 12 байт

+------------------------+--------------+-------------+---------+----------+----+------------------------+
|			12           |    2 байта   |    2 байта  | 2 байта | 2 байта  |    |       ?                |
| начальный спец. символ | длина пакета | тип сервиса |  адрес  |  данные  |... |  конечный спец. символ |
+------------------------+--------------+-------------+---------+----------+----+------------------------+
минимальная длина пакета 12 байт

*/
module USB_RAM_Reg
(
	input  clk,

	input  FT_TXEn,				// Можно записать данные в FIFO	 				
	input  FT_RXFn,				// Можно прочитать данные из FIFO				
	output FT_RDn,				// Запрос на чтение			
	output FT_WR,				// Запрос на запись 
	input  [7:0]FT_DATA_In,		
	output [7:0]FT_DATA_Out,	

	output Packet_Proc
);


// FT245R timing
parameter RD_END_CYCLE_TIME 	=	25; //+2clocks in begig and 1clk at end on resynchro
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

parameter HEADER_KEY_SYMBOL			=	85;
parameter HEADER_KEY_SYMBOL_NUMBER	=	12;
parameter TRAILER_KEY_SYMBOL		=	170;
parameter TRAILER_KEY_SYMBOL_NUMBER	=	8;
parameter ERROR_SYMBOL              =   'hEE; 


//=============================================================================
//					Nets
//=============================================================================
logic error = '0;

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
// Определение начального спец. символа
logic [3:0]h_key_cnt=0;
logic header_locked;
logic header_recognized;					// спец символ зафиксирован
// Определение конечного спец. символа
logic [3:0]t_key_cnt;
logic trailer_locked;
logic trailer_recognized;

logic [(WORD_WIDTH-1):0]length_of_packet;

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

SRFFE RD_Active_SRTrig(.clrn('1), .clk(clk), .en(1'b1), .s(start_read), .r(rd_timing_cnt == RD_END_CYCLE_TIME), .q(rd_cycle_is_active));
SRFFE RD_Strob_SRFF(.clrn('1), .clk(clk), .en(1'b1), .s(rd_timing_cnt == RD_STROBE_START_TIME), .r(rd_timing_cnt == RD_STROBE_STOP_TIME), .q(rd_strobe));

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

SRFFE PACKET_PROGRESS(.clrn('1), .clk(clk), .en(1'b1), .s(header_locked), .r(trailer_locked | error), .q(packet_is_in_progress));
assign Packet_Proc = packet_is_in_progress; 


	
	
















endmodule: USB_RAM_Reg