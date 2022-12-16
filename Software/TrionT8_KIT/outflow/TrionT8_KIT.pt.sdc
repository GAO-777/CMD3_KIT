
# Efinity Interface Designer SDC
# Version: 2022.1.226.1.9
# Date: 2022-12-14 12:59

# Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

# Device: T8Q144
# Project: TrionT8_KIT
# Timing Model: C3 (final)

# PLL Constraints
#################
create_clock -period 10.0000 clk100

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {quartz_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {quartz_clk}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {GPIO[8]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {GPIO[8]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {Led_bus[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {Led_bus[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {Led_bus[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {Led_bus[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {Led_bus[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {Led_bus[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {Led_bus[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {Led_bus[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {LedG}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {LedG}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_RX_Full_n}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_RX_Full_n}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_PWR_n}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_PWR_n}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_TX_Enable_n}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_TX_Enable_n}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_RD_Strobe_n}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_RD_Strobe_n}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_WR_Strobe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_WR_Strobe}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[0]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[0]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[1]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[1]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[2]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[2]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[3]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[3]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[4]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[4]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[5]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[5]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[6]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[6]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_IN[7]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_IN[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OUT[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OUT[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {FT_DATA_OE[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {FT_DATA_OE[7]}]

# LVDS Tx Constraints
####################
