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
    output AddressValid,
    input TargetReady,
    output DataStrobe,
    output [1:0]Error
);





Arbiter1 #(.DEVICE_MAX_NUMBER (4))            Arbiter_inst
(

    .clk            (clk),
    .reset          (reset),
	.barq           (BARQ),
	.bagd           (BAGD)
 	//.AddressValid	(AddressValid),
	//.TargetReady	(TargetReady),
	//.DataStrobe	    (DataStrobe),
	//.Error	        (Error)
);



 
endmodule:example_1