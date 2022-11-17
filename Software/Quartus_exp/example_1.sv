module example_1
#( DeviceMaxNumber = 4)
(
    input clk,
    input Reset,
    input [DeviceMaxNumber-1:0]BARQ,
    output [DeviceMaxNumber-1:0]BAGD,
    output [1:0][7:0]Error
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
);
 Edge_Sensing_Sync dd
(
  .clk		(clk),	
  .clr	(BARQ[0]),
  .d		(BARQ[1]),
  .ena		(BARQ[2]),
  .q			(Error[0])
);
 EdgeSensingSV ff
(
	.clk		(clk),   
	.reset (BARQ[3]),   
	.d		(BARQ[0]),   	   
	.q_r		(Error[1])      
);*/


 Counter Counter_inst [1:0];
 
 Counter_inst
(
    .clk 	(clk),     
    .clrn	(BARQ[0]),             
    .sclr	(BARQ[1]),        
    .ena 	(BARQ[2]),         
    .q		(Error)
);



endmodule:example_1