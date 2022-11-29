onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Quartz_clk /testbench/quartz_clk
add wave -noupdate /testbench/new_prj/clk100
add wave -noupdate -label BARQ /testbench/new_prj/barq
add wave -noupdate -label BAGD /testbench/new_prj/bagd
add wave -noupdate -label ADDRESS_BUS -radix unsigned -radixshowbase 0 /testbench/new_prj/address_bus
add wave -noupdate -label DATA_BUS -radix decimal -radixshowbase 0 /testbench/new_prj/data_bus
add wave -noupdate -label RW /testbench/new_prj/rw
add wave -noupdate -label DATA_STROBE /testbench/new_prj/data_strobe
add wave -noupdate -label DEV_SEL /testbench/new_prj/dev_sel
add wave -noupdate /testbench/new_prj/Arbiter_inst/clk
add wave -noupdate /testbench/new_prj/Arbiter_inst/bagd_trig
add wave -noupdate -radix decimal -childformat {{{/testbench/new_prj/Dual_Port_RAM_inst/ram[31]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[30]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[29]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[28]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[27]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[26]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[25]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[24]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[23]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[22]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[21]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[20]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[19]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[18]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[17]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[16]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[15]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[14]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[13]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[12]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[11]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[10]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[9]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[8]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[7]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[6]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[5]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[4]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[3]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[2]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[1]} -radix decimal} {{/testbench/new_prj/Dual_Port_RAM_inst/ram[0]} -radix decimal}} -subitemconfig {{/testbench/new_prj/Dual_Port_RAM_inst/ram[31]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[30]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[29]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[28]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[27]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[26]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[25]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[24]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[23]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[22]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[21]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[20]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[19]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[18]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[17]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[16]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[15]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[14]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[13]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[12]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[11]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[10]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[9]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[8]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[7]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[6]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[5]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[4]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[3]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[2]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[1]} {-height 15 -radix decimal} {/testbench/new_prj/Dual_Port_RAM_inst/ram[0]} {-height 15 -radix decimal}} /testbench/new_prj/Dual_Port_RAM_inst/ram
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/FT_TXEn
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/FT_RXFn
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/FT_RDn
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/FT_WR
add wave -noupdate -radix hexadecimal /testbench/new_prj/USB_RAM_Reg_inst/FT_DATA_In
add wave -noupdate -radix hexadecimal /testbench/new_prj/USB_RAM_Reg_inst/FT_DATA_Out
add wave -noupdate -radix unsigned /testbench/new_prj/USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/FT_ZZ
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/AccessRequest
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/DirectOut
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/AccessRequest
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/AccessGranted
add wave -noupdate -radix decimal /testbench/new_prj/USB_RAM_Reg_inst/DataBusOut
add wave -noupdate /testbench/new_prj/USB_RAM_Reg_inst/byte_strobe
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {19882 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 332
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
WaveRestoreZoom {19296 ns} {20938 ns}
