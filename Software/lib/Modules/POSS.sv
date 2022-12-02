/*
	Power On Self Set
	Начальный загрузчик для Модулей КМД-3.
*/



module POSS
(
	input clk,
	input start,	// запускает загрузчик
);

logic start_s; 	
logic loader_active_flag;		// загрузчик находится в работе
logic loader_finished_flag;		// загрузчик закончил выполнение 
logic end_cycle;				// конец цикла загрузки
//=============================================================================
//					Управление загрузчиком 
//=============================================================================	


// 
always_ff @(posedge clk) begin
	start_s <= start;
	
	if(start_s & ~loader_finished_flag)
		loader_active_flag <= 1'b1;
	if(end_cycle)
		loader_active_flag <= 1'b0;
		
	if(end_cycle)
		loader_finished_flag <= 1'b1; 
	if(loader_active_flag)
		loader_finished_flag <= 1'b0;
end







endmodule:POSS