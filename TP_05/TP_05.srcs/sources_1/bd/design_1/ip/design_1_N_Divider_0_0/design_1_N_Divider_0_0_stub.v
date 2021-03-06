// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 18:07:14 2018
// Host        : POTATO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_N_Divider_0_0/design_1_N_Divider_0_0_stub.v
// Design      : design_1_N_Divider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "N_Divider,Vivado 2018.2" *)
module design_1_N_Divider_0_0(rst, clk, Clk_Div)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,Clk_Div" */;
  input rst;
  input clk;
  output Clk_Div;
endmodule
