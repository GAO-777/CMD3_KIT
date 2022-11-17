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

bit Counter_clrn, Counter_sclr, Counter_ena;
bit [7 : 0]Counter_q;

initial
begin
	Counter_clrn = '0;
	Counter_sclr = '0;
	Counter_ena  = '0;
	
#20	Counter_clrn = '1;
	Counter_sclr = '1;
	Counter_ena  = '1;

#23 Counter_clrn = '0;
#5  Counter_clrn = '1;

#34 Counter_sclr = '0;
#10 Counter_sclr = '1;

#66 Counter_ena  = '0; 

end


 Counter Counter_inst
(
    .clk 	(clk),     
    .clrn	(Counter_clrn),             
    .sclr	(Counter_sclr),        
    .ena 	(Counter_ena),         
    .q		(Counter_q)
);
endmodule:testbench