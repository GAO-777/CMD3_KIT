
//
// Verific Verilog Description of module TrionT8_KIT
//

module TrionT8_KIT (quartz_clk, FT_TX_Enable_n, FT_RX_Full_n, FT_WR_Strobe, 
            FT_RD_Strobe_n, FT_PWR_n, FT_DATA_IN, FT_DATA_OUT, FT_DATA_OE, 
            clk100, LedG, GPIO);
    input quartz_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input FT_TX_Enable_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input FT_RX_Full_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output FT_WR_Strobe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output FT_RD_Strobe_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input FT_PWR_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [7:0]FT_DATA_IN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [7:0]FT_DATA_OUT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output FT_DATA_OE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input clk100 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output LedG /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [8:1]GPIO /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    wire n163;
    wire n20_2;
    wire n24_2;
    
    wire \bagd[0] , n17, n18, n19, n20, n21, n22, n23, n24, 
        n25, n26, n27, n28, ee, n30, n31, n32, n33, \dev_sel[0] , 
        n35, n36, n37, n38, n39, n40, n42, n43, \Arbiter_inst/address_valid_d[0] , 
        data_strobe, n46, n47, n48, \Arbiter_inst/timeout_cnt[0] , 
        \Arbiter_inst/timeout , n52, n53, n54, n55, n56, n57, 
        n58, \Arbiter_inst/address_valid_d[1] , \Arbiter_inst/address_valid_d[2] , 
        n61, n62, \Arbiter_inst/timeout_cnt[1] , \Arbiter_inst/timeout_cnt[2] , 
        \Arbiter_inst/timeout_cnt[3] , \Arbiter_inst/timeout_cnt[4] , \Arbiter_inst/timeout_cnt[5] , 
        \Arbiter_inst/timeout_cnt[6] , n69, n70, n71, n72, n73, 
        n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
        n84, \USB_RAM_Reg_inst/rxf_edge , \USB_RAM_Reg_inst/rd_cycle_is_active , 
        \USB_RAM_Reg_inst/rd_strobe , \USB_RAM_Reg_inst/rd_timing_cnt[0] , 
        n89, \USB_RAM_Reg_inst/ft_inbus_buffer[0] , \USB_RAM_Reg_inst/h_key_cnt[0] , 
        \USB_RAM_Reg_inst/t_key_cnt[0] , USB_Header_recognized, USB_Trailer_recognized, 
        \USB_AddrBusOut[14] , \USB_AddrBusOut[15] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[14] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[15] , \USB_RAM_Reg_inst/byte_number_cnt[0] , 
        \USB_RAM_Reg_inst/length_of_packet_l[0] , \USB_RAM_Reg_inst/received_packet_is_valid , 
        \USB_RAM_Reg_inst/rd_timing_cnt[7] , \USB_RAM_Reg_inst/length_of_packet_h[0] , 
        \USB_RAM_Reg_inst/service_type_l[0] , \USB_RAM_Reg_inst/rd_timing_cnt[6] , 
        \USB_RAM_Reg_inst/service_type_h[0] , \USB_RAM_Reg_inst/load_data_l[0] , 
        \USB_RAM_Reg_inst/rd_timing_cnt[5] , \USB_RAM_Reg_inst/load_data_h[0] , 
        \USB_RAM_Reg_inst/ram_filling_is_in_progress , \USB_RAM_Reg_inst/rd_timing_cnt[4] , 
        \USB_RAM_Reg_inst/fast_module_buffer[0] , n115, n116, \USB_RAM_Reg_inst/rd_timing_cnt[3] , 
        \USB_RAM_Reg_inst/wr_timing_counter[0] , \USB_RAM_Reg_inst/rd_timing_cnt[2] , 
        n120, n121, \USB_RAM_Reg_inst/rd_timing_cnt[1] , \USB_RAM_Reg_inst/packet_prog_delay[0] , 
        n126, \USB_RAM_Reg_inst/sample_enable_cnt[0] , \USB_RAM_Reg_inst/rd_paket_end_edge , 
        \USB_RAM_Reg_inst/ft_txen , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] , 
        n132, n133, \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] , \USB_AddrBusOut[2] , 
        \USB_AddrBusOut[3] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[2] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[3] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en , \USB_RAM_Reg_inst/condition_access_request , 
        \USB_RAM_Reg_inst/rxf_delay[0] , USB_AccessRequest, n145, n146, 
        \USB_RAM_Reg_inst/ft_inbus_buffer[1] , \USB_RAM_Reg_inst/ft_inbus_buffer[2] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[3] , \USB_RAM_Reg_inst/ft_inbus_buffer[4] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[5] , \USB_RAM_Reg_inst/ft_inbus_buffer[6] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[7] , \USB_RAM_Reg_inst/h_key_cnt[1] , 
        \USB_RAM_Reg_inst/h_key_cnt[2] , \USB_RAM_Reg_inst/h_key_cnt[3] , 
        n157, \USB_RAM_Reg_inst/t_key_cnt[1] , \USB_RAM_Reg_inst/t_key_cnt[2] , 
        \USB_RAM_Reg_inst/t_key_cnt[3] , n161, n162, \USB_RAM_Reg_inst/byte_number_cnt[1] , 
        \USB_RAM_Reg_inst/byte_number_cnt[2] , \USB_RAM_Reg_inst/byte_number_cnt[3] , 
        \USB_RAM_Reg_inst/byte_number_cnt[4] , \USB_RAM_Reg_inst/byte_number_cnt[5] , 
        \USB_RAM_Reg_inst/byte_number_cnt[6] , \USB_RAM_Reg_inst/byte_number_cnt[7] , 
        \USB_RAM_Reg_inst/byte_number_cnt[8] , \USB_RAM_Reg_inst/byte_number_cnt[9] , 
        \USB_RAM_Reg_inst/byte_number_cnt[10] , \USB_RAM_Reg_inst/byte_number_cnt[11] , 
        \USB_RAM_Reg_inst/byte_number_cnt[12] , \USB_RAM_Reg_inst/byte_number_cnt[13] , 
        \USB_RAM_Reg_inst/byte_number_cnt[14] , \USB_RAM_Reg_inst/byte_number_cnt[15] , 
        \USB_RAM_Reg_inst/length_of_packet_l[1] , \USB_RAM_Reg_inst/length_of_packet_l[2] , 
        \USB_RAM_Reg_inst/length_of_packet_l[3] , \USB_RAM_Reg_inst/length_of_packet_l[4] , 
        \USB_RAM_Reg_inst/length_of_packet_l[5] , \USB_RAM_Reg_inst/length_of_packet_l[6] , 
        \USB_RAM_Reg_inst/length_of_packet_l[7] , \USB_RAM_Reg_inst/length_of_packet_h[1] , 
        \USB_RAM_Reg_inst/length_of_packet_h[2] , \USB_RAM_Reg_inst/length_of_packet_h[3] , 
        \USB_RAM_Reg_inst/length_of_packet_h[4] , \USB_RAM_Reg_inst/length_of_packet_h[5] , 
        \USB_RAM_Reg_inst/length_of_packet_h[6] , \USB_RAM_Reg_inst/length_of_packet_h[7] , 
        \USB_RAM_Reg_inst/service_type_l[1] , \USB_RAM_Reg_inst/service_type_l[2] , 
        \USB_RAM_Reg_inst/service_type_l[3] , \USB_RAM_Reg_inst/service_type_l[4] , 
        \USB_RAM_Reg_inst/service_type_l[5] , \USB_RAM_Reg_inst/service_type_l[6] , 
        \USB_RAM_Reg_inst/service_type_l[7] , \USB_RAM_Reg_inst/service_type_h[1] , 
        \USB_RAM_Reg_inst/service_type_h[2] , \USB_RAM_Reg_inst/service_type_h[3] , 
        \USB_RAM_Reg_inst/service_type_h[4] , \USB_RAM_Reg_inst/service_type_h[5] , 
        \USB_RAM_Reg_inst/service_type_h[6] , \USB_RAM_Reg_inst/service_type_h[7] , 
        \USB_RAM_Reg_inst/load_data_l[1] , \USB_RAM_Reg_inst/load_data_l[2] , 
        \USB_RAM_Reg_inst/load_data_l[3] , \USB_RAM_Reg_inst/load_data_l[4] , 
        \USB_RAM_Reg_inst/load_data_l[5] , \USB_RAM_Reg_inst/load_data_l[6] , 
        \USB_RAM_Reg_inst/load_data_l[7] , \USB_RAM_Reg_inst/load_data_h[1] , 
        \USB_RAM_Reg_inst/load_data_h[2] , \USB_RAM_Reg_inst/load_data_h[3] , 
        \USB_RAM_Reg_inst/load_data_h[4] , \USB_RAM_Reg_inst/load_data_h[5] , 
        \USB_RAM_Reg_inst/load_data_h[6] , \USB_RAM_Reg_inst/load_data_h[7] , 
        \USB_RAM_Reg_inst/fast_module_buffer[1] , \USB_RAM_Reg_inst/fast_module_buffer[2] , 
        \USB_RAM_Reg_inst/fast_module_buffer[3] , \USB_RAM_Reg_inst/fast_module_buffer[4] , 
        \USB_RAM_Reg_inst/fast_module_buffer[5] , \USB_RAM_Reg_inst/fast_module_buffer[6] , 
        \USB_RAM_Reg_inst/fast_module_buffer[7] , \USB_RAM_Reg_inst/fast_module_buffer[8] , 
        \USB_RAM_Reg_inst/fast_module_buffer[9] , \USB_RAM_Reg_inst/fast_module_buffer[10] , 
        \USB_RAM_Reg_inst/fast_module_buffer[11] , \USB_RAM_Reg_inst/fast_module_buffer[12] , 
        \USB_RAM_Reg_inst/fast_module_buffer[13] , \USB_RAM_Reg_inst/fast_module_buffer[14] , 
        \USB_RAM_Reg_inst/fast_module_buffer[15] , n235, n236, \USB_AddrBusOut[4] , 
        \USB_AddrBusOut[5] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[4] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[5] , 
        \USB_AddrBusOut[0] , \USB_AddrBusOut[1] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[0] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[1] , \USB_AddrBusOut[6] , \USB_AddrBusOut[7] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[6] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[7] , 
        \USB_AddrBusOut[8] , \USB_AddrBusOut[9] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[8] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[9] , \USB_AddrBusOut[10] , \USB_AddrBusOut[11] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[10] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[11] , 
        \USB_AddrBusOut[12] , \USB_AddrBusOut[13] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[12] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[13] , \test_ram[0] , \test_ram[1] , 
        \test_ram[2] , \test_ram[3] , \test_ram[4] , \test_ram[5] , 
        \test_ram[6] , \test_ram[7] , n269, n270, n271, n272, \USB_RAM_Reg_inst/wr_timing_counter[1] , 
        \USB_RAM_Reg_inst/wr_timing_counter[2] , \USB_RAM_Reg_inst/wr_timing_counter[3] , 
        \USB_RAM_Reg_inst/wr_timing_counter[4] , \USB_RAM_Reg_inst/wr_timing_counter[5] , 
        \USB_RAM_Reg_inst/wr_timing_counter[6] , \USB_RAM_Reg_inst/wr_timing_counter[7] , 
        n280, n281, n282, n283, n284, n285, n286, \USB_RAM_Reg_inst/packet_prog_delay[1] , 
        \USB_RAM_Reg_inst/packet_prog_delay[2] , \USB_RAM_Reg_inst/sample_enable_cnt[1] , 
        \USB_RAM_Reg_inst/sample_enable_cnt[2] , \USB_RAM_Reg_inst/sample_enable_cnt[3] , 
        \USB_RAM_Reg_inst/sample_enable_cnt[4] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] , 
        \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] , \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] , n337, n338, n339, 
        n340, n341, n342, n343, n344, n345, n346, n347, n348, 
        n349, n350, n351, n352, n353, n354, n355, n356, n357, 
        n358, n359, n360, n361, n362, n363, n364, n365, n366, 
        n367, n368, n369, n370, n371, n372, n373, n374, n375, 
        n376, n377, n378, \USB_RAM_Reg_inst/rxf_delay[1] , n380, n381, 
        n382, n383, \test_ram[8] , \test_ram[9] , \test_ram[10] , 
        \test_ram[11] , \test_ram[12] , \test_ram[13] , \test_ram[14] , 
        \test_ram[15] , n392, \dev_sel[1] , n394, n395, \Arbiter_inst/barq_trig[0] , 
        \Arbiter_inst/end_cycle , \data_bus[0] , target_ready, address_valid, 
        \Arbiter_inst/n131 , \Arbiter_inst/data_strobe , \Arbiter_inst/n16 , 
        ceg_net1, \Arbiter_inst/equal_32/n13 , n480, \USB_RAM_Reg_inst/n7 , 
        \USB_RAM_Reg_inst/equal_12/n15 , \USB_RAM_Reg_inst/equal_16/n15 , 
        \USB_RAM_Reg_inst/equal_18/n15 , \USB_RAM_Reg_inst/equal_24/n15 , 
        \USB_RAM_Reg_inst/sample_enable , \USB_RAM_Reg_inst/n87 , \USB_RAM_Reg_inst/n114 , 
        \USB_RAM_Reg_inst/equal_35/n7 , \USB_RAM_Reg_inst/equal_45/n7 , 
        \USB_RAM_Reg_inst/equal_50/n15 , \USB_RAM_Reg_inst/n422 , \USB_RAM_Reg_inst/n421 , 
        \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n418 , 
        \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n415 , 
        \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n412 , 
        \USB_RAM_Reg_inst/n450 , \USB_RAM_Reg_inst/n449 , \USB_RAM_Reg_inst/n448 , 
        \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n446 , \USB_RAM_Reg_inst/n445 , 
        \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n443 , \USB_RAM_Reg_inst/n442 , 
        \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n440 , \data_bus[14] , 
        \data_bus[15] , \USB_RAM_Reg_inst/ram_from_usb_we , \USB_RAM_Reg_inst/n453 , 
        \USB_RAM_Reg_inst/equal_51/n15 , \USB_RAM_Reg_inst/packet_is_in_progress , 
        \USB_RAM_Reg_inst/n206 , \USB_RAM_Reg_inst/n218 , USB_Error, \USB_RAM_Reg_inst/n230 , 
        \USB_RAM_Reg_inst/n282 , \USB_RAM_Reg_inst/n294 , \USB_RAM_Reg_inst/n342 , 
        \USB_RAM_Reg_inst/n353 , \USB_RAM_Reg_inst/n217 , \USB_RAM_Reg_inst/equal_114/n31 , 
        \USB_RAM_Reg_inst/n497 , \USB_RAM_Reg_inst/wr_cycle_is_active , 
        \USB_RAM_Reg_inst/n563 , \USB_RAM_Reg_inst/equal_143/n15 , \USB_RAM_Reg_inst/equal_147/n15 , 
        \USB_RAM_Reg_inst/equal_149/n15 , \USB_RAM_Reg_inst/command_list_has_control , 
        \USB_RAM_Reg_inst/n607 , \USB_RAM_Reg_inst/n593 , \USB_RAM_Reg_inst/n1016 , 
        \USB_RAM_Reg_inst/n628 , \USB_RAM_Reg_inst/output_buffer[0] , \USB_RAM_Reg_inst/output_data[0] , 
        \USB_RAM_Reg_inst/n924 , \data_bus[2] , \data_bus[3] , \USB_RAM_Reg_inst/equal_191/n31 , 
        \USB_RAM_Reg_inst/n1171 , n588, \USB_RAM_Reg_inst/n1394 , \USB_RAM_Reg_inst/n1399 , 
        \USB_RAM_Reg_inst/n1404 , \USB_RAM_Reg_inst/n1414 , \USB_RAM_Reg_inst/n1419 , 
        \USB_RAM_Reg_inst/n1424 , n605, \data_bus[1] , \data_bus[4] , 
        \data_bus[5] , \data_bus[6] , \data_bus[7] , \data_bus[8] , 
        \data_bus[9] , \data_bus[10] , \data_bus[11] , \data_bus[12] , 
        \data_bus[13] , \address_bus[0] , \address_bus[1] , \address_bus[2] , 
        \address_bus[3] , \address_bus[4] , \address_bus[5] , \address_bus[6] , 
        \address_bus[7] , n674, \USB_RAM_Reg_inst/output_buffer[1] , \USB_RAM_Reg_inst/output_buffer[2] , 
        \USB_RAM_Reg_inst/output_buffer[3] , \USB_RAM_Reg_inst/output_buffer[4] , 
        \USB_RAM_Reg_inst/output_buffer[5] , \USB_RAM_Reg_inst/output_buffer[6] , 
        \USB_RAM_Reg_inst/output_buffer[7] , \USB_RAM_Reg_inst/output_data[1] , 
        \USB_RAM_Reg_inst/output_data[2] , \USB_RAM_Reg_inst/output_data[3] , 
        \USB_RAM_Reg_inst/output_data[4] , \USB_RAM_Reg_inst/output_data[5] , 
        \USB_RAM_Reg_inst/output_data[6] , \USB_RAM_Reg_inst/output_data[7] , 
        \clk100~O , n1133, n1132, n1131, n1130, n782, n783, n784, 
        n785, n786, n787, n788, n789, n790, n791, n792, n793, 
        n794, n795, n796, n797, n798, n799, n800, n801, n802, 
        n803, n804, n805, n806, n807, n808, n809, n810, n811, 
        n812, n813, n814, n815, n816, n817, n818, n819, n820, 
        n821, n822, n823, n824, n825, n826, n827, n828, n829, 
        n830, n831, n832, n833, n834, n835, n836, n837, n838, 
        n839, n840, n841, n842, n843, n844, n845, n846, n847, 
        n848, n849, n850, n851, n852, n853, n854, n855, n856, 
        n857, n858, n859, n860, n861, n862, n863, n864, n865, 
        n866, n867, n868, n869, n870, n871, n872, n873, n874, 
        n875, n876, n877, n878, n879, n880, n881, n882, n883, 
        n884, n885, n886, n887, n888, n889, n890, n891, n892, 
        n893, n894, n895, n896, n897, n898, n899, n900, n901, 
        n902, n903, n904, n905, n906, n907, n908, n909, n910, 
        n911, n912, n913, n914, n915, n916, n917, n918, n919, 
        n920, n921, n922, n923, n924, n925, n926, n927, n928, 
        n929, n930, n931, n932, n933, n934, n935, n936, n937, 
        n938, n939, n940, n941, n942, n943, n944, n945, n946, 
        n947, n948, n949, n950, n951, n952, n953, n954, n955, 
        n956, n957, n958, n959, n960, n961, n962, n963, n964, 
        n965, n966, n967, n968, n969, n970, n971, n972, n973, 
        n974, n975, n976, n977, n978, n979, n980, n981, n982, 
        n983, n984, n985, n986, n987, n988, n989, n990, n991, 
        n992, n993, n994, n995, n996, n997, n998, n999, n1000, 
        n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, 
        n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, 
        n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, 
        n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, 
        n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, 
        n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, 
        n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, 
        n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, 
        n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, 
        n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, 
        n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, 
        n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, 
        n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, 
        n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, 
        n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, 
        n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, 
        n1129;
    
    assign FT_DATA_OUT[0] = GPIO[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[8] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[7] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[1] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__1183 (.I0(data_strobe), .I1(\Arbiter_inst/timeout ), .O(\Arbiter_inst/end_cycle )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1183.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1184 (.I0(\USB_RAM_Reg_inst/service_type_h[4] ), .I1(\USB_RAM_Reg_inst/service_type_h[3] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[7] ), .I3(\USB_RAM_Reg_inst/service_type_h[7] ), 
            .O(n782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1184.LUTMASK = 16'h4000;
    EFX_FF \bagd[0]~FF  (.D(\Arbiter_inst/barq_trig[0] ), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\bagd[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(56)
    defparam \bagd[0]~FF .CLK_POLARITY = 1'b1;
    defparam \bagd[0]~FF .CE_POLARITY = 1'b1;
    defparam \bagd[0]~FF .SR_POLARITY = 1'b1;
    defparam \bagd[0]~FF .D_POLARITY = 1'b1;
    defparam \bagd[0]~FF .SR_SYNC = 1'b1;
    defparam \bagd[0]~FF .SR_VALUE = 1'b0;
    defparam \bagd[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee~FF  (.D(\data_bus[0] ), .CE(n163), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(ee)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(242)
    defparam \ee~FF .CLK_POLARITY = 1'b1;
    defparam \ee~FF .CE_POLARITY = 1'b1;
    defparam \ee~FF .SR_POLARITY = 1'b1;
    defparam \ee~FF .D_POLARITY = 1'b1;
    defparam \ee~FF .SR_SYNC = 1'b1;
    defparam \ee~FF .SR_VALUE = 1'b0;
    defparam \ee~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \dev_sel[0]~FF  (.D(n20_2), .CE(1'b1), .CLK(\clk100~O ), .SR(target_ready), 
           .Q(\dev_sel[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(138)
    defparam \dev_sel[0]~FF .CLK_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .CE_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .SR_POLARITY = 1'b0;
    defparam \dev_sel[0]~FF .D_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .SR_SYNC = 1'b0;
    defparam \dev_sel[0]~FF .SR_VALUE = 1'b0;
    defparam \dev_sel[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \target_ready_2~FF  (.D(\bagd[0] ), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(target_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \target_ready_2~FF .CLK_POLARITY = 1'b1;
    defparam \target_ready_2~FF .CE_POLARITY = 1'b1;
    defparam \target_ready_2~FF .SR_POLARITY = 1'b1;
    defparam \target_ready_2~FF .D_POLARITY = 1'b1;
    defparam \target_ready_2~FF .SR_SYNC = 1'b1;
    defparam \target_ready_2~FF .SR_VALUE = 1'b0;
    defparam \target_ready_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[0]~FF  (.D(address_valid), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\Arbiter_inst/n131 ), .Q(\Arbiter_inst/address_valid_d[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_POLARITY = 1'b0;
    defparam \Arbiter_inst/address_valid_d[0]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_strobe~FF  (.D(\Arbiter_inst/data_strobe ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(data_strobe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \data_strobe~FF .CLK_POLARITY = 1'b1;
    defparam \data_strobe~FF .CE_POLARITY = 1'b1;
    defparam \data_strobe~FF .SR_POLARITY = 1'b1;
    defparam \data_strobe~FF .D_POLARITY = 1'b1;
    defparam \data_strobe~FF .SR_SYNC = 1'b1;
    defparam \data_strobe~FF .SR_VALUE = 1'b0;
    defparam \data_strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[0]~FF  (.D(\Arbiter_inst/timeout_cnt[0] ), 
           .CE(\bagd[0] ), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/timeout_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/barq_trig[0]_2~FF  (.D(\Arbiter_inst/n16 ), .CE(ceg_net1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\Arbiter_inst/barq_trig[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(32)
    defparam \Arbiter_inst/barq_trig[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .CE_POLARITY = 1'b0;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout~FF  (.D(\Arbiter_inst/equal_32/n13 ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\Arbiter_inst/timeout )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .D_POLARITY = 1'b0;
    defparam \Arbiter_inst/timeout~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[1]~FF  (.D(\Arbiter_inst/address_valid_d[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/address_valid_d[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[2]~FF  (.D(\Arbiter_inst/address_valid_d[1] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/address_valid_d[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[1]~FF  (.D(n357), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[2]~FF  (.D(n37), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[3]~FF  (.D(n35), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[4]~FF  (.D(n30), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[5]~FF  (.D(n27), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[6]~FF  (.D(n26), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_edge~FF  (.D(\USB_RAM_Reg_inst/n7 ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_edge )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_cycle_is_active~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/rxf_edge ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_12/n15 ), .Q(\USB_RAM_Reg_inst/rd_cycle_is_active )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(192)
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_strobe~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_16/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_18/n15 ), .Q(\USB_RAM_Reg_inst/rd_strobe )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(200)
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF  (.D(FT_DATA_IN[0]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/h_key_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/t_key_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_Header_recognized~FF  (.D(\USB_RAM_Reg_inst/equal_35/n7 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(USB_Header_recognized)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_Header_recognized~FF .CLK_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .CE_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .SR_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .D_POLARITY = 1'b0;
    defparam \USB_Header_recognized~FF .SR_SYNC = 1'b1;
    defparam \USB_Header_recognized~FF .SR_VALUE = 1'b0;
    defparam \USB_Header_recognized~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_Trailer_recognized~FF  (.D(\USB_RAM_Reg_inst/equal_45/n7 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(USB_Trailer_recognized)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_Trailer_recognized~FF .CLK_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .CE_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .SR_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .D_POLARITY = 1'b0;
    defparam \USB_Trailer_recognized~FF .SR_SYNC = 1'b1;
    defparam \USB_Trailer_recognized~FF .SR_VALUE = 1'b0;
    defparam \USB_Trailer_recognized~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_2~FF  (.D(\USB_RAM_Reg_inst/equal_50/n15 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/sample_enable )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/equal_51/n15 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_is_in_progress_2~FF  (.D(1'b1), .CE(USB_Header_recognized), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n206 ), .Q(\USB_RAM_Reg_inst/packet_is_in_progress )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(278)
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/received_packet_is_valid~FF  (.D(1'b1), .CE(USB_Header_recognized), 
           .CLK(\clk100~O ), .SR(USB_Error), .Q(\USB_RAM_Reg_inst/received_packet_is_valid )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(293)
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF  (.D(n392), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF  (.D(n394), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF  (.D(n17), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), .Q(\USB_RAM_Reg_inst/rd_timing_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/n217 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_114/n31 ), .Q(\USB_RAM_Reg_inst/ram_filling_is_in_progress )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(339)
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF  (.D(n285), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[0]~FF  (.D(\data_bus[0] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF  (.D(n283), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[0]~FF  (.D(\USB_RAM_Reg_inst/wr_timing_counter[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF  (.D(n281), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/n563 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_143/n15 ), .Q(\USB_RAM_Reg_inst/wr_cycle_is_active )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(398)
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF  (.D(n48), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), .Q(\USB_RAM_Reg_inst/rd_timing_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_WR_Strobe~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_147/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_149/n15 ), .Q(FT_WR_Strobe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(406)
    defparam \FT_WR_Strobe~FF .CLK_POLARITY = 1'b1;
    defparam \FT_WR_Strobe~FF .CE_POLARITY = 1'b0;
    defparam \FT_WR_Strobe~FF .SR_POLARITY = 1'b0;
    defparam \FT_WR_Strobe~FF .D_POLARITY = 1'b1;
    defparam \FT_WR_Strobe~FF .SR_SYNC = 1'b1;
    defparam \FT_WR_Strobe~FF .SR_VALUE = 1'b0;
    defparam \FT_WR_Strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[0]~FF  (.D(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/sample_enable_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/command_list_has_control ), .CLK(\clk100~O ), 
           .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_paket_end_edge~FF  (.D(\USB_RAM_Reg_inst/n593 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rd_paket_end_edge )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_txen~FF  (.D(FT_TX_Enable_n), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_txen )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/ft_txen~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/command_list_has_control_2~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n1016 ), .Q(\USB_RAM_Reg_inst/command_list_has_control )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(447)
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[0]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[0] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(GPIO[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[0]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[0]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[0] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/n924 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_191/n31 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n1016 ), .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(528)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/condition_access_request~FF  (.D(\USB_RAM_Reg_inst/n1171 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/condition_access_request )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(638)
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_delay[0]~FF  (.D(FT_RX_Full_n), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_delay[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_AccessRequest~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/condition_access_request ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n497 ), .Q(USB_AccessRequest)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(647)
    defparam \USB_AccessRequest~FF .CLK_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .CE_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .SR_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .D_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .SR_SYNC = 1'b1;
    defparam \USB_AccessRequest~FF .SR_VALUE = 1'b0;
    defparam \USB_AccessRequest~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF  (.D(FT_DATA_IN[1]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF  (.D(FT_DATA_IN[2]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF  (.D(FT_DATA_IN[3]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF  (.D(FT_DATA_IN[4]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF  (.D(FT_DATA_IN[5]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF  (.D(FT_DATA_IN[6]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF  (.D(FT_DATA_IN[7]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[1]~FF  (.D(\USB_RAM_Reg_inst/n1394 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[2]~FF  (.D(\USB_RAM_Reg_inst/n1399 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[3]~FF  (.D(\USB_RAM_Reg_inst/n1404 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[1]~FF  (.D(\USB_RAM_Reg_inst/n1414 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[2]~FF  (.D(\USB_RAM_Reg_inst/n1419 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[3]~FF  (.D(\USB_RAM_Reg_inst/n1424 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[1]~FF  (.D(n89), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[2]~FF  (.D(n77), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[3]~FF  (.D(n75), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[4]~FF  (.D(n54), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[5]~FF  (.D(n73), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[6]~FF  (.D(n71), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[7]~FF  (.D(n69), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[8]~FF  (.D(n56), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[9]~FF  (.D(n52), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[10]~FF  (.D(n19), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[11]~FF  (.D(n42), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[12]~FF  (.D(n21), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[13]~FF  (.D(n81), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[14]~FF  (.D(n79), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[15]~FF  (.D(n58), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[1]~FF  (.D(\data_bus[1] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[2]~FF  (.D(\data_bus[2] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[3]~FF  (.D(\data_bus[3] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[4]~FF  (.D(\data_bus[4] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[5]~FF  (.D(\data_bus[5] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[6]~FF  (.D(\data_bus[6] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[7]~FF  (.D(\data_bus[7] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[8]~FF  (.D(\data_bus[8] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[9]~FF  (.D(\data_bus[9] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[10]~FF  (.D(\data_bus[10] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[11]~FF  (.D(\data_bus[11] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[12]~FF  (.D(\data_bus[12] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[13]~FF  (.D(\data_bus[13] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[14]~FF  (.D(\data_bus[14] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[15]~FF  (.D(\data_bus[15] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[1]~FF  (.D(n269), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[2]~FF  (.D(n235), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[3]~FF  (.D(n115), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[4]~FF  (.D(n271), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[5]~FF  (.D(n46), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[6]~FF  (.D(n39), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[7]~FF  (.D(n23), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[1]~FF  (.D(\USB_RAM_Reg_inst/packet_prog_delay[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[2]~FF  (.D(\USB_RAM_Reg_inst/packet_prog_delay[1] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF  (.D(n120), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF  (.D(n382), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF  (.D(n380), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF  (.D(n280), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF  (.D(n126), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF  (.D(n161), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF  (.D(n157), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF  (.D(n145), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF  (.D(n83), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF  (.D(n61), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF  (.D(n32), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF  (.D(n24), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF  (.D(n355), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF  (.D(n377), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF  (.D(n353), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF  (.D(n375), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF  (.D(n351), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF  (.D(n373), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF  (.D(n350), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[1]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[1] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[1]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[2]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[2] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[2]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[3]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[3] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[3]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[4]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[4] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[4]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[5]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[5] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[5]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[6]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[6] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[6]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[7]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[7] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[7]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[1]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[1] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[2]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[2] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[3]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[3] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[4]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[4] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[5]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[5] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[6]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[6] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[7]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[7] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF  (.D(n132), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF  (.D(n371), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF  (.D(n348), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF  (.D(n369), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF  (.D(n346), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF  (.D(n367), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF  (.D(n344), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF  (.D(n365), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF  (.D(n342), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF  (.D(n363), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF  (.D(n340), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF  (.D(n361), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF  (.D(n338), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF  (.D(n359), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF  (.D(n337), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_delay[1]~FF  (.D(\USB_RAM_Reg_inst/rxf_delay[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_delay[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \dev_sel[1]~FF  (.D(n24_2), .CE(1'b1), .CLK(\clk100~O ), .SR(target_ready), 
           .Q(\dev_sel[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(138)
    defparam \dev_sel[1]~FF .CLK_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .CE_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .SR_POLARITY = 1'b0;
    defparam \dev_sel[1]~FF .D_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .SR_SYNC = 1'b0;
    defparam \dev_sel[1]~FF .SR_VALUE = 1'b0;
    defparam \dev_sel[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i6  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[5] ), 
            .I1(1'b0), .CI(n286), .O(n17), .CO(n18)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i11  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), 
            .I1(1'b0), .CI(n53), .O(n19), .CO(n20)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i13  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[12] ), 
            .I1(1'b0), .CI(n43), .O(n21), .CO(n22)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i8  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[7] ), 
            .I1(1'b0), .CI(n40), .O(n23)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i9  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(1'b0), .CI(n33), .O(n24), .CO(n25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i7  (.I0(\Arbiter_inst/timeout_cnt[6] ), 
            .I1(1'b0), .CI(n28), .O(n26)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i7 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i6  (.I0(\Arbiter_inst/timeout_cnt[5] ), 
            .I1(1'b0), .CI(n31), .O(n27), .CO(n28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i6 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i5  (.I0(\Arbiter_inst/timeout_cnt[4] ), 
            .I1(1'b0), .CI(n36), .O(n30), .CO(n31)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i5 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i8  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .I1(1'b0), .CI(n62), .O(n32), .CO(n33)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i4  (.I0(\Arbiter_inst/timeout_cnt[3] ), 
            .I1(1'b0), .CI(n38), .O(n35), .CO(n36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i4 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i3  (.I0(\Arbiter_inst/timeout_cnt[2] ), 
            .I1(1'b0), .CI(n358), .O(n37), .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i3 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i7  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[6] ), 
            .I1(1'b0), .CI(n47), .O(n39), .CO(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i12  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), 
            .I1(1'b0), .CI(n20), .O(n42), .CO(n43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i6  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[5] ), 
            .I1(1'b0), .CI(n272), .O(n46), .CO(n47)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i2  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .CI(1'b0), .O(n48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i10  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), 
            .I1(1'b0), .CI(n57), .O(n52), .CO(n53)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i5  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), 
            .I1(1'b0), .CI(n76), .O(n54), .CO(n55)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i9  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I1(1'b0), .CI(n70), .O(n56), .CO(n57)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i16  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[15] ), 
            .I1(1'b0), .CI(n80), .O(n58)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i7  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I1(1'b0), .CI(n84), .O(n61), .CO(n62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i8  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), 
            .I1(1'b0), .CI(n72), .O(n69), .CO(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i7  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), 
            .I1(1'b0), .CI(n74), .O(n71), .CO(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i6  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I1(1'b0), .CI(n55), .O(n73), .CO(n74)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i4  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), 
            .I1(1'b0), .CI(n78), .O(n75), .CO(n76)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i3  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), 
            .I1(1'b0), .CI(n1130), .O(n77), .CO(n78)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i15  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[14] ), 
            .I1(1'b0), .CI(n82), .O(n79), .CO(n80)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i14  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[13] ), 
            .I1(1'b0), .CI(n22), .O(n81), .CO(n82)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i6  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(1'b0), .CI(n146), .O(n83), .CO(n84)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i2  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .CI(1'b0), .O(n89)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i4  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .I1(1'b0), .CI(n236), .O(n115), .CO(n116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i2  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/sample_enable_cnt[0] ), .CI(1'b0), .O(n120), 
            .CO(n121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i2  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .CI(1'b0), 
            .O(n126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i2  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .CI(1'b0), 
            .O(n132), .CO(n133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i5  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(1'b0), .CI(n1131), .O(n145), .CO(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i4  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(1'b0), .CI(n162), .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i3  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(1'b0), .CI(n1132), .O(n161), .CO(n162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i3  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), 
            .I1(1'b0), .CI(n270), .O(n235), .CO(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i2  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[1] ), 
            .I1(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .CI(1'b0), .O(n269), 
            .CO(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i5  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[4] ), 
            .I1(1'b0), .CI(n116), .O(n271), .CO(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i5  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[4] ), 
            .I1(1'b0), .CI(n381), .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i3  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), 
            .I1(1'b0), .CI(n1133), .O(n281), .CO(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i4  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I1(1'b0), .CI(n282), .O(n283), .CO(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i5  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), 
            .I1(1'b0), .CI(n284), .O(n285), .CO(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i16  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(1'b0), .CI(n360), .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i14  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .I1(1'b0), .CI(n362), .O(n338), .CO(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i12  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I1(1'b0), .CI(n364), .O(n340), .CO(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i10  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I1(1'b0), .CI(n366), .O(n342), .CO(n343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i8  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .I1(1'b0), .CI(n368), .O(n344), .CO(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i6  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I1(1'b0), .CI(n370), .O(n346), .CO(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i4  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(1'b0), .CI(n372), .O(n348), .CO(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i16  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .I1(1'b0), .CI(n374), .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i14  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I1(1'b0), .CI(n376), .O(n351), .CO(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i12  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I1(1'b0), .CI(n378), .O(n353), .CO(n354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i10  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I1(1'b0), .CI(n25), .O(n355), .CO(n356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i2  (.I0(\Arbiter_inst/timeout_cnt[1] ), 
            .I1(\Arbiter_inst/timeout_cnt[0] ), .CI(1'b0), .O(n357), .CO(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i2 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i15  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(1'b0), .CI(n339), .O(n359), .CO(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i13  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I1(1'b0), .CI(n341), .O(n361), .CO(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i11  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(1'b0), .CI(n343), .O(n363), .CO(n364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i9  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(1'b0), .CI(n345), .O(n365), .CO(n366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i7  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(1'b0), .CI(n347), .O(n367), .CO(n368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i5  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I1(1'b0), .CI(n349), .O(n369), .CO(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i3  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(1'b0), .CI(n133), .O(n371), .CO(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i15  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I1(1'b0), .CI(n352), .O(n373), .CO(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i13  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(1'b0), .CI(n354), .O(n375), .CO(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i11  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I1(1'b0), .CI(n356), .O(n377), .CO(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i4  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[3] ), 
            .I1(1'b0), .CI(n383), .O(n380), .CO(n381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i3  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[2] ), 
            .I1(1'b0), .CI(n121), .O(n382), .CO(n383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i8  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[7] ), 
            .I1(1'b0), .CI(n395), .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i7  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[6] ), 
            .I1(1'b0), .CI(n18), .O(n394), .CO(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i7 .I1_POLARITY = 1'b1;
    EFX_RAM_5K \Dual_Port_RAM_inst/ram__D$2  (.WCLK(\clk100~O ), .RCLK(\clk100~O ), 
            .WCLKE(1'b1), .WE(n163), .RE(1'b1), .WDATA({\data_bus[7] , 
            \data_bus[6] , \data_bus[5] , \data_bus[4] , \data_bus[3] , 
            \data_bus[2] , \data_bus[1] , \data_bus[0] }), .WADDR({1'b0, 
            \address_bus[7] , \address_bus[6] , \address_bus[5] , \address_bus[4] , 
            \address_bus[3] , \address_bus[2] , \address_bus[1] , \address_bus[0] }), 
            .RADDR({1'b0, \address_bus[7] , \address_bus[6] , \address_bus[5] , 
            \address_bus[4] , \address_bus[3] , \address_bus[2] , \address_bus[1] , 
            \address_bus[0] }), .RDATA({\test_ram[7] , \test_ram[6] , 
            \test_ram[5] , \test_ram[4] , \test_ram[3] , \test_ram[2] , 
            \test_ram[1] , \test_ram[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \Dual_Port_RAM_inst/ram__D$2 .READ_WIDTH = 8;
    defparam \Dual_Port_RAM_inst/ram__D$2 .WRITE_WIDTH = 8;
    defparam \Dual_Port_RAM_inst/ram__D$2 .WCLK_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$2 .WCLKE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$2 .WE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$2 .RCLK_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$2 .RE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$2 .OUTPUT_REG = 1'b0;
    defparam \Dual_Port_RAM_inst/ram__D$2 .WRITE_MODE = "WRITE_FIRST";
    EFX_RAM_5K \Dual_Port_RAM_inst/ram__D$1  (.WCLK(\clk100~O ), .RCLK(\clk100~O ), 
            .WCLKE(1'b1), .WE(n163), .RE(1'b1), .WDATA({\data_bus[15] , 
            \data_bus[14] , \data_bus[13] , \data_bus[12] , \data_bus[11] , 
            \data_bus[10] , \data_bus[9] , \data_bus[8] }), .WADDR({1'b0, 
            \address_bus[7] , \address_bus[6] , \address_bus[5] , \address_bus[4] , 
            \address_bus[3] , \address_bus[2] , \address_bus[1] , \address_bus[0] }), 
            .RADDR({1'b0, \address_bus[7] , \address_bus[6] , \address_bus[5] , 
            \address_bus[4] , \address_bus[3] , \address_bus[2] , \address_bus[1] , 
            \address_bus[0] }), .RDATA({\test_ram[15] , \test_ram[14] , 
            \test_ram[13] , \test_ram[12] , \test_ram[11] , \test_ram[10] , 
            \test_ram[9] , \test_ram[8] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \Dual_Port_RAM_inst/ram__D$1 .READ_WIDTH = 8;
    defparam \Dual_Port_RAM_inst/ram__D$1 .WRITE_WIDTH = 8;
    defparam \Dual_Port_RAM_inst/ram__D$1 .WCLK_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$1 .WCLKE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$1 .WE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$1 .RCLK_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$1 .RE_POLARITY = 1'b1;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Dual_Port_RAM_inst/ram__D$1 .OUTPUT_REG = 1'b0;
    defparam \Dual_Port_RAM_inst/ram__D$1 .WRITE_MODE = "WRITE_FIRST";
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_h[7] , \USB_RAM_Reg_inst/load_data_h[6] }), 
            .WDATAB({\data_bus[15] , \data_bus[14] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[15] , \USB_AddrBusOut[14] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[15] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[14] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$g1 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_l[3] , \USB_RAM_Reg_inst/load_data_l[2] }), 
            .WDATAB({\data_bus[3] , \data_bus[2] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[3] , \USB_AddrBusOut[2] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[3] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[2] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$12 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_l[5] , \USB_RAM_Reg_inst/load_data_l[4] }), 
            .WDATAB({\data_bus[5] , \data_bus[4] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[5] , \USB_AddrBusOut[4] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[5] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[4] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$b12 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_l[1] , \USB_RAM_Reg_inst/load_data_l[0] }), 
            .WDATAB({\data_bus[1] , \data_bus[0] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[1] , \USB_AddrBusOut[0] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[1] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$2 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_l[7] , \USB_RAM_Reg_inst/load_data_l[6] }), 
            .WDATAB({\data_bus[7] , \data_bus[6] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[7] , \USB_AddrBusOut[6] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[7] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[6] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$c12 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_h[1] , \USB_RAM_Reg_inst/load_data_h[0] }), 
            .WDATAB({\data_bus[9] , \data_bus[8] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[9] , \USB_AddrBusOut[8] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[9] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[8] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$d12 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_h[3] , \USB_RAM_Reg_inst/load_data_h[2] }), 
            .WDATAB({\data_bus[11] , \data_bus[10] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[11] , \USB_AddrBusOut[10] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[11] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[10] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$e12 .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12  (.CLKA(\clk100~O ), 
            .CLKB(\clk100~O ), .WEA(\USB_RAM_Reg_inst/ram_from_usb_we ), 
            .WEB(\USB_RAM_Reg_inst/n453 ), .CLKEA(1'b1), .CLKEB(1'b1), 
            .WDATAA({\USB_RAM_Reg_inst/load_data_h[5] , \USB_RAM_Reg_inst/load_data_h[4] }), 
            .WDATAB({\data_bus[13] , \data_bus[12] }), .ADDRA({\USB_RAM_Reg_inst/n412 , 
            \USB_RAM_Reg_inst/n413 , \USB_RAM_Reg_inst/n414 , \USB_RAM_Reg_inst/n415 , 
            \USB_RAM_Reg_inst/n416 , \USB_RAM_Reg_inst/n417 , \USB_RAM_Reg_inst/n418 , 
            \USB_RAM_Reg_inst/n419 , \USB_RAM_Reg_inst/n420 , \USB_RAM_Reg_inst/n421 , 
            \USB_RAM_Reg_inst/n422 }), .ADDRB({\USB_RAM_Reg_inst/n440 , 
            \USB_RAM_Reg_inst/n441 , \USB_RAM_Reg_inst/n442 , \USB_RAM_Reg_inst/n443 , 
            \USB_RAM_Reg_inst/n444 , \USB_RAM_Reg_inst/n445 , \USB_RAM_Reg_inst/n446 , 
            \USB_RAM_Reg_inst/n447 , \USB_RAM_Reg_inst/n448 , \USB_RAM_Reg_inst/n449 , 
            \USB_RAM_Reg_inst/n450 }), .RDATAA({\USB_AddrBusOut[13] , \USB_AddrBusOut[12] }), 
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[13] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[12] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .READ_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .READ_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WRITE_WIDTH_A = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WRITE_WIDTH_B = 2;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WRITE_MODE_A = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WRITE_MODE_B = "WRITE_FIRST";
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .CLKA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .CLKB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .CLKEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .CLKEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WEA_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .WEB_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .OUTPUT_REG_A = 1'b0;
    defparam \USB_RAM_Reg_inst/USB_CMDL_RAM/ram__D$f12 .OUTPUT_REG_B = 1'b0;
    EFX_LUT4 LUT__1185 (.I0(\USB_RAM_Reg_inst/service_type_l[4] ), .I1(\USB_RAM_Reg_inst/service_type_h[0] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[3] ), .I3(\USB_RAM_Reg_inst/service_type_l[0] ), 
            .O(n783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1185.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1186 (.I0(\USB_RAM_Reg_inst/service_type_l[2] ), .I1(\USB_RAM_Reg_inst/service_type_l[6] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[5] ), .I3(\USB_RAM_Reg_inst/service_type_l[1] ), 
            .O(n784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1186.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1187 (.I0(\USB_RAM_Reg_inst/service_type_h[1] ), .I1(\USB_RAM_Reg_inst/service_type_h[5] ), 
            .I2(\USB_RAM_Reg_inst/service_type_h[2] ), .I3(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .O(n785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1187.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1188 (.I0(n782), .I1(n783), .I2(n784), .I3(n785), 
            .O(n786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1188.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1189 (.I0(\bagd[0] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n786), .O(n787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1189.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1190 (.I0(\dev_sel[1] ), .I1(n787), .O(n788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1190.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1191 (.I0(\dev_sel[0] ), .I1(n788), .O(n789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1191.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1192 (.I0(\USB_AddrBusOut[8] ), .I1(\bagd[0] ), .I2(\dev_sel[1] ), 
            .O(n790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1192.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1193 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[5] ), .O(\address_bus[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1193.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1194 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[4] ), .O(\address_bus[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1194.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1195 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[7] ), .O(\address_bus[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1195.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1196 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[6] ), .O(\address_bus[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1196.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1197 (.I0(\address_bus[5] ), .I1(\address_bus[4] ), .I2(\address_bus[7] ), 
            .I3(\address_bus[6] ), .O(n791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1197.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1198 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[2] ), .O(\address_bus[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1198.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1199 (.I0(\USB_AddrBusOut[3] ), .I1(\USB_AddrBusOut[0] ), 
            .I2(n791), .I3(\address_bus[2] ), .O(n792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1199.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1200 (.I0(\USB_AddrBusOut[1] ), .I1(n792), .O(n793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1200.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1201 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[3] ), .O(\address_bus[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1201.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1202 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[0] ), .O(\address_bus[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1202.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1203 (.I0(\address_bus[2] ), .I1(\address_bus[3] ), .I2(\address_bus[0] ), 
            .I3(n791), .O(n794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1203.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1204 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[1] ), .O(\address_bus[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1204.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1205 (.I0(FT_TX_Enable_n), .I1(\address_bus[1] ), .I2(n794), 
            .I3(n790), .O(n795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1205.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1206 (.I0(\USB_AddrBusOut[3] ), .I1(\USB_AddrBusOut[2] ), 
            .I2(\USB_AddrBusOut[0] ), .I3(\USB_AddrBusOut[1] ), .O(n796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__1206.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__1207 (.I0(n796), .I1(\bagd[0] ), .I2(n791), .O(n797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1207.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1208 (.I0(\address_bus[2] ), .I1(\address_bus[1] ), .I2(\address_bus[0] ), 
            .O(n798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1208.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1209 (.I0(\USB_AddrBusOut[3] ), .I1(n791), .I2(n798), 
            .O(n799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1209.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1210 (.I0(\USB_RAM_Reg_inst/output_buffer[0] ), .I1(n799), 
            .I2(\USB_RAM_Reg_inst/service_type_l[0] ), .I3(n797), .O(n800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1210.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1211 (.I0(n793), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(n795), .I3(n800), .O(n801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1211.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1212 (.I0(n787), .I1(\dev_sel[0] ), .O(n802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1212.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1213 (.I0(n788), .I1(n802), .O(n803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1213.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1214 (.I0(n790), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[0] ), 
            .I2(n801), .I3(n803), .O(n804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__1214.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__1215 (.I0(n789), .I1(\test_ram[0] ), .I2(n804), .O(\data_bus[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1215.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1216 (.I0(\dev_sel[0] ), .I1(data_strobe), .I2(n787), 
            .O(n163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1216.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1217 (.I0(\USB_AddrBusOut[14] ), .I1(\USB_AddrBusOut[12] ), 
            .I2(\bagd[0] ), .O(n805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1217.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1218 (.I0(\USB_AddrBusOut[8] ), .I1(\USB_AddrBusOut[9] ), 
            .I2(\USB_AddrBusOut[10] ), .I3(\USB_AddrBusOut[11] ), .O(n806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1218.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1219 (.I0(\USB_AddrBusOut[15] ), .I1(\USB_AddrBusOut[13] ), 
            .I2(n805), .I3(n806), .O(n20_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1219.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1220 (.I0(\dev_sel[0] ), .I1(\dev_sel[1] ), .O(address_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1220.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1221 (.I0(\Arbiter_inst/end_cycle ), .I1(target_ready), 
            .O(\Arbiter_inst/n131 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1221.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1222 (.I0(\Arbiter_inst/address_valid_d[2] ), .I1(\Arbiter_inst/address_valid_d[1] ), 
            .O(\Arbiter_inst/data_strobe )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1222.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1223 (.I0(\Arbiter_inst/barq_trig[0] ), .I1(USB_AccessRequest), 
            .O(\Arbiter_inst/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1223.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1224 (.I0(\Arbiter_inst/end_cycle ), .I1(\Arbiter_inst/barq_trig[0] ), 
            .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1224.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1225 (.I0(\Arbiter_inst/timeout_cnt[4] ), .I1(\Arbiter_inst/timeout_cnt[5] ), 
            .I2(\Arbiter_inst/timeout_cnt[6] ), .I3(\Arbiter_inst/timeout_cnt[3] ), 
            .O(n807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1225.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1226 (.I0(\Arbiter_inst/timeout_cnt[0] ), .I1(\Arbiter_inst/timeout_cnt[1] ), 
            .I2(\Arbiter_inst/timeout_cnt[2] ), .I3(n807), .O(\Arbiter_inst/equal_32/n13 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__1226.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__1227 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[1] ), 
            .O(n480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1227.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1228 (.I0(\USB_RAM_Reg_inst/rxf_delay[1] ), .I1(\USB_RAM_Reg_inst/rxf_delay[0] ), 
            .O(\USB_RAM_Reg_inst/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1228.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1229 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I3(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .O(n808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1229.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1230 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[7] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[6] ), 
            .I2(\USB_RAM_Reg_inst/rd_timing_cnt[5] ), .O(n809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1230.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1231 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), .I1(n808), 
            .I2(n809), .O(\USB_RAM_Reg_inst/equal_12/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__1231.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__1232 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), .I1(n809), 
            .O(n810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1232.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1233 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I2(n810), .O(n811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1233.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1234 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n811), .O(\USB_RAM_Reg_inst/equal_16/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__1234.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__1235 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), 
            .O(n812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1235.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1236 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n810), .I3(n812), .O(\USB_RAM_Reg_inst/equal_18/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__1236.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__1237 (.I0(n808), .I1(n810), .O(\USB_RAM_Reg_inst/equal_24/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__1237.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__1238 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
            .O(n813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1238.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1239 (.I0(USB_Header_recognized), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
            .O(n814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1239.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1240 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), .I1(n813), 
            .I2(n814), .O(\USB_RAM_Reg_inst/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__1240.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__1241 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
            .O(n815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1241.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1242 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), .I1(USB_Trailer_recognized), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), .O(n816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1242.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1243 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
            .I2(n815), .I3(n816), .O(\USB_RAM_Reg_inst/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__1243.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__1244 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/h_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/equal_35/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__1244.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__1245 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/t_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/equal_45/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfeff */ ;
    defparam LUT__1245.LUTMASK = 16'hfeff;
    EFX_LUT4 LUT__1246 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n811), .O(\USB_RAM_Reg_inst/equal_50/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__1246.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__1247 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n422 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1247.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1248 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1248.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1249 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), .O(n817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1249.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1250 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I2(n817), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n420 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1250.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1251 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(n817), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .O(n818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1251.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1252 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(n818), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n419 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1252.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1253 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), .I2(n817), 
            .O(n819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1253.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1254 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I2(n819), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n418 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1254.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1255 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), .O(n820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1255.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1256 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n820), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .O(n821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1256.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1257 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I1(n821), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n417 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1257.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1258 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), .I2(n820), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .O(n822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1258.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1259 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(n822), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n416 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1259.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1260 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .I3(n820), .O(n823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1260.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1261 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[8] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I2(n823), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n415 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1261.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1262 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I3(n820), .O(n824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1262.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1263 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n824), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .O(n825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1263.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1264 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I1(n825), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n414 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1264.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1265 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I1(n824), .O(n826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1265.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1266 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n826), .O(n827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1266.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1267 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I2(n827), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n413 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1267.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1268 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(n827), .O(n828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1268.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1269 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I2(n828), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n412 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__1269.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__1270 (.I0(\address_bus[0] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n450 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__1270.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1271 (.I0(\address_bus[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I2(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n449 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1271.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1272 (.I0(\address_bus[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I3(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n448 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;
    defparam LUT__1272.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__1273 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .O(n829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1273.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1274 (.I0(n829), .I1(\address_bus[3] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n447 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1274.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1275 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), .O(n830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1275.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1276 (.I0(n830), .I1(\address_bus[4] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1276.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1277 (.I0(\address_bus[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I2(n820), .I3(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n445 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;
    defparam LUT__1277.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__1278 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(n820), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .O(n831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1278.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1279 (.I0(n831), .I1(\address_bus[6] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n444 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1279.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1280 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .I2(n820), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), .O(n832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1280.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1281 (.I0(n832), .I1(\address_bus[7] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n443 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1281.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1282 (.I0(\dev_sel[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I2(n824), .I3(n790), .O(\USB_RAM_Reg_inst/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;
    defparam LUT__1282.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__1283 (.I0(\dev_sel[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I2(n826), .O(\USB_RAM_Reg_inst/n441 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__1283.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1284 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(n826), .I2(\dev_sel[1] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .O(\USB_RAM_Reg_inst/n440 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__1284.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__1285 (.I0(\USB_RAM_Reg_inst/service_type_h[6] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(n793), .O(n833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1285.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1286 (.I0(n833), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[14] ), 
            .I2(n790), .I3(n803), .O(n834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1286.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1287 (.I0(n789), .I1(\test_ram[14] ), .I2(n834), .O(\data_bus[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1287.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1288 (.I0(\USB_RAM_Reg_inst/service_type_h[7] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I3(n793), .O(n835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1288.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1289 (.I0(n835), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[15] ), 
            .I2(n790), .I3(n803), .O(n836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1289.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1290 (.I0(n789), .I1(\test_ram[15] ), .I2(n836), .O(\data_bus[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1290.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1291 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/sample_enable ), 
            .I2(\USB_RAM_Reg_inst/packet_is_in_progress ), .O(\USB_RAM_Reg_inst/n342 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1291.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1292 (.I0(\USB_RAM_Reg_inst/ram_filling_is_in_progress ), 
            .I1(\USB_RAM_Reg_inst/n342 ), .O(\USB_RAM_Reg_inst/ram_from_usb_we )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1292.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1293 (.I0(data_strobe), .I1(\USB_AddrBusOut[8] ), .I2(\dev_sel[1] ), 
            .I3(n787), .O(\USB_RAM_Reg_inst/n453 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1293.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1294 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n811), .O(\USB_RAM_Reg_inst/equal_51/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__1294.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__1295 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[12] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[4] ), 
            .O(n837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1295.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1296 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1296.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1297 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[10] ), 
            .I2(n837), .I3(n838), .O(n839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__1297.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__1298 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[0] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
            .O(n840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1298.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1299 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(n840), .O(n841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__1299.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__1300 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(n841), .O(n842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__1300.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__1301 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1301.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1302 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(n842), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(n843), .O(n844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd400 */ ;
    defparam LUT__1302.LUTMASK = 16'hd400;
    EFX_LUT4 LUT__1303 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1303.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1304 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .I2(n844), .I3(n845), .O(n846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1304.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1305 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[14] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1305.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1306 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .O(n848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1306.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1307 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I1(n848), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I3(n837), .O(n849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7100 */ ;
    defparam LUT__1307.LUTMASK = 16'h7100;
    EFX_LUT4 LUT__1308 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[12] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[11] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .O(n850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1308.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1309 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[15] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[13] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1309.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1310 (.I0(n847), .I1(n849), .I2(n850), .I3(n851), 
            .O(n852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1310.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1311 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[14] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[13] ), 
            .O(n853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1311.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1312 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[3] ), 
            .O(n854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1312.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1313 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .O(n855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1313.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1314 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[9] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[15] ), 
            .O(n856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1314.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1315 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[12] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[13] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[14] ), 
            .O(n857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1315.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1316 (.I0(n854), .I1(n855), .I2(n856), .I3(n857), 
            .O(n858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1316.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1317 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(n858), 
            .O(n859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1317.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1318 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(\USB_RAM_Reg_inst/sample_enable ), 
            .O(n860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1318.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1319 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .O(n861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1319.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1320 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1320.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1321 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1321.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1322 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1322.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1323 (.I0(n862), .I1(n863), .I2(n864), .O(n865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1323.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1324 (.I0(n859), .I1(n860), .I2(n861), .I3(n865), 
            .O(n866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1324.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1325 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[15] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .I2(n853), .I3(n866), .O(n867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00d4 */ ;
    defparam LUT__1325.LUTMASK = 16'h00d4;
    EFX_LUT4 LUT__1326 (.I0(n846), .I1(n839), .I2(n852), .I3(n867), 
            .O(USB_Error)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h70ff */ ;
    defparam LUT__1326.LUTMASK = 16'h70ff;
    EFX_LUT4 LUT__1327 (.I0(USB_Trailer_recognized), .I1(USB_Error), .O(\USB_RAM_Reg_inst/n206 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1327.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1328 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(n858), 
            .O(n868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1328.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1329 (.I0(\USB_RAM_Reg_inst/n342 ), .I1(n868), .O(\USB_RAM_Reg_inst/n218 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1329.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1330 (.I0(\USB_RAM_Reg_inst/sample_enable ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
            .I2(\USB_RAM_Reg_inst/packet_is_in_progress ), .O(\USB_RAM_Reg_inst/n353 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1330.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1331 (.I0(n868), .I1(\USB_RAM_Reg_inst/n353 ), .O(\USB_RAM_Reg_inst/n230 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1331.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1332 (.I0(\USB_RAM_Reg_inst/n342 ), .I1(n859), .O(\USB_RAM_Reg_inst/n282 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1332.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1333 (.I0(n859), .I1(\USB_RAM_Reg_inst/n353 ), .O(\USB_RAM_Reg_inst/n294 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1333.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1334 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/sample_enable ), 
            .I2(n868), .O(\USB_RAM_Reg_inst/n217 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1334.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1335 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .O(n869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1335.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1336 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[14] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1336.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1337 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .O(n871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1337.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1338 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[13] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1338.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1339 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[7] ), 
            .I2(n871), .I3(n872), .O(n873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9000 */ ;
    defparam LUT__1339.LUTMASK = 16'h9000;
    EFX_LUT4 LUT__1340 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[15] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .O(n874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__1340.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__1341 (.I0(n837), .I1(n838), .I2(n843), .I3(n874), 
            .O(n875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1341.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1342 (.I0(n869), .I1(n870), .I2(n873), .I3(n875), 
            .O(\USB_RAM_Reg_inst/equal_114/n31 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__1342.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__1343 (.I0(\bagd[0] ), .I1(data_strobe), .O(\USB_RAM_Reg_inst/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1343.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1344 (.I0(\address_bus[1] ), .I1(data_strobe), .I2(n790), 
            .O(n876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1344.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1345 (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[3] ), .I1(\USB_RAM_Reg_inst/sample_enable_cnt[4] ), 
            .O(n877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1345.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1346 (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[2] ), .I1(\USB_RAM_Reg_inst/sample_enable_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/ft_txen ), .I3(n877), .O(\USB_RAM_Reg_inst/n628 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__1346.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__1347 (.I0(n792), .I1(n876), .I2(\USB_RAM_Reg_inst/n628 ), 
            .O(\USB_RAM_Reg_inst/n563 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1347.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1348 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[5] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[6] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[7] ), .O(n878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1348.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1349 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[1] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[2] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .I3(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .O(n879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1349.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1350 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[4] ), .I1(n878), 
            .I2(n879), .O(\USB_RAM_Reg_inst/equal_143/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__1350.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__1351 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[4] ), 
            .I2(n878), .O(n880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1351.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1352 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[1] ), .I3(n880), .O(\USB_RAM_Reg_inst/equal_147/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__1352.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__1353 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[1] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[2] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[3] ), .I3(n880), .O(\USB_RAM_Reg_inst/equal_149/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__1353.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__1354 (.I0(\USB_RAM_Reg_inst/rd_paket_end_edge ), .I1(\USB_RAM_Reg_inst/n628 ), 
            .O(\USB_RAM_Reg_inst/n607 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1354.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1355 (.I0(\USB_RAM_Reg_inst/packet_prog_delay[1] ), .I1(\USB_RAM_Reg_inst/packet_prog_delay[2] ), 
            .O(\USB_RAM_Reg_inst/n593 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1355.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1356 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1356.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1357 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1357.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1358 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .O(n883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1358.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1359 (.I0(n881), .I1(n882), .I2(n883), .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1359.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1360 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I1(n884), .O(n885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1360.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1361 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1361.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1362 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .O(n887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1362.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1363 (.I0(n886), .I1(n887), .I2(n881), .I3(\USB_RAM_Reg_inst/length_of_packet_h[4] ), 
            .O(n888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__1363.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__1364 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(n881), 
            .I2(n882), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .O(n889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1364.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1365 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(n888), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I3(n889), .O(n890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heee8 */ ;
    defparam LUT__1365.LUTMASK = 16'heee8;
    EFX_LUT4 LUT__1366 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1366.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1367 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n891), 
            .O(n892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1367.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1368 (.I0(n886), .I1(n881), .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), .O(n893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb44b */ ;
    defparam LUT__1368.LUTMASK = 16'hb44b;
    EFX_LUT4 LUT__1369 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I2(n892), .I3(n893), 
            .O(n894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heb00 */ ;
    defparam LUT__1369.LUTMASK = 16'heb00;
    EFX_LUT4 LUT__1370 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .O(n895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1370.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1371 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .O(n896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1371.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1372 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I2(n895), .I3(n896), 
            .O(n897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd43f */ ;
    defparam LUT__1372.LUTMASK = 16'hd43f;
    EFX_LUT4 LUT__1373 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .O(n898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbaec */ ;
    defparam LUT__1373.LUTMASK = 16'hbaec;
    EFX_LUT4 LUT__1374 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I2(n886), .I3(n898), 
            .O(n899)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbe00 */ ;
    defparam LUT__1374.LUTMASK = 16'hbe00;
    EFX_LUT4 LUT__1375 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .O(n900)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1375.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1376 (.I0(n886), .I1(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .I2(n881), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .O(n901)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__1376.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__1377 (.I0(n881), .I1(n882), .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), .O(n902)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7887 */ ;
    defparam LUT__1377.LUTMASK = 16'h7887;
    EFX_LUT4 LUT__1378 (.I0(n901), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I2(n902), .O(n903)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1378.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1379 (.I0(n897), .I1(n899), .I2(n900), .I3(n903), 
            .O(n904)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1379.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1380 (.I0(n885), .I1(n890), .I2(n894), .I3(n904), 
            .O(n905)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1380.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1381 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .O(n906)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1381.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1382 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(n906), .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .O(n907)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbcbc */ ;
    defparam LUT__1382.LUTMASK = 16'hbcbc;
    EFX_LUT4 LUT__1383 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .O(n908)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1383.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1384 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .O(n909)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he100 */ ;
    defparam LUT__1384.LUTMASK = 16'he100;
    EFX_LUT4 LUT__1385 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I2(n895), .I3(n909), 
            .O(n910)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007d */ ;
    defparam LUT__1385.LUTMASK = 16'h007d;
    EFX_LUT4 LUT__1386 (.I0(n907), .I1(n908), .I2(n899), .I3(n910), 
            .O(n911)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1386.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1387 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n891), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), .O(n912)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__1387.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__1388 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I2(n892), .I3(n912), 
            .O(n913)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007d */ ;
    defparam LUT__1388.LUTMASK = 16'h007d;
    EFX_LUT4 LUT__1389 (.I0(n911), .I1(n897), .I2(n913), .I3(n894), 
            .O(n914)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1389.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1390 (.I0(n881), .I1(n882), .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), .O(n915)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8700 */ ;
    defparam LUT__1390.LUTMASK = 16'h8700;
    EFX_LUT4 LUT__1391 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .O(n916)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1391.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1392 (.I0(n886), .I1(n887), .I2(n881), .I3(n916), 
            .O(n917)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__1392.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__1393 (.I0(n889), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I2(n915), .I3(n917), .O(n918)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1393.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1394 (.I0(n901), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I2(n893), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .O(n919)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1394.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1395 (.I0(n918), .I1(n919), .O(n920)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1395.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1396 (.I0(n918), .I1(n903), .I2(n885), .I3(n890), 
            .O(n921)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__1396.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__1397 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .O(n922)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1397.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1398 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n923)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1398.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1399 (.I0(n886), .I1(n887), .I2(n881), .I3(n923), 
            .O(n924)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1399.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1400 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I1(n922), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(n924), 
            .O(n925)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he77b */ ;
    defparam LUT__1400.LUTMASK = 16'he77b;
    EFX_LUT4 LUT__1401 (.I0(n884), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I2(n925), .O(n926)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1401.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1402 (.I0(n914), .I1(n920), .I2(n921), .I3(n926), 
            .O(n927)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1402.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1403 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(n924), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), .O(n928)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1403.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1404 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .I2(n928), .O(n929)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__1404.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__1405 (.I0(n927), .I1(n905), .I2(n929), .O(\USB_RAM_Reg_inst/n1016 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1405.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1406 (.I0(\USB_RAM_Reg_inst/service_type_l[1] ), .I1(\USB_RAM_Reg_inst/service_type_l[5] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[2] ), .I3(\USB_RAM_Reg_inst/service_type_l[6] ), 
            .O(n930)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1406.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1407 (.I0(\USB_RAM_Reg_inst/service_type_h[2] ), .I1(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .I2(\USB_RAM_Reg_inst/service_type_h[5] ), .I3(\USB_RAM_Reg_inst/service_type_h[1] ), 
            .O(n931)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1407.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1408 (.I0(n782), .I1(n783), .I2(n930), .I3(n931), 
            .O(n932)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1408.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1409 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n932), .O(n933)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1409.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1410 (.I0(n932), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(n786), .O(n934)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__1410.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1411 (.I0(n934), .I1(\USB_AddrBusOut[8] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[8] ), 
            .I3(n933), .O(n935)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1411.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1412 (.I0(n934), .I1(\USB_AddrBusOut[0] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[0] ), 
            .I3(n933), .O(n936)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1412.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1413 (.I0(n936), .I1(n935), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n937)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1413.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1414 (.I0(n862), .I1(n887), .I2(n881), .I3(n882), 
            .O(n938)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1414.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1415 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(n888), .I2(n885), .I3(n938), .O(n939)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7cf1 */ ;
    defparam LUT__1415.LUTMASK = 16'h7cf1;
    EFX_LUT4 LUT__1416 (.I0(n862), .I1(n881), .O(n940)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1416.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1417 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .O(n941)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1417.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1418 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I2(n940), .I3(n941), 
            .O(n942)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd43f */ ;
    defparam LUT__1418.LUTMASK = 16'hd43f;
    EFX_LUT4 LUT__1419 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(n862), .I3(n881), .O(n943)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1419.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1420 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .O(n944)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1420.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1421 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I2(n943), .I3(n944), 
            .O(n945)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd43f */ ;
    defparam LUT__1421.LUTMASK = 16'hd43f;
    EFX_LUT4 LUT__1422 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n946)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1422.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1423 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .O(n947)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1423.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1424 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I2(n946), .I3(n947), 
            .O(n948)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd43f */ ;
    defparam LUT__1424.LUTMASK = 16'hd43f;
    EFX_LUT4 LUT__1425 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(n862), 
            .O(n949)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1425.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1426 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I2(n896), .I3(n949), 
            .O(n950)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcb2f */ ;
    defparam LUT__1426.LUTMASK = 16'hcb2f;
    EFX_LUT4 LUT__1427 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .O(n951)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1427.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1428 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I2(n951), .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n952)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcb2f */ ;
    defparam LUT__1428.LUTMASK = 16'hcb2f;
    EFX_LUT4 LUT__1429 (.I0(n908), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I3(n906), .O(n953)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfb2f */ ;
    defparam LUT__1429.LUTMASK = 16'hfb2f;
    EFX_LUT4 LUT__1430 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .O(n954)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1430.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1431 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I2(n862), .I3(n954), 
            .O(n955)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd43f */ ;
    defparam LUT__1431.LUTMASK = 16'hd43f;
    EFX_LUT4 LUT__1432 (.I0(n953), .I1(n952), .I2(n948), .I3(n955), 
            .O(n956)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__1432.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__1433 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n862), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n957)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5d0f */ ;
    defparam LUT__1433.LUTMASK = 16'h5d0f;
    EFX_LUT4 LUT__1434 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n862), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I3(n891), .O(n958)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf70f */ ;
    defparam LUT__1434.LUTMASK = 16'hf70f;
    EFX_LUT4 LUT__1435 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(n881), .O(n959)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1435.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1436 (.I0(n957), .I1(n958), .I2(n959), .I3(n893), 
            .O(n960)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__1436.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__1437 (.I0(n950), .I1(n948), .I2(n956), .I3(n960), 
            .O(n961)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__1437.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__1438 (.I0(n886), .I1(n881), .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .O(n962)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__1438.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__1439 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .O(n963)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1439.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1440 (.I0(n963), .I1(n881), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .O(n964)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1440.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1441 (.I0(n862), .I1(n881), .I2(n882), .O(n965)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1441.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1442 (.I0(n962), .I1(n964), .I2(n965), .I3(n902), 
            .O(n966)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf40f */ ;
    defparam LUT__1442.LUTMASK = 16'hf40f;
    EFX_LUT4 LUT__1443 (.I0(n938), .I1(n917), .O(n967)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1443.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1444 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .O(n968)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1444.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1445 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(n881), .I3(n968), .O(n969)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1445.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1446 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I1(n889), .I2(n969), .I3(n917), .O(n970)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1446.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1447 (.I0(n966), .I1(n945), .I2(n967), .I3(n970), 
            .O(n971)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__1447.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__1448 (.I0(n945), .I1(n961), .I2(n942), .I3(n971), 
            .O(n972)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1448.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1449 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I1(n862), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(n922), 
            .O(n973)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hde3f */ ;
    defparam LUT__1449.LUTMASK = 16'hde3f;
    EFX_LUT4 LUT__1450 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .I2(n928), .I3(n973), .O(n974)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1450.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1451 (.I0(n883), .I1(n965), .O(n975)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1451.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1452 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I2(n924), .O(n976)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6969 */ ;
    defparam LUT__1452.LUTMASK = 16'h6969;
    EFX_LUT4 LUT__1453 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I1(n884), .I2(n975), .I3(n976), .O(n977)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he83f */ ;
    defparam LUT__1453.LUTMASK = 16'he83f;
    EFX_LUT4 LUT__1454 (.I0(n973), .I1(n924), .I2(n922), .O(n978)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1454.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1455 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), .O(n979)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1455.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1456 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), .O(n980)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1456.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1457 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), .O(n981)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1457.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1458 (.I0(n979), .I1(n980), .I2(n981), .O(n982)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1458.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1459 (.I0(n978), .I1(n977), .I2(n974), .I3(n982), 
            .O(n983)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1459.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1460 (.I0(n972), .I1(n939), .I2(n974), .I3(n983), 
            .O(n984)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__1460.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1461 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), .O(n985)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1461.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1462 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/service_type_h[0] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n986)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8ff0 */ ;
    defparam LUT__1462.LUTMASK = 16'h8ff0;
    EFX_LUT4 LUT__1463 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), .I2(n982), 
            .O(n987)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1463.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1464 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), .I2(n982), 
            .O(n988)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1464.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1465 (.I0(n986), .I1(n985), .I2(n987), .I3(n988), 
            .O(n989)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1465.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1466 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n990)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1466.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1467 (.I0(\USB_RAM_Reg_inst/service_type_l[0] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .O(n991)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1467.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1468 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(n990), 
            .I2(n991), .I3(n987), .O(n992)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__1468.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__1469 (.I0(n984), .I1(n937), .I2(n989), .I3(n992), 
            .O(\USB_RAM_Reg_inst/output_data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__1469.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__1470 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en ), 
            .I1(\USB_RAM_Reg_inst/n628 ), .O(\USB_RAM_Reg_inst/n924 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1470.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1471 (.I0(\USB_RAM_Reg_inst/output_buffer[2] ), .I1(n799), 
            .O(n993)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1471.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1472 (.I0(\USB_RAM_Reg_inst/service_type_l[2] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I3(n793), .O(n994)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1472.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1473 (.I0(\dev_sel[1] ), .I1(\test_ram[2] ), .I2(n802), 
            .O(n995)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1473.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1474 (.I0(n788), .I1(n790), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[2] ), 
            .I3(n995), .O(n996)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1474.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1475 (.I0(n993), .I1(n994), .I2(n790), .I3(n996), 
            .O(\data_bus[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__1475.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__1476 (.I0(\USB_RAM_Reg_inst/output_buffer[3] ), .I1(n799), 
            .O(n997)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1476.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1477 (.I0(\USB_RAM_Reg_inst/service_type_l[3] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I3(n793), .O(n998)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1477.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1478 (.I0(\dev_sel[1] ), .I1(\test_ram[3] ), .I2(n802), 
            .O(n999)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1478.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1479 (.I0(n788), .I1(n790), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[3] ), 
            .I3(n999), .O(n1000)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1479.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1480 (.I0(n997), .I1(n998), .I2(n790), .I3(n1000), 
            .O(\data_bus[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__1480.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__1481 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .I2(n987), 
            .O(\USB_RAM_Reg_inst/equal_191/n31 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__1481.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__1482 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n1001)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1482.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1483 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(n1001), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .O(n1002)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__1483.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__1484 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .O(n1003)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1484.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1485 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .O(n1004)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1485.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1486 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .O(n1005)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1486.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1487 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .O(n1006)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1487.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1488 (.I0(n1003), .I1(n1004), .I2(n1005), .I3(n1006), 
            .O(n1007)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1488.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1489 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), .O(n1008)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1489.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1490 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n1009)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__1490.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__1491 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n1010)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e01 */ ;
    defparam LUT__1491.LUTMASK = 16'h0e01;
    EFX_LUT4 LUT__1492 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I2(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n1011)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__1492.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__1493 (.I0(n1009), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I2(n1010), .I3(n1011), .O(n1012)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__1493.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__1494 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .O(n1013)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1494.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1495 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(n1009), .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(n1013), 
            .O(n1014)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5cdd */ ;
    defparam LUT__1495.LUTMASK = 16'h5cdd;
    EFX_LUT4 LUT__1496 (.I0(n1008), .I1(n1007), .I2(n1012), .I3(n1014), 
            .O(n1015)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1496.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1497 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .I1(n1015), .I2(n1001), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n1016)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb22b */ ;
    defparam LUT__1497.LUTMASK = 16'hb22b;
    EFX_LUT4 LUT__1498 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .O(n1017)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1498.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1499 (.I0(n863), .I1(n1001), .O(n1018)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1499.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1500 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(n1017), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), .I3(n1018), 
            .O(n1019)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he77b */ ;
    defparam LUT__1500.LUTMASK = 16'he77b;
    EFX_LUT4 LUT__1501 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(n1002), .I2(n1016), .I3(n1019), .O(n1020)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00e8 */ ;
    defparam LUT__1501.LUTMASK = 16'h00e8;
    EFX_LUT4 LUT__1502 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(n1018), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .O(n1021)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h10ef */ ;
    defparam LUT__1502.LUTMASK = 16'h10ef;
    EFX_LUT4 LUT__1503 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(n1018), 
            .O(n1022)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1503.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1504 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I2(n1018), .O(n1023)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b2b */ ;
    defparam LUT__1504.LUTMASK = 16'h2b2b;
    EFX_LUT4 LUT__1505 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(n1022), .I2(n1023), .I3(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .O(n1024)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf5dc */ ;
    defparam LUT__1505.LUTMASK = 16'hf5dc;
    EFX_LUT4 LUT__1506 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I1(n1021), .I2(n1020), .I3(n1024), .O(n1025)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1506.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1507 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .O(n1026)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1507.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1508 (.I0(n863), .I1(n1001), .I2(n1026), .O(n1027)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1508.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1509 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(n1027), .O(n1028)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1509.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1510 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .O(n1029)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1510.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1511 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(n1029), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), .I3(n1027), 
            .O(n1030)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he77b */ ;
    defparam LUT__1511.LUTMASK = 16'he77b;
    EFX_LUT4 LUT__1512 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(n1028), 
            .O(n1031)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1512.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1513 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I2(n1030), .I3(n1031), 
            .O(n1032)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0b */ ;
    defparam LUT__1513.LUTMASK = 16'h0c0b;
    EFX_LUT4 LUT__1514 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I2(n1028), .I3(n1032), 
            .O(n1033)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heb00 */ ;
    defparam LUT__1514.LUTMASK = 16'heb00;
    EFX_LUT4 LUT__1515 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I2(n1027), .O(n1034)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b2b */ ;
    defparam LUT__1515.LUTMASK = 16'h2b2b;
    EFX_LUT4 LUT__1516 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .I1(n1028), .I2(n1034), .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n1035)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf5dc */ ;
    defparam LUT__1516.LUTMASK = 16'hf5dc;
    EFX_LUT4 LUT__1517 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(n1035), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(n1028), 
            .O(n1036)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4dd4 */ ;
    defparam LUT__1517.LUTMASK = 16'h4dd4;
    EFX_LUT4 LUT__1518 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(n1036), .I2(n1031), .I3(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .O(n1037)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb20b */ ;
    defparam LUT__1518.LUTMASK = 16'hb20b;
    EFX_LUT4 LUT__1519 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), .O(n1038)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1519.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1520 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I3(n1038), .O(n1039)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1520.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1521 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .O(n1040)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1521.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1522 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I3(n1040), .O(n1041)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1522.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1523 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .O(n1042)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1523.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1524 (.I0(n1041), .I1(n1039), .I2(\USB_RAM_Reg_inst/n628 ), 
            .I3(n1042), .O(n1043)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1524.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1525 (.I0(n1033), .I1(n1025), .I2(n1037), .I3(n1043), 
            .O(\USB_RAM_Reg_inst/n1171 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1525.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1526 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1526.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1527 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), .I2(n605), 
            .O(n588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1527.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1528 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .O(\USB_RAM_Reg_inst/n1394 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__1528.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1529 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .O(\USB_RAM_Reg_inst/n1399 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1529.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1530 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/h_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/n1404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1530.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1531 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .O(\USB_RAM_Reg_inst/n1414 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__1531.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1532 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .O(\USB_RAM_Reg_inst/n1419 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1532.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1533 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/t_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/n1424 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1533.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1534 (.I0(FT_RX_Full_n), .I1(\address_bus[1] ), .I2(n794), 
            .I3(n790), .O(n1044)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1534.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1535 (.I0(\USB_RAM_Reg_inst/output_buffer[1] ), .I1(n799), 
            .I2(\USB_RAM_Reg_inst/service_type_l[1] ), .I3(n797), .O(n1045)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1535.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1536 (.I0(n793), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .I2(n1044), .I3(n1045), .O(n1046)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1536.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1537 (.I0(n790), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[1] ), 
            .I2(n1046), .I3(n803), .O(n1047)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__1537.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__1538 (.I0(n789), .I1(\test_ram[1] ), .I2(n1047), .O(\data_bus[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1538.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1539 (.I0(\USB_RAM_Reg_inst/service_type_l[4] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(n793), .O(n1048)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1539.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1540 (.I0(n799), .I1(\USB_RAM_Reg_inst/output_buffer[4] ), 
            .I2(n790), .I3(n1048), .O(n1049)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1540.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1541 (.I0(n790), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[4] ), 
            .I2(n803), .O(n1050)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1541.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1542 (.I0(n1049), .I1(n1050), .I2(\test_ram[4] ), .I3(n789), 
            .O(\data_bus[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__1542.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__1543 (.I0(\USB_RAM_Reg_inst/output_buffer[5] ), .I1(n799), 
            .O(n1051)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1543.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1544 (.I0(\USB_RAM_Reg_inst/service_type_l[5] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(n793), .O(n1052)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1544.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1545 (.I0(\dev_sel[1] ), .I1(\test_ram[5] ), .I2(n802), 
            .O(n1053)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1545.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1546 (.I0(n788), .I1(n790), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[5] ), 
            .I3(n1053), .O(n1054)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1546.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1547 (.I0(n1051), .I1(n1052), .I2(n790), .I3(n1054), 
            .O(\data_bus[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__1547.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__1548 (.I0(\USB_RAM_Reg_inst/output_buffer[6] ), .I1(n799), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(n793), .O(n1055)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1548.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1549 (.I0(n797), .I1(\USB_RAM_Reg_inst/service_type_l[6] ), 
            .I2(n790), .I3(n1055), .O(n1056)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1549.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1550 (.I0(n790), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[6] ), 
            .I2(n803), .O(n1057)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1550.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1551 (.I0(n1056), .I1(n1057), .I2(\test_ram[6] ), .I3(n789), 
            .O(\data_bus[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__1551.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__1552 (.I0(\USB_RAM_Reg_inst/output_buffer[7] ), .I1(n799), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I3(n793), .O(n1058)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1552.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1553 (.I0(n797), .I1(\USB_RAM_Reg_inst/service_type_l[7] ), 
            .I2(n790), .I3(n1058), .O(n1059)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1553.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1554 (.I0(n790), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[7] ), 
            .I2(n803), .O(n1060)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1554.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1555 (.I0(n1059), .I1(n1060), .I2(\test_ram[7] ), .I3(n789), 
            .O(\data_bus[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__1555.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__1556 (.I0(\USB_RAM_Reg_inst/service_type_h[0] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I3(n793), .O(n1061)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1556.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1557 (.I0(n1061), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[8] ), 
            .I2(n790), .I3(n803), .O(n1062)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1557.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1558 (.I0(n789), .I1(\test_ram[8] ), .I2(n1062), .O(\data_bus[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1558.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1559 (.I0(\USB_RAM_Reg_inst/service_type_h[1] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I3(n793), .O(n1063)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1559.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1560 (.I0(n1063), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[9] ), 
            .I2(n790), .I3(n803), .O(n1064)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1560.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1561 (.I0(n789), .I1(\test_ram[9] ), .I2(n1064), .O(\data_bus[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1561.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1562 (.I0(\USB_RAM_Reg_inst/service_type_h[2] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I3(n793), .O(n1065)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1562.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1563 (.I0(n1065), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[10] ), 
            .I2(n790), .I3(n803), .O(n1066)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1563.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1564 (.I0(n789), .I1(\test_ram[10] ), .I2(n1066), .O(\data_bus[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1564.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1565 (.I0(\USB_RAM_Reg_inst/service_type_h[3] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I3(n793), .O(n1067)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1565.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1566 (.I0(n1067), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[11] ), 
            .I2(n790), .I3(n803), .O(n1068)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1566.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1567 (.I0(n789), .I1(\test_ram[11] ), .I2(n1068), .O(\data_bus[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1567.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1568 (.I0(\USB_RAM_Reg_inst/service_type_h[4] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I3(n793), .O(n1069)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1568.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1569 (.I0(n1069), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[12] ), 
            .I2(n790), .I3(n803), .O(n1070)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1569.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1570 (.I0(n789), .I1(\test_ram[12] ), .I2(n1070), .O(\data_bus[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1570.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1571 (.I0(\USB_RAM_Reg_inst/service_type_h[5] ), .I1(n797), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I3(n793), .O(n1071)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1571.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1572 (.I0(n1071), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[13] ), 
            .I2(n790), .I3(n803), .O(n1072)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__1572.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__1573 (.I0(n789), .I1(\test_ram[13] ), .I2(n1072), .O(\data_bus[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__1573.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1574 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .O(n674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1574.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1575 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(n987), .O(n1073)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1575.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1576 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1074)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1576.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1577 (.I0(n1074), .I1(n1073), .I2(n988), .O(n1075)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1577.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1578 (.I0(n934), .I1(\USB_AddrBusOut[9] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[9] ), 
            .I3(n933), .O(n1076)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1578.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1579 (.I0(n934), .I1(\USB_AddrBusOut[1] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[1] ), 
            .I3(n933), .O(n1077)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1579.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1580 (.I0(n1077), .I1(n1076), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n1078)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1580.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1581 (.I0(n987), .I1(n929), .O(n1079)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1581.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1582 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(n987), .I2(n605), .O(n1080)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1582.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1583 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(n987), .O(n1081)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1583.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1584 (.I0(n1080), .I1(\USB_RAM_Reg_inst/service_type_h[1] ), 
            .I2(n1081), .O(n1082)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__1584.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1585 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1083)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1585.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1586 (.I0(n1083), .I1(\USB_RAM_Reg_inst/service_type_l[1] ), 
            .I2(n1081), .O(n1084)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1586.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1587 (.I0(n927), .I1(n1079), .I2(n1082), .I3(n1084), 
            .O(n1085)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1587.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1588 (.I0(n1078), .I1(n1075), .I2(n1085), .I3(n984), 
            .O(\USB_RAM_Reg_inst/output_data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__1588.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__1589 (.I0(n934), .I1(\USB_AddrBusOut[10] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[10] ), 
            .I3(n933), .O(n1086)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1589.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1590 (.I0(n933), .I1(\USB_RAM_Reg_inst/fast_module_buffer[2] ), 
            .I2(n934), .I3(\USB_AddrBusOut[2] ), .O(n1087)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1590.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1591 (.I0(n1087), .I1(n1086), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n1088)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1591.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1592 (.I0(\USB_RAM_Reg_inst/service_type_l[2] ), .I1(\USB_RAM_Reg_inst/service_type_h[2] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1089)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1592.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1593 (.I0(n1089), .I1(n1083), .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I3(n990), .O(n1090)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1593.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1594 (.I0(n1090), .I1(n987), .I2(n988), .O(n1091)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1594.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1595 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/equal_191/n31 ), 
            .O(n1092)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1595.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1596 (.I0(n984), .I1(n1088), .I2(n1091), .I3(n1092), 
            .O(\USB_RAM_Reg_inst/output_data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__1596.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__1597 (.I0(\USB_AddrBusOut[3] ), .I1(\USB_AddrBusOut[11] ), 
            .I2(n934), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1093)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__1597.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1598 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[3] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[11] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n933), 
            .O(n1094)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__1598.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1599 (.I0(n1094), .I1(n1093), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .O(n1095)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1599.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1600 (.I0(n927), .I1(n1079), .I2(\USB_RAM_Reg_inst/service_type_h[3] ), 
            .I3(n1080), .O(n1096)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1600.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1601 (.I0(n1081), .I1(n1083), .O(n1097)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1601.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1602 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(n1073), 
            .O(n1098)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1602.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1603 (.I0(n1097), .I1(\USB_RAM_Reg_inst/service_type_l[3] ), 
            .I2(n1098), .I3(n988), .O(n1099)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__1603.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__1604 (.I0(n1096), .I1(n1095), .I2(n984), .I3(n1099), 
            .O(\USB_RAM_Reg_inst/output_data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__1604.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1605 (.I0(n934), .I1(\USB_AddrBusOut[12] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[12] ), 
            .I3(n933), .O(n1100)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1605.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1606 (.I0(n934), .I1(\USB_AddrBusOut[4] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[4] ), 
            .I3(n933), .O(n1101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1606.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1607 (.I0(n1101), .I1(n1100), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n1102)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1607.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1608 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/service_type_h[4] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8ff0 */ ;
    defparam LUT__1608.LUTMASK = 16'h8ff0;
    EFX_LUT4 LUT__1609 (.I0(n1103), .I1(n987), .O(n1104)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1609.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1610 (.I0(\USB_RAM_Reg_inst/equal_191/n31 ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(n988), .I3(n1104), .O(n1105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__1610.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__1611 (.I0(\USB_RAM_Reg_inst/service_type_l[4] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .O(n1106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1611.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1612 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(n990), 
            .I2(n1106), .I3(n987), .O(n1107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__1612.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__1613 (.I0(n1102), .I1(n984), .I2(n1105), .I3(n1107), 
            .O(\USB_RAM_Reg_inst/output_data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__1613.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__1614 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[5] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[13] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n933), 
            .O(n1108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__1614.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1615 (.I0(\USB_AddrBusOut[5] ), .I1(\USB_AddrBusOut[13] ), 
            .I2(n934), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__1615.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1616 (.I0(n1109), .I1(n1108), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .O(n1110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1616.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1617 (.I0(n927), .I1(n1079), .I2(\USB_RAM_Reg_inst/service_type_h[5] ), 
            .I3(n1080), .O(n1111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1617.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1618 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(n1073), 
            .O(n1112)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1618.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1619 (.I0(n1097), .I1(\USB_RAM_Reg_inst/service_type_l[5] ), 
            .I2(n988), .I3(n1112), .O(n1113)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__1619.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__1620 (.I0(n1111), .I1(n1110), .I2(n984), .I3(n1113), 
            .O(\USB_RAM_Reg_inst/output_data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__1620.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1621 (.I0(n933), .I1(\USB_RAM_Reg_inst/fast_module_buffer[14] ), 
            .I2(n934), .I3(\USB_AddrBusOut[14] ), .O(n1114)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1621.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1622 (.I0(n934), .I1(\USB_AddrBusOut[6] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[6] ), 
            .I3(n933), .O(n1115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1622.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1623 (.I0(n1115), .I1(n1114), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n1116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1623.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1624 (.I0(\USB_RAM_Reg_inst/service_type_l[6] ), .I1(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1624.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1625 (.I0(n1117), .I1(n1083), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .I3(n990), .O(n1118)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1625.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1626 (.I0(n1118), .I1(n987), .I2(n988), .O(n1119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1626.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1627 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(\USB_RAM_Reg_inst/equal_191/n31 ), 
            .O(n1120)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1627.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1628 (.I0(n984), .I1(n1116), .I2(n1119), .I3(n1120), 
            .O(\USB_RAM_Reg_inst/output_data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__1628.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__1629 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1629.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1630 (.I0(n1121), .I1(n1073), .I2(n988), .O(n1122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1630.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1631 (.I0(n933), .I1(\USB_RAM_Reg_inst/fast_module_buffer[15] ), 
            .I2(n934), .I3(\USB_AddrBusOut[15] ), .O(n1123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1631.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1632 (.I0(n934), .I1(\USB_AddrBusOut[7] ), .I2(\USB_RAM_Reg_inst/fast_module_buffer[7] ), 
            .I3(n933), .O(n1124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1632.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1633 (.I0(n1124), .I1(n1123), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/received_packet_is_valid ), .O(n1125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1633.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1634 (.I0(n1080), .I1(\USB_RAM_Reg_inst/service_type_h[7] ), 
            .I2(n1081), .O(n1126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__1634.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1635 (.I0(n1083), .I1(\USB_RAM_Reg_inst/service_type_l[7] ), 
            .I2(n1081), .O(n1127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1635.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1636 (.I0(n927), .I1(n1079), .I2(n1126), .I3(n1127), 
            .O(n1128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1636.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1637 (.I0(n1125), .I1(n1122), .I2(n1128), .I3(n984), 
            .O(\USB_RAM_Reg_inst/output_data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__1637.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__1638 (.I0(\USB_AddrBusOut[13] ), .I1(\USB_AddrBusOut[10] ), 
            .I2(\USB_AddrBusOut[11] ), .I3(\USB_AddrBusOut[15] ), .O(n1129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1638.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1639 (.I0(n805), .I1(n1129), .O(n24_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1639.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1650 (.I0(\USB_RAM_Reg_inst/rd_strobe ), .O(FT_RD_Strobe_n)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__1650.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__1651 (.I0(ee), .O(LedG)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__1651.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk100), .O(\clk100~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3  (.I0(n674), .I1(1'b1), 
            .CI(1'b0), .CO(n1133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3  (.I0(n605), .I1(1'b1), 
            .CI(1'b0), .CO(n1132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5  (.I0(n588), .I1(1'b1), 
            .CI(1'b0), .CO(n1131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3  (.I0(n480), .I1(1'b1), 
            .CI(1'b0), .CO(n1130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\Github\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3 .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_31721e29_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_31721e29_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_31721e29_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_31721e29__8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_31721e29__8_8_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_31721e29__2_2_2_2_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_31721e29_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_31721e29_0
// module not written out since it is a black box. 
//

