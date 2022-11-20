module RAM
(
	input  logic clk,
	input  logic [15:0]addr_bus,
	output logic address_valid,
	input  logic [15:0]data_bus,
	output  logic [15:0]data_bus_o,
	input  logic rw,
	input  logic data_strobe
);


logic cs;
logic [15:0]mem = 99;


always_comb
begin

    if	(addr_bus == 16'd20 )
		cs	<=	'1;
	else
		cs	<=	'0;
end

always_ff @(posedge clk) begin
	if (cs)
		address_valid <= '1;
	else
		address_valid <= '0;
end

always_ff @(posedge clk) begin
	if (rw & address_valid & data_strobe)
		mem <= data_bus;
	if (~rw & address_valid)
		data_bus_o <= mem;
	else
		data_bus_o <= '0;
end

endmodule:RAM