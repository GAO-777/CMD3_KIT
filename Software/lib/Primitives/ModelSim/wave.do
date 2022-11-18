onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate -expand -group Counter /testbench/counter_clrn
add wave -noupdate -expand -group Counter /testbench/counter_sclr
add wave -noupdate -expand -group Counter /testbench/counter_en
add wave -noupdate -expand -group Counter /testbench/counter_sload
add wave -noupdate -expand -group Counter -radix unsigned /testbench/counter_data
add wave -noupdate -expand -group Counter -color Gold -radix unsigned /testbench/counter_q
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_en
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_clrn
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_load
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_shiftin
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_sclr
add wave -noupdate -expand -group Shiftreg /testbench/shiftreg_data
add wave -noupdate -expand -group Shiftreg -color Gold /testbench/shiftregr_q
add wave -noupdate -expand -group Shiftreg -color Gold /testbench/shiftreg_shiftout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {64 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {420 ns}
