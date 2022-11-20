onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /testbench/clk
add wave -noupdate -label barq /testbench/barq
add wave -noupdate -label bagd /testbench/bagd
add wave -noupdate -label addr_bus -radix decimal /testbench/addr_bus
add wave -noupdate -label data_bus -radix decimal /testbench/data_bus
add wave -noupdate -label rw /testbench/rw
add wave -noupdate -label data_strobe /testbench/data_strobe
add wave -noupdate -label address_valid /testbench/address_valid
add wave -noupdate -label target_ready /testbench/target_ready
add wave -noupdate -expand -group Arbiter -label address_valid_delay /testbench/Arbiter_inst/address_valid_delay
add wave -noupdate -expand -group Arbiter -label timeout_cnt -radix unsigned -radixshowbase 0 /testbench/Arbiter_inst/timeout_cnt
add wave -noupdate -expand -group Arbiter -label timeout /testbench/Arbiter_inst/timeout
add wave -noupdate -expand -group Arbiter -label end_cycle /testbench/Arbiter_inst/end_cycle
add wave -noupdate -label arbiter_error /testbench/arbiter_error
add wave -noupdate -group RAM1 /testbench/RAM_1/clk
add wave -noupdate -group RAM1 -radix unsigned -radixshowbase 0 /testbench/RAM_1/addr_bus
add wave -noupdate -group RAM1 /testbench/RAM_1/address_valid
add wave -noupdate -group RAM1 -radix unsigned -radixshowbase 0 /testbench/RAM_1/data_bus
add wave -noupdate -group RAM1 /testbench/RAM_1/rw
add wave -noupdate -group RAM1 /testbench/RAM_1/data_strobe
add wave -noupdate -group RAM1 /testbench/RAM_1/cs
add wave -noupdate -group RAM1 -radix unsigned -radixshowbase 0 /testbench/RAM_1/mem
add wave -noupdate -radix unsigned -radixshowbase 0 /testbench/RAM_1/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {155 ns} 0}
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
WaveRestoreZoom {0 ns} {243 ns}
