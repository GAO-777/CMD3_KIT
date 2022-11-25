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
module FT_USB
(
	input clk100,
	output logic FT_RXFn = 1,
	output logic [7:0]FT_DATA_out,
	input  FT_RDn
);

localparam [7:0]HEADER_KEY_SYMBOL		=	85;
localparam HEADER_KEY_SYMBOL_NUMBER		=	12;
localparam TRAILER_KEY_SYMBOL			=	170;
localparam TRAILER_KEY_SYMBOL_NUMBER	=	8;
localparam ERROR_SYMBOL              	=   'hEE; 

bit [(HEADER_KEY_SYMBOL_NUMBER-1):0][7:0]header = '{HEADER_KEY_SYMBOL_NUMBER{HEADER_KEY_SYMBOL}};
bit [(TRAILER_KEY_SYMBOL_NUMBER-1):0][7:0]trailer = '{TRAILER_KEY_SYMBOL_NUMBER{TRAILER_KEY_SYMBOL}};

bit [7:0]ft_fifo[11:0] = '{
							8'd170,
							8'd170,	//end
							8'hFF ,	// данные 2
							8'hFF,	// данные 1
							8'h0 ,	// адрес 2
							8'hFF,	// адрес 1
							8'h0	,	// сервис 2
							8'h1	,	// сервис 1	
							8'h10,	// длина 2
							8'hC	,	// длина 1
							8'd85,	// begin
							8'd85
						  };

bit [19:0][7:0]usb_package = {trailer,header};

int byte_index = 0;
bit ft_rxfn;
bit send_package;  
bit [1:0]ft_rxfn_delay;


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
logic ft_rdn_edge;

always_ff @(clk100) begin
	ft_rdn_delay[0] <= FT_RDn;
	ft_rdn_delay[1] <= ft_rdn_delay[0];

	ft_rxfn_delay[0] <= ft_rxfn;
	ft_rxfn_delay[1] <= ft_rxfn_delay[0];

	if(~ft_rxfn_delay[0] & ft_rxfn_delay[1])
		FT_RXFn <= '0;

	if(ft_rdn_edge)
		FT_RXFn <= '1;

end

assign ft_rdn_edge = ft_rdn_delay[0] & ~ft_rdn_delay[1];




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
	.FT_RDn			(FT_RDn)
);





USB_RAM_Reg USB_RAM_Reg_inst
(
	.clk			(clk100),
	.FT_TXEn		(FT_TXEn),						
	.FT_RXFn		(FT_RXFn),						
	.FT_RDn			(FT_RDn),			
	.FT_WR			(FT_WR),				
	.FT_DATA_In		(FT_DATA_Out),		
	.FT_DATA_Out	()
);


endmodule:testbench