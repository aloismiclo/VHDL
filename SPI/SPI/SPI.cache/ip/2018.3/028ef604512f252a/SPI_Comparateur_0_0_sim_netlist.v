// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 31 15:42:00 2019
// Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_Comparateur_0_0_sim_netlist.v
// Design      : SPI_Comparateur_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur
   (S,
    B,
    A);
  output S;
  input [7:0]B;
  input [7:0]A;

  wire [7:0]A;
  wire [7:0]B;
  wire S;
  wire S_INST_0_i_1_n_0;
  wire S_INST_0_i_2_n_0;
  wire S_INST_0_i_3_n_0;
  wire S_INST_0_i_4_n_0;
  wire S_INST_0_i_5_n_0;
  wire S_INST_0_i_6_n_0;
  wire S_INST_0_i_7_n_0;
  wire S_INST_0_i_8_n_0;
  wire S_INST_0_n_1;
  wire S_INST_0_n_2;
  wire S_INST_0_n_3;
  wire [3:0]NLW_S_INST_0_O_UNCONNECTED;

  CARRY4 S_INST_0
       (.CI(1'b0),
        .CO({S,S_INST_0_n_1,S_INST_0_n_2,S_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI({S_INST_0_i_1_n_0,S_INST_0_i_2_n_0,S_INST_0_i_3_n_0,S_INST_0_i_4_n_0}),
        .O(NLW_S_INST_0_O_UNCONNECTED[3:0]),
        .S({S_INST_0_i_5_n_0,S_INST_0_i_6_n_0,S_INST_0_i_7_n_0,S_INST_0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    S_INST_0_i_1
       (.I0(B[6]),
        .I1(A[6]),
        .I2(A[7]),
        .I3(B[7]),
        .O(S_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    S_INST_0_i_2
       (.I0(B[4]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(B[5]),
        .O(S_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    S_INST_0_i_3
       (.I0(B[2]),
        .I1(A[2]),
        .I2(A[3]),
        .I3(B[3]),
        .O(S_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    S_INST_0_i_4
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(S_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_INST_0_i_5
       (.I0(B[6]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(S_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_INST_0_i_6
       (.I0(B[4]),
        .I1(A[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(S_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_INST_0_i_7
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(S_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_INST_0_i_8
       (.I0(B[0]),
        .I1(A[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(S_INST_0_i_8_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "SPI_Comparateur_0_0,Comparateur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Comparateur,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    S);
  input [7:0]A;
  input [7:0]B;
  output S;

  wire [7:0]A;
  wire [7:0]B;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur U0
       (.A(A),
        .B(B),
        .S(S));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
