





module arbiter_v1
	#(
		DEVICE_MAX_NUMBER = 2, // Number of Master Devices connected to Bus
		CLK_MAX_TIMEOUT  = 12  // Maximum clock number until Target Ready
	)
	(
		input logic 						clock,  // System clock
		
		// HandShake Begin
		// Requestes from Master devices to bus access to 
		input logic [DEVICE_MAX_NUMBER-1:0]	barq, 
		
		// Bus Access Granted 
		input logic [DEVICE_MAX_NUMBER-1:0]	bagd,

		// Negotiation signals
		output logic 						addressvalid, // Target Address Decode
		input logic 						TargetReady,  // Target Device Ready when addr decoded
		output logic 						DataStrobe,	  // One clock HIGH when Target Ready or TimeOut
		// End of HandShake

		output logic 						Error	 	  // One clock HIGH  at TimOut 
	);

//======================================================================================
// 	Vars & Nets
//======================================================================================
	logic [DEVICE_MAX_NUMBER-1:0] BARQ_inBuff_s  = '0; // Input sampling
	logic [DEVICE_MAX_NUMBER-1:0] BAGD_outBuff_s = '0; // Output strobed
	
	logic 						nBARQ_OR_s;
	logic 						End_Cycle_s	   = '0;
    logic [5:0]					TimeOutCnt     = '0;
    logic 						TimeOut;
	logic [3:0]					TimingPipline_1 = '0; 
	logic [3:0]					TimingPipline_2 = '0;

//======================================================================================
// 	Functions & Tasks
//======================================================================================
	function int get_priority_request();
		int index = '0;
		
		for (int i=0; i<DEVICE_MAX_NUMBER-1; i++) begin
			if (BARQ_inBuff_s[i] == 1) begin
				index = i;
			end
		end
        return index;
	endfunction
    
    /*
 function <func_return_type> <func_name>(<arg_decls>);
	// Optional Block Declarations
	// Statements
endfunction

// Examples

function int get_priority_request(int a, int b = 1);
	return a + b;
endfunction*/
   
//======================================================================================
// 	Logic
//======================================================================================
	always_ff @(posedge clock) begin
	    if (nBARQ_OR_s == '1) begin
			BARQ_inBuff_s <= barq;
		end
		if (End_Cycle_s == '1) begin
			BARQ_inBuff_s <= '0;
		end
	end
    // Input sampling control	
	always_ff @(posedge clock) begin
		if (BARQ_inBuff_s == '0) begin
			nBARQ_OR_s = '1;
		end
	end

    // Priority Encoder to ensure single active BAGD
	always_ff @(posedge clock) begin
		BAGD_outBuff_s <= '0;
		for (int i=0; i<DEVICE_MAX_NUMBER-1; i++) begin
			if (BARQ_inBuff_s[get_priority_request()] == 1) begin
				BAGD_outBuff_s[get_priority_request()] <= '1;
			end
		end
	end
	
	// Output control
	always_ff @(posedge clock) begin
		if (End_Cycle_s == '1) begin
			TimingPipline_1 <= '0;
		end else begin
			// TimingPipline_1 <= TimingPipline_1[6 : 0] & (~nBARQ_OR); 	    
			for (int i=0; i<2; i++) begin
				TimingPipline_1[i+1] <= TimingPipline_1[i];
			end
			TimingPipline_1[0] <= ~nBARQ_OR_s;
			
			for (int i=0; i<2; i++) begin
				TimingPipline_2[i+1] <= TimingPipline_1[i];
			end
			TimingPipline_2[0] <= (addressvalid & (TargetReady | TimeOut));
		end
		// From "Target Ready" to "Data Strobe" control--Shaping one clock width pulse from positive edge of Target Ready
		DataStrobe <= TimingPipline_2[0] & (~TimingPipline_2[1]); // used edge_sensing
		End_Cycle_s  <= TimingPipline_2[3];
	end
	
	assign addressvalid	= TimingPipline_1[1];  // this time external mux of address lines is ready

    //Time_Out Timer: Starts  on "Target Ready" , Cleared at next clock of DataStrobe
    always_ff @(posedge clock) begin
		if (End_Cycle_s == '1) begin
			TimeOutCnt <= '0;
		end else begin
			if(addressvalid == '1) begin
				TimeOutCnt <= TimeOutCnt + 1;
			end
		end
		TimeOut <= '0;
		if (TimeOutCnt == CLK_MAX_TIMEOUT-1) begin
			TimeOut <= '1;
		end
	end
	
	assign Error = TimeOut;  // Error marker 


endmodule	