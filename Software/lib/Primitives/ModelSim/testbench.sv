`timescale 1ns / 1ps

module testbench
(
);
/*=================================================================*\
 - - - - - - - - - Global signals - - - - - - - - - - - - - - - - - -
\*=================================================================*/

bit clk;
	
initial 
begin
	clk		= 1'b0;
end

always 
  #5  clk = !clk; 

/*=================================================================*\
 - - - - - - - - - - - Counter - - - - - - - - - - - - - - - - - - -
\*=================================================================*/
localparam COUNTER_WIDTH = 8;

bit counter_clrn, 
	counter_sclr, 
	counter_en,
	counter_sload;
	
bit [(COUNTER_WIDTH-1) : 0]counter_data;
bit [(COUNTER_WIDTH-1) : 0]counter_q;

initial
begin
	counter_clrn = '0;
	counter_sclr = '0;
	counter_en  = '0;
	counter_sload = '0;
	counter_data = '0;
	
#20	counter_clrn = '1;
	counter_sclr = '1;
	counter_en  = '1;

#23 counter_clrn = '0;
#5  counter_clrn = '1;

#34 counter_sclr = '0;
#10 counter_sclr = '1;

#66 counter_en  = '0; 

#22 counter_en  = '1;
    counter_data = 250;
    counter_sload = '1;
#10 counter_sload = '0;
end


Counter
#(
	.WIDTH		(COUNTER_WIDTH),  
    .DIRECTION	(0)  
)
			Counter_inst
(
    .clk 	(clk),     
    .clrn	(counter_clrn),             
    .sclr	(counter_sclr),        
    .en 	(counter_en), 
	.data   (counter_data),
	.sload  (counter_sload),
    .q		(counter_q)
);

/*=================================================================*\
 - - - - - - - - - - - Shiftreg - - - - - - - - - - - - - - - - - - -
\*=================================================================*/
logic	shiftreg_en,
		shiftreg_clrn,
		shiftreg_load,
		shiftreg_shiftin,
		shiftreg_sclr;
logic [7 : 0]shiftreg_data;
logic [7 : 0]shiftregr_q;
logic shiftreg_shiftout;

initial
begin
	shiftreg_en = '0;
	shiftreg_load = '0;
	shiftreg_data = '1;
	shiftreg_shiftin = '1;
	shiftreg_sclr = '0;
	shiftreg_clrn = '0;
	
#20	shiftreg_sclr = '1;
	shiftreg_clrn = '1;
	shiftreg_en  = '1;

#100
	shiftreg_sclr = '0;
	shiftreg_load = '1;
	
#10 shiftreg_sclr = '1;

#10  shiftreg_en = '0;
	 shiftreg_data = '0;

#40  shiftreg_clrn = '0;
#10	 shiftreg_clrn = '1;

end

Shiftreg #( .DIRECTION (0)) Shiftreg_inst
(
    .clk		(clk),
	.clrn       (shiftreg_clrn),  
    .en			(shiftreg_en),
    .load		(shiftreg_load),
    .data		(shiftreg_data),
    .shiftin	(shiftreg_shiftin),
    .sclr		(shiftreg_sclr),
    
    .q			(shiftregr_q),
    .shiftout	(shiftreg_shiftout)
);



endmodule:testbench