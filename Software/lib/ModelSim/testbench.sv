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

bit Counter_clrn, Counter_sclr, Counter_en;
bit [7 : 0]Counter_q;

initial
begin
	Counter_clrn = '0;
	Counter_sclr = '0;
	Counter_en  = '0;
	
#20	Counter_clrn = '1;
	Counter_sclr = '1;
	Counter_en  = '1;

#23 Counter_clrn = '0;
#5  Counter_clrn = '1;

#34 Counter_sclr = '0;
#10 Counter_sclr = '1;

#66 Counter_en  = '0; 

end


 Counter Counter_inst
(
    .clk 	(clk),     
    .clrn	(Counter_clrn),             
    .sclr	(Counter_sclr),        
    .en 	(Counter_en),         
    .q		(Counter_q)
);

/*=================================================================*\
 - - - - - - - - - - - Shiftreg - - - - - - - - - - - - - - - - - - -
\*=================================================================*/
logic Shiftreg_en,Shiftreg_load,Shiftreg_shiftin,Shiftreg_sclr;
logic [7 : 0]Shiftreg_data;
logic [7 : 0]Shiftregr_q;
logic Shiftreg_shiftout;

initial
begin
	Shiftreg_en = '0;
	Shiftreg_load = '0;
	Shiftreg_data = '1;
	Shiftreg_shiftin = '1;
	Shiftreg_sclr = '0;
	
#20	Shiftreg_sclr = '1;
	Shiftreg_en  = '1;

#100
	Shiftreg_sclr = '0;
	Shiftreg_load = '1;
	
#10 Shiftreg_sclr = '1;

#10  Shiftreg_en = '0;
	 Shiftreg_data = '0;

end

Shiftreg #( .DIRECTION (1)) Shiftreg_inst

(
    .clk		(clk),
    .en			(Shiftreg_en),
    .load		(Shiftreg_load),
    .data		(Shiftreg_data),
    .shiftin	(Shiftreg_shiftin),
    .sclr		(Shiftreg_sclr),
    
    .q			(Shiftregr_q),
    .shiftout	(Shiftreg_shiftout)
);



endmodule:testbench