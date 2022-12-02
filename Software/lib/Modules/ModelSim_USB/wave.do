onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk100 /testbench/clk100
add wave -noupdate -radix hexadecimal -childformat {{{/testbench/FT_USB_inst/usb_package[27]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[26]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[25]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[24]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[23]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[22]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[21]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[20]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[19]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[18]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[17]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[16]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[15]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[14]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[13]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[12]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[11]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[10]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[9]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[8]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[7]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[6]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[5]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[4]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[3]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[2]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[1]} -radix hexadecimal} {{/testbench/FT_USB_inst/usb_package[0]} -radix hexadecimal}} -subitemconfig {{/testbench/FT_USB_inst/usb_package[27]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[26]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[25]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[24]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[23]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[22]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[21]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[20]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[19]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[18]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[17]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[16]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[15]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[14]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[13]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[12]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[11]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[10]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[9]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[8]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[7]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[6]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[5]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[4]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[3]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[2]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[1]} {-height 15 -radix hexadecimal} {/testbench/FT_USB_inst/usb_package[0]} {-height 15 -radix hexadecimal}} /testbench/FT_USB_inst/usb_package
add wave -noupdate /testbench/FT_USB_inst/byte_index
add wave -noupdate -expand -group testbench /testbench/FT_USB_inst/ft_rxfn
add wave -noupdate -expand -group testbench /testbench/FT_TXEn
add wave -noupdate -expand -group testbench /testbench/FT_RXFn
add wave -noupdate -expand -group testbench /testbench/FT_RDn
add wave -noupdate -expand -group testbench /testbench/FT_WR
add wave -noupdate -expand -group testbench -radix hexadecimal /testbench/FT_DATA_In
add wave -noupdate -expand -group testbench -radix hexadecimal /testbench/FT_DATA_Out
add wave -noupdate -expand -group FT_Module /testbench/FT_USB_inst/ft_rxfn
add wave -noupdate -expand -group FT_Module -radix hexadecimal /testbench/FT_USB_inst/FT_DATA_out
add wave -noupdate -expand -group {Single word Read} -label rxf_edge /testbench/USB_RAM_Reg_inst/rxf_edge
add wave -noupdate -expand -group {Single word Read} -label rxf_delay /testbench/USB_RAM_Reg_inst/rxf_delay
add wave -noupdate -expand -group {Single word Read} -label start_read /testbench/USB_RAM_Reg_inst/start_read
add wave -noupdate -expand -group {Single word Read} -label rd_cycle_is_active /testbench/USB_RAM_Reg_inst/rd_cycle_is_active
add wave -noupdate -expand -group {Single word Read} -label rd_strobe /testbench/USB_RAM_Reg_inst/rd_strobe
add wave -noupdate -expand -group {Single word Read} -label rd_timing_cnt /testbench/USB_RAM_Reg_inst/rd_timing_cnt
add wave -noupdate -expand -group {Single word Read} -label ft_inbus_buffer -radix hexadecimal /testbench/USB_RAM_Reg_inst/ft_inbus_buffer
add wave -noupdate -expand -group {Packet working condition} -label sample_enable /testbench/USB_RAM_Reg_inst/sample_enable
add wave -noupdate -expand -group {Packet working condition} -label packet_is_in_progress /testbench/USB_RAM_Reg_inst/packet_is_in_progress
add wave -noupdate -expand -group {Packet working condition} -label byte_number_cnt -radix decimal /testbench/USB_RAM_Reg_inst/byte_number_cnt
add wave -noupdate -expand -group {Packet working condition} -label packet_length_is_wrong /testbench/USB_RAM_Reg_inst/packet_length_is_wrong
add wave -noupdate -expand -group Header_Recognizing -radix unsigned /testbench/USB_RAM_Reg_inst/h_key_cnt
add wave -noupdate -expand -group Header_Recognizing /testbench/USB_RAM_Reg_inst/header_locked
add wave -noupdate -expand -group Header_Recognizing /testbench/USB_RAM_Reg_inst/header_recognized
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/t_key_cnt
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/trailer_locked
add wave -noupdate -expand -group Trailer_Recognizing /testbench/USB_RAM_Reg_inst/trailer_recognized
add wave -noupdate -expand -group {Control Reg} -radix unsigned /testbench/USB_RAM_Reg_inst/length_of_packet_l
add wave -noupdate -expand -group {Control Reg} -radix unsigned /testbench/USB_RAM_Reg_inst/length_of_packet_h
add wave -noupdate -expand -group {Control Reg} -radix decimal /testbench/USB_RAM_Reg_inst/length_of_packet
add wave -noupdate -expand -group {Control Reg} /testbench/USB_RAM_Reg_inst/length_is_wrong
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/service_type_l
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/service_type_h
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/service_type
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/load_data_l
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/load_data_h
add wave -noupdate -expand -group {Control Reg} -radix hexadecimal /testbench/USB_RAM_Reg_inst/load_data
add wave -noupdate -expand -group {Write data to RAM} /testbench/USB_RAM_Reg_inst/ram_filling_is_in_progress
add wave -noupdate -expand -group {Write data to RAM} /testbench/USB_RAM_Reg_inst/ram_filling
add wave -noupdate -expand -group {Write data to RAM} /testbench/USB_RAM_Reg_inst/ram_from_usb_we
add wave -noupdate -expand -group {Write data to RAM} /testbench/USB_RAM_Reg_inst/USB_CMDL_RAM/ram
add wave -noupdate -expand -group {RAM & CL} /testbench/USB_RAM_Reg_inst/addr_page_offset
add wave -noupdate -expand -group {RAM & CL} /testbench/USB_RAM_Reg_inst/data_page_offset
add wave -noupdate -expand -group {RAM & CL} /testbench/USB_RAM_Reg_inst/fast_module_buffer
add wave -noupdate -expand -group {RAM & CL} /testbench/USB_RAM_Reg_inst/usb_cmdl_ram_out
add wave -noupdate -expand -group {Single word write} /testbench/USB_RAM_Reg_inst/ft_outbus_buffer
add wave -noupdate -expand -group {Single word write} /testbench/USB_RAM_Reg_inst/output_buffer
add wave -noupdate -expand -group {Single word write} -radix unsigned /testbench/USB_RAM_Reg_inst/output_data
add wave -noupdate -expand -group {Single word write} /testbench/USB_RAM_Reg_inst/wr_cycle_is_active
add wave -noupdate -expand -group {Single word write} /testbench/USB_RAM_Reg_inst/wr_timing_counter
add wave -noupdate -expand -group {Single word write} /testbench/USB_RAM_Reg_inst/wr_strobe
add wave -noupdate -expand -group Send /testbench/USB_RAM_Reg_inst/command_list_end_control
add wave -noupdate -expand -group Send -radix unsigned /testbench/USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt
add wave -noupdate -expand -group Send /testbench/USB_RAM_Reg_inst/ram_addr_cnt_en
add wave -noupdate -expand -group Send /testbench/USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en
add wave -noupdate /testbench/USB_RAM_Reg_inst/rd_paket_end_edge
add wave -noupdate /testbench/USB_RAM_Reg_inst/packet_prog_delay
add wave -noupdate /testbench/USB_RAM_Reg_inst/sample_enable_cnt
add wave -noupdate /testbench/USB_RAM_Reg_inst/ft_txen
add wave -noupdate /testbench/USB_RAM_Reg_inst/out_buff_byte_number_cnt
add wave -noupdate /testbench/USB_RAM_Reg_inst/command_list_has_control
add wave -noupdate /testbench/USB_RAM_Reg_inst/byte_strobe
add wave -noupdate /testbench/USB_RAM_Reg_inst/packet_prog_delay
add wave -noupdate /testbench/USB_RAM_Reg_inst/rd_paket_end_edge
add wave -noupdate /testbench/USB_RAM_Reg_inst/clk
add wave -noupdate /testbench/USB_RAM_Reg_inst/DataBus_In
add wave -noupdate /testbench/USB_RAM_Reg_inst/DataBusOut
add wave -noupdate /testbench/USB_RAM_Reg_inst/DataBusStrobe
add wave -noupdate /testbench/USB_RAM_Reg_inst/Error
add wave -noupdate /testbench/USB_RAM_Reg_inst/condition_access_request
add wave -noupdate /testbench/USB_RAM_Reg_inst/AccessRequest
add wave -noupdate /testbench/USB_RAM_Reg_inst/AccessGranted
add wave -noupdate /testbench/USB_RAM_Reg_inst/DirectOut
add wave -noupdate /testbench/USB_RAM_Reg_inst/AddrBusOut
add wave -noupdate /testbench/USB_RAM_Reg_inst/Select
add wave -noupdate /testbench/USB_RAM_Reg_inst/Direct_In
add wave -noupdate /testbench/USB_RAM_Reg_inst/AddrBus_In
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {18135 ns} 0} {{Cursor 2} {11506 ns} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {13636 ns} {26762 ns}
