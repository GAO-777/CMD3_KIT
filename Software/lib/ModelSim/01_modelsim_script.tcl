transcript on

# Директория для скомпилированных библиотек
vlib work_db

# Путь к скомпилированным библиотекам Alter'ы
# 	D:\Gorkovenko\Library\ModelSim\altera\verilog\

# Путь к собственным библиотечным файлам
#	D:\Gorkovenko\Library\Quartus\Main_LIB\

#vcom -work work D:/Program_Files/ModelSim16_1/modelsim_ase/altera/verilog/eda/sim_lib/altera_mf.vhd

# Компилируем файлы
#	Тестбенч и остальные файлы
vlog -sv testbench.sv
vlog -sv ../Counter.sv


# Запускаем симулятор 
vsim -c -voptargs="+acc" -L D:/Program_Files/Quartus18/modelsim_ase/altera/verilog/altera_mf -L D:/Program_Files/Quartus18/modelsim_ase/altera/verilog/cyclonev -L D:/Program_Files/Quartus18/modelsim_ase/altera/verilog/220model work.testbench 


# Выводим все сигналы
add wave sim:/testbench/*

# Запускаем симуляцию на определеннре время
run 400 ns 


# Развернуть временную диаграмму сигналов
wave zoom full
