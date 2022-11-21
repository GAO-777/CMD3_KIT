

module Arbiter1
#(
    DEVICE_MAX_NUMBER = 4,
    CLK_MAX_TIMEOUT = 10
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

logic [2:0]address_valid_delay = '0; // увеличил до 4 чтоб strobe был 2 такта ???
logic [6:0]timeout_cnt = '0;
logic timeout = '0;



always_ff @(posedge clk) begin 
	target_ready_o <= |bagd_trig;



	if (target_ready_o)
		address_valid_delay[0] <= address_valid_i;
	else 
		address_valid_delay[0] <= '0;
	
	address_valid_delay[2:1] <= address_valid_delay[1:0];
	

	
	/*
	if (address_valid_delay[2] & ~address_valid_delay[3])
		data_strobe_o <= '1;
	else
		data_strobe_o <= '0;	*/
	data_strobe_o <= (address_valid_delay[1] & ~address_valid_delay[2]);// | error;
	
	// - - - Counter - - - //

	if(|bagd_trig)
			timeout_cnt <= timeout_cnt + 1'b1;
		else timeout_cnt <= timeout_cnt;
	
	timeout <= (timeout_cnt == CLK_MAX_TIMEOUT);  
	
	//end_cycle <= /*data_strobe_o*/address_valid_delay[2] | timeout; 
	if (end_cycle) begin
		address_valid_delay <= '0;
		timeout_cnt <= '0;
		target_ready_o <= '0;
		end
	error_o <= timeout;
end

assign end_cycle = data_strobe_o /*address_valid_delay[2]*/ | timeout;  

/*
--************ Bus Access Chronogram Generation ******************************
--100MHz Clock  __/^^^\___/^^^\___/^^^\___/^^^\___/^^^\___/^^^\___/^^^\___/^^^\__
--BARQ_in[#Mast]___/^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\___
--  BAGD[#Mast] ___________/^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\___
--target_ready_o___________________/^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\___
--  DevSel[#n].D______________//////////^^^^^^ if Addr recognized, flips to =1
--  DevSel[#n].Q___________________________/^^ if Addr recognized, flips to =1
-- AddressValid ____________________________///^^^^if DevSel appears, flips to =1
--        Trig1 ___________________________________/^^^^^^^^^^if AddressValid=1
--   DataStrobe ___________________________________________________/^^^^^^^\___


*/


/*
bit barq_or;
bit bagd_or;

bit end_cycle;
bit data_strobe_s;
bit data_strb_s;
bit data_strobe_edge;
bit DataStr_Trig_q;
bit timeout;
bit DataStr_q;
bit [7:0]timeout_cnt;
bit [DEVICE_MAX_NUMBER-1:0] barq_s;

bit [DEVICE_MAX_NUMBER-1:0] barq_sync_s;
logic [DEVICE_MAX_NUMBER-1:0] bagd_s;

bit [DEVICE_MAX_NUMBER-1:0] bagd_mask;
*/


 



endmodule:Arbiter1