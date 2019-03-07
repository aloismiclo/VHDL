// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 18:08:00 2018
// Host        : POTATO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_Bascule_0_0/design_1_Bascule_0_0_sim_netlist.v
// Design      : design_1_Bascule_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Bascule_0_0,Bascule,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Bascule,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_Bascule_0_0
   (H,
    RST,
    PREP,
    UPDOWN,
    E,
    S);
  input H;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW" *) input RST;
  input PREP;
  input UPDOWN;
  input [3:0]E;
  output [3:0]S;

  wire [3:0]E;
  wire H;
  wire PREP;
  wire RST;
  wire [3:0]S;
  wire UPDOWN;

  design_1_Bascule_0_0_Bascule U0
       (.E(E),
        .H(H),
        .PREP(PREP),
        .RST(RST),
        .S(S),
        .UPDOWN(UPDOWN));
endmodule

(* ORIG_REF_NAME = "Bascule" *) 
module design_1_Bascule_0_0_Bascule
   (H,
    RST,
    PREP,
    UPDOWN,
    E,
    S);
  input H;
  input RST;
  input PREP;
  input UPDOWN;
  input [3:0]E;
  output [3:0]S;

  wire [3:0]E;
  wire H;
  wire PREP;
  wire RST;
  wire [3:0]S;
  wire UPDOWN;
  wire [3:0]p_0_in;
  wire \tmp[3]_i_2_n_0 ;

  LUT3 #(
    .INIT(8'h8B)) 
    \tmp[0]_i_1 
       (.I0(E[0]),
        .I1(PREP),
        .I2(S[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \tmp[1]_i_1 
       (.I0(E[1]),
        .I1(PREP),
        .I2(S[0]),
        .I3(S[1]),
        .I4(UPDOWN),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \tmp[2]_i_1 
       (.I0(E[2]),
        .I1(PREP),
        .I2(S[0]),
        .I3(S[1]),
        .I4(S[2]),
        .I5(UPDOWN),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \tmp[3]_i_1 
       (.I0(E[3]),
        .I1(PREP),
        .I2(\tmp[3]_i_2_n_0 ),
        .I3(UPDOWN),
        .I4(S[3]),
        .I5(S[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \tmp[3]_i_2 
       (.I0(UPDOWN),
        .I1(S[1]),
        .I2(S[0]),
        .O(\tmp[3]_i_2_n_0 ));
  FDCE \tmp_reg[0] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(p_0_in[0]),
        .Q(S[0]));
  FDCE \tmp_reg[1] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(p_0_in[1]),
        .Q(S[1]));
  FDCE \tmp_reg[2] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(p_0_in[2]),
        .Q(S[2]));
  FDCE \tmp_reg[3] 
       (.C(H),
        .CE(1'b1),
        .CLR(RST),
        .D(p_0_in[3]),
        .Q(S[3]));
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
