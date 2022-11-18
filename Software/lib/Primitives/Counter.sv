/*

Counter         ?NAME?
(
    .clk        (),     
    .clrn       (),               
    .sclr       (),       
    .en         (),
    .data       (),
    .sload      (), 
    .q          ()
);


*/

module Counter
#(
    WIDTH = 8,  
    DIRECTION = 0       // 0-UP 1-DOWN  
)
(
    input  logic clk,     
    input  logic clrn,               
    input  logic sclr,       
    input  logic en,
    input  logic [(WIDTH-1) : 0]data,
    input  logic sload, 
    output logic [(WIDTH-1) : 0]q
);

logic [WIDTH-1 : 0]counter_s;

always_ff @(posedge clk or negedge clrn)
begin
    if (~clrn)
        counter_s <= '0;
    else if (~sclr)
        counter_s <= '0;
    else if (sload)
        counter_s <= data;
    else 
        if (en)
            if (~DIRECTION)
                counter_s <= counter_s + 1'd1;
            else
                counter_s <= counter_s - 1'd1;
        else 
            counter_s <= counter_s;
end

assign q = counter_s;

endmodule:Counter
