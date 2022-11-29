`timescale 1ns / 1ps

import Skeleton_package::*;

module CMD3_skeleton_project
(
	input  quartz_clk		// 25MHz Clock from quartz oscillator
);


logic clk100;
	
initial 
begin
	clk100 ='0;
end

always 
  #5  clk100 = !clk100;




//=============================================================================
// 				NETS
//=============================================================================

logic [NUM_SLAVES : 0] cs;
logic [NUM_SLAVES : 0] dev_sel;
logic address_valid;

logic [(NUM_MASTERS-1) : 0]barq;
logic [(NUM_MASTERS-1) : 0]bagd;
logic target_ready; 

logic [15:0]address_bus; 
logic [15:0]data_bus;
logic rw;

logic [15:0] test_ram;


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
							8'h00 ,	
							8'h45,	
							8'h10,	
							8'h00,	
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
bit start=1;
initial begin
#10442	stop=1;
end

initial begin
#200	start=1;
end

always begin 
 #180  ft_rxfn = ~ft_rxfn | ~start; 

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
		FT_TXEn <= '0; 
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





logic USB_DirectOut;
logic [15:0]USB_DATA_out;
logic [15:0]USB_ADDR_out;
USB_RAM_Reg USB_RAM_Reg_inst
(
	.FT_TXEn				(FT_TXEn),			
	.FT_RXFn				(FT_RXFn),							
	.FT_RDn					(FT_RDn),							
	.FT_WR					(FT_WR),				
	.FT_DATA_In				(FT_DATA_Out),		
	.FT_DATA_Out			(FT_DATA_In),	
	.FT_ZZ					(),
	.USB_Active				(),
	.Header_recognized		(),
	.Trailer_recognized		(),
	.Packet_Proc			(),
	.RAM_WE					(),

	.clk					(clk100),
	.DataBus_In				(16'd33),
	.DataBusOut				(USB_DATA_out),
	.DataBusStrobe			(data_strobe), 
	.Error					(),

	.AccessRequest			(barq[0]),
	.AccessGranted			(bagd[0]),
	.DirectOut				(USB_DirectOut),
	.AddrBusOut				(USB_ADDR_out),

	.Select					(1'b0),
	.Direct_In				(),
	.AddrBus_In				()
);


//=============================================================================
// 				BUS
//=============================================================================

always_comb begin

	cs = '0;
	
    if	((address_bus	>=	TEST_RAM_OFFSET ) & 
		(address_bus	<=	(TEST_RAM_OFFSET + TEST_RAM_SIZE - 1))) 
			cs[1]	<=	'1;  

end

always_ff @(posedge clk100 or negedge target_ready) begin
	if (~target_ready)
		dev_sel <= '0;
	else
		dev_sel <= cs; 
end
	
assign address_valid = |dev_sel;






always_comb begin

case (bagd)
	'b0001: begin
		address_bus			=	USB_ADDR_out; 
		rw					=	USB_DirectOut;
		end    

	default: begin
		address_bus[15:0]	=	'0;
		rw					=	'0;
		end
endcase



if(rw == '1) 
	case(bagd)		
		'b0001:		data_bus	 =	USB_DATA_out;
		default:	data_bus 	 = '0;
	endcase
		
		
else
	case (dev_sel)
		'b0010: 	data_bus	= test_ram;            

		default: 	data_bus	= '0; 
	endcase 
		 
end



 Arbiter1 
#(
    .DEVICE_MAX_NUMBER 	(NUM_MASTERS),
    .CLK_MAX_TIMEOUT 	(10)
)
Arbiter_inst
(
	.clk				(clk100),			   
	.barq_i				(barq),
	.bagd_o				(bagd),
	.target_ready_o 	(target_ready),
	.address_valid_i 	(address_valid),
	.data_strobe_o		(data_strobe),
	.error_o			(arbiter_error)
);





//=============================================================================
// 				SLAVE
//=============================================================================



Dual_Port_RAM		
#(
	.WORD_WIDTH		(16),
	.ADDR_WIDTH		(8),
	.NUM_WORDS		(32)
)
					Dual_Port_RAM_inst
(
	.clk			(clk100),
	.data_a			(data_bus), 
	.data_b			('0),
	.addr_a			(address_bus[7:0]), 
	.addr_b			(address_bus),
	.wren_a			(rw & dev_sel[1] & data_strobe),
	.wren_b			('0),
	.q_b			(test_ram)
);


endmodule: CMD3_skeleton_project