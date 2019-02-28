// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 14 13:50:55 2019
// Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_SPI_Master_0_0_sim_netlist.v
// Design      : SPI_SPI_Master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* n = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master
   (clk,
    rst,
    Data_In,
    spi_clk,
    spi_ss,
    MOSI);
  input clk;
  input rst;
  input [7:0]Data_In;
  output spi_clk;
  output spi_ss;
  output MOSI;

  wire [7:0]Data_In;
  wire MOSI;
  wire clk;
  wire count0;
  wire [3:0]count_reg__0;
  wire [2:0]i;
  wire \i[0]_i_1_n_0 ;
  wire mosi_tmp_i_3_n_0;
  wire mosi_tmp_i_4_n_0;
  wire mosi_tmp_reg_i_2_n_0;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire [2:1]p_1_in;
  wire rst;
  wire spi_clk;
  wire spi_ss;
  wire spi_ss_tmp1_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \count[3]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(p_0_in__0[3]));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count0),
        .CLR(rst),
        .D(p_0_in__0[0]),
        .Q(count_reg__0[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count0),
        .CLR(rst),
        .D(p_0_in__0[1]),
        .Q(count_reg__0[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count0),
        .CLR(rst),
        .D(p_0_in__0[2]),
        .Q(count_reg__0[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count0),
        .CLR(rst),
        .D(p_0_in__0[3]),
        .Q(count_reg__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i[2]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .O(p_1_in[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(i[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(i[2]));
  LUT4 #(
    .INIT(16'h01FE)) 
    mosi_tmp_i_1
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_tmp_i_3
       (.I0(Data_In[4]),
        .I1(Data_In[5]),
        .I2(i[1]),
        .I3(Data_In[6]),
        .I4(i[0]),
        .I5(Data_In[7]),
        .O(mosi_tmp_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_tmp_i_4
       (.I0(Data_In[0]),
        .I1(Data_In[1]),
        .I2(i[1]),
        .I3(Data_In[2]),
        .I4(i[0]),
        .I5(Data_In[3]),
        .O(mosi_tmp_i_4_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    mosi_tmp_reg
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(mosi_tmp_reg_i_2_n_0),
        .Q(MOSI));
  MUXF7 mosi_tmp_reg_i_2
       (.I0(mosi_tmp_i_3_n_0),
        .I1(mosi_tmp_i_4_n_0),
        .O(mosi_tmp_reg_i_2_n_0),
        .S(i[2]));
  LUT2 #(
    .INIT(4'h2)) 
    spi_clk_INST_0
       (.I0(clk),
        .I1(spi_ss),
        .O(spi_clk));
  LUT4 #(
    .INIT(16'hAAA9)) 
    spi_ss_tmp1_i_1
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[2]),
        .O(spi_ss_tmp1_i_1_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    spi_ss_tmp1_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_ss_tmp1_i_1_n_0),
        .PRE(rst),
        .Q(spi_ss));
endmodule

(* CHECK_LICENSE_TYPE = "SPI_SPI_Master_0_0,SPI_Master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SPI_Master,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    Data_In,
    spi_clk,
    spi_ss,
    MOSI);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]Data_In;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN SPI_SPI_Master_0_0_spi_clk, INSERT_VIP 0" *) output spi_clk;
  output spi_ss;
  output MOSI;

  wire [7:0]Data_In;
  wire MOSI;
  wire clk;
  wire rst;
  wire spi_clk;
  wire spi_ss;

  (* n = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master U0
       (.Data_In(Data_In),
        .MOSI(MOSI),
        .clk(clk),
        .rst(rst),
        .spi_clk(spi_clk),
        .spi_ss(spi_ss));
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
