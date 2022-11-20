`timescale 1ns / 1ps

module testbench
(
);
/*=================================================================*\
 - - - - - - - - - Global signals - - - - - - - - - - - - - - - - - -
\*=================================================================*/
localparam NUM_MASTERS = 2;
localparam NUM_SLAVES = 2;
logic clk;
	
initial 
begin
	clk		= 1'b0;
end

always 
  #5  clk = !clk; 

logic [(NUM_MASTERS-1) : 0]barq;
logic [(NUM_MASTERS-1) : 0]bagd;
logic [15:0]addr_bus;
logic [15:0]data_bus;
logic rw;
logic data_strobe;
logic address_valid;
logic [(NUM_SLAVES-1) : 0]slave_address_valid;





/*=================================================================*\
 - - - - - - - - - Master - - - - - - - - - - - - - - - - - - - - -
\*=================================================================*/

/*=================================================================*\
 - - - - - - - - - Arbiter - - - - - - - - - - - - - - - - - - - - -
\*=================================================================*/
logic [(NUM_MASTERS-1) : 0][15:0]master_addr_bus;
logic [(NUM_MASTERS-1) : 0][15:0]master_data_bus;
logic [(NUM_MASTERS-1) : 0]master_rw;


// Все ведомые подлючаются 
logic [(NUM_MASTERS-1) : 0][15:0]slave_data_bus;

logic 	target_ready,
		arbiter_error;

initial
begin
	slave_address_valid[1] = 0;

	master_data_bus[0] = 16'd22;
	master_data_bus[1] = 16'd444;
	
	master_addr_bus[0] = 16'd20;
	master_addr_bus[1] = 16'd44;
	master_rw[0] = '1;

	barq = 0; 


#30 barq = 1;

#30 barq=0;
	 


end



 Arbiter1 
#(
    .DEVICE_MAX_NUMBER 	(NUM_MASTERS),
    .CLK_MAX_TIMEOUT 	(10)
)
Arbiter_inst
(
	.clk				(clk),			   
	.barq_i				(barq),
	.bagd_o				(bagd),
	.target_ready_o 	(target_ready),
	.address_valid_i 	(address_valid),
	.data_strobe_o		(data_strobe),
	.error_o			(arbiter_error)
);

always_ff @(posedge clk or negedge target_ready) begin
	if (~target_ready)
		address_valid <= '0;
	else
		address_valid <= |slave_address_valid; 
end
	


	

// ===== Подлючение к ШИНЕ АДРЕСА и НАПРАВЛЕНИЯ ========//
always_ff @(posedge clk) begin

// Выбранный мастер подлючается к шине
if(|bagd)
	for (int i=0;i<NUM_MASTERS;i++)begin
		if (bagd[i]) begin
			addr_bus <= master_addr_bus[i];
			rw <= master_rw[i];
			end
	end		
// Если нет местера, то все сигналы шины подтягиваются к 0		
else begin
	addr_bus <= '0;
	rw <= '0;
	end
// ============ Подлючение к ДАННЫХ ===================//
// Если мастер пишет, то шина данных подлючается к нему
if(rw == '1)
	if(|bagd) // должен быть выбран хотя бы один мастер
		for (int i=0;i<NUM_MASTERS;i++)begin
			if (bagd[i]) 
				data_bus <= master_data_bus[i];	
		end		
				
	else 
		data_bus <= '0;
// Если мастер читает, то шина данных подлючается к ведомому
else
	if(|slave_address_valid) // хотя бы один ведомый должен отозваться
			for (int i=0;i<NUM_SLAVES;i++)begin
				if (bagd[i]) 
					data_bus <= slave_data_bus[i];
			end			
	else 
		data_bus <= '0;
	
end

/*=================================================================*\
 - - - - - - - - - RAM-1 - - - - - - - - - - - - - - - - - - - - -
\*=================================================================*/



 RAM RAM_1
(
	.clk			(clk),
	.address_valid	(slave_address_valid[0]),
	.addr_bus		(addr_bus),
	.data_bus		(data_bus),
	.data_bus_o		(slave_data_bus[0]),
	.rw				(rw),
	.data_strobe	(data_strobe)
);








endmodule:testbench