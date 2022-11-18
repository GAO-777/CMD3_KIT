/*
	SRFFE примитив (триггер RS-типа)
	+-------------------------------+
	| clrn | clk  | en | s | r | q  |
	+-------------------------------+	
	|  L   |  X   | X  | X | X | L  |
	|  H   |  L   | X  | X | X | Qo |
	|  H   |  H   | X  | X | X | Qo |
	|  H   |  X   | L  | X | X | Qo |  
	|  H   |  _/^ | H  | L | L | Qo |
	|  H   |  _/^ | H  | H | L | H  |
	|  H   |  _/^ | H  | L | H | L  |
	|  H   |  _/^ | H  | H | H | X  | 
	+-------------------------------+
Один экземпляр 	
SRFFE #(?) ?NAME?(.clrn(), .clk(), .s(), .r(), .q());

Один и более экземпляр    
SRFFE #(?)  ?NAME?[(MAX-1) : 0]
(
    .clk    (), 
    .clrn   (), 
    .en     (), 
    .s      (),
    .r      (),  
    .q      ()
);
*/

`timescale 1ns / 10ps

module SRFFE
(
    input  logic clk,
	input  logic clrn,		    // Асинхронный сброс 
	input  logic en,
	input  logic s,	            // Установка в 1
	input  logic r,             // Установка в 0
	output logic q
);

logic q_s;

always_ff @(posedge clk or negedge clrn)
    begin
    if(!clrn)
        q_s <= 1'b0;
    else if(s & en)
        q_s <= 1'b1;
    else if(r & en)
        q_s <= 1'b0;
    end
    
end

assign #1 q = q_s;

endmodule:SRFFE
