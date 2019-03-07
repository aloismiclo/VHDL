//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Feb 28 16:51:51 2019
//Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
//Command     : generate_target SPI.bd
//Design      : SPI
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SPI,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SPI,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "SPI.hwdef" *) 
module SPI
   (Data_In,
    LED,
    MOSI,
    SS,
    StartIn,
    StartOut,
    UPDOWN,
    reset_rtl,
    sclk,
    sys_clock);
  input [7:0]Data_In;
  output [7:0]LED;
  output MOSI;
  output SS;
  input StartIn;
  output StartOut;
  input UPDOWN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  output sclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN SPI_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire Comparateur_0_S;
  wire [15:0]Compteur_8bits_0_S;
  wire [7:0]Data_In_1;
  wire N_Divider_0_Clk_Div;
  wire SPI_Master_0_MOSI;
  wire SPI_Master_0_spi_clk;
  wire SPI_Master_0_spi_ss;
  wire [7:0]SPI_Slave_0_DATA;
  wire StartIn_1;
  wire UPDOWN_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_1;
  wire sys_clock_1;
  wire [15:0]xlconcat_0_dout;
  wire [15:0]xlconstant_0_dout;
  wire [7:0]xlconstant_1_dout;

  assign Data_In_1 = Data_In[7:0];
  assign LED[7:0] = SPI_Slave_0_DATA;
  assign MOSI = SPI_Master_0_MOSI;
  assign SS = SPI_Master_0_spi_ss;
  assign StartIn_1 = StartIn;
  assign StartOut = Comparateur_0_S;
  assign UPDOWN_1 = UPDOWN;
  assign reset_rtl_1 = reset_rtl;
  assign sclk = SPI_Master_0_spi_clk;
  assign sys_clock_1 = sys_clock;
  SPI_Comparateur_0_0 Comparateur_0
       (.A(Compteur_8bits_0_S),
        .B(xlconstant_0_dout),
        .S(Comparateur_0_S));
  SPI_Compteur_8bits_0_0 Compteur_8bits_0
       (.DOWNUP(UPDOWN_1),
        .H(N_Divider_0_Clk_Div),
        .RST(reset_rtl_1),
        .S(Compteur_8bits_0_S));
  SPI_N_Divider_0_0 N_Divider_0
       (.Clk_Div(N_Divider_0_Clk_Div),
        .clk(clk_wiz_0_clk_out1),
        .rst(reset_rtl_1));
  SPI_SPI_Master_0_0 SPI_Master_0
       (.Data_In(xlconcat_0_dout),
        .MOSI(SPI_Master_0_MOSI),
        .clk(N_Divider_0_Clk_Div),
        .rst(StartIn_1),
        .spi_clk(SPI_Master_0_spi_clk),
        .spi_ss(SPI_Master_0_spi_ss));
  SPI_SPI_Slave_0_0 SPI_Slave_0
       (.DATA(SPI_Slave_0_DATA),
        .SPI_CLK(SPI_Master_0_spi_clk),
        .SPI_CS(SPI_Master_0_spi_ss),
        .SPI_MOSI(SPI_Master_0_MOSI),
        .SPI_RST(StartIn_1));
  SPI_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  SPI_xlconcat_0_0 xlconcat_0
       (.In0(Data_In_1),
        .In1(xlconstant_1_dout),
        .dout(xlconcat_0_dout));
  SPI_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  SPI_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
