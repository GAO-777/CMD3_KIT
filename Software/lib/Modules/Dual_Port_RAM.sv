/*
	Двухпортовая память RAM
	
	Параметры:
		WORD_WIDTH - разрядность слов
		ADDR_WIDTH - разрядность адреса

	Атрибут ram_init_file позволяет задать .mif или .hex файл 
		для начальной инициализации памяти. 
*/
module Dual_Port_RAM
#(
	parameter WORD_WIDTH = 16,
	parameter ADDR_WIDTH = 512
)
(
	input  clk,
	input  [(WORD_WIDTH-1):0] data_a, data_b,
	input  [(ADDR_WIDTH-1):0] addr_a, addr_b,
	input  wren_a,wren_b,
	output [(WORD_WIDTH-1):0] q_a, q_b
);

// Matrix memory
bit [(WORD_WIDTH-1):0] ram [(2**ADDR_WIDTH-1):0]; /* synthesis ram_init_file = "init_mif_file.mif" */ 


//=============================================================================
//		PORT A
//=============================================================================
always_ff @(posedge clk) begin
	if(wren_a) begin
		ram[addr_a] <= data_a;
		q_a <= data_a;
		end
	else
		q_a <= ram[addr_a];

end

//=============================================================================
//		PORT B
//=============================================================================
always_ff @(posedge clk) begin
	if(wren_b) begin
		ram[addr_b] <= data_b;
		q_b <= data_b;
		end
	else
		q_b <= ram[addr_b];

end

endmodule: Dual_Port_RAM 