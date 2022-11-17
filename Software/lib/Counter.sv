/*


*/

module Counter
#(
    W = 8               // Разрядность счетчика
)

(
    input  clk,     
    input  clrn,        // Асинхронный сброс       
    input  sclr,        // Синхронный сброс
    input  en,         // Разрешение на счет
    output [W-1 : 0]q
);

bit [W-1 : 0]counter_s;

always_ff @(posedge clk or negedge clrn)
begin
    if (~clrn)
        counter_s <= '0;
    else if (~sclr)
        counter_s <= '0;
    else if (ena)
        counter_s <= counter_s + 1'd1;
    else 
        counter_s <= counter_s;
end

assign q = counter_s;

endmodule:Counter
