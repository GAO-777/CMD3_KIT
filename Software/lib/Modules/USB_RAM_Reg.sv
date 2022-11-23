module USB_RAM_Reg
(
	input  clk,

	input  FT_TXEn,				// Можно записать данные в FIFO	 				
	input  FT_RXFn,				// Можно прочитать данные из FIFO				
	output FT_RDn,				// Запрос на чтение			
	output FT_WR,				// Запрос на запись 
	input  [7:0]FT_DATA_In,		
	output [7:0]FT_DATA_Out	


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
// Процедура чтения одного слова
logic rxf_edge;
logic [2:0]rxf_delay;
logic start_read;	
logic rd_cycle_is_active; 
logic rd_strobe;
logic [(BYTE_WIDTH-1):0]rd_timing_cnt = '0;
logic [7:0]ft_inbus_buffer = '0;

//=============================================================================
//					Процедура чтения одного слова
//=============================================================================

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
//					Процедура чтения одного слова
//=============================================================================


endmodule: USB_RAM_Reg