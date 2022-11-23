module USB_RAM_Reg
(
	input FT_TXEn,				// Можно записать данные в FIFO	 				
	input FT_RXFn,				// Можно прочитать данные из FIFO				
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


// FT23H timing, FS mode
parameter RD_END_CYCLE_TIME		=	6; //+2clocks in beging and 1clk at end on resynchro
parameter RD_SAMPLE_TIME		=	4; 
parameter RD_STROBE_START_TIME	=	1; 
parameter RD_STROBE_STOP_TIME	=	5; 



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
logic rxf_edge;
logic [2:0]rxf_delay;
logic start_read;	
logic rd_cycle_is_active; 

logic [(BYTE_WIDTH-1):0]rd_timing_cnt;
//=============================================================================
//					Процедура чтения одного слова
//=============================================================================

always_ff @(posedge clk) begin
// Фиксируем фронт FT_RXFn. Т.е. можно прочитать данные из FIFO 
	rxf_delay[0] <= ~FT_RXFn;
	rxf_delay[2:1] <= rxf_delay[1:0]
	rxf_edge <= rxf_delay[0] & rxf_delay[1];
end

assign 	start_read = rxf_edge; // | rd_to_go;

SRFFE RD_Active_SRTrig(.clrn('1), .clk(clk), .s(start_read), .r(), .q(rd_cycle_is_active));



	RXF_Edge.(clk,d)	=	(Bus_Clock, (! DFF(.d=FT_RXFn , .clk=Bus_Clock))  );--resyncronize and shape edge
			Start_Read	=	RD_to_Go OR RXF_Edge.q;
			RD_Timing_Counter.(clock, sclr)	=	(Bus_Clock, !RD_Cycle_is_Active.q);
			RD_Cycle_is_Active.(S,R,clk)	=	((Start_Read), (RD_Timing_Counter.q[]==RD_End_Cycle_Time), Bus_Clock);
			RD_Strob_SRFF.(S,R,clk)		=	((RD_Timing_Counter.q[]==RD_Strobe_Start_Time), (RD_Timing_Counter.q[]==RD_Strobe_Stop_Time), Bus_Clock);
			Fast_input_buffer_FT_Bus.(clock, enable,load,data[]) =(Bus_Clock, (RD_Timing_Counter.q[]==RD_Sample_Time),    VCC, FT_DATA_In[7..0]);
			FT_RDn	=	! RD_Strob_SRFF.q;



endmodule: USB_RAM_Reg