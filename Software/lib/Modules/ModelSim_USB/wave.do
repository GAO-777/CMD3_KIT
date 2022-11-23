onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Quartz_clk /testbench/quartz_clk
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_TXEn
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_RXFn
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_RDn
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_WR
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_DATA_In
add wave -noupdate /testbench/USB_RAM_Reg_inst/FT_DATA_Out
add wave -noupdate /testbench/USB_RAM_Reg_inst/rxf_edge
add wave -noupdate /testbench/USB_RAM_Reg_inst/rxf_delay
add wave -noupdate /testbench/USB_RAM_Reg_inst/start_read
add wave -noupdate /testbench/USB_RAM_Reg_inst/rd_cycle_is_active
add wave -noupdate /testbench/USB_RAM_Reg_inst/rd_strobe
add wave -noupdate -radix decimal -radixshowbase 0 /testbench/USB_RAM_Reg_inst/rd_timing_cnt
add wave -noupdate /testbench/USB_RAM_Reg_inst/ft_inbus_buffer
add wave -noupdate /testbench/USB_RAM_Reg_inst/RD_End_Cycle_Time
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {41 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {473 ns}
