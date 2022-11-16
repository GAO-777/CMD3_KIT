/*
	DFF примитив (триггер D-типа, сдвигающий)
	
	+--------------------------------+
	| PRN | CLRN | CLK | D |   Q     |
	+--------------------------------+	
	|  L  |  H   |  X  | X | H       |
	|  H  |  L   |  X  | X | L       |
	|  L  |  L   |  X  | X | Illegal |
	|  H  |  H   | _/^ | L | L		 |
	|  H  |  H   | _/^ | H | H		 |
	|  H  |  H   |  L  | X | Qo		 |
	|  H  |  H   |  H  | X | Qo		 |
	+--------------------------------+
	
	DFF #(?) ?NAME?(.prn(), .clrn(), .clk(), .d(), .q())
*/

`timescale 1ns / 10ps

module DFF1
#(	parameter W = 1 )
(
	input bit		clrn,		// асинхронный вход сброса триггера в 0
	input bit		tt,		//  синхронный вход сброса триггера в 1
	input bit		clk,
	input bit		[W-1 : 0]d,
	output bit		[W-1 : 0]q
);

bit [W-1 : 0]Q;

genvar i;
generate 
	for (i = 0; i < W; i = i + 1) 
	begin : generate_DFF
	
	always_ff @(posedge clk or negedge clrn)
		begin
		if(~clrn)
			Q[i] <= 1'b0;
			
		else if(~tt)
			Q[i] <= 1'b1;
		else
			Q[i] <= d[i];
		end
		
    end
endgenerate

assign #1 q = Q;

endmodule:DFF1
