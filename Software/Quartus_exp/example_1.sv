module example_1
#( DeviceMaxNumber = 4)
(
    input clrn,
    input [1:0]d,
    output  [1:0]q,

    input  clk,
    input  reset,
    input  [DeviceMaxNumber-1:0]BARQ,
    output [DeviceMaxNumber-1:0]BAGD,
    input AddressValid,
    output TargetReady,
    output DataStrobe,
    output [1:0]Error
);






 Arbiter1 
#(
    .DEVICE_MAX_NUMBER 	(4),
    .CLK_MAX_TIMEOUT 	(10)
)
Arbiter_inst
(
	.clk				(clk),			   
	.barq_i				(BARQ),
	.bagd_o				(BAGD),
	.target_ready_o 	(TargetReady),
	.address_valid_i 	(AddressValid),
	.data_strobe_o		(DataStrobe),
	.error_o			(Error)
);
 
endmodule:example_1