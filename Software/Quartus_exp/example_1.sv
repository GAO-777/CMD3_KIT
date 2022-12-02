module example_1
#( DeviceMaxNumber = 4)
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




    
 
USB_RAM_Reg USB_RAM_Reg_inst
(
	.FT_TXEn				(FT_TXEn),			
	.FT_RXFn				(FT_RXFn),							
	.FT_RDn					(FT_RDn),							
	.FT_WR					(FT_WR),				
	.FT_DATA_In				(FT_DATA_Out),		
	.FT_DATA_Out			(FT_DATA_In),	
	.FT_ZZ					(FT_ZZ),
	.USB_Active				(USB_Active),
	.Header_recognized		(Header_recognized),
	.Trailer_recognized		(Trailer_recognized),
	.Packet_Proc			(Packet_Proc),
	.RAM_WE					(RAM_WE),

	.clk					(clk100),
	.DataBus_In				(DataBus_In),
	.DataBusOut				(DataBusOut),
	.DataBusStrobe			(DataBusStrobe), 
	.Error					(Error),

	.AccessRequest			(AccessRequest),
	.AccessGranted			(AccessGranted),
	.DirectOut				(DirectOut),
	.AddrBusOut				(AddrBusOut),

	.Select					(Select),
	.Direct_In				(Direct_In),
	.AddrBus_In				(AddrBus_In)
);

 
endmodule:example_1