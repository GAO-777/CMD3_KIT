# Constrain clock port clk with a 40-ns requirement
create_clock -name quartz_clk -period 40.000 [get_ports {quartz_clk}]


# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design
derive_pll_clocks
derive_clock_uncertainty
