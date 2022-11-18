module Arbiter
#(
    DEVICE_MAX_NUMBER = 4,
    CLK_MAX_TIMEOUT = 10
)
(
	input  clk,			// System clock
	input  reset,       // Active High
	
// - - - HandShake Begin - - - //
// Requestes from Master devices to bus access to 
	input  [DEVICE_MAX_NUMBER-1:0]barq,

// Bus Access Granted 
	output [DEVICE_MAX_NUMBER-1:0]bagd,

// Negotiation signals

	output address_valid_o, 	// Target Address Decode
	input  TargetReady,	// Target Device Ready when addr decoded
	output data_strobe,	// One clock HIGH when Target Ready
 
// - - - End of HandShake - - - //

	output error		// One clock HIGH when Strobe at Timout 
);

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
bit [DEVICE_MAX_NUMBER-1:0] bagd_s;

bit [DEVICE_MAX_NUMBER-1:0] bagd_mask;



/*=================================================================*\
 - - - - - - - - - Bus connection begin - - - - - - - - - - - - - - -
\*=================================================================*/

DFFE        BARQ_DFF[(DEVICE_MAX_NUMBER-1) : 0]
(
    .clk    (clk), 
    .clrn   (~bagd_mask), 
    .en     (~barq_or),        
    .d      (barq), 
    .q      (barq_s)
);


genvar i;
generate
    for (i = 0; i < (DEVICE_MAX_NUMBER-1); i = i + 1)
    begin: generate_bagd_s
        
        always_comb
            if( |barq_s[DEVICE_MAX_NUMBER-1:i])
                bagd_s[i] = 1'b0;
            else bagd_s[i] = barq_s[i];
    end
endgenerate

assign bagd_s[DEVICE_MAX_NUMBER-1] = barq_s[DEVICE_MAX_NUMBER-1];

DFFE        BAGD_DFF[(DEVICE_MAX_NUMBER-1) : 0]
(
    .clk    (clk), 
    .clrn   (~end_cycle), 
    .en     (1'b1),        
    .d      (bagd_s), 
    .q      (barq_sync_s)
);

assign bagd = barq_sync_s;


DFFE        BAGD_Mask[(DEVICE_MAX_NUMBER-1) : 0]
(
    .clk    (clk), 
    .clrn   (~end_cycle), 
    .en     (DataStr_Trig_q),        
    .d      (barq_sync_s), 
    .q      (bagd_mask)
);



assign barq_or = |barq_sync_s; 

assign bagd_or = |barq_s;

DFFE        AddressValid_DFF
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1),        
    .d      (bagd_or), 
    .q      (address_valid)
);


 EdgeSensing    Data_Strobe_Edge
(
	.clk		(clk),     
	.d			(TargetReady & ~end_cycle),   	   
	.q		    (data_strobe_edge)      
);

DFFE        Data_Strb_DFF
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1),        
    .d      (data_strobe_edge | TimeOut), 
    .q      (data_strb_s)
);

DFFE        Data_Strobe_DFF
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1),        
    .d      (data_strb_s), 
    .q      (data_strobe_s)
);

assign data_strobe = data_strobe_s;

DFFE        End_Cycle_DFF
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1),        
    .d      (data_strobe_s), 
    .q      (end_cycle)
);


 Counter       
#(
	.WIDTH      (8),  
    .DIRECTION  (0) 
)
                TimeOutCnt
(
    .clk        (clk),     
    .clrn       (1'b1),               
    .sclr       (end_cycle),       
    .en         (address_valid),
    .data       (8'b0),
    .sload      (1'b0), 
    .q          (timeout_cnt)
);
 

DFFE        TimeOut_DFF
(
    .clk    (clk), 
    .clrn   (1'b1), 
    .en     (1'b1),        
    .d      (timeout_cnt == CLK_MAX_TIMEOUT), 
    .q      (timeout)
);
 
assign error = timeout; 

endmodule:Arbiter