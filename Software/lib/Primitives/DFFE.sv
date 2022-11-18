/*
	DFFE примитив (триггер D-типа с разрешающим входом en)
	+----------------------------+
	| clrn | clk  | en  | d | q  |
	+----------------------------+	
	|  L   |  X   | X   | X | L  |
	|  H   |  X   | L   | X | Qo |
	|  H   |  _/^ | H   | L | L  |
	|  H   |  _/^ | H   | H | H  |
	|  H   |  L   | H   | X | Qo |
	|  H   |  H   | H   | X | Qo |
	+----------------------------+

Один экземпляр
DFFE ?NAME?(.clrn(), .clk(), .en(), .d(), .q());

Один и более экземпляр    
DFFE        ?NAME?[(MAX-1) : 0]
(
    .clk    (), 
    .clrn   (), 
    .en     (), 
    .d      (), 
    .q      ()
);
    
*/

`timescale 1ns / 10ps

module DFFE
(
	input  logic clk,
	input  logic clrn,			
	input  logic en,	
	input  logic d,
	output logic q
);

logic q_s;

always_ff @(posedge clk or negedge clrn)
	begin
	if(~clrn)
		q_s <= 1'b0;
	else if(en)
		q_s <= d;
	end
	
end
endgenerate

assign #1 q = q_s;

endmodule:DFFE
