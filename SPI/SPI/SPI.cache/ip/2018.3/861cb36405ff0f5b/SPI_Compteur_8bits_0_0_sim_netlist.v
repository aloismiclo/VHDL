// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 31 15:42:00 2019
// Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_Compteur_8bits_0_0_sim_netlist.v
// Design      : SPI_Compteur_8bits_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits
   (S,
    DOWNUP,
    H,
    RST);
  output [7:0]S;
  input DOWNUP;
  input H;
  input RST;

  wire DOWNUP;
  wire H;
  wire RST;
  wire [7:0]S;
  wire plusOp__0_n_2;
  wire plusOp__0_n_3;
  wire plusOp_i_1__0_n_0;
  wire plusOp_i_1_n_0;
  wire plusOp_i_2__0_n_0;
  wire plusOp_i_2_n_0;
  wire plusOp_i_3__0_n_0;
  wire plusOp_i_3_n_0;
  wire plusOp_i_4_n_0;
  wire plusOp_i_5_n_0;
  wire plusOp_n_0;
  wire plusOp_n_1;
  wire plusOp_n_2;
  wire plusOp_n_3;
  wire [7:0]tmp;
  wire [3:2]NLW_plusOp__0_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__0_O_UNCONNECTED;

  CARRY4 plusOp
       (.CI(1'b0),
        .CO({plusOp_n_0,plusOp_n_1,plusOp_n_2,plusOp_n_3}),
        .CYINIT(S[0]),
        .DI({S[3:2],plusOp_i_1__0_n_0,DOWNUP}),
        .O(tmp[4:1]),
        .S({plusOp_i_2_n_0,plusOp_i_3_n_0,plusOp_i_4_n_0,plusOp_i_5_n_0}));
  CARRY4 plusOp__0
       (.CI(plusOp_n_0),
        .CO({NLW_plusOp__0_CO_UNCONNECTED[3:2],plusOp__0_n_2,plusOp__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,S[5:4]}),
        .O({NLW_plusOp__0_O_UNCONNECTED[3],tmp[7:5]}),
        .S({1'b0,plusOp_i_1_n_0,plusOp_i_2__0_n_0,plusOp_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_i_1
       (.I0(S[6]),
        .I1(S[7]),
        .O(plusOp_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_i_1__0
       (.I0(DOWNUP),
        .O(plusOp_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_i_2
       (.I0(S[3]),
        .I1(S[4]),
        .O(plusOp_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_i_2__0
       (.I0(S[5]),
        .I1(S[6]),
        .O(plusOp_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_i_3
       (.I0(S[2]),
        .I1(S[3]),
        .O(plusOp_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_i_3__0
       (.I0(S[4]),
        .I1(S[5]),
        .O(plusOp_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_i_4
       (.I0(DOWNUP),
        .I1(S[2]),
        .O(plusOp_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_i_5
       (.I0(DOWNUP),
        .I1(S[1]),
        .O(plusOp_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1 
       (.I0(S[0]),
        .O(tmp[0]));
  FDCE \tmp_reg[0] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[0]),
        .Q(S[0]));
  FDCE \tmp_reg[1] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[1]),
        .Q(S[1]));
  FDCE \tmp_reg[2] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[2]),
        .Q(S[2]));
  FDCE \tmp_reg[3] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[3]),
        .Q(S[3]));
  FDCE \tmp_reg[4] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[4]),
        .Q(S[4]));
  FDCE \tmp_reg[5] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[5]),
        .Q(S[5]));
  FDCE \tmp_reg[6] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[6]),
        .Q(S[6]));
  FDCE \tmp_reg[7] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(tmp[7]),
        .Q(S[7]));
endmodule

(* CHECK_LICENSE_TYPE = "SPI_Compteur_8bits_0_0,Compteur_8bits,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Compteur_8bits,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (H,
    RST,
    DOWNUP,
    S);
  input H;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  input DOWNUP;
  output [7:0]S;

  wire DOWNUP;
  wire H;
  wire RST;
  wire [7:0]S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits U0
       (.DOWNUP(DOWNUP),
        .H(H),
        .RST(RST),
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
