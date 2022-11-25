onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk100
add wave -noupdate -radix hexadecimal -childformat {{{/testbench/FT_USB_inst/usb_package[19]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[18]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[17]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[16]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[15]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[14]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[13]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[12]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[11]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[10]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[9]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[8]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[7]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[6]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[5]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[4]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[3]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[2]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[1]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[0]} -radix hexadecimal}} -subitemconfig {{/testbench/FT_USB_inst/usb_package[19]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[18]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[17]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[16]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[15]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[14]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[13]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[12]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[11]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[10]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[9]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[8]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[7]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[6]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[5]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[4]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[3]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[2]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[1]} {-radix hexadecimal} {/testbench/FT_USB_inst/usb_package[0]} {-radix hexadecimal}} /testbench/FT_USB_inst/usb_package
add wave -noupdate /testbench/FT_USB_inst/byte_index
add wave -noupdate -expand -group testbench /testbench/FT_USB_inst/ft_rxfn
add wave -noupdate -expand -group testbench /testbench/FT_TXEn
add wave -noupdate -expand -group testbench /testbench/FT_RXFn
add wave -noupdate -expand -group testbench /testbench/FT_RDn
add wave -noupdate -expand -group testbench /testbench/FT_WR
add wave -noupdate -expand -group testbench /testbench/FT_DATA_In
add wave -noupdate -expand -group testbench -radix hexadecimal /testbench/FT_DATA_Out
add wave -noupdate -expand -group FT_Module /testbench/FT_USB_inst/ft_rxfn
add wave -noupdate -expand -group FT_Module -radix hexadecimal /testbench/FT_USB_inst/FT_DATA_out
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/rxf_edge
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/rxf_delay
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/start_read
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/rd_cycle_is_active
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/rd_strobe
add wave -noupdate -expand -group {Single word Read} /testbench/USB_RAM_Reg_inst/rd_timing_cnt
add wave -noupdate -expand -group {Single word Read} -radix hexadecimal /testbench/USB_RAM_Reg_inst/ft_inbus_buffer
add wave -noupdate -expand -group {Packet working condition} /testbench/USB_RAM_Reg_inst/sample_enable
add wave -noupdate -expand -group {Packet working condition} /testbench/USB_RAM_Reg_inst/packet_is_in_progress
add wave -noupdate -expand -group {Packet working condition} /testbench/USB_RAM_Reg_inst/byte_number_cnt
add wave -noupdate -expand -group {Packet working condition} /testbench/USB_RAM_Reg_inst/packet_length_is_wrong
add wave -noupdate -expand -group Header_Recognizing -radix unsigned /testbench/USB_RAM_Reg_inst/h_key_cnt
add wave -noupdate -expand -group Header_Recognizing /testbench/USB_RAM_Reg_inst/header_locked
add wave -noupdate -expand -group Header_Recognizing /testbench/USB_RAM_Reg_inst/header_recognized
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/t_key_cnt
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/trailer_locked
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/trailer_recognized
add wave -noupdate /testbench/USB_RAM_Reg_inst/error
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {10153 ns} 0} {{Cursor 2} {1805 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 329
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
WaveRestoreZoom {0 ns} {1888 ns}
