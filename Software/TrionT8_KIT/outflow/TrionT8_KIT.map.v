
//
// Verific Verilog Description of module TrionT8_KIT
//

module TrionT8_KIT (quartz_clk, clk100, FT_TX_Enable_n, FT_RX_Full_n, 
            FT_WR_Strobe, FT_RD_Strobe_n, FT_PWR_n, FT_DATA_IN, FT_DATA_OUT, 
            FT_DATA_OE, LedG, Led_bus, GPIO);
    input quartz_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input clk100 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input FT_TX_Enable_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input FT_RX_Full_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output FT_WR_Strobe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output FT_RD_Strobe_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input FT_PWR_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [7:0]FT_DATA_IN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [7:0]FT_DATA_OUT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]FT_DATA_OE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output LedG /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]Led_bus /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [8:1]GPIO /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    wire n434_2;
    wire n20_2;
    wire n24_2;
    
    wire n16, n20, n21, n22, n23, n24, n25, \bagd[0] , n29, 
        n30, n31, n32, \cnt[0] , n35, n36, n37, n38, n39, 
        n40, n41, n42, \dev_sel[0] , n44, n45, n46, n47, n48, 
        n49, n51, n52, \Arbiter_inst/address_valid_d[0] , data_strobe, 
        n55, n56, n57, \Arbiter_inst/timeout_cnt[0] , \Arbiter_inst/timeout , 
        n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, 
        n71, n72, \Arbiter_inst/address_valid_d[1] , \Arbiter_inst/address_valid_d[2] , 
        \Arbiter_inst/timeout_cnt[1] , \Arbiter_inst/timeout_cnt[2] , \Arbiter_inst/timeout_cnt[3] , 
        \Arbiter_inst/timeout_cnt[4] , \Arbiter_inst/timeout_cnt[5] , \Arbiter_inst/timeout_cnt[6] , 
        n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, \USB_RAM_Reg_inst/rxf_edge , \USB_RAM_Reg_inst/rd_cycle_is_active , 
        \USB_RAM_Reg_inst/rd_strobe , \USB_RAM_Reg_inst/rd_timing_cnt[0] , 
        n105, \USB_RAM_Reg_inst/ft_inbus_buffer[0] , \USB_RAM_Reg_inst/h_key_cnt[0] , 
        \USB_RAM_Reg_inst/t_key_cnt[0] , USB_Header_recognized, USB_Trailer_recognized, 
        \USB_AddrBusOut[14] , \USB_AddrBusOut[15] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[14] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_out[15] , \USB_RAM_Reg_inst/byte_number_cnt[0] , 
        \USB_RAM_Reg_inst/length_of_packet_l[0] , \USB_RAM_Reg_inst/received_packet_is_valid , 
        \USB_RAM_Reg_inst/rd_timing_cnt[7] , \USB_RAM_Reg_inst/length_of_packet_h[0] , 
        \USB_RAM_Reg_inst/service_type_l[0] , \USB_RAM_Reg_inst/rd_timing_cnt[6] , 
        \USB_RAM_Reg_inst/service_type_h[0] , \USB_RAM_Reg_inst/load_data_l[0] , 
        \USB_RAM_Reg_inst/rd_timing_cnt[5] , \USB_RAM_Reg_inst/load_data_h[0] , 
        \USB_RAM_Reg_inst/ram_filling_is_in_progress , \USB_RAM_Reg_inst/rd_timing_cnt[4] , 
        \USB_RAM_Reg_inst/fast_module_buffer[0] , n131, n132, \USB_RAM_Reg_inst/rd_timing_cnt[3] , 
        \USB_RAM_Reg_inst/wr_timing_counter[0] , \USB_RAM_Reg_inst/rd_timing_cnt[2] , 
        n136, n137, \USB_RAM_Reg_inst/rd_timing_cnt[1] , \USB_RAM_Reg_inst/packet_prog_delay[0] , 
        n143, \USB_RAM_Reg_inst/sample_enable_cnt[0] , \USB_RAM_Reg_inst/rd_paket_end_edge , 
        \USB_RAM_Reg_inst/ft_txen , \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] , 
        n149, n150, \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] , \USB_AddrBusOut[2] , 
        \USB_AddrBusOut[3] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[2] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[3] , 
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en , \USB_RAM_Reg_inst/condition_access_request , 
        \USB_RAM_Reg_inst/rxf_delay[0] , USB_AccessRequest, \USB_RAM_Reg_inst/ft_inbus_buffer[1] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[2] , \USB_RAM_Reg_inst/ft_inbus_buffer[3] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[4] , \USB_RAM_Reg_inst/ft_inbus_buffer[5] , 
        \USB_RAM_Reg_inst/ft_inbus_buffer[6] , \USB_RAM_Reg_inst/ft_inbus_buffer[7] , 
        \USB_RAM_Reg_inst/h_key_cnt[1] , \USB_RAM_Reg_inst/h_key_cnt[2] , 
        \USB_RAM_Reg_inst/h_key_cnt[3] , \USB_RAM_Reg_inst/t_key_cnt[1] , 
        \USB_RAM_Reg_inst/t_key_cnt[2] , \USB_RAM_Reg_inst/t_key_cnt[3] , 
        n185, n186, n187, n188, n189, n190, n191, n192, n193, 
        n194, n195, n196, n197, n198, n199, n200, n201, n202, 
        n203, n204, n205, n206, n207, n208, n209, n210, n211, 
        \USB_RAM_Reg_inst/byte_number_cnt[1] , \USB_RAM_Reg_inst/byte_number_cnt[2] , 
        \USB_RAM_Reg_inst/byte_number_cnt[3] , \USB_RAM_Reg_inst/byte_number_cnt[4] , 
        \USB_RAM_Reg_inst/byte_number_cnt[5] , \USB_RAM_Reg_inst/byte_number_cnt[6] , 
        \USB_RAM_Reg_inst/byte_number_cnt[7] , \USB_RAM_Reg_inst/byte_number_cnt[8] , 
        \USB_RAM_Reg_inst/byte_number_cnt[9] , \USB_RAM_Reg_inst/byte_number_cnt[10] , 
        \USB_RAM_Reg_inst/byte_number_cnt[11] , \USB_RAM_Reg_inst/byte_number_cnt[12] , 
        \USB_RAM_Reg_inst/byte_number_cnt[13] , \USB_RAM_Reg_inst/byte_number_cnt[14] , 
        \USB_RAM_Reg_inst/byte_number_cnt[15] , \USB_RAM_Reg_inst/length_of_packet_l[1] , 
        \USB_RAM_Reg_inst/length_of_packet_l[2] , \USB_RAM_Reg_inst/length_of_packet_l[3] , 
        \USB_RAM_Reg_inst/length_of_packet_l[4] , \USB_RAM_Reg_inst/length_of_packet_l[5] , 
        \USB_RAM_Reg_inst/length_of_packet_l[6] , \USB_RAM_Reg_inst/length_of_packet_l[7] , 
        n234, n235, n236, n237, n238, n239, n240, n241, n242, 
        n243, n244, n245, n246, n247, n248, n249, n250, n251, 
        n252, n253, n254, n255, n256, n257, n258, n259, \USB_RAM_Reg_inst/length_of_packet_h[1] , 
        \USB_RAM_Reg_inst/length_of_packet_h[2] , \USB_RAM_Reg_inst/length_of_packet_h[3] , 
        \USB_RAM_Reg_inst/length_of_packet_h[4] , \USB_RAM_Reg_inst/length_of_packet_h[5] , 
        \USB_RAM_Reg_inst/length_of_packet_h[6] , \USB_RAM_Reg_inst/length_of_packet_h[7] , 
        \USB_RAM_Reg_inst/service_type_l[1] , \USB_RAM_Reg_inst/service_type_l[2] , 
        \USB_RAM_Reg_inst/service_type_l[3] , \USB_RAM_Reg_inst/service_type_l[4] , 
        \USB_RAM_Reg_inst/service_type_l[5] , \USB_RAM_Reg_inst/service_type_l[6] , 
        \USB_RAM_Reg_inst/service_type_l[7] , n274, n275, n276, n277, 
        n278, n279, n280, n281, n282, n283, n284, n285, n286, 
        \USB_RAM_Reg_inst/service_type_h[1] , \USB_RAM_Reg_inst/service_type_h[2] , 
        \USB_RAM_Reg_inst/service_type_h[3] , \USB_RAM_Reg_inst/service_type_h[4] , 
        \USB_RAM_Reg_inst/service_type_h[5] , \USB_RAM_Reg_inst/service_type_h[6] , 
        \USB_RAM_Reg_inst/service_type_h[7] , \USB_RAM_Reg_inst/load_data_l[1] , 
        \USB_RAM_Reg_inst/load_data_l[2] , \USB_RAM_Reg_inst/load_data_l[3] , 
        \USB_RAM_Reg_inst/load_data_l[4] , \USB_RAM_Reg_inst/load_data_l[5] , 
        \USB_RAM_Reg_inst/load_data_l[6] , \USB_RAM_Reg_inst/load_data_l[7] , 
        n301, n302, n303, n304, n305, n306, n307, n308, n309, 
        n310, n311, n312, n313, n314, n315, n316, n317, n318, 
        n319, n320, n321, n322, n323, n324, \USB_RAM_Reg_inst/load_data_h[1] , 
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
        \USB_RAM_Reg_inst/fast_module_buffer[15] , n347, n348, \USB_AddrBusOut[4] , 
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
        \test_ram[6] , \test_ram[7] , n381, n382, n383, n384, n385, 
        n386, n387, n388, n389, n390, n391, n392, n393, n394, 
        n395, n396, n397, n398, n399, n400, n401, n402, n403, 
        n404, \USB_RAM_Reg_inst/wr_timing_counter[1] , \USB_RAM_Reg_inst/wr_timing_counter[2] , 
        \USB_RAM_Reg_inst/wr_timing_counter[3] , \USB_RAM_Reg_inst/wr_timing_counter[4] , 
        \USB_RAM_Reg_inst/wr_timing_counter[5] , \USB_RAM_Reg_inst/wr_timing_counter[6] , 
        \USB_RAM_Reg_inst/wr_timing_counter[7] , \USB_RAM_Reg_inst/packet_prog_delay[1] , 
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
        \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] , \USB_RAM_Reg_inst/rxf_delay[1] , 
        \cnt[1] , \cnt[2] , \cnt[3] , \cnt[4] , \cnt[5] , \cnt[6] , 
        \cnt[7] , \cnt[8] , \cnt[9] , \cnt[11] , \cnt[12] , \cnt[13] , 
        \cnt[14] , \cnt[15] , \cnt[16] , \cnt[17] , \cnt[18] , \cnt[19] , 
        \cnt[20] , \cnt[21] , \cnt[22] , \cnt[23] , \cnt[24] , \cnt[25] , 
        \cnt[26] , \cnt[27] , \cnt[28] , \cnt[29] , \cnt[30] , n764, 
        n765, \test_ram[8] , \test_ram[9] , \test_ram[10] , \test_ram[11] , 
        \test_ram[12] , \test_ram[13] , \test_ram[14] , \test_ram[15] , 
        n774, n775, n776, n777, \dev_sel[1] , n779, n780, \Arbiter_inst/barq_trig[0] , 
        \Arbiter_inst/end_cycle , \data_bus[0] , target_ready, address_valid, 
        \Arbiter_inst/n131 , \Arbiter_inst/data_strobe , \Arbiter_inst/n16 , 
        ceg_net1, \Arbiter_inst/equal_32/n13 , \USB_RAM_Reg_inst/n7 , 
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
        \USB_RAM_Reg_inst/equal_149/n15 , \USB_RAM_Reg_inst/equal_155/n15 , 
        \USB_RAM_Reg_inst/command_list_has_control , \USB_RAM_Reg_inst/n607 , 
        \USB_RAM_Reg_inst/n593 , \USB_RAM_Reg_inst/n1016 , \USB_RAM_Reg_inst/n628 , 
        \USB_RAM_Reg_inst/output_buffer[0] , \USB_RAM_Reg_inst/output_data[0] , 
        \USB_RAM_Reg_inst/n924 , \data_bus[2] , \data_bus[3] , \USB_RAM_Reg_inst/equal_191/n31 , 
        \USB_RAM_Reg_inst/n1171 , \USB_RAM_Reg_inst/n1394 , \USB_RAM_Reg_inst/n1399 , 
        \USB_RAM_Reg_inst/n1404 , \USB_RAM_Reg_inst/n1414 , \USB_RAM_Reg_inst/n1419 , 
        \USB_RAM_Reg_inst/n1424 , n1094, n1098, n1138, \data_bus[1] , 
        \data_bus[4] , \data_bus[5] , \data_bus[6] , \data_bus[7] , 
        \data_bus[8] , \data_bus[9] , \data_bus[10] , \data_bus[11] , 
        \data_bus[12] , \data_bus[13] , \address_bus[0] , \address_bus[1] , 
        \address_bus[2] , \address_bus[3] , \address_bus[4] , \address_bus[5] , 
        \address_bus[6] , \address_bus[7] , n1186, \USB_RAM_Reg_inst/output_buffer[1] , 
        \USB_RAM_Reg_inst/output_buffer[2] , \USB_RAM_Reg_inst/output_buffer[3] , 
        \USB_RAM_Reg_inst/output_buffer[4] , \USB_RAM_Reg_inst/output_buffer[5] , 
        \USB_RAM_Reg_inst/output_buffer[6] , \USB_RAM_Reg_inst/output_buffer[7] , 
        \USB_RAM_Reg_inst/output_data[1] , \USB_RAM_Reg_inst/output_data[2] , 
        \USB_RAM_Reg_inst/output_data[3] , \USB_RAM_Reg_inst/output_data[4] , 
        \USB_RAM_Reg_inst/output_data[5] , \USB_RAM_Reg_inst/output_data[6] , 
        \USB_RAM_Reg_inst/output_data[7] , \clk100~O , n1933, n1932, 
        n1931, n1930, n1562, n1563, n1564, n1565, n1566, n1567, 
        n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, 
        n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, 
        n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, 
        n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599, 
        n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, 
        n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, 
        n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, 
        n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, 
        n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639, 
        n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, 
        n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, 
        n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, 
        n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, 
        n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679, 
        n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, 
        n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, 
        n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, 
        n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, 
        n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719, 
        n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, 
        n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, 
        n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, 
        n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, 
        n1752, n1753, n1754, n1755, n1756, n1757, n1758, n1759, 
        n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767, 
        n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, 
        n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783, 
        n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, 
        n1792, n1793, n1794, n1795, n1796, n1797, n1798, n1799, 
        n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, 
        n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, 
        n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823, 
        n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, 
        n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, 
        n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847, 
        n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, 
        n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863, 
        n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, 
        n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, 
        n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887, 
        n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, 
        n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903, 
        n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, 
        n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919, 
        n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927, 
        n1928, n1929;
    
    assign FT_DATA_OE[7] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[6] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[5] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[4] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[3] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[2] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign FT_DATA_OE[1] = FT_DATA_OE[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[8] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[7] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign GPIO[3] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__2346 (.I0(data_strobe), .I1(\Arbiter_inst/timeout ), .O(\Arbiter_inst/end_cycle )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__2346.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2347 (.I0(\USB_RAM_Reg_inst/service_type_h[4] ), .I1(\USB_RAM_Reg_inst/service_type_h[3] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[7] ), .I3(\USB_RAM_Reg_inst/service_type_h[7] ), 
            .O(n1562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2347.LUTMASK = 16'h4000;
    EFX_FF \bagd[0]~FF  (.D(\Arbiter_inst/barq_trig[0] ), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\bagd[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(56)
    defparam \bagd[0]~FF .CLK_POLARITY = 1'b1;
    defparam \bagd[0]~FF .CE_POLARITY = 1'b1;
    defparam \bagd[0]~FF .SR_POLARITY = 1'b1;
    defparam \bagd[0]~FF .D_POLARITY = 1'b1;
    defparam \bagd[0]~FF .SR_SYNC = 1'b1;
    defparam \bagd[0]~FF .SR_VALUE = 1'b0;
    defparam \bagd[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[0]~FF  (.D(\cnt[0] ), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Led_bus[0]~FF  (.D(\data_bus[0] ), .CE(n434_2), .CLK(\clk100~O ), 
           .SR(1'b0), .Q(Led_bus[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(251)
    defparam \Led_bus[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Led_bus[0]~FF .CE_POLARITY = 1'b1;
    defparam \Led_bus[0]~FF .SR_POLARITY = 1'b1;
    defparam \Led_bus[0]~FF .D_POLARITY = 1'b1;
    defparam \Led_bus[0]~FF .SR_SYNC = 1'b1;
    defparam \Led_bus[0]~FF .SR_VALUE = 1'b0;
    defparam \Led_bus[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \dev_sel[0]~FF  (.D(n20_2), .CE(1'b1), .CLK(\clk100~O ), .SR(target_ready), 
           .Q(\dev_sel[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(135)
    defparam \dev_sel[0]~FF .CLK_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .CE_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .SR_POLARITY = 1'b0;
    defparam \dev_sel[0]~FF .D_POLARITY = 1'b1;
    defparam \dev_sel[0]~FF .SR_SYNC = 1'b0;
    defparam \dev_sel[0]~FF .SR_VALUE = 1'b0;
    defparam \dev_sel[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \target_ready_2~FF  (.D(\bagd[0] ), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(target_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \target_ready_2~FF .CLK_POLARITY = 1'b1;
    defparam \target_ready_2~FF .CE_POLARITY = 1'b1;
    defparam \target_ready_2~FF .SR_POLARITY = 1'b1;
    defparam \target_ready_2~FF .D_POLARITY = 1'b1;
    defparam \target_ready_2~FF .SR_SYNC = 1'b1;
    defparam \target_ready_2~FF .SR_VALUE = 1'b0;
    defparam \target_ready_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[0]~FF  (.D(address_valid), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\Arbiter_inst/n131 ), .Q(\Arbiter_inst/address_valid_d[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_POLARITY = 1'b0;
    defparam \Arbiter_inst/address_valid_d[0]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_strobe~FF  (.D(\Arbiter_inst/data_strobe ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(data_strobe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \data_strobe~FF .CLK_POLARITY = 1'b1;
    defparam \data_strobe~FF .CE_POLARITY = 1'b1;
    defparam \data_strobe~FF .SR_POLARITY = 1'b1;
    defparam \data_strobe~FF .D_POLARITY = 1'b1;
    defparam \data_strobe~FF .SR_SYNC = 1'b1;
    defparam \data_strobe~FF .SR_VALUE = 1'b0;
    defparam \data_strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[0]~FF  (.D(\Arbiter_inst/timeout_cnt[0] ), 
           .CE(\bagd[0] ), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/timeout_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/barq_trig[0]_2~FF  (.D(\Arbiter_inst/n16 ), .CE(ceg_net1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\Arbiter_inst/barq_trig[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(32)
    defparam \Arbiter_inst/barq_trig[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .CE_POLARITY = 1'b0;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/barq_trig[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout~FF  (.D(\Arbiter_inst/equal_32/n13 ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\Arbiter_inst/timeout )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout~FF .D_POLARITY = 1'b0;
    defparam \Arbiter_inst/timeout~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[1]~FF  (.D(\Arbiter_inst/address_valid_d[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/address_valid_d[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/address_valid_d[2]~FF  (.D(\Arbiter_inst/address_valid_d[1] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\Arbiter_inst/end_cycle ), 
           .Q(\Arbiter_inst/address_valid_d[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(82)
    defparam \Arbiter_inst/address_valid_d[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/address_valid_d[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[1]~FF  (.D(n37), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[2]~FF  (.D(n403), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[3]~FF  (.D(n401), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[4]~FF  (.D(n399), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[5]~FF  (.D(n397), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Arbiter_inst/timeout_cnt[6]~FF  (.D(n396), .CE(\bagd[0] ), .CLK(\clk100~O ), 
           .SR(\Arbiter_inst/end_cycle ), .Q(\Arbiter_inst/timeout_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(104)
    defparam \Arbiter_inst/timeout_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \Arbiter_inst/timeout_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_edge~FF  (.D(\USB_RAM_Reg_inst/n7 ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_edge )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_edge~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_cycle_is_active~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/rxf_edge ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_12/n15 ), .Q(\USB_RAM_Reg_inst/rd_cycle_is_active )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(192)
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_cycle_is_active~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_strobe~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_16/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_18/n15 ), .Q(\USB_RAM_Reg_inst/rd_strobe )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(200)
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF  (.D(FT_DATA_IN[0]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/h_key_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/t_key_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_Header_recognized~FF  (.D(\USB_RAM_Reg_inst/equal_35/n7 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(USB_Header_recognized)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_Header_recognized~FF .CLK_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .CE_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .SR_POLARITY = 1'b1;
    defparam \USB_Header_recognized~FF .D_POLARITY = 1'b0;
    defparam \USB_Header_recognized~FF .SR_SYNC = 1'b1;
    defparam \USB_Header_recognized~FF .SR_VALUE = 1'b0;
    defparam \USB_Header_recognized~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_Trailer_recognized~FF  (.D(\USB_RAM_Reg_inst/equal_45/n7 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(USB_Trailer_recognized)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_Trailer_recognized~FF .CLK_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .CE_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .SR_POLARITY = 1'b1;
    defparam \USB_Trailer_recognized~FF .D_POLARITY = 1'b0;
    defparam \USB_Trailer_recognized~FF .SR_SYNC = 1'b1;
    defparam \USB_Trailer_recognized~FF .SR_VALUE = 1'b0;
    defparam \USB_Trailer_recognized~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_2~FF  (.D(\USB_RAM_Reg_inst/equal_50/n15 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/sample_enable )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/equal_51/n15 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_is_in_progress_2~FF  (.D(1'b1), .CE(USB_Header_recognized), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n206 ), .Q(\USB_RAM_Reg_inst/packet_is_in_progress )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(278)
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_is_in_progress_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/received_packet_is_valid~FF  (.D(1'b1), .CE(USB_Header_recognized), 
           .CLK(\clk100~O ), .SR(USB_Error), .Q(\USB_RAM_Reg_inst/received_packet_is_valid )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(293)
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/received_packet_is_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF  (.D(n385), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF  (.D(n386), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF  (.D(n388), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[0]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/n217 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_114/n31 ), .Q(\USB_RAM_Reg_inst/ram_filling_is_in_progress )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(339)
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ram_filling_is_in_progress~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF  (.D(n390), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[0]~FF  (.D(\data_bus[0] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF  (.D(n392), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[0]~FF  (.D(\USB_RAM_Reg_inst/wr_timing_counter[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF  (.D(n394), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/rd_timing_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/n563 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_143/n15 ), .Q(\USB_RAM_Reg_inst/wr_cycle_is_active )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(398)
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_cycle_is_active_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF  (.D(n57), .CE(1'b1), .CLK(\clk100~O ), 
           .SR(\USB_RAM_Reg_inst/rd_cycle_is_active ), .Q(\USB_RAM_Reg_inst/rd_timing_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_timing_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_WR_Strobe~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_147/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_149/n15 ), .Q(FT_WR_Strobe)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(406)
    defparam \FT_WR_Strobe~FF .CLK_POLARITY = 1'b1;
    defparam \FT_WR_Strobe~FF .CE_POLARITY = 1'b0;
    defparam \FT_WR_Strobe~FF .SR_POLARITY = 1'b0;
    defparam \FT_WR_Strobe~FF .D_POLARITY = 1'b1;
    defparam \FT_WR_Strobe~FF .SR_SYNC = 1'b1;
    defparam \FT_WR_Strobe~FF .SR_VALUE = 1'b0;
    defparam \FT_WR_Strobe~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OE[7]~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_147/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/equal_155/n15 ), .Q(FT_DATA_OE[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(414)
    defparam \FT_DATA_OE[7]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OE[7]~FF .CE_POLARITY = 1'b0;
    defparam \FT_DATA_OE[7]~FF .SR_POLARITY = 1'b0;
    defparam \FT_DATA_OE[7]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OE[7]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OE[7]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OE[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[0]~FF  (.D(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/sample_enable_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/command_list_has_control ), .CLK(\clk100~O ), 
           .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rd_paket_end_edge~FF  (.D(\USB_RAM_Reg_inst/n593 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rd_paket_end_edge )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rd_paket_end_edge~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_txen~FF  (.D(FT_TX_Enable_n), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_txen )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/ft_txen~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_txen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/command_list_has_control_2~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n1016 ), .Q(\USB_RAM_Reg_inst/command_list_has_control )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(447)
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/command_list_has_control_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[0]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[0] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[0]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[0]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[0]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[0] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF  (.D(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
           .CE(\USB_RAM_Reg_inst/n924 ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/equal_191/n31 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n1016 ), .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(528)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/condition_access_request~FF  (.D(\USB_RAM_Reg_inst/n1171 ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/condition_access_request )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(638)
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/condition_access_request~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_delay[0]~FF  (.D(FT_RX_Full_n), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_delay[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .D_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_AccessRequest~FF  (.D(1'b1), .CE(\USB_RAM_Reg_inst/condition_access_request ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n497 ), .Q(USB_AccessRequest)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(647)
    defparam \USB_AccessRequest~FF .CLK_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .CE_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .SR_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .D_POLARITY = 1'b1;
    defparam \USB_AccessRequest~FF .SR_SYNC = 1'b1;
    defparam \USB_AccessRequest~FF .SR_VALUE = 1'b0;
    defparam \USB_AccessRequest~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF  (.D(FT_DATA_IN[1]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF  (.D(FT_DATA_IN[2]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF  (.D(FT_DATA_IN[3]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF  (.D(FT_DATA_IN[4]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF  (.D(FT_DATA_IN[5]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF  (.D(FT_DATA_IN[6]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF  (.D(FT_DATA_IN[7]), .CE(\USB_RAM_Reg_inst/equal_24/n15 ), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/ft_inbus_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(210)
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/ft_inbus_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[1]~FF  (.D(\USB_RAM_Reg_inst/n1394 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[2]~FF  (.D(\USB_RAM_Reg_inst/n1399 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/h_key_cnt[3]~FF  (.D(\USB_RAM_Reg_inst/n1404 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n87 ), 
           .Q(\USB_RAM_Reg_inst/h_key_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(232)
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/h_key_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[1]~FF  (.D(\USB_RAM_Reg_inst/n1414 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[2]~FF  (.D(\USB_RAM_Reg_inst/n1419 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/t_key_cnt[3]~FF  (.D(\USB_RAM_Reg_inst/n1424 ), 
           .CE(\USB_RAM_Reg_inst/sample_enable ), .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n114 ), 
           .Q(\USB_RAM_Reg_inst/t_key_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(248)
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/t_key_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[1]~FF  (.D(n105), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[2]~FF  (.D(n323), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[3]~FF  (.D(n321), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[4]~FF  (.D(n319), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[5]~FF  (.D(n317), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[6]~FF  (.D(n315), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[7]~FF  (.D(n313), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[8]~FF  (.D(n311), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[9]~FF  (.D(n309), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[10]~FF  (.D(n307), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[11]~FF  (.D(n305), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[12]~FF  (.D(n303), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[13]~FF  (.D(n301), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[14]~FF  (.D(n285), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/byte_number_cnt[15]~FF  (.D(n284), .CE(\USB_RAM_Reg_inst/equal_51/n15 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/packet_is_in_progress ), 
           .Q(\USB_RAM_Reg_inst/byte_number_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(268)
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .CE_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/byte_number_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n218 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/length_of_packet_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n230 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/length_of_packet_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(304)
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/length_of_packet_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n282 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/service_type_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n294 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/service_type_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(315)
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/service_type_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_l[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n342 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_l[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_l[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[1]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[2]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[3]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[4]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[5]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[6]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/load_data_h[7]~FF  (.D(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), 
           .CE(\USB_RAM_Reg_inst/n353 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/load_data_h[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(325)
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/load_data_h[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[1]~FF  (.D(\data_bus[1] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[2]~FF  (.D(\data_bus[2] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[3]~FF  (.D(\data_bus[3] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[4]~FF  (.D(\data_bus[4] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[5]~FF  (.D(\data_bus[5] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[6]~FF  (.D(\data_bus[6] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[7]~FF  (.D(\data_bus[7] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[8]~FF  (.D(\data_bus[8] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[9]~FF  (.D(\data_bus[9] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[10]~FF  (.D(\data_bus[10] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[11]~FF  (.D(\data_bus[11] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[12]~FF  (.D(\data_bus[12] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[13]~FF  (.D(\data_bus[13] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[14]~FF  (.D(\data_bus[14] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/fast_module_buffer[15]~FF  (.D(\data_bus[15] ), 
           .CE(\USB_RAM_Reg_inst/n497 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/fast_module_buffer[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(378)
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/fast_module_buffer[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[1]~FF  (.D(n381), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[2]~FF  (.D(n347), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[3]~FF  (.D(n131), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[4]~FF  (.D(n383), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[5]~FF  (.D(n282), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[6]~FF  (.D(n280), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/wr_timing_counter[7]~FF  (.D(n279), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/wr_cycle_is_active ), 
           .Q(\USB_RAM_Reg_inst/wr_timing_counter[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(390)
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/wr_timing_counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[1]~FF  (.D(\USB_RAM_Reg_inst/packet_prog_delay[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/packet_prog_delay[2]~FF  (.D(\USB_RAM_Reg_inst/packet_prog_delay[1] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/packet_prog_delay[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/packet_prog_delay[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF  (.D(n136), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF  (.D(n277), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF  (.D(n275), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF  (.D(n274), .CE(\USB_RAM_Reg_inst/command_list_has_control ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/n607 ), .Q(\USB_RAM_Reg_inst/sample_enable_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(437)
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/sample_enable_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF  (.D(n143), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF  (.D(n258), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF  (.D(n257), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF  (.D(n255), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF  (.D(n253), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF  (.D(n251), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF  (.D(n249), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF  (.D(n247), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF  (.D(n245), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF  (.D(n243), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF  (.D(n241), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF  (.D(n239), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF  (.D(n237), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF  (.D(n235), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF  (.D(n234), .CE(\USB_RAM_Reg_inst/n628 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/command_list_has_control ), 
           .Q(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(454)
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/out_buff_byte_number_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[1]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[1] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[1]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[1]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[2]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[2] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[2]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[2]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[3]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[3] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[3]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[3]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[4]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[4] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[4]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[4]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[5]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[5] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[5]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[5]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[6]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[6] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[6]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[6]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \FT_DATA_OUT[7]~FF  (.D(\USB_RAM_Reg_inst/output_buffer[7] ), .CE(1'b1), 
           .CLK(\clk100~O ), .SR(1'b0), .Q(FT_DATA_OUT[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \FT_DATA_OUT[7]~FF .CLK_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .CE_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .D_POLARITY = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_SYNC = 1'b1;
    defparam \FT_DATA_OUT[7]~FF .SR_VALUE = 1'b0;
    defparam \FT_DATA_OUT[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[1]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[1] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[1]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[2]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[2] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[2]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[3]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[3] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[3]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[4]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[4] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[4]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[5]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[5] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[5]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[6]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[6] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[6]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/output_buffer[7]_2~FF  (.D(\USB_RAM_Reg_inst/output_data[7] ), 
           .CE(\USB_RAM_Reg_inst/n628 ), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\USB_RAM_Reg_inst/output_buffer[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(462)
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/output_buffer[7]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF  (.D(n149), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF  (.D(n197), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF  (.D(n210), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF  (.D(n195), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF  (.D(n208), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF  (.D(n193), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF  (.D(n206), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF  (.D(n191), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF  (.D(n204), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF  (.D(n189), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF  (.D(n202), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF  (.D(n187), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF  (.D(n200), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF  (.D(n185), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF  (.D(n199), .CE(\USB_RAM_Reg_inst/n924 ), 
           .CLK(\clk100~O ), .SR(\USB_RAM_Reg_inst/rd_paket_end_edge ), 
           .Q(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(517)
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \USB_RAM_Reg_inst/rxf_delay[1]~FF  (.D(\USB_RAM_Reg_inst/rxf_delay[0] ), 
           .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), .Q(\USB_RAM_Reg_inst/rxf_delay[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(182)
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .CLK_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .CE_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .D_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_SYNC = 1'b1;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_VALUE = 1'b0;
    defparam \USB_RAM_Reg_inst/rxf_delay[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[1]~FF  (.D(n764), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[2]~FF  (.D(n46), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[3]~FF  (.D(n44), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[4]~FF  (.D(n41), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[5]~FF  (.D(n35), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[6]~FF  (.D(n31), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[7]~FF  (.D(n29), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[8]~FF  (.D(n22), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[9]~FF  (.D(n779), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \GPIO[1]~FF  (.D(n776), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(GPIO[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \GPIO[1]~FF .CLK_POLARITY = 1'b1;
    defparam \GPIO[1]~FF .CE_POLARITY = 1'b1;
    defparam \GPIO[1]~FF .SR_POLARITY = 1'b1;
    defparam \GPIO[1]~FF .D_POLARITY = 1'b1;
    defparam \GPIO[1]~FF .SR_SYNC = 1'b1;
    defparam \GPIO[1]~FF .SR_VALUE = 1'b0;
    defparam \GPIO[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[11]~FF  (.D(n774), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[12]~FF  (.D(n91), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[13]~FF  (.D(n89), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[14]~FF  (.D(n63), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[15]~FF  (.D(n87), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[16]~FF  (.D(n85), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[16]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[16]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[16]~FF .D_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_SYNC = 1'b1;
    defparam \cnt[16]~FF .SR_VALUE = 1'b0;
    defparam \cnt[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[17]~FF  (.D(n83), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[17]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[17]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[17]~FF .D_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_SYNC = 1'b1;
    defparam \cnt[17]~FF .SR_VALUE = 1'b0;
    defparam \cnt[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[18]~FF  (.D(n65), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[18]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[18]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[18]~FF .D_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_SYNC = 1'b1;
    defparam \cnt[18]~FF .SR_VALUE = 1'b0;
    defparam \cnt[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[19]~FF  (.D(n61), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[19]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[19]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[19]~FF .D_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_SYNC = 1'b1;
    defparam \cnt[19]~FF .SR_VALUE = 1'b0;
    defparam \cnt[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[20]~FF  (.D(n39), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[20]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[20]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[20]~FF .D_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_SYNC = 1'b1;
    defparam \cnt[20]~FF .SR_VALUE = 1'b0;
    defparam \cnt[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[21]~FF  (.D(n51), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[21]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[21]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[21]~FF .D_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_SYNC = 1'b1;
    defparam \cnt[21]~FF .SR_VALUE = 1'b0;
    defparam \cnt[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[22]~FF  (.D(n24), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[22]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[22]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[22]~FF .D_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_SYNC = 1'b1;
    defparam \cnt[22]~FF .SR_VALUE = 1'b0;
    defparam \cnt[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[23]~FF  (.D(n95), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[23]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[23]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[23]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[23]~FF .D_POLARITY = 1'b1;
    defparam \cnt[23]~FF .SR_SYNC = 1'b1;
    defparam \cnt[23]~FF .SR_VALUE = 1'b0;
    defparam \cnt[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[24]~FF  (.D(n93), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[24]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[24]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[24]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[24]~FF .D_POLARITY = 1'b1;
    defparam \cnt[24]~FF .SR_SYNC = 1'b1;
    defparam \cnt[24]~FF .SR_VALUE = 1'b0;
    defparam \cnt[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[25]~FF  (.D(n71), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[25]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[25]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[25]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[25]~FF .D_POLARITY = 1'b1;
    defparam \cnt[25]~FF .SR_SYNC = 1'b1;
    defparam \cnt[25]~FF .SR_VALUE = 1'b0;
    defparam \cnt[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[26]~FF  (.D(n69), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[26]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[26]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[26]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[26]~FF .D_POLARITY = 1'b1;
    defparam \cnt[26]~FF .SR_SYNC = 1'b1;
    defparam \cnt[26]~FF .SR_VALUE = 1'b0;
    defparam \cnt[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[27]~FF  (.D(n67), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[27]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[27]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[27]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[27]~FF .D_POLARITY = 1'b1;
    defparam \cnt[27]~FF .SR_SYNC = 1'b1;
    defparam \cnt[27]~FF .SR_VALUE = 1'b0;
    defparam \cnt[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[28]~FF  (.D(n55), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[28]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[28]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[28]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[28]~FF .D_POLARITY = 1'b1;
    defparam \cnt[28]~FF .SR_SYNC = 1'b1;
    defparam \cnt[28]~FF .SR_VALUE = 1'b0;
    defparam \cnt[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[29]~FF  (.D(n48), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[29]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[29]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[29]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[29]~FF .D_POLARITY = 1'b1;
    defparam \cnt[29]~FF .SR_SYNC = 1'b1;
    defparam \cnt[29]~FF .SR_VALUE = 1'b0;
    defparam \cnt[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[30]~FF  (.D(n20), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(\cnt[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \cnt[30]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[30]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[30]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[30]~FF .D_POLARITY = 1'b1;
    defparam \cnt[30]~FF .SR_SYNC = 1'b1;
    defparam \cnt[30]~FF .SR_VALUE = 1'b0;
    defparam \cnt[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \GPIO[2]~FF  (.D(n16), .CE(1'b1), .CLK(\clk100~O ), .SR(1'b0), 
           .Q(GPIO[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(241)
    defparam \GPIO[2]~FF .CLK_POLARITY = 1'b1;
    defparam \GPIO[2]~FF .CE_POLARITY = 1'b1;
    defparam \GPIO[2]~FF .SR_POLARITY = 1'b1;
    defparam \GPIO[2]~FF .D_POLARITY = 1'b1;
    defparam \GPIO[2]~FF .SR_SYNC = 1'b1;
    defparam \GPIO[2]~FF .SR_VALUE = 1'b0;
    defparam \GPIO[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Led_bus[1]~FF  (.D(\data_bus[1] ), .CE(n434_2), .CLK(\clk100~O ), 
           .SR(1'b0), .Q(Led_bus[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(251)
    defparam \Led_bus[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Led_bus[1]~FF .CE_POLARITY = 1'b1;
    defparam \Led_bus[1]~FF .SR_POLARITY = 1'b1;
    defparam \Led_bus[1]~FF .D_POLARITY = 1'b1;
    defparam \Led_bus[1]~FF .SR_SYNC = 1'b1;
    defparam \Led_bus[1]~FF .SR_VALUE = 1'b0;
    defparam \Led_bus[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Led_bus[2]~FF  (.D(\data_bus[2] ), .CE(n434_2), .CLK(\clk100~O ), 
           .SR(1'b0), .Q(Led_bus[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(251)
    defparam \Led_bus[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Led_bus[2]~FF .CE_POLARITY = 1'b1;
    defparam \Led_bus[2]~FF .SR_POLARITY = 1'b1;
    defparam \Led_bus[2]~FF .D_POLARITY = 1'b1;
    defparam \Led_bus[2]~FF .SR_SYNC = 1'b1;
    defparam \Led_bus[2]~FF .SR_VALUE = 1'b0;
    defparam \Led_bus[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Led_bus[3]~FF  (.D(\data_bus[3] ), .CE(n434_2), .CLK(\clk100~O ), 
           .SR(1'b0), .Q(Led_bus[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(251)
    defparam \Led_bus[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Led_bus[3]~FF .CE_POLARITY = 1'b1;
    defparam \Led_bus[3]~FF .SR_POLARITY = 1'b1;
    defparam \Led_bus[3]~FF .D_POLARITY = 1'b1;
    defparam \Led_bus[3]~FF .SR_SYNC = 1'b1;
    defparam \Led_bus[3]~FF .SR_VALUE = 1'b0;
    defparam \Led_bus[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \dev_sel[1]~FF  (.D(n24_2), .CE(1'b1), .CLK(\clk100~O ), .SR(target_ready), 
           .Q(\dev_sel[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(135)
    defparam \dev_sel[1]~FF .CLK_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .CE_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .SR_POLARITY = 1'b0;
    defparam \dev_sel[1]~FF .D_POLARITY = 1'b1;
    defparam \dev_sel[1]~FF .SR_SYNC = 1'b0;
    defparam \dev_sel[1]~FF .SR_VALUE = 1'b0;
    defparam \dev_sel[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_37/i32  (.I0(GPIO[2]), .I1(1'b0), .CI(n21), .O(n16)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i32 .I0_POLARITY = 1'b1;
    defparam \add_37/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i31  (.I0(\cnt[30] ), .I1(1'b0), .CI(n49), .O(n20), 
            .CO(n21)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i31 .I0_POLARITY = 1'b1;
    defparam \add_37/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i9  (.I0(\cnt[8] ), .I1(1'b0), .CI(n30), .O(n22), 
            .CO(n23)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i9 .I0_POLARITY = 1'b1;
    defparam \add_37/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i23  (.I0(\cnt[22] ), .I1(1'b0), .CI(n52), .O(n24), 
            .CO(n25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i23 .I0_POLARITY = 1'b1;
    defparam \add_37/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i8  (.I0(\cnt[7] ), .I1(1'b0), .CI(n32), .O(n29), 
            .CO(n30)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i8 .I0_POLARITY = 1'b1;
    defparam \add_37/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i7  (.I0(\cnt[6] ), .I1(1'b0), .CI(n36), .O(n31), 
            .CO(n32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i7 .I0_POLARITY = 1'b1;
    defparam \add_37/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i6  (.I0(\cnt[5] ), .I1(1'b0), .CI(n42), .O(n35), 
            .CO(n36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i6 .I0_POLARITY = 1'b1;
    defparam \add_37/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i2  (.I0(\Arbiter_inst/timeout_cnt[1] ), 
            .I1(\Arbiter_inst/timeout_cnt[0] ), .CI(1'b0), .O(n37), .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i2 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i21  (.I0(\cnt[20] ), .I1(1'b0), .CI(n62), .O(n39), 
            .CO(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i21 .I0_POLARITY = 1'b1;
    defparam \add_37/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i5  (.I0(\cnt[4] ), .I1(1'b0), .CI(n45), .O(n41), 
            .CO(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i5 .I0_POLARITY = 1'b1;
    defparam \add_37/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i4  (.I0(\cnt[3] ), .I1(1'b0), .CI(n47), .O(n44), 
            .CO(n45)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i4 .I0_POLARITY = 1'b1;
    defparam \add_37/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i3  (.I0(\cnt[2] ), .I1(1'b0), .CI(n765), .O(n46), 
            .CO(n47)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i3 .I0_POLARITY = 1'b1;
    defparam \add_37/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i30  (.I0(\cnt[29] ), .I1(1'b0), .CI(n56), .O(n48), 
            .CO(n49)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i30 .I0_POLARITY = 1'b1;
    defparam \add_37/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i22  (.I0(\cnt[21] ), .I1(1'b0), .CI(n40), .O(n51), 
            .CO(n52)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i22 .I0_POLARITY = 1'b1;
    defparam \add_37/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i29  (.I0(\cnt[28] ), .I1(1'b0), .CI(n68), .O(n55), 
            .CO(n56)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i29 .I0_POLARITY = 1'b1;
    defparam \add_37/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i2  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .CI(1'b0), .O(n57)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i20  (.I0(\cnt[19] ), .I1(1'b0), .CI(n66), .O(n61), 
            .CO(n62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i20 .I0_POLARITY = 1'b1;
    defparam \add_37/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i15  (.I0(\cnt[14] ), .I1(1'b0), .CI(n90), .O(n63), 
            .CO(n64)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i15 .I0_POLARITY = 1'b1;
    defparam \add_37/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i19  (.I0(\cnt[18] ), .I1(1'b0), .CI(n84), .O(n65), 
            .CO(n66)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i19 .I0_POLARITY = 1'b1;
    defparam \add_37/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i28  (.I0(\cnt[27] ), .I1(1'b0), .CI(n70), .O(n67), 
            .CO(n68)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i28 .I0_POLARITY = 1'b1;
    defparam \add_37/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i27  (.I0(\cnt[26] ), .I1(1'b0), .CI(n72), .O(n69), 
            .CO(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i27 .I0_POLARITY = 1'b1;
    defparam \add_37/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i26  (.I0(\cnt[25] ), .I1(1'b0), .CI(n94), .O(n71), 
            .CO(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i26 .I0_POLARITY = 1'b1;
    defparam \add_37/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i18  (.I0(\cnt[17] ), .I1(1'b0), .CI(n86), .O(n83), 
            .CO(n84)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i18 .I0_POLARITY = 1'b1;
    defparam \add_37/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i17  (.I0(\cnt[16] ), .I1(1'b0), .CI(n88), .O(n85), 
            .CO(n86)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i17 .I0_POLARITY = 1'b1;
    defparam \add_37/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i16  (.I0(\cnt[15] ), .I1(1'b0), .CI(n64), .O(n87), 
            .CO(n88)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i16 .I0_POLARITY = 1'b1;
    defparam \add_37/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i14  (.I0(\cnt[13] ), .I1(1'b0), .CI(n92), .O(n89), 
            .CO(n90)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i14 .I0_POLARITY = 1'b1;
    defparam \add_37/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i13  (.I0(\cnt[12] ), .I1(1'b0), .CI(n775), .O(n91), 
            .CO(n92)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i13 .I0_POLARITY = 1'b1;
    defparam \add_37/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i25  (.I0(\cnt[24] ), .I1(1'b0), .CI(n96), .O(n93), 
            .CO(n94)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i25 .I0_POLARITY = 1'b1;
    defparam \add_37/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i24  (.I0(\cnt[23] ), .I1(1'b0), .CI(n25), .O(n95), 
            .CO(n96)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i24 .I0_POLARITY = 1'b1;
    defparam \add_37/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i2  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .CI(1'b0), .O(n105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i4  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .I1(1'b0), .CI(n348), .O(n131), .CO(n132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i2  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/sample_enable_cnt[0] ), .CI(1'b0), .O(n136), 
            .CO(n137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i2  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .CI(1'b0), 
            .O(n143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i2  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .CI(1'b0), 
            .O(n149), .CO(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i15  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(1'b0), .CI(n201), .O(n185), .CO(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i13  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I1(1'b0), .CI(n203), .O(n187), .CO(n188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i11  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(1'b0), .CI(n205), .O(n189), .CO(n190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i9  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(1'b0), .CI(n207), .O(n191), .CO(n192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i7  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(1'b0), .CI(n209), .O(n193), .CO(n194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i5  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I1(1'b0), .CI(n211), .O(n195), .CO(n196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i3  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(1'b0), .CI(n150), .O(n197), .CO(n198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i16  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(1'b0), .CI(n186), .O(n199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i14  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .I1(1'b0), .CI(n188), .O(n200), .CO(n201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i12  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I1(1'b0), .CI(n190), .O(n202), .CO(n203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i10  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I1(1'b0), .CI(n192), .O(n204), .CO(n205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i8  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .I1(1'b0), .CI(n194), .O(n206), .CO(n207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i6  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I1(1'b0), .CI(n196), .O(n208), .CO(n209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_221/i4  (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(1'b0), .CI(n198), .O(n210), .CO(n211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(514)
    defparam \USB_RAM_Reg_inst/add_221/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_221/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i16  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .I1(1'b0), .CI(n236), .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i15  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I1(1'b0), .CI(n238), .O(n235), .CO(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i14  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I1(1'b0), .CI(n240), .O(n237), .CO(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i13  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(1'b0), .CI(n242), .O(n239), .CO(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i12  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I1(1'b0), .CI(n244), .O(n241), .CO(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i11  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I1(1'b0), .CI(n246), .O(n243), .CO(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i10  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I1(1'b0), .CI(n248), .O(n245), .CO(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i9  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(1'b0), .CI(n250), .O(n247), .CO(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i8  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .I1(1'b0), .CI(n252), .O(n249), .CO(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i7  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I1(1'b0), .CI(n254), .O(n251), .CO(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i6  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(1'b0), .CI(n256), .O(n253), .CO(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i5  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(1'b0), .CI(n1930), .O(n255), .CO(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i4  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(1'b0), .CI(n259), .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_181/i3  (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(1'b0), .CI(n1931), .O(n258), .CO(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \USB_RAM_Reg_inst/add_181/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_181/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i5  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[4] ), 
            .I1(1'b0), .CI(n276), .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i4  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[3] ), 
            .I1(1'b0), .CI(n278), .O(n275), .CO(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_164/i3  (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[2] ), 
            .I1(1'b0), .CI(n137), .O(n277), .CO(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(432)
    defparam \USB_RAM_Reg_inst/add_164/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_164/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i8  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[7] ), 
            .I1(1'b0), .CI(n281), .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i7  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[6] ), 
            .I1(1'b0), .CI(n283), .O(n280), .CO(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i6  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[5] ), 
            .I1(1'b0), .CI(n384), .O(n282), .CO(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i16  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[15] ), 
            .I1(1'b0), .CI(n286), .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i16 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i15  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[14] ), 
            .I1(1'b0), .CI(n302), .O(n285), .CO(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i15 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i14  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[13] ), 
            .I1(1'b0), .CI(n304), .O(n301), .CO(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i14 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i13  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[12] ), 
            .I1(1'b0), .CI(n306), .O(n303), .CO(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i13 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i12  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), 
            .I1(1'b0), .CI(n308), .O(n305), .CO(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i12 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i11  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), 
            .I1(1'b0), .CI(n310), .O(n307), .CO(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i11 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i10  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), 
            .I1(1'b0), .CI(n312), .O(n309), .CO(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i10 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i9  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I1(1'b0), .CI(n314), .O(n311), .CO(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i9 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i8  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), 
            .I1(1'b0), .CI(n316), .O(n313), .CO(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i7  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), 
            .I1(1'b0), .CI(n318), .O(n315), .CO(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i6  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I1(1'b0), .CI(n320), .O(n317), .CO(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i5  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), 
            .I1(1'b0), .CI(n322), .O(n319), .CO(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i4  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), 
            .I1(1'b0), .CI(n324), .O(n321), .CO(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_52/i3  (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), 
            .I1(1'b0), .CI(n1932), .O(n323), .CO(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \USB_RAM_Reg_inst/add_52/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_52/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i3  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), 
            .I1(1'b0), .CI(n382), .O(n347), .CO(n348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i2  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[1] ), 
            .I1(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .CI(1'b0), .O(n381), 
            .CO(n382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i2 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_136/i5  (.I0(\USB_RAM_Reg_inst/wr_timing_counter[4] ), 
            .I1(1'b0), .CI(n132), .O(n383), .CO(n384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(386)
    defparam \USB_RAM_Reg_inst/add_136/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_136/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i8  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[7] ), 
            .I1(1'b0), .CI(n387), .O(n385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i8 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i7  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[6] ), 
            .I1(1'b0), .CI(n389), .O(n386), .CO(n387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i7 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i6  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[5] ), 
            .I1(1'b0), .CI(n391), .O(n388), .CO(n389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i6 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i5  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), 
            .I1(1'b0), .CI(n393), .O(n390), .CO(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i5 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i4  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I1(1'b0), .CI(n395), .O(n392), .CO(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i4 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \USB_RAM_Reg_inst/add_22/i3  (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), 
            .I1(1'b0), .CI(n1933), .O(n394), .CO(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \USB_RAM_Reg_inst/add_22/i3 .I0_POLARITY = 1'b1;
    defparam \USB_RAM_Reg_inst/add_22/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i7  (.I0(\Arbiter_inst/timeout_cnt[6] ), 
            .I1(1'b0), .CI(n398), .O(n396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i7 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i6  (.I0(\Arbiter_inst/timeout_cnt[5] ), 
            .I1(1'b0), .CI(n400), .O(n397), .CO(n398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i6 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i5  (.I0(\Arbiter_inst/timeout_cnt[4] ), 
            .I1(1'b0), .CI(n402), .O(n399), .CO(n400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i5 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i4  (.I0(\Arbiter_inst/timeout_cnt[3] ), 
            .I1(1'b0), .CI(n404), .O(n401), .CO(n402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i4 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Arbiter_inst/add_30/i3  (.I0(\Arbiter_inst/timeout_cnt[2] ), 
            .I1(1'b0), .CI(n38), .O(n403), .CO(n404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Arbiter1.sv(92)
    defparam \Arbiter_inst/add_30/i3 .I0_POLARITY = 1'b1;
    defparam \Arbiter_inst/add_30/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i2  (.I0(\cnt[1] ), .I1(\cnt[0] ), .CI(1'b0), .O(n764), 
            .CO(n765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i2 .I0_POLARITY = 1'b1;
    defparam \add_37/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i12  (.I0(\cnt[11] ), .I1(1'b0), .CI(n777), .O(n774), 
            .CO(n775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i12 .I0_POLARITY = 1'b1;
    defparam \add_37/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i11  (.I0(GPIO[1]), .I1(1'b0), .CI(n780), .O(n776), 
            .CO(n777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i11 .I0_POLARITY = 1'b1;
    defparam \add_37/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_37/i10  (.I0(\cnt[9] ), .I1(1'b0), .CI(n23), .O(n779), 
            .CO(n780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.sv(240)
    defparam \add_37/i10 .I0_POLARITY = 1'b1;
    defparam \add_37/i10 .I1_POLARITY = 1'b1;
    EFX_RAM_5K \Dual_Port_RAM_inst/ram__D$2  (.WCLK(\clk100~O ), .RCLK(\clk100~O ), 
            .WCLKE(1'b1), .WE(n434_2), .RE(1'b1), .WDATA({\data_bus[7] , 
            \data_bus[6] , \data_bus[5] , \data_bus[4] , \data_bus[3] , 
            \data_bus[2] , \data_bus[1] , \data_bus[0] }), .WADDR({1'b0, 
            \address_bus[7] , \address_bus[6] , \address_bus[5] , \address_bus[4] , 
            \address_bus[3] , \address_bus[2] , \address_bus[1] , \address_bus[0] }), 
            .RADDR({1'b0, \address_bus[7] , \address_bus[6] , \address_bus[5] , 
            \address_bus[4] , \address_bus[3] , \address_bus[2] , \address_bus[1] , 
            \address_bus[0] }), .RDATA({\test_ram[7] , \test_ram[6] , 
            \test_ram[5] , \test_ram[4] , \test_ram[3] , \test_ram[2] , 
            \test_ram[1] , \test_ram[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .WCLKE(1'b1), .WE(n434_2), .RE(1'b1), .WDATA({\data_bus[15] , 
            \data_bus[14] , \data_bus[13] , \data_bus[12] , \data_bus[11] , 
            \data_bus[10] , \data_bus[9] , \data_bus[8] }), .WADDR({1'b0, 
            \address_bus[7] , \address_bus[6] , \address_bus[5] , \address_bus[4] , 
            \address_bus[3] , \address_bus[2] , \address_bus[1] , \address_bus[0] }), 
            .RADDR({1'b0, \address_bus[7] , \address_bus[6] , \address_bus[5] , 
            \address_bus[4] , \address_bus[3] , \address_bus[2] , \address_bus[1] , 
            \address_bus[0] }), .RDATA({\test_ram[15] , \test_ram[14] , 
            \test_ram[13] , \test_ram[12] , \test_ram[11] , \test_ram[10] , 
            \test_ram[9] , \test_ram[8] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[15] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[14] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[3] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[2] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[5] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[4] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[1] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[7] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[6] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[9] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[8] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[11] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[10] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
            .RDATAB({\USB_RAM_Reg_inst/usb_cmdl_ram_out[13] , \USB_RAM_Reg_inst/usb_cmdl_ram_out[12] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="WRITE_FIRST", WRITE_MODE_B="WRITE_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\Dual_Port_RAM.sv(26)
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
    EFX_LUT4 LUT__2348 (.I0(\USB_RAM_Reg_inst/service_type_l[4] ), .I1(\USB_RAM_Reg_inst/service_type_h[0] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[3] ), .I3(\USB_RAM_Reg_inst/service_type_l[0] ), 
            .O(n1563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2348.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2349 (.I0(\USB_RAM_Reg_inst/service_type_h[5] ), .I1(\USB_RAM_Reg_inst/service_type_h[2] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[1] ), .I3(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .O(n1564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2349.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2350 (.I0(\USB_RAM_Reg_inst/service_type_l[2] ), .I1(\USB_RAM_Reg_inst/service_type_l[6] ), 
            .I2(\USB_RAM_Reg_inst/service_type_h[1] ), .I3(\USB_RAM_Reg_inst/service_type_l[5] ), 
            .O(n1565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2350.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2351 (.I0(n1562), .I1(n1563), .I2(n1564), .I3(n1565), 
            .O(n1566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2351.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2352 (.I0(\bagd[0] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1566), .O(n1567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2352.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2353 (.I0(\dev_sel[1] ), .I1(n1567), .O(n1568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2353.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2354 (.I0(\dev_sel[0] ), .I1(n1568), .O(n1569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2354.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2355 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[0] ), .O(\address_bus[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2355.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2356 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[6] ), .O(\address_bus[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2356.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2357 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[4] ), .O(\address_bus[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2357.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2358 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[7] ), .O(\address_bus[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2358.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2359 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[5] ), .O(\address_bus[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2359.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2360 (.I0(\address_bus[6] ), .I1(\address_bus[4] ), .I2(\address_bus[7] ), 
            .I3(\address_bus[5] ), .O(n1570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2360.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2361 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[2] ), .O(\address_bus[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2361.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2362 (.I0(\USB_AddrBusOut[3] ), .I1(\address_bus[0] ), 
            .I2(n1570), .I3(\address_bus[2] ), .O(n1571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2362.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2363 (.I0(\USB_AddrBusOut[1] ), .I1(n1571), .O(n1572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2363.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2364 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[1] ), .O(\address_bus[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2364.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2365 (.I0(\address_bus[2] ), .I1(\address_bus[1] ), .O(n1573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2365.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2366 (.I0(\USB_AddrBusOut[3] ), .I1(\address_bus[0] ), 
            .I2(n1570), .I3(n1573), .O(n1574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2366.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2367 (.I0(FT_TX_Enable_n), .I1(n1574), .O(n1575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2367.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2368 (.I0(\USB_AddrBusOut[3] ), .I1(\USB_AddrBusOut[2] ), 
            .I2(\USB_AddrBusOut[0] ), .I3(\USB_AddrBusOut[1] ), .O(n1576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__2368.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__2369 (.I0(n1576), .I1(\bagd[0] ), .I2(n1570), .O(n1577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2369.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2370 (.I0(\address_bus[2] ), .I1(\address_bus[1] ), .I2(\address_bus[0] ), 
            .O(n1578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__2370.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2371 (.I0(\USB_AddrBusOut[3] ), .I1(n1570), .I2(n1578), 
            .O(n1579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2371.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2372 (.I0(\USB_RAM_Reg_inst/output_buffer[0] ), .I1(n1579), 
            .O(n1580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2372.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2373 (.I0(\USB_AddrBusOut[8] ), .I1(\bagd[0] ), .I2(\dev_sel[1] ), 
            .O(n1581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2373.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2374 (.I0(n1577), .I1(\USB_RAM_Reg_inst/service_type_l[0] ), 
            .I2(n1580), .I3(n1581), .O(n1582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2374.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2375 (.I0(n1572), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(n1575), .I3(n1582), .O(n1583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2375.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2376 (.I0(n1567), .I1(\dev_sel[0] ), .O(n1584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2376.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2377 (.I0(n1568), .I1(n1584), .O(n1585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2377.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2378 (.I0(n1581), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[0] ), 
            .I2(n1585), .O(n1586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2378.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2379 (.I0(n1583), .I1(n1586), .I2(\test_ram[0] ), .I3(n1569), 
            .O(\data_bus[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__2379.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__2380 (.I0(\dev_sel[0] ), .I1(data_strobe), .I2(n1567), 
            .O(n434_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2380.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2381 (.I0(\USB_AddrBusOut[14] ), .I1(\USB_AddrBusOut[12] ), 
            .I2(\bagd[0] ), .O(n1587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2381.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2382 (.I0(\USB_AddrBusOut[8] ), .I1(\USB_AddrBusOut[9] ), 
            .I2(\USB_AddrBusOut[10] ), .I3(\USB_AddrBusOut[11] ), .O(n1588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2382.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2383 (.I0(\USB_AddrBusOut[15] ), .I1(\USB_AddrBusOut[13] ), 
            .I2(n1587), .I3(n1588), .O(n20_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2383.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2384 (.I0(\dev_sel[0] ), .I1(\dev_sel[1] ), .O(address_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__2384.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2385 (.I0(\Arbiter_inst/end_cycle ), .I1(target_ready), 
            .O(\Arbiter_inst/n131 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2385.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2386 (.I0(\Arbiter_inst/address_valid_d[2] ), .I1(\Arbiter_inst/address_valid_d[1] ), 
            .O(\Arbiter_inst/data_strobe )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2386.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2387 (.I0(\Arbiter_inst/barq_trig[0] ), .I1(USB_AccessRequest), 
            .O(\Arbiter_inst/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2387.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2388 (.I0(\Arbiter_inst/end_cycle ), .I1(\Arbiter_inst/barq_trig[0] ), 
            .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2388.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2389 (.I0(\Arbiter_inst/timeout_cnt[4] ), .I1(\Arbiter_inst/timeout_cnt[5] ), 
            .I2(\Arbiter_inst/timeout_cnt[6] ), .I3(\Arbiter_inst/timeout_cnt[3] ), 
            .O(n1589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2389.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2390 (.I0(\Arbiter_inst/timeout_cnt[0] ), .I1(\Arbiter_inst/timeout_cnt[1] ), 
            .I2(\Arbiter_inst/timeout_cnt[2] ), .I3(n1589), .O(\Arbiter_inst/equal_32/n13 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__2390.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__2391 (.I0(\USB_RAM_Reg_inst/rxf_delay[1] ), .I1(\USB_RAM_Reg_inst/rxf_delay[0] ), 
            .O(\USB_RAM_Reg_inst/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2391.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2392 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I3(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .O(n1590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2392.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2393 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[7] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[6] ), 
            .I2(\USB_RAM_Reg_inst/rd_timing_cnt[5] ), .O(n1591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2393.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2394 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), .I1(n1590), 
            .I2(n1591), .O(\USB_RAM_Reg_inst/equal_12/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__2394.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__2395 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[4] ), .I1(n1591), 
            .O(n1592)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2395.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2396 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .I2(n1592), .O(n1593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2396.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2397 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n1593), .O(\USB_RAM_Reg_inst/equal_16/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__2397.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2398 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[2] ), 
            .O(n1594)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2398.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2399 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n1592), .I3(n1594), .O(\USB_RAM_Reg_inst/equal_18/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__2399.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__2400 (.I0(n1590), .I1(n1592), .O(\USB_RAM_Reg_inst/equal_24/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__2400.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__2401 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), 
            .O(n1595)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2401.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2402 (.I0(USB_Header_recognized), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), .O(n1596)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2402.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2403 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), 
            .I2(n1595), .I3(n1596), .O(\USB_RAM_Reg_inst/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__2403.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__2404 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[0] ), .I1(USB_Trailer_recognized), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[1] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[3] ), 
            .O(n1597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2404.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2405 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[2] ), .I1(\USB_RAM_Reg_inst/ft_inbus_buffer[4] ), 
            .I2(\USB_RAM_Reg_inst/ft_inbus_buffer[6] ), .I3(\USB_RAM_Reg_inst/ft_inbus_buffer[5] ), 
            .O(n1598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2405.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2406 (.I0(\USB_RAM_Reg_inst/ft_inbus_buffer[7] ), .I1(n1597), 
            .I2(n1598), .O(\USB_RAM_Reg_inst/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__2406.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__2407 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/h_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/equal_35/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__2407.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__2408 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/t_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/equal_45/n7 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfeff */ ;
    defparam LUT__2408.LUTMASK = 16'hfeff;
    EFX_LUT4 LUT__2409 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n1593), .O(\USB_RAM_Reg_inst/equal_50/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__2409.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__2410 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n422 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__2410.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2411 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2411.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2412 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), .O(n1599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2412.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2413 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I2(n1599), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n420 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2413.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2414 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(n1599), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .O(n1600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2414.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2415 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(n1600), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n419 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2415.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2416 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), .O(n1601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2416.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2417 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I2(n1601), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n418 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2417.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2418 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), .O(n1602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2418.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2419 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n1602), .O(n1603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2419.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2420 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I2(n1603), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n417 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2420.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2421 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(n1603), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .O(n1604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2421.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2422 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(n1604), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n416 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2422.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2423 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .I2(n1602), 
            .O(n1605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2423.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2424 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n1605), .O(n1606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2424.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2425 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[8] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I2(n1606), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n415 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2425.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2426 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(n1606), .O(n1607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2426.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2427 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I2(n1607), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n414 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2427.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2428 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(n1605), .O(n1608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2428.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2429 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I1(n1608), .O(n1609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2429.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2430 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n1609), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .O(n1610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2430.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2431 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I1(n1610), 
            .I2(\USB_RAM_Reg_inst/command_list_has_control ), .O(\USB_RAM_Reg_inst/n413 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2431.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2432 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), .I2(n1609), 
            .O(n1611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2432.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2433 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I2(n1611), .I3(\USB_RAM_Reg_inst/command_list_has_control ), 
            .O(\USB_RAM_Reg_inst/n412 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__2433.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__2434 (.I0(\address_bus[0] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n450 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2434.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2435 (.I0(\address_bus[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I2(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n449 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__2435.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__2436 (.I0(\address_bus[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I3(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n448 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;
    defparam LUT__2436.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__2437 (.I0(\bagd[0] ), .I1(\USB_AddrBusOut[3] ), .O(\address_bus[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2437.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2438 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .O(n1612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2438.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2439 (.I0(n1612), .I1(\address_bus[3] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n447 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2439.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2440 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), .O(n1613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__2440.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2441 (.I0(n1613), .I1(\address_bus[4] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2441.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2442 (.I0(\address_bus[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I2(n1602), .I3(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n445 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;
    defparam LUT__2442.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__2443 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(n1602), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .O(n1614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2443.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2444 (.I0(n1614), .I1(\address_bus[6] ), .I2(\dev_sel[1] ), 
            .O(\USB_RAM_Reg_inst/n444 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2444.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2445 (.I0(\address_bus[7] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I2(n1605), .I3(\dev_sel[1] ), .O(\USB_RAM_Reg_inst/n443 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;
    defparam LUT__2445.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__2446 (.I0(\dev_sel[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I2(n1608), .I3(n1581), .O(\USB_RAM_Reg_inst/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;
    defparam LUT__2446.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__2447 (.I0(\dev_sel[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I2(n1609), .O(\USB_RAM_Reg_inst/n441 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__2447.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2448 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I1(n1609), .I2(\dev_sel[1] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .O(\USB_RAM_Reg_inst/n440 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__2448.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__2449 (.I0(\USB_RAM_Reg_inst/service_type_h[6] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I3(n1572), .O(n1615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2449.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2450 (.I0(n1615), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[14] ), 
            .I2(n1581), .I3(n1585), .O(n1616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2450.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2451 (.I0(n1569), .I1(\test_ram[14] ), .I2(n1616), .O(\data_bus[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2451.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2452 (.I0(\USB_RAM_Reg_inst/service_type_h[7] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I3(n1572), .O(n1617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2452.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2453 (.I0(n1617), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[15] ), 
            .I2(n1581), .I3(n1585), .O(n1618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2453.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2454 (.I0(n1569), .I1(\test_ram[15] ), .I2(n1618), .O(\data_bus[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2454.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2455 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/sample_enable ), 
            .I2(\USB_RAM_Reg_inst/packet_is_in_progress ), .O(\USB_RAM_Reg_inst/n342 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2455.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2456 (.I0(\USB_RAM_Reg_inst/ram_filling_is_in_progress ), 
            .I1(\USB_RAM_Reg_inst/n342 ), .O(\USB_RAM_Reg_inst/ram_from_usb_we )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2456.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2457 (.I0(data_strobe), .I1(\USB_AddrBusOut[8] ), .I2(\dev_sel[1] ), 
            .I3(n1567), .O(\USB_RAM_Reg_inst/n453 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2457.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2458 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[3] ), 
            .I2(n1593), .O(\USB_RAM_Reg_inst/equal_51/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__2458.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__2459 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[0] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
            .O(n1619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2459.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2460 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n1620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2460.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2461 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[3] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .O(n1621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2461.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2462 (.I0(n1620), .I1(n1619), .I2(n1621), .O(n1622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2462.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2463 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[5] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n1623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2463.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2464 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(n1622), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(n1623), .O(n1624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7100 */ ;
    defparam LUT__2464.LUTMASK = 16'h7100;
    EFX_LUT4 LUT__2465 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n1625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2465.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2466 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n1626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2466.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2467 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n1627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2467.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2468 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[7] ), 
            .I2(n1627), .O(n1628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2468.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2469 (.I0(n1625), .I1(n1624), .I2(n1626), .I3(n1628), 
            .O(n1629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__2469.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__2470 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[9] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .O(n1630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2470.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2471 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[10] ), 
            .I2(n1630), .O(n1631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2471.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2472 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[12] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[4] ), 
            .O(n1632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2472.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2473 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[10] ), 
            .I2(n1632), .O(n1633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2473.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2474 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[12] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[11] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .O(n1634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2474.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2475 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[13] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[14] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n1635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2475.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2476 (.I0(n1634), .I1(n1635), .O(n1636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2476.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2477 (.I0(n1629), .I1(n1631), .I2(n1633), .I3(n1636), 
            .O(n1637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__2477.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2478 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[14] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[13] ), 
            .O(n1638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2478.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2479 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[15] ), .I1(n1637), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I3(n1638), .O(n1639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2479.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2480 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[2] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[3] ), 
            .O(n1640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2480.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2481 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[5] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[6] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[8] ), 
            .O(n1641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2481.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2482 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[9] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[15] ), 
            .O(n1642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2482.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2483 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[11] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[12] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[13] ), .I3(\USB_RAM_Reg_inst/byte_number_cnt[14] ), 
            .O(n1643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2483.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2484 (.I0(n1640), .I1(n1641), .I2(n1642), .I3(n1643), 
            .O(n1644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2484.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2485 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(n1644), 
            .O(n1645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2485.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2486 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n1646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2486.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2487 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/sample_enable ), 
            .O(n1647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2487.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2488 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(n1646), .I3(n1647), .O(n1648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2488.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2489 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n1649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2489.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2490 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I3(n1649), .O(n1650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2490.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2491 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I1(n1645), 
            .I2(n1648), .I3(n1650), .O(n1651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2491.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2492 (.I0(USB_Trailer_recognized), .I1(n1639), .I2(n1651), 
            .O(\USB_RAM_Reg_inst/n206 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;
    defparam LUT__2492.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__2493 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I1(n1644), 
            .O(n1652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2493.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2494 (.I0(\USB_RAM_Reg_inst/n342 ), .I1(n1652), .O(\USB_RAM_Reg_inst/n218 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2494.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2495 (.I0(n1639), .I1(n1651), .O(USB_Error)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__2495.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2496 (.I0(\USB_RAM_Reg_inst/sample_enable ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[0] ), 
            .I2(\USB_RAM_Reg_inst/packet_is_in_progress ), .O(\USB_RAM_Reg_inst/n353 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2496.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2497 (.I0(n1652), .I1(\USB_RAM_Reg_inst/n353 ), .O(\USB_RAM_Reg_inst/n230 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2497.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2498 (.I0(\USB_RAM_Reg_inst/n342 ), .I1(n1645), .O(\USB_RAM_Reg_inst/n282 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2498.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2499 (.I0(n1645), .I1(\USB_RAM_Reg_inst/n353 ), .O(\USB_RAM_Reg_inst/n294 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2499.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2500 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/sample_enable ), 
            .I2(n1652), .O(\USB_RAM_Reg_inst/n217 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2500.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2501 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .O(n1653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2501.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2502 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[7] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[10] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .O(n1654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2502.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2503 (.I0(n1653), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[1] ), .I3(n1654), .O(n1655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4100 */ ;
    defparam LUT__2503.LUTMASK = 16'h4100;
    EFX_LUT4 LUT__2504 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(\USB_RAM_Reg_inst/byte_number_cnt[15] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .O(n1656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__2504.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__2505 (.I0(n1632), .I1(n1627), .I2(n1623), .I3(n1620), 
            .O(n1657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2505.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2506 (.I0(n1655), .I1(n1656), .I2(n1635), .I3(n1657), 
            .O(\USB_RAM_Reg_inst/equal_114/n31 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__2506.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__2507 (.I0(\bagd[0] ), .I1(data_strobe), .O(\USB_RAM_Reg_inst/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2507.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2508 (.I0(\address_bus[1] ), .I1(data_strobe), .O(n1658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2508.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2509 (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[3] ), .I1(\USB_RAM_Reg_inst/sample_enable_cnt[4] ), 
            .O(n1659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2509.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2510 (.I0(\USB_RAM_Reg_inst/sample_enable_cnt[2] ), .I1(\USB_RAM_Reg_inst/sample_enable_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/ft_txen ), .I3(n1659), .O(\USB_RAM_Reg_inst/n628 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__2510.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__2511 (.I0(n1658), .I1(n1581), .I2(n1571), .I3(\USB_RAM_Reg_inst/n628 ), 
            .O(\USB_RAM_Reg_inst/n563 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__2511.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__2512 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[5] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[6] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[7] ), .I3(\USB_RAM_Reg_inst/wr_timing_counter[4] ), 
            .O(n1660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2512.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2513 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[1] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .O(n1661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2513.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2514 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[0] ), 
            .I2(n1660), .I3(n1661), .O(\USB_RAM_Reg_inst/equal_143/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__2514.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__2515 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[4] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[5] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[6] ), .I3(\USB_RAM_Reg_inst/wr_timing_counter[7] ), 
            .O(n1662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2515.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2516 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[3] ), 
            .I2(\USB_RAM_Reg_inst/wr_timing_counter[1] ), .O(n1663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2516.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2517 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), .I1(n1662), 
            .I2(n1663), .O(\USB_RAM_Reg_inst/equal_147/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__2517.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__2518 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[0] ), .I1(\USB_RAM_Reg_inst/wr_timing_counter[2] ), 
            .I2(n1661), .I3(n1662), .O(\USB_RAM_Reg_inst/equal_149/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__2518.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__2519 (.I0(\USB_RAM_Reg_inst/wr_timing_counter[2] ), .I1(n1660), 
            .I2(n1663), .O(\USB_RAM_Reg_inst/equal_155/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__2519.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__2520 (.I0(\USB_RAM_Reg_inst/rd_paket_end_edge ), .I1(\USB_RAM_Reg_inst/n628 ), 
            .O(\USB_RAM_Reg_inst/n607 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__2520.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2521 (.I0(\USB_RAM_Reg_inst/packet_prog_delay[1] ), .I1(\USB_RAM_Reg_inst/packet_prog_delay[2] ), 
            .O(\USB_RAM_Reg_inst/n593 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2521.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2522 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n1664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;
    defparam LUT__2522.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__2523 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(n1664), .O(n1665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2523.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2524 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .O(n1666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__2524.LUTMASK = 16'he000;
    EFX_LUT4 LUT__2525 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I2(n1666), .O(n1667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__2525.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2526 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n1668)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2526.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2527 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .O(n1669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbaec */ ;
    defparam LUT__2527.LUTMASK = 16'hbaec;
    EFX_LUT4 LUT__2528 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I2(n1668), .I3(n1669), 
            .O(n1670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbe00 */ ;
    defparam LUT__2528.LUTMASK = 16'hbe00;
    EFX_LUT4 LUT__2529 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .O(n1671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2529.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2530 (.I0(n1665), .I1(n1667), .I2(n1670), .I3(n1671), 
            .O(n1672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2530.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2531 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n1673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2531.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2532 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .O(n1674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2532.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2533 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .O(n1675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2533.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2534 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(n1673), 
            .I2(n1674), .I3(n1675), .O(n1676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2534.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2535 (.I0(n1673), .I1(n1674), .I2(n1675), .I3(\USB_RAM_Reg_inst/length_of_packet_h[4] ), 
            .O(n1677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__2535.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2536 (.I0(n1668), .I1(n1673), .I2(n1674), .I3(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .O(n1678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__2536.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__2537 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), .I2(n1677), 
            .I3(n1678), .O(n1679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2537.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2538 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I2(n1676), .I3(n1679), 
            .O(n1680)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heb00 */ ;
    defparam LUT__2538.LUTMASK = 16'heb00;
    EFX_LUT4 LUT__2539 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .O(n1681)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2539.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2540 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n1682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__2540.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__2541 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .O(n1683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2541.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2542 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .O(n1684)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2542.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2543 (.I0(n1682), .I1(n1683), .I2(n1673), .I3(n1684), 
            .O(n1685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haccc */ ;
    defparam LUT__2543.LUTMASK = 16'haccc;
    EFX_LUT4 LUT__2544 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n1666), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n1686)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__2544.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__2545 (.I0(n1668), .I1(n1673), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .O(n1687)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b04 */ ;
    defparam LUT__2545.LUTMASK = 16'h0b04;
    EFX_LUT4 LUT__2546 (.I0(n1681), .I1(n1686), .I2(n1687), .I3(n1685), 
            .O(n1688)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2546.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2547 (.I0(n1672), .I1(n1680), .I2(n1688), .O(n1689)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2547.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2548 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n1666), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), .O(n1690)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__2548.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2549 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .O(n1691)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he100 */ ;
    defparam LUT__2549.LUTMASK = 16'he100;
    EFX_LUT4 LUT__2550 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(n1664), .I2(n1691), .O(n1692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2550.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2551 (.I0(n1692), .I1(n1690), .I2(n1667), .O(n1693)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2551.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2552 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .O(n1694)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2552.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2553 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), .O(n1695)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9696 */ ;
    defparam LUT__2553.LUTMASK = 16'h9696;
    EFX_LUT4 LUT__2554 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I2(n1694), .I3(n1695), .O(n1696)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7100 */ ;
    defparam LUT__2554.LUTMASK = 16'h7100;
    EFX_LUT4 LUT__2555 (.I0(n1665), .I1(n1667), .I2(n1696), .I3(n1670), 
            .O(n1697)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2555.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2556 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .O(n1698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2556.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2557 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n1666), 
            .I2(n1698), .O(n1699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2557.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2558 (.I0(n1697), .I1(n1699), .I2(n1693), .I3(n1688), 
            .O(n1700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2558.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2559 (.I0(n1681), .I1(n1685), .O(n1701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2559.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2560 (.I0(n1673), .I1(n1684), .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n1702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2560.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2561 (.I0(n1668), .I1(n1673), .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), .O(n1703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b00 */ ;
    defparam LUT__2561.LUTMASK = 16'h4b00;
    EFX_LUT4 LUT__2562 (.I0(n1702), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .I2(n1703), .O(n1704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2562.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2563 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(n1677), .O(n1705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2563.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2564 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .O(n1706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__2564.LUTMASK = 16'he000;
    EFX_LUT4 LUT__2565 (.I0(n1673), .I1(n1706), .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .O(n1707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2565.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2566 (.I0(n1678), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I2(n1707), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .O(n1708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2566.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2567 (.I0(n1704), .I1(n1701), .I2(n1705), .I3(n1708), 
            .O(n1709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__2567.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__2568 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I1(n1676), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), .O(n1710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__2568.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2569 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .O(n1711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2569.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2570 (.I0(n1673), .I1(n1674), .I2(n1675), .I3(n1711), 
            .O(n1712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2570.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2571 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .O(n1713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2571.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2572 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .O(n1714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2572.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2573 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(n1712), 
            .I2(n1714), .O(n1715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2573.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2574 (.I0(n1710), .I1(n1715), .I2(n1713), .I3(n1712), 
            .O(n1716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1001 */ ;
    defparam LUT__2574.LUTMASK = 16'h1001;
    EFX_LUT4 LUT__2575 (.I0(n1700), .I1(n1709), .I2(n1680), .I3(n1716), 
            .O(n1717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__2575.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2576 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I2(n1712), .O(n1718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2576.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2577 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), 
            .I2(n1718), .O(n1719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2577.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2578 (.I0(n1717), .I1(n1689), .I2(n1719), .O(\USB_RAM_Reg_inst/n1016 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__2578.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2579 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(n1694), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), .I3(n1695), 
            .O(n1720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__2579.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__2580 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .O(n1721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2580.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2581 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I2(n1721), .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .O(n1722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbcf2 */ ;
    defparam LUT__2581.LUTMASK = 16'hbcf2;
    EFX_LUT4 LUT__2582 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .O(n1723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2582.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2583 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I2(n1646), .I3(n1723), 
            .O(n1724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3fd4 */ ;
    defparam LUT__2583.LUTMASK = 16'h3fd4;
    EFX_LUT4 LUT__2584 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .O(n1725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2584.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2585 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .O(n1726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2585.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2586 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I2(n1725), .I3(n1726), 
            .O(n1727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbcf2 */ ;
    defparam LUT__2586.LUTMASK = 16'hbcf2;
    EFX_LUT4 LUT__2587 (.I0(n1722), .I1(n1720), .I2(n1724), .I3(n1727), 
            .O(n1728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__2587.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__2588 (.I0(n1646), .I1(n1666), .O(n1729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2588.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2589 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I2(n1729), .I3(n1698), 
            .O(n1730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3fd4 */ ;
    defparam LUT__2589.LUTMASK = 16'h3fd4;
    EFX_LUT4 LUT__2590 (.I0(n1646), .I1(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .I2(n1666), .I3(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .O(n1731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc07f */ ;
    defparam LUT__2590.LUTMASK = 16'hc07f;
    EFX_LUT4 LUT__2591 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .O(n1732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2591.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2592 (.I0(n1673), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I3(n1732), .O(n1733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fa8 */ ;
    defparam LUT__2592.LUTMASK = 16'h7fa8;
    EFX_LUT4 LUT__2593 (.I0(n1732), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I3(n1673), .O(n1734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__2593.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2594 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), 
            .I1(n1731), .I2(n1733), .I3(n1734), .O(n1735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__2594.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__2595 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(n1673), .O(n1736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2595.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2596 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), 
            .O(n1737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2596.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2597 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I2(n1736), .I3(n1737), 
            .O(n1738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3fd4 */ ;
    defparam LUT__2597.LUTMASK = 16'h3fd4;
    EFX_LUT4 LUT__2598 (.I0(n1730), .I1(n1728), .I2(n1735), .I3(n1738), 
            .O(n1739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__2598.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__2599 (.I0(n1702), .I1(n1646), .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), .O(n1740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8ef */ ;
    defparam LUT__2599.LUTMASK = 16'ha8ef;
    EFX_LUT4 LUT__2600 (.I0(n1668), .I1(n1673), .O(n1741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2600.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2601 (.I0(n1646), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I3(n1741), .O(n1742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2601.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2602 (.I0(n1740), .I1(n1742), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I3(n1707), .O(n1743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5335 */ ;
    defparam LUT__2602.LUTMASK = 16'h5335;
    EFX_LUT4 LUT__2603 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I1(n1678), .O(n1744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2603.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2604 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I1(n1707), .I2(n1744), .I3(n1742), .O(n1745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3f4 */ ;
    defparam LUT__2604.LUTMASK = 16'hd3f4;
    EFX_LUT4 LUT__2605 (.I0(n1646), .I1(n1741), .I2(n1674), .O(n1746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2605.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2606 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), 
            .I1(n1678), .I2(n1746), .I3(n1705), .O(n1747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2cf */ ;
    defparam LUT__2606.LUTMASK = 16'hb2cf;
    EFX_LUT4 LUT__2607 (.I0(n1743), .I1(n1739), .I2(n1745), .I3(n1747), 
            .O(n1748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__2607.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__2608 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I1(n1646), 
            .I2(n1741), .I3(n1674), .O(n1749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2608.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2609 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .O(n1750)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2609.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2610 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I2(n1749), .I3(n1750), 
            .O(n1751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3fd4 */ ;
    defparam LUT__2610.LUTMASK = 16'h3fd4;
    EFX_LUT4 LUT__2611 (.I0(n1646), .I1(n1676), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .O(n1752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h778f */ ;
    defparam LUT__2611.LUTMASK = 16'h778f;
    EFX_LUT4 LUT__2612 (.I0(n1713), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), 
            .I2(n1752), .O(n1753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2612.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2613 (.I0(n1714), .I1(n1716), .I2(n1753), .O(n1754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2613.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2614 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I2(n1646), .I3(n1714), 
            .O(n1755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__2614.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__2615 (.I0(n1755), .I1(n1719), .O(n1756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2615.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2616 (.I0(n1751), .I1(n1748), .I2(n1754), .I3(n1756), 
            .O(n1757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2616.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2617 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[9] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[10] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[11] ), .O(n1758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2617.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2618 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[13] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[14] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[15] ), .O(n1759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2618.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2619 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[4] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[5] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[6] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[7] ), .O(n1760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2619.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2620 (.I0(n1758), .I1(n1759), .I2(n1760), .O(n1761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2620.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2621 (.I0(\USB_RAM_Reg_inst/service_type_l[1] ), .I1(\USB_RAM_Reg_inst/service_type_l[5] ), 
            .I2(\USB_RAM_Reg_inst/service_type_l[2] ), .I3(\USB_RAM_Reg_inst/service_type_l[6] ), 
            .O(n1762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2621.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2622 (.I0(\USB_RAM_Reg_inst/service_type_h[2] ), .I1(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .I2(\USB_RAM_Reg_inst/service_type_h[5] ), .I3(\USB_RAM_Reg_inst/service_type_h[1] ), 
            .O(n1763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2622.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2623 (.I0(n1562), .I1(n1563), .I2(n1762), .I3(n1763), 
            .O(n1764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2623.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2624 (.I0(n1764), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(n1566), .O(n1765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__2624.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2625 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I1(n1764), .O(n1766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2625.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2626 (.I0(n1766), .I1(\USB_RAM_Reg_inst/fast_module_buffer[0] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .O(n1767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2626.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2627 (.I0(n1764), .I1(\USB_RAM_Reg_inst/fast_module_buffer[8] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2627.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2628 (.I0(n1765), .I1(\USB_AddrBusOut[8] ), .I2(n1768), 
            .O(n1769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2628.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2629 (.I0(n1765), .I1(\USB_AddrBusOut[0] ), .I2(n1767), 
            .I3(n1769), .O(n1770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2629.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2630 (.I0(n1761), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1770), .O(n1771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2630.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2631 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[3] ), .O(n1772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2631.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2632 (.I0(n1758), .I1(n1759), .I2(n1760), .I3(n1772), 
            .O(n1773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2632.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2633 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .I2(n1773), 
            .O(\USB_RAM_Reg_inst/equal_191/n31 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__2633.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2634 (.I0(n1772), .I1(n1761), .O(n1774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2634.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2635 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/service_type_h[0] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8ff0 */ ;
    defparam LUT__2635.LUTMASK = 16'h8ff0;
    EFX_LUT4 LUT__2636 (.I0(n1775), .I1(n1773), .O(n1776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2636.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2637 (.I0(\USB_RAM_Reg_inst/equal_191/n31 ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .I2(n1774), .I3(n1776), .O(n1777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__2637.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__2638 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2638.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2639 (.I0(\USB_RAM_Reg_inst/service_type_l[0] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .O(n1779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2639.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2640 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(n1778), 
            .I2(n1779), .I3(n1773), .O(n1780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2640.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2641 (.I0(n1757), .I1(n1771), .I2(n1777), .I3(n1780), 
            .O(\USB_RAM_Reg_inst/output_data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2641.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2642 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt_en ), 
            .I1(\USB_RAM_Reg_inst/n628 ), .O(\USB_RAM_Reg_inst/n924 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2642.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2643 (.I0(\USB_RAM_Reg_inst/output_buffer[2] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[2] ), .I3(n1577), .O(n1781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2643.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2644 (.I0(n1572), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(n1781), .O(n1782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2644.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2645 (.I0(n1568), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[2] ), 
            .I2(n1782), .I3(n1581), .O(n1783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__2645.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__2646 (.I0(\dev_sel[1] ), .I1(\test_ram[2] ), .I2(n1584), 
            .I3(n1783), .O(\data_bus[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__2646.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__2647 (.I0(\USB_RAM_Reg_inst/output_buffer[3] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[3] ), .I3(n1577), .O(n1784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2647.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2648 (.I0(n1572), .I1(\USB_RAM_Reg_inst/length_of_packet_l[3] ), 
            .I2(n1784), .O(n1785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2648.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2649 (.I0(n1568), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[3] ), 
            .I2(n1785), .I3(n1581), .O(n1786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__2649.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__2650 (.I0(\dev_sel[1] ), .I1(\test_ram[3] ), .I2(n1584), 
            .I3(n1786), .O(\data_bus[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__2650.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__2651 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), 
            .O(n1787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2651.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2652 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n1788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2652.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2653 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[2] ), 
            .I2(n1787), .I3(n1788), .O(n1789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2653.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2654 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I1(n1789), 
            .O(n1790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2654.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2655 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I2(n1790), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .O(n1791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfd40 */ ;
    defparam LUT__2655.LUTMASK = 16'hfd40;
    EFX_LUT4 LUT__2656 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(n1790), .O(n1792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2656.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2657 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .O(n1793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2657.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2658 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(n1792), .I2(n1793), .I3(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n1794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf100 */ ;
    defparam LUT__2658.LUTMASK = 16'hf100;
    EFX_LUT4 LUT__2659 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .O(n1795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2659.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2660 (.I0(n1795), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), .O(n1796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2660.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2661 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), .I2(n1790), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .O(n1797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2661.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2662 (.I0(n1793), .I1(n1796), .I2(n1797), .I3(n1792), 
            .O(n1798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c05 */ ;
    defparam LUT__2662.LUTMASK = 16'h0c05;
    EFX_LUT4 LUT__2663 (.I0(n1791), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(n1794), .I3(n1798), .O(n1799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__2663.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__2664 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I1(n1789), 
            .O(n1800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2664.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2665 (.I0(n1787), .I1(n1788), .O(n1801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2665.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2666 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .O(n1802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2666.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2667 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(n1802), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), .I3(n1801), 
            .O(n1803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdde */ ;
    defparam LUT__2667.LUTMASK = 16'hbdde;
    EFX_LUT4 LUT__2668 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), .O(n1804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__2668.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2669 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .O(n1805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2669.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2670 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[0] ), 
            .O(n1806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2670.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2671 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[2] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .O(n1807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__2671.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__2672 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), .I2(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I3(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .O(n1808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcfa8 */ ;
    defparam LUT__2672.LUTMASK = 16'hcfa8;
    EFX_LUT4 LUT__2673 (.I0(n1805), .I1(n1806), .I2(n1807), .I3(n1808), 
            .O(n1809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__2673.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2674 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .O(n1810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__2674.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__2675 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I1(n1810), .I2(n1809), .I3(n1804), .O(n1811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heee8 */ ;
    defparam LUT__2675.LUTMASK = 16'heee8;
    EFX_LUT4 LUT__2676 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I3(\USB_RAM_Reg_inst/length_of_packet_l[6] ), 
            .O(n1812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;
    defparam LUT__2676.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__2677 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(n1788), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .O(n1813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__2677.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2678 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), 
            .I1(n1811), .I2(n1812), .I3(n1813), .O(n1814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0017 */ ;
    defparam LUT__2678.LUTMASK = 16'h0017;
    EFX_LUT4 LUT__2679 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(n1788), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .O(n1815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__2679.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2680 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), 
            .I1(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I2(n1788), .O(n1816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__2680.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2681 (.I0(n1815), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I2(n1816), .O(n1817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__2681.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2682 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), 
            .I2(n1787), .I3(n1788), .O(n1818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2bbb */ ;
    defparam LUT__2682.LUTMASK = 16'h2bbb;
    EFX_LUT4 LUT__2683 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(n1818), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), .I3(n1789), 
            .O(n1819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0071 */ ;
    defparam LUT__2683.LUTMASK = 16'h0071;
    EFX_LUT4 LUT__2684 (.I0(n1815), .I1(n1803), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I3(n1819), .O(n1820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__2684.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__2685 (.I0(n1814), .I1(n1803), .I2(n1817), .I3(n1820), 
            .O(n1821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__2685.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__2686 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), 
            .O(n1822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2686.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2687 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(n1822), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), .I3(n1790), 
            .O(n1823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdde */ ;
    defparam LUT__2687.LUTMASK = 16'hbdde;
    EFX_LUT4 LUT__2688 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I1(n1800), .I2(n1821), .I3(n1823), .O(n1824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00d4 */ ;
    defparam LUT__2688.LUTMASK = 16'h00d4;
    EFX_LUT4 LUT__2689 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(n1792), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), .O(n1825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__2689.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2690 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[6] ), .I1(n1792), 
            .O(n1826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2690.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2691 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), 
            .I1(n1825), .I2(n1826), .I3(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .O(n1827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he80e */ ;
    defparam LUT__2691.LUTMASK = 16'he80e;
    EFX_LUT4 LUT__2692 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[2] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[3] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[4] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[7] ), .O(n1828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2692.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2693 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[5] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[6] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[11] ), 
            .I3(n1828), .O(n1829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2693.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2694 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[12] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[13] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[14] ), 
            .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[15] ), .O(n1830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2694.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2695 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[8] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[9] ), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[10] ), 
            .I3(n1830), .O(n1831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2695.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2696 (.I0(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .O(n1832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2696.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2697 (.I0(n1831), .I1(n1829), .I2(\USB_RAM_Reg_inst/n628 ), 
            .I3(n1832), .O(n1833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__2697.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__2698 (.I0(n1824), .I1(n1799), .I2(n1827), .I3(n1833), 
            .O(\USB_RAM_Reg_inst/n1171 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__2698.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__2699 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .O(\USB_RAM_Reg_inst/n1394 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2699.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2700 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .O(\USB_RAM_Reg_inst/n1399 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2700.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2701 (.I0(\USB_RAM_Reg_inst/h_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/h_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/h_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/h_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/n1404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__2701.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2702 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .O(\USB_RAM_Reg_inst/n1414 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2702.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2703 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .O(\USB_RAM_Reg_inst/n1419 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2703.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2704 (.I0(\USB_RAM_Reg_inst/t_key_cnt[0] ), .I1(\USB_RAM_Reg_inst/t_key_cnt[1] ), 
            .I2(\USB_RAM_Reg_inst/t_key_cnt[2] ), .I3(\USB_RAM_Reg_inst/t_key_cnt[3] ), 
            .O(\USB_RAM_Reg_inst/n1424 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__2704.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2705 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1098)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2705.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2706 (.I0(n1772), .I1(n1098), .O(n1094)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2706.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2707 (.I0(\USB_RAM_Reg_inst/byte_number_cnt[0] ), .I1(\USB_RAM_Reg_inst/byte_number_cnt[1] ), 
            .O(n1138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2707.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2708 (.I0(FT_RX_Full_n), .I1(n1574), .O(n1834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2708.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2709 (.I0(\USB_RAM_Reg_inst/output_buffer[1] ), .I1(n1579), 
            .O(n1835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2709.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2710 (.I0(n1577), .I1(\USB_RAM_Reg_inst/service_type_l[1] ), 
            .I2(n1835), .I3(n1581), .O(n1836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2710.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2711 (.I0(n1572), .I1(\USB_RAM_Reg_inst/length_of_packet_l[1] ), 
            .I2(n1834), .I3(n1836), .O(n1837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2711.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2712 (.I0(n1581), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[1] ), 
            .I2(n1585), .O(n1838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2712.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2713 (.I0(n1837), .I1(n1838), .I2(\test_ram[1] ), .I3(n1569), 
            .O(\data_bus[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__2713.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__2714 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[4] ), .I1(n1572), 
            .O(n1839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2714.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2715 (.I0(\USB_RAM_Reg_inst/output_buffer[4] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[4] ), .I3(n1577), .O(n1840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2715.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2716 (.I0(n1839), .I1(n1840), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[4] ), 
            .I3(n1581), .O(n1841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__2716.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__2717 (.I0(n1585), .I1(n1841), .I2(\test_ram[4] ), .I3(n1569), 
            .O(\data_bus[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__2717.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__2718 (.I0(\USB_RAM_Reg_inst/output_buffer[5] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[5] ), .I3(n1577), .O(n1842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2718.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2719 (.I0(n1572), .I1(\USB_RAM_Reg_inst/length_of_packet_l[5] ), 
            .I2(n1842), .O(n1843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2719.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2720 (.I0(n1568), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[5] ), 
            .I2(n1843), .I3(n1581), .O(n1844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__2720.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__2721 (.I0(\dev_sel[1] ), .I1(\test_ram[5] ), .I2(n1584), 
            .I3(n1844), .O(\data_bus[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__2721.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__2722 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(n1572), 
            .O(n1845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2722.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2723 (.I0(\USB_RAM_Reg_inst/output_buffer[6] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[6] ), .I3(n1577), .O(n1846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2723.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2724 (.I0(n1845), .I1(n1846), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[6] ), 
            .I3(n1581), .O(n1847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__2724.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__2725 (.I0(n1585), .I1(n1847), .I2(\test_ram[6] ), .I3(n1569), 
            .O(\data_bus[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__2725.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__2726 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(n1572), 
            .O(n1848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2726.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2727 (.I0(\USB_RAM_Reg_inst/output_buffer[7] ), .I1(n1579), 
            .I2(\USB_RAM_Reg_inst/service_type_l[7] ), .I3(n1577), .O(n1849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2727.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2728 (.I0(n1848), .I1(n1849), .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_out[7] ), 
            .I3(n1581), .O(n1850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__2728.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__2729 (.I0(n1585), .I1(n1850), .I2(\test_ram[7] ), .I3(n1569), 
            .O(\data_bus[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__2729.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__2730 (.I0(\USB_RAM_Reg_inst/service_type_h[0] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[0] ), .I3(n1572), .O(n1851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2730.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2731 (.I0(n1851), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[8] ), 
            .I2(n1581), .I3(n1585), .O(n1852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2731.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2732 (.I0(n1569), .I1(\test_ram[8] ), .I2(n1852), .O(\data_bus[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2732.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2733 (.I0(\USB_RAM_Reg_inst/service_type_h[1] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[1] ), .I3(n1572), .O(n1853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2733.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2734 (.I0(n1853), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[9] ), 
            .I2(n1581), .I3(n1585), .O(n1854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2734.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2735 (.I0(n1569), .I1(\test_ram[9] ), .I2(n1854), .O(\data_bus[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2735.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2736 (.I0(\USB_RAM_Reg_inst/service_type_h[2] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I3(n1572), .O(n1855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2736.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2737 (.I0(n1855), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[10] ), 
            .I2(n1581), .I3(n1585), .O(n1856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2737.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2738 (.I0(n1569), .I1(\test_ram[10] ), .I2(n1856), .O(\data_bus[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2738.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2739 (.I0(\USB_RAM_Reg_inst/service_type_h[3] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[3] ), .I3(n1572), .O(n1857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2739.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2740 (.I0(n1857), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[11] ), 
            .I2(n1581), .I3(n1585), .O(n1858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2740.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2741 (.I0(n1569), .I1(\test_ram[11] ), .I2(n1858), .O(\data_bus[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2741.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2742 (.I0(\USB_RAM_Reg_inst/service_type_h[4] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I3(n1572), .O(n1859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2742.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2743 (.I0(n1859), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[12] ), 
            .I2(n1581), .I3(n1585), .O(n1860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2743.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2744 (.I0(n1569), .I1(\test_ram[12] ), .I2(n1860), .O(\data_bus[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2744.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2745 (.I0(\USB_RAM_Reg_inst/service_type_h[5] ), .I1(n1577), 
            .I2(\USB_RAM_Reg_inst/length_of_packet_h[5] ), .I3(n1572), .O(n1861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2745.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2746 (.I0(n1861), .I1(\USB_RAM_Reg_inst/usb_cmdl_ram_out[13] ), 
            .I2(n1581), .I3(n1585), .O(n1862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__2746.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__2747 (.I0(n1569), .I1(\test_ram[13] ), .I2(n1862), .O(\data_bus[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__2747.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__2748 (.I0(\USB_RAM_Reg_inst/rd_timing_cnt[0] ), .I1(\USB_RAM_Reg_inst/rd_timing_cnt[1] ), 
            .O(n1186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2748.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2749 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[1] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[9] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n1766), 
            .O(n1863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2749.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2750 (.I0(\USB_AddrBusOut[1] ), .I1(\USB_AddrBusOut[9] ), 
            .I2(n1765), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__2750.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2751 (.I0(n1863), .I1(n1864), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I3(n1761), .O(n1865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2751.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2752 (.I0(n1773), .I1(n1719), .O(n1866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2752.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2753 (.I0(\USB_RAM_Reg_inst/service_type_h[1] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1773), .O(n1867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2753.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2754 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I1(n1773), .O(n1868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2754.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2755 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[1] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[1] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2755.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2756 (.I0(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .I1(n1773), .O(n1870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2756.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2757 (.I0(n1870), .I1(n1869), .I2(n1774), .O(n1871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__2757.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2758 (.I0(n1868), .I1(n1871), .O(n1872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2758.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2759 (.I0(n1866), .I1(n1717), .I2(n1867), .I3(n1872), 
            .O(n1873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2759.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2760 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2760.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2761 (.I0(n1098), .I1(n1773), .O(n1875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2761.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2762 (.I0(n1874), .I1(\USB_RAM_Reg_inst/service_type_l[1] ), 
            .I2(n1875), .I3(n1871), .O(n1876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__2762.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__2763 (.I0(n1757), .I1(n1865), .I2(n1873), .I3(n1876), 
            .O(\USB_RAM_Reg_inst/output_data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__2763.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2764 (.I0(\USB_AddrBusOut[2] ), .I1(\USB_AddrBusOut[10] ), 
            .I2(n1765), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__2764.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2765 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[2] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[10] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n1766), 
            .O(n1878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2765.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2766 (.I0(n1878), .I1(n1877), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .O(n1879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2766.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2767 (.I0(\USB_RAM_Reg_inst/service_type_h[2] ), .I1(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), .I3(n1094), 
            .O(n1880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf03 */ ;
    defparam LUT__2767.LUTMASK = 16'haf03;
    EFX_LUT4 LUT__2768 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[2] ), .I1(\USB_RAM_Reg_inst/service_type_l[2] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .O(n1881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0caf */ ;
    defparam LUT__2768.LUTMASK = 16'h0caf;
    EFX_LUT4 LUT__2769 (.I0(n1881), .I1(n1880), .I2(n1761), .O(n1882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2769.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2770 (.I0(\USB_RAM_Reg_inst/equal_191/n31 ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[2] ), 
            .I2(n1882), .I3(n1774), .O(n1883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2770.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2771 (.I0(n1757), .I1(n1761), .I2(n1879), .I3(n1883), 
            .O(\USB_RAM_Reg_inst/output_data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h10ff */ ;
    defparam LUT__2771.LUTMASK = 16'h10ff;
    EFX_LUT4 LUT__2772 (.I0(\USB_AddrBusOut[3] ), .I1(\USB_AddrBusOut[11] ), 
            .I2(n1765), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__2772.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2773 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[3] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[11] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n1766), 
            .O(n1885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2773.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2774 (.I0(n1884), .I1(n1885), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I3(n1761), .O(n1886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2774.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2775 (.I0(\USB_RAM_Reg_inst/service_type_h[3] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1773), .O(n1887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2775.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2776 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[3] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[3] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2776.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2777 (.I0(n1888), .I1(n1870), .I2(n1774), .O(n1889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2777.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2778 (.I0(n1868), .I1(n1889), .O(n1890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2778.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2779 (.I0(n1866), .I1(n1717), .I2(n1887), .I3(n1890), 
            .O(n1891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2779.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2780 (.I0(n1874), .I1(\USB_RAM_Reg_inst/service_type_l[3] ), 
            .I2(n1875), .I3(n1889), .O(n1892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__2780.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__2781 (.I0(n1757), .I1(n1886), .I2(n1891), .I3(n1892), 
            .O(\USB_RAM_Reg_inst/output_data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__2781.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2782 (.I0(n1766), .I1(\USB_RAM_Reg_inst/fast_module_buffer[4] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .O(n1893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2782.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2783 (.I0(n1764), .I1(\USB_RAM_Reg_inst/fast_module_buffer[12] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2783.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2784 (.I0(n1765), .I1(\USB_AddrBusOut[12] ), .I2(n1894), 
            .O(n1895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2784.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2785 (.I0(n1765), .I1(\USB_AddrBusOut[4] ), .I2(n1893), 
            .I3(n1895), .O(n1896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2785.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2786 (.I0(n1761), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1896), .O(n1897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2786.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2787 (.I0(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I1(\USB_RAM_Reg_inst/service_type_h[4] ), .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), 
            .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), .O(n1898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8ff0 */ ;
    defparam LUT__2787.LUTMASK = 16'h8ff0;
    EFX_LUT4 LUT__2788 (.I0(n1898), .I1(n1773), .O(n1899)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2788.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2789 (.I0(\USB_RAM_Reg_inst/equal_191/n31 ), .I1(\USB_RAM_Reg_inst/length_of_packet_l[4] ), 
            .I2(n1774), .I3(n1899), .O(n1900)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__2789.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__2790 (.I0(\USB_RAM_Reg_inst/service_type_l[4] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .I3(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[1] ), 
            .O(n1901)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2790.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2791 (.I0(\USB_RAM_Reg_inst/length_of_packet_h[4] ), .I1(n1778), 
            .I2(n1901), .I3(n1773), .O(n1902)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2791.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2792 (.I0(n1757), .I1(n1897), .I2(n1900), .I3(n1902), 
            .O(\USB_RAM_Reg_inst/output_data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2792.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2793 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[5] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[13] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n1766), 
            .O(n1903)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2793.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2794 (.I0(\USB_AddrBusOut[5] ), .I1(\USB_AddrBusOut[13] ), 
            .I2(n1765), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1904)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__2794.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2795 (.I0(n1903), .I1(n1904), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I3(n1761), .O(n1905)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2795.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2796 (.I0(\USB_RAM_Reg_inst/service_type_h[5] ), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1773), .O(n1906)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2796.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2797 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[5] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[5] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1907)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2797.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2798 (.I0(n1907), .I1(n1870), .I2(n1774), .O(n1908)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2798.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2799 (.I0(n1868), .I1(n1908), .O(n1909)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2799.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2800 (.I0(n1866), .I1(n1717), .I2(n1906), .I3(n1909), 
            .O(n1910)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2800.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2801 (.I0(n1874), .I1(\USB_RAM_Reg_inst/service_type_l[5] ), 
            .I2(n1875), .I3(n1908), .O(n1911)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__2801.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__2802 (.I0(n1757), .I1(n1905), .I2(n1910), .I3(n1911), 
            .O(\USB_RAM_Reg_inst/output_data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__2802.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2803 (.I0(n1766), .I1(\USB_RAM_Reg_inst/fast_module_buffer[6] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .O(n1912)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2803.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2804 (.I0(n1764), .I1(\USB_RAM_Reg_inst/fast_module_buffer[14] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[1] ), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1913)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2804.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2805 (.I0(n1765), .I1(\USB_AddrBusOut[14] ), .I2(n1913), 
            .O(n1914)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2805.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2806 (.I0(n1765), .I1(\USB_AddrBusOut[6] ), .I2(n1912), 
            .I3(n1914), .O(n1915)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2806.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2807 (.I0(n1761), .I1(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I2(n1915), .O(n1916)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2807.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2808 (.I0(\USB_RAM_Reg_inst/service_type_l[6] ), .I1(\USB_RAM_Reg_inst/service_type_h[6] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1917)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2808.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2809 (.I0(n1917), .I1(n1874), .I2(\USB_RAM_Reg_inst/length_of_packet_h[6] ), 
            .I3(n1778), .O(n1918)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2809.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2810 (.I0(n1918), .I1(n1772), .I2(n1761), .O(n1919)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2810.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2811 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[6] ), .I1(\USB_RAM_Reg_inst/equal_191/n31 ), 
            .O(n1920)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2811.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2812 (.I0(n1757), .I1(n1916), .I2(n1919), .I3(n1920), 
            .O(\USB_RAM_Reg_inst/output_data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__2812.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__2813 (.I0(\USB_AddrBusOut[7] ), .I1(\USB_AddrBusOut[15] ), 
            .I2(n1765), .I3(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), 
            .O(n1921)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__2813.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2814 (.I0(\USB_RAM_Reg_inst/fast_module_buffer[7] ), .I1(\USB_RAM_Reg_inst/fast_module_buffer[15] ), 
            .I2(\USB_RAM_Reg_inst/usb_cmdl_ram_addr_cnt[0] ), .I3(n1766), 
            .O(n1922)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2814.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2815 (.I0(n1921), .I1(n1922), .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), 
            .I3(n1761), .O(n1923)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2815.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2816 (.I0(\USB_RAM_Reg_inst/length_of_packet_l[7] ), .I1(\USB_RAM_Reg_inst/length_of_packet_h[7] ), 
            .I2(\USB_RAM_Reg_inst/out_buff_byte_number_cnt[0] ), .O(n1924)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2816.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2817 (.I0(n1924), .I1(n1870), .I2(n1774), .O(n1925)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2817.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2818 (.I0(\USB_RAM_Reg_inst/service_type_h[7] ), .I1(n1761), 
            .I2(\USB_RAM_Reg_inst/received_packet_is_valid ), .I3(n1868), 
            .O(n1926)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2818.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2819 (.I0(n1866), .I1(n1717), .I2(n1925), .I3(n1926), 
            .O(n1927)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__2819.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__2820 (.I0(n1874), .I1(\USB_RAM_Reg_inst/service_type_l[7] ), 
            .I2(n1875), .I3(n1925), .O(n1928)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__2820.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__2821 (.I0(n1757), .I1(n1923), .I2(n1927), .I3(n1928), 
            .O(\USB_RAM_Reg_inst/output_data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__2821.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2822 (.I0(\USB_AddrBusOut[13] ), .I1(\USB_AddrBusOut[10] ), 
            .I2(\USB_AddrBusOut[11] ), .I3(\USB_AddrBusOut[15] ), .O(n1929)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2822.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2823 (.I0(n1587), .I1(n1929), .O(n24_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2823.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2832 (.I0(\USB_RAM_Reg_inst/rd_strobe ), .O(FT_RD_Strobe_n)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__2832.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__2833 (.I0(\cnt[25] ), .O(LedG)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__2833.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk100), .O(\clk100~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3  (.I0(n1186), .I1(1'b1), 
            .CI(1'b0), .CO(n1933)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(204)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_22/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3  (.I0(n1138), .I1(1'b1), 
            .CI(1'b0), .CO(n1932)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(265)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_52/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3  (.I0(n1098), .I1(1'b1), 
            .CI(1'b0), .CO(n1931)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5  (.I0(n1094), .I1(1'b1), 
            .CI(1'b0), .CO(n1930)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\prj_file\USB_RAM_Reg.sv(451)
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__USB_RAM_Reg_inst/add_181/i5 .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_24ea8a87_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_24ea8a87_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_24ea8a87__8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_24ea8a87__8_8_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_24ea8a87__2_2_2_2_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_24ea8a87_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_24ea8a87_0
// module not written out since it is a black box. 
//

