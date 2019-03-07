// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 18:08:00 2018
// Host        : POTATO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_Bascule_0_0/design_1_Bascule_0_0_stub.v
// Design      : design_1_Bascule_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Bascule,Vivado 2018.2" *)
module design_1_Bascule_0_0(H, RST, PREP, UPDOWN, E, S)
/* synthesis syn_black_box black_box_pad_pin="H,RST,PREP,UPDOWN,E[3:0],S[3:0]" */;
  input H;
  input RST;
  input PREP;
  input UPDOWN;
  input [3:0]E;
  output [3:0]S;
endmodule
