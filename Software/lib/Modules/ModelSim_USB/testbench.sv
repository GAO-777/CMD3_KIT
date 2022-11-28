`timescale 1ns / 1ps

module testbench
(
);

logic clk100;
	
initial 
begin
	clk100 ='0;
end

always 
  #5  clk100 = !clk100; // 25MHz




//=============================================================================
//  			FT MODULE
//=============================================================================

bit test;

task USB_Send_data ( );


endtask

//initial
	//# 100 USB_Send_data(1,test);


module FT_USB
(
	input clk100,
	//input start,	// Запуск отправки
	
	output logic FT_RXFn = 1,
	input logic FT_WR = 0,
	output logic FT_TXEn =0,
	
	output logic [7:0]FT_DATA_out,
	input  FT_RDn
);

parameter [7:0]HEADER_KEY_SYMBOL 	=	85;
parameter HEADER_KEY_SYMBOL_NUMBER	=	12;
parameter [7:0]TRAILER_KEY_SYMBOL	=	170;
parameter TRAILER_KEY_SYMBOL_NUMBER =	8;
parameter [7:0]ERROR_SYMBOL        	=   'hEE; 

bit [(HEADER_KEY_SYMBOL_NUMBER-1):0][7:0]header = '{HEADER_KEY_SYMBOL_NUMBER{HEADER_KEY_SYMBOL}};
bit [(TRAILER_KEY_SYMBOL_NUMBER-1):0][7:0]trailer = '{TRAILER_KEY_SYMBOL_NUMBER{TRAILER_KEY_SYMBOL}};

bit [7:0][7:0]ft_fifo = '{
							8'h0 ,	
							8'hFF,	
							8'h0,	
							8'h1,	
							8'hAB,	
							8'hCD,	
							8'h0,	
							8'h10
						  };

bit [27:0][7:0]usb_package = {trailer,ft_fifo,header};

int byte_index = 0;
bit ft_rxfn;
bit stop = 0;
bit send_package;  
bit [1:0]ft_rxfn_delay;

initial
#10442	stop=1;

always begin 
#180  ft_rxfn = !ft_rxfn; 
end
  
always_ff @(negedge FT_RXFn) begin


	if(~(FT_RDn & FT_RXFn)) begin
		FT_DATA_out = usb_package[byte_index];
		byte_index++;
		end
	else
		FT_DATA_out = '0;
		
end

logic [1:0]ft_rdn_delay;
logic [1:0]ft_wr_delay;
logic ft_rdn_edge;
logic ft_wr_edge;

always_ff @(clk100) begin
	ft_rdn_delay[0] <= FT_RDn;
	ft_rdn_delay[1] <= ft_rdn_delay[0];

	ft_wr_delay[0] <= FT_WR;
	ft_wr_delay[1] <= ft_wr_delay[0];

	ft_rxfn_delay[0] <= ft_rxfn;
	ft_rxfn_delay[1] <= ft_rxfn_delay[0];

	if(~ft_rxfn_delay[0] & ft_rxfn_delay[1]) begin
		FT_RXFn <= 1'b0 | stop;
		end

	if(ft_rdn_edge)
		FT_RXFn <= '1;
	if(ft_wr_edge)
		FT_TXEn <= '1; 
end

assign ft_rdn_edge = ft_rdn_delay[0] & ~ft_rdn_delay[1];
assign ft_wr_edge = ~ft_wr_delay[0] & ft_wr_delay[1];
endmodule:FT_USB



//=============================================================================
//  			FT MODULE END
//=============================================================================
logic FT_TXEn;
logic FT_RXFn;
logic FT_RDn;
logic FT_WR;
logic [7:0]FT_DATA_In;
logic [7:0]FT_DATA_Out;

FT_USB FT_USB_inst
(
	.clk100			(clk100),
	.FT_RXFn		(FT_RXFn),
	.FT_DATA_out	(FT_DATA_Out),
	.FT_RDn			(FT_RDn),
	.FT_WR 			(FT_WR),
	.FT_TXEn 		(FT_TXEn)
);





USB_RAM_Reg USB_RAM_Reg_inst
(
	.FT_TXEn				(FT_TXEn),			
	.FT_RXFn				(FT_RXFn),							
	.FT_RDn					(FT_RDn),							
	.FT_WR					(FT_WR),				
	.FT_DATA_In				(FT_DATA_Out),		
	.FT_DATA_Out			(),	
	.FT_ZZ					(),
	.USB_Active				(),
	.Header_recognized		(),
	.Trailer_recognized		(),
	.Packet_Proc			(),
	.RAM_WE					(),

	.clk					(clk100),
	.DataBus_In				(),
	.DataBusOut				(),
	.DataBusStrobe			(), 
	.Error					(),

	.AccessRequest			(),
	.AccessGranted			(),
	.DirectOut				(),
	.AddrBusOut				(),

	.Select					(),
	.Direct_In				(),
	.AddrBus_In				()
);








endmodule:testbench