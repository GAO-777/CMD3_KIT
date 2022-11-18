
/*

+-----+------+------+----+------+-------+---------+--------------------+-------------------------------+
| clk | clrn | sclr | en | load | data  | shiftin | shiftout           | q                             |
|  X  |   L  |  X   |  X |   X  |   X   |   X     |     0              | 0                             |
| _/^ |   H  |  L   |  X |   X  |   X   |   X     |     0              | 0                             |
| _/^ |   H  |  H   |  L |   X  |   X   |   X     | SHIFTOUTo          | Qo                            |
|----------------------DIRECTION = 0 (Right)-----------------------------------------------------------|
| _/^ |   H  |  H   |  H |   1  | data1 |   X     | data1[0]           | data1                         |
| _/^ |   H  |  H   |  H |   0  |  X    |   Xo+1  | SHIFTOUTo[1]       | {Xo+1,SHIFTOUTo[(WIDTH-1):1]} |
|----------------------DIRECTION = 1 (Left)------------------------------------------------------------|
| _/^ |   H  |  H   |  H |   1  | data1 |   X     | data1[WIDTH-1]     | data1                         |
| _/^ |   H  |  H   |  H |   0  |  X    |   Xo+1  | SHIFTOUTo[WIDTH-2] | {SHIFTOUTo[(WIDTH-2):1],Xo+1} |
+-----+------+------+----+------+-------+---------+--------------------+-------------------------------+

Shiftreg        ?NAME?
#(
	.WIDTH		(8),
    .DIRECTION	(0)
(
    .clk        (),
	.clrn       (),  
    .sclr       (),
    .en         (),
    .load       (),
    .data       (),
    .shiftin    (),
        
    .shiftout   (),
    .q          ()
);



*/
module Shiftreg
#(
    WIDTH = 8,
    DIRECTION = 0   // 0-Right 1-Left
)
(
    input logic  clk,
	input logic  clrn,
    input logic  sclr,
    input logic  en,
    input logic  load,
    input logic  [(WIDTH-1):0]data,	
    input logic  shiftin,
    
    output logic shiftout,
    output logic [(WIDTH-1):0]q
);

logic [(WIDTH-1):0]q_s;

always_ff @(posedge clk or negedge clrn)
begin
if(~clrn)
	q_s <= '0;
else if (~sclr)
		q_s <= '0;
	else 
		if (en)
			if (load)
				q_s <= data;
			else
				if (DIRECTION)
					q_s <= {q_s[(WIDTH-2):0],shiftin};
				else
					q_s <= {shiftin,q_s[(WIDTH-1):1]};
		else 
			q_s <= q_s;

end

assign q = q_s;

assign shiftout = DIRECTION ? q_s[WIDTH-1] : q_s[0];
	
endmodule:Shiftreg

