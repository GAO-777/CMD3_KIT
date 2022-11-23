`timescale 1ns / 1ps

module testbench
(
);

logic quartz_clk;
	
initial 
begin
	quartz_clk ='0;
end

always 
  #20  quartz_clk = !quartz_clk; // 25MHz


logic FT_TXEn;
logic FT_RXFn;
logic FT_RDn;
logic FT_WR;
logic [7:0]FT_DATA_In;
logic [7:0]FT_DATA_Out;


initial 
begin
	FT_RXFn ='1;
#160 FT_RXFn = '0;
	 FT_DATA_In = 'd25;
end

USB_RAM_Reg USB_RAM_Reg_inst
(
	.clk			(quartz_clk),
	.FT_TXEn		(FT_TXEn),						
	.FT_RXFn		(FT_RXFn),						
	.FT_RDn			(FT_RDn),			
	.FT_WR			(FT_WR),				
	.FT_DATA_In		(FT_DATA_In),		
	.FT_DATA_Out	(FT_DATA_Out)
);


endmodule:testbench