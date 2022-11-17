module Shiftreg
#(
    WIDTH = 8,
    DIRECTION = 0   // 0-Right 1-Left
)
(
    input  clk,
    input  en,
    input  load,
    input  [(WIDTH-1):0]data,
    input  shiftin,
    input  sclr,
    
    output [(WIDTH-1):0]q,
    output shiftout
);

logic [(WIDTH-1):0]q_s;


always_ff @(posedge clk)
begin
if(~DIRECTION)
	if (~sclr)
		q_s <= '0;
	else if (en)
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

