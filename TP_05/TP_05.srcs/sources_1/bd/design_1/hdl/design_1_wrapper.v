//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Dec  6 14:41:36 2018
//Host        : POTATO-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Clk_Div,
    clk,
    rst);
  output Clk_Div;
  input clk;
  input rst;

  wire Clk_Div;
  wire clk;
  wire rst;

  design_1 design_1_i
       (.Clk_Div(Clk_Div),
        .clk(clk),
        .rst(rst));
endmodule
