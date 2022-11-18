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




/*
Arbiter #(.DeviceMaxNumber (4))            Arbiter_inst
(

    .clk            (clk),
    .reset          (reset),
	.BARQ           (BARQ),
	.BAGD           (BAGD),
 	.AddressValid	(AddressValid),
	.TargetReady	(TargetReady),
	.DataStrobe	    (DataStrobe),
	.Error	        (Error)
);*/


dff ddd 
(
    .clk    (clk), 
    .clrn   (clrn),         
    .d      (d), 
    .q      (q)
);
 
endmodule:example_1