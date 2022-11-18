/*	
	Формирователь одного импульса, по фронту входного сигнала 
	функция принимает нарастающий фронт входного сигнала (.d = _/^ ) 
	по фронту тактовой частоты (.clk = _/^ ), и формирует 1 импульс 
	длительностью  1 такт  тактовой частоты
*/

module EdgeSensing
(
	input  logic clk,    
	input  logic d,	    
	output logic q,    
);

logic [1:0]DFFE_q;

DFFE        DFFE_1
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1), 
    .d      (d), 
    .q      (DFFE_q[0])
);

DFFE        DFFE_2
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1), 
    .d      (DFFE_q[0]), 
    .q      (DFFE_q[1])
);

assign q_r =  DFF_q[0] & !DFF_q[1];

endmodule: EdgeSensing