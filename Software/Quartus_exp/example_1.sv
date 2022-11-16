module example_1
#( DeviceMaxNumber = 4)
(
    input clk,
    input Reset,
    input [DeviceMaxNumber-1:0]BARQ,
    output [DeviceMaxNumber-1:0]BAGD,
    output Error
);



bit AddressValid;
bit TargetReady;
bit DataStrobe;

/*
Arbiter #(.DeviceMaxNumber (4))            Arbiter_inst
(
    .clk            (clk),		
	.Reset          (Reset), 
	.BARQ           (BARQ),
	.BAGD           (BAGD),
 	.AddressValid	(AddressValid),
	.TargetReady	(TargetReady),
	.DataStrobe	    (DataStrobe),
	.Error	        (Error)
);*/

//DFF1 (.clrn(BARQ[2]),.clk(clk),.d(BARQ[1]),.q(Error));

dff (.clrn(BARQ[3]),.clk(clk), .d(BARQ[1]),.q(Error));

endmodule:example_1