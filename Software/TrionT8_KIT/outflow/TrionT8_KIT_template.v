
// Efinity Top-level template
// Version: 2022.1.226.1.9
// Date: 2022-12-14 12:59

// Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as D:\Cloud\GitHub\CMD3_KIT\Software\TrionT8_KIT\TrionT8_KIT.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  TrionT8_KIT
//     #4)  Insert design content.


module TrionT8_KIT
(
  input quartz_clk,
  input FT_RX_Full_n,
  input [7:0] FT_DATA_IN,
  input FT_PWR_n,
  input FT_TX_Enable_n,
  input clk100,
  output [8:1] GPIO,
  output LedG,
  output [3:0] Led_bus,
  output [7:0] FT_DATA_OUT,
  output [7:0] FT_DATA_OE,
  output FT_RD_Strobe_n,
  output FT_WR_Strobe
);


endmodule

