

module Arbiter1
#(
    parameter DEVICE_MAX_NUMBER = 4,
    parameter CLK_MAX_TIMEOUT = 10
)
(
	input  logic clk,		
	
// - - - HandShake Begin - - - //
	input  logic [DEVICE_MAX_NUMBER-1:0]barq_i,
	output logic [DEVICE_MAX_NUMBER-1:0]bagd_o,
	output logic target_ready_o,	
	input  logic address_valid_i,
	output logic data_strobe_o,
// - - - End of HandShake - - - //
	output logic error_o
);


logic [DEVICE_MAX_NUMBER-1:0] barq_trig = '0;
logic [DEVICE_MAX_NUMBER-1:0] bagd_trig = '0;
logic [DEVICE_MAX_NUMBER-1:0] sel_master;
logic end_cycle;

always_ff @(posedge clk) begin
	if(end_cycle)
		barq_trig <= '0;
	if(~(|barq_trig))
		barq_trig <= barq_i;
end


/*=================================================================*\
 - - - - - - - - - Select_of_Master - - - - - - - - - - - - - - - - -
\*=================================================================*/
genvar i;
generate
    for (i = (DEVICE_MAX_NUMBER-1); i >= 1; i--)
    begin: Select_of_Master
        
        always_comb
            if( |barq_trig[(i-1):0])
                sel_master[i] = 1'b0;
            else sel_master[i] = barq_trig[i];
    end
endgenerate
assign sel_master[0] = barq_trig[0];

always_ff @(posedge clk) begin
	bagd_trig <= sel_master;
	
	if(end_cycle)
		bagd_trig <= '0;
	end


assign bagd_o = bagd_trig; 

bit [2:0]address_valid_d; // увеличил до 4 чтоб strobe был 2 такта ???
logic [6:0]timeout_cnt = '0;
logic timeout = '0;



always_ff @(posedge clk) begin 
	target_ready_o <= |bagd_trig;



	if (target_ready_o)
		address_valid_d[0] <= address_valid_i;
	else 
		address_valid_d[0] <= '0;
	
	address_valid_d[2:1] <= address_valid_d[1:0];
	if (end_cycle) begin
		address_valid_d <= '0;
		target_ready_o <= '0;
	end
end
logic  data_strobe;
assign data_strobe =address_valid_d[1] & (~address_valid_d[2]); 
always_ff @(posedge clk) begin 	

	data_strobe_o <= data_strobe;
	
	

	if(|bagd_trig)
			timeout_cnt <= timeout_cnt + 1'b1;
	else timeout_cnt <= timeout_cnt;
	
	timeout <= (timeout_cnt == CLK_MAX_TIMEOUT);  
	
	
	if (end_cycle) begin
		//address_valid_delay <= '0;
		timeout_cnt <= '0;
		//target_ready_o <= '0;
		end
	error_o <= timeout;
end

assign end_cycle = data_strobe_o  | timeout;  




endmodule