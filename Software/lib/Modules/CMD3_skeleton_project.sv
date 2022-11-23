`timescale 1ns / 1ps

import Skeleton_package::*;

module CMD3_skeleton_project
(
	input  quartz_clk		// 25MHz Clock from quartz oscillator
);



logic clk100;

assign clk100 = quartz_clk;


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
// 				MASTER
//=============================================================================
logic [15:0]master1_data = 99;
logic [15:0]master1_addr = 'd4126;
logic master1_rw = '1;

initial
begin

	barq = 0; 


#80 barq = 3;

#40 barq=0;


end



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
		address_bus			=	master1_addr; 
		rw					=	master1_rw;
		end    

	default: begin
		address_bus[15:0]	=	'0;
		rw					=	'0;
		end
endcase



if(rw == '1) 
	case(bagd)		
		'b0001:		data_bus	 =	master1_data;
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