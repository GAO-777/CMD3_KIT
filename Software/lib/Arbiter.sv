module Arbiter
#(
	DeviceMaxNumber = 4
)
(
	input  clk,			// System clock
	input  Reset,       // Active High
	
// - - - HandShake Begin - - - //
// Requestes from Master devices to bus access to 
	input  [DeviceMaxNumber-1:0]BARQ,

// Bus Access Granted 
	output [DeviceMaxNumber-1:0]BAGD,

// Negotiation signals

	output AddressValid, 	// Target Address Decode
	input  TargetReady,	// Target Device Ready when addr decoded
	output DataStrobe,	// One clock HIGH when Target Ready
 
// - - - End of HandShake - - - //

	output Error		// One clock HIGH when Strobe at Timout 
);

bit BARQ_OR;
bit BAGD_OR;
bit AddressValid;
bit End_Cycle;

bit [DeviceMaxNumber-1:0] BARQ_inBuff_q;

bit [DeviceMaxNumber-1:0] BAGD_outBuff_q;
bit [DeviceMaxNumber-1:0] BAGD_outBuff_d;

bit [DeviceMaxNumber-1:0] Mask_Buff_q;

/*=================================================================*\
 - - - - - - - - - Bus connection begin - - - - - - - - - - - - - - -
\*=================================================================*/

REG #(.W(DeviceMaxNumber)) 
			BARQ_inBuff     // Input sampling
(
	.clk	(clk),
	.ena	(!BARQ_OR),     // IF any request exist, stop next sampling
	.clrn	(~Mask_Buff_q),
	.d		(BARQ),
	.q		(BARQ_inBuff_q)
);

REG #(.W(DeviceMaxNumber)) 
			BAGD_outBuff
(
	.clk	(clk),
	.ena	(1'b1),
	.clrn	(!End_Cycle),
	.d		(BAGD_outBuff_d),
	.q		(BAGD_outBuff_q)
);

assign BAGD = BAGD_outBuff_q;

REG #(.W(DeviceMaxNumber)) 
			Mask_Buff
(
	.clk	(clk),
	.ena	(DataStr_Trig_q),
	.clrn	(!End_Cycle),
	.d		(BAGD_outBuff_q),
	.q		(Mask_Buff_q)
);

genvar i;
generate

    for (i = 0; i < (DeviceMaxNumber-1); i = i + 1)
    begin: generate_BAGD_outBuff
        
        always_comb
            if( |BARQ_inBuff_q[DeviceMaxNumber-1:i])
                BAGD_outBuff_d[i] = 1'b0;
            else BAGD_outBuff_d[i] = BARQ_inBuff_q[i];
    end
endgenerate

assign BAGD_outBuff_d[DeviceMaxNumber-1] = BARQ_inBuff_q[DeviceMaxNumber-1];

// - - - Inpit sampling control - - - //
assign BARQ_OR = |BARQ_inBuff_q;

// - - - Output control - - - //

assign BAGD_OR = |BAGD_outBuff_q;

DFF AddressValid_Trig(.clrn(1'b1), .clk(clk), .d(BAGD_OR), .q(AddressValid))


  
  
  
endmodule:Arbiter