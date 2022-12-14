import Skeleton_package::*;
module TrionT8_KIT
(
	input  quartz_clk,		// 25MHz Clock from quartz oscillator
    
    //PLL
    input  clk100,
    
    
    // USB
    input  FT_TX_Enable_n,
    input  FT_RX_Full_n,
	output FT_WR_Strobe,
	output FT_RD_Strobe_n,
    input FT_PWR_n,
    input wire [7:0]FT_DATA_IN,
    output logic [7:0]FT_DATA_OUT,
    output wire [7:0]FT_DATA_OE, 
    

	//output LedR, 				 
    output LedG, 				 
    //output LedB,			
    output [3:0]Led_bus,
    output [8:1]GPIO
);






//=============================================================================
// 				NETS
//=============================================================================

// PLL
wire clk100;		// 100 ћ√ц
wire clk150;		// 150 ћ√ц
wire pll_locked;	

// Arbiter 
wire [(NUM_MASTERS-1) : 0]barq;
wire [(NUM_MASTERS-1) : 0]bagd;
wire address_valid;
wire data_strobe;
wire target_ready; 
wire arbiter_error;

// Main_Bus
logic [15:0]address_bus; 
logic [15:0]data_bus;
logic rw;
logic [(NUM_SLAVES-1) : 0] cs;
logic [(NUM_SLAVES-1) : 0] dev_sel;

// USB
wire [15:0]USB_DataBus_In;			
wire [15:0]USB_DataBusOut;			
wire USB_Error;				
wire USB_AccessRequest;		
wire USB_AccessGranted;		
wire USB_DirectOut;			
wire [15:0]USB_AddrBusOut;			
wire USB_Select;				
wire USB_Direct_In;			
wire [15:0]USB_AddrBus_In;	
logic USB_status;


// TEST_RAM
logic [15:0]test_ram;
logic RAM_Select;




//=============================================================================
// 				Arbiter
//=============================================================================

// запрос на предастовление шины данных
assign barq[0] = USB_AccessRequest;
assign barq[1] = 1'b0;
assign barq[2] = 1'b0;
assign barq[3] = 1'b0;
		           
// потверждение доступа к шине данных
assign USB_AccessGranted = bagd[0]; 
	
assign RAM_Select = dev_sel[0]; 
assign USB_Select = dev_sel[1]; 



    Arbiter1 
#(
    .DEVICE_MAX_NUMBER 	(NUM_MASTERS),
    .CLK_MAX_TIMEOUT 	(12)
)
						Arbiter_inst
(
	.clk				(clk100),			   
	.barq_i				(barq),
	.bagd_o				(bagd),
	.target_ready_o 	(target_ready),
	.address_valid_i 	(address_valid),
	.data_strobe_o		(data_strobe),
	.error_o			(arbiter_error)
);



//=============================================================================
// 				BUS
//=============================================================================

always_comb begin
	cs = '0;
	
	if	((address_bus	>=	TEST_RAM_OFFSET ) & 
		(address_bus	<=	(TEST_RAM_OFFSET + TEST_RAM_SIZE - 1))) 
			cs[0]	<=	'1;  	
	
	
    if	((address_bus	>=	USB_IFace_OFFSET ) & 
		(address_bus	<=	(USB_IFace_OFFSET + USB_IFace_SIZE - 1))) 
			cs[1]	<=	'1;  
end

always_ff @(posedge clk100 or negedge target_ready) begin
	if (~target_ready)
		dev_sel <= '0;
	else
		dev_sel <= cs; 
end
	
assign address_valid = |dev_sel;

always_comb begin

case (bagd)
	'b0001: begin
		address_bus			=	USB_AddrBusOut; 
		rw					=	USB_DirectOut;
		end    

	default: begin
		address_bus[15:0]	=	'0;
		rw					=	'0;
		end
endcase
end


always_comb begin
if(rw) 
	case(bagd)		
		'b0001:		data_bus	 =	USB_DataBusOut;
		default:	data_bus 	 = '0;
	endcase
		
		
else begin

	case (dev_sel)
		2'b00: 	data_bus = '0;
		2'b01: 	data_bus = test_ram;
		2'b10: 	data_bus = USB_DataBusOut;            
		2'b11: 	data_bus = 16'd44;//test_ram; 
		default: 	data_bus	= 16'd0; 
	endcase 
	end 
end 





//=============================================================================
// 				BUS
//=============================================================================
logic USB_Header_recognized;
logic USB_Trailer_recognized;
logic FT_ZZ;
logic [7:0]FT_DATA_In;
logic [7:0]FT_DATA_Out;
logic USB_status;
logic USB_active;
USB_RAM_Reg USB_RAM_Reg_inst
(
	.FT_TXEn				(FT_TX_Enable_n),			
	.FT_RXFn				(FT_RX_Full_n),							
	.FT_RDn					(FT_RD_Strobe_n),							
	.FT_WR					(FT_WR_Strobe),				
	.FT_DATA_In				(FT_DATA_IN),		
	.FT_DATA_Out			(FT_DATA_OUT),	
	.FT_ZZ					(FT_ZZ),
	.USB_Active				(USB_active),
	.Header_recognized		(USB_Header_recognized),
	.Trailer_recognized		(USB_Trailer_recognized),
	.Packet_Proc			(),
	.RAM_WE					(),

	.clk					(clk100),
	.DataBus_In				(data_bus),
	.DataBusOut				(USB_DataBusOut),
	.DataBusStrobe			(data_strobe), 
	.Error					(USB_Error),

	.AccessRequest			(USB_AccessRequest),
	.AccessGranted			(USB_AccessGranted),
	.DirectOut				(USB_DirectOut),
	.AddrBusOut				(USB_AddrBusOut),

	.Select					(USB_Select),
	.Direct_In				(rw),
	.AddrBus_In				(address_bus)
	
);


assign FT_DATA_OE = FT_ZZ ? '1 : '0;
//assign FT_DATA_In = FT_Data_Bus; 
//assign FT_DATA_OUT =  FT_ZZ ? FT_DATA_Out : '0;   

always_ff @(posedge clk100)
	USB_status <= ~FT_PWR_n;


//assign LedR = arbiter_error
//assign LedG = USB_Error ? 1'b0 : 1'b1; 
//assign LedB = USB_active ? 1'b0 : 1'b1; 




logic [127:0] cnt;
always_ff @(posedge clk100) begin
    cnt <= cnt +1'b1;    
end

assign GPIO[1] = cnt[10];
assign GPIO[2] = cnt[31];
assign LedG = cnt[25] ? 1'b0 : 1'b1; 

logic [3:0]tt;
always_ff @(posedge clk100) begin
    if(rw & dev_sel[0] & data_strobe)
        tt  <= data_bus[3:0];
end

assign Led_bus = tt; 
//=============================================================================
// 				TEST_RAM
//=============================================================================

Dual_Port_RAM		
#(
	.WORD_WIDTH		(16),
	.ADDR_WIDTH		(8),
	.NUM_WORDS		(256)
)
					Dual_Port_RAM_inst
(
	.clk			(clk100),
	// PORT A
	.addr_a			(address_bus[7:0]), 
	.data_a			(data_bus), 
	.wren_a			(rw & dev_sel[0] & data_strobe),	
	
	// PORT B
	.addr_b			(address_bus[7:0]),
	.data_b			(1'b0),
	.wren_b			(1'b0),
	.q_b			(test_ram)
);


endmodule: TrionT8_KIT