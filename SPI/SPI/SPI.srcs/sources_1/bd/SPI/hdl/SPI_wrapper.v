//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Feb 21 16:53:26 2019
//Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
//Command     : generate_target SPI_wrapper.bd
//Design      : SPI_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SPI_wrapper
   (Data_In,
    MOSI,
    SS,
    StartIn,
    StartOut,
    UPDOWN,
    reset_rtl,
    sclk,
    sys_clock);
  input [7:0]Data_In;
  output MOSI;
  output SS;
  input StartIn;
  output StartOut;
  input UPDOWN;
  input reset_rtl;
  output sclk;
  input sys_clock;

  wire [7:0]Data_In;
  wire MOSI;
  wire SS;
  wire StartIn;
  wire StartOut;
  wire UPDOWN;
  wire reset_rtl;
  wire sclk;
  wire sys_clock;

  SPI SPI_i
       (.Data_In(Data_In),
        .MOSI(MOSI),
        .SS(SS),
        .StartIn(StartIn),
        .StartOut(StartOut),
        .UPDOWN(UPDOWN),
        .reset_rtl(reset_rtl),
        .sclk(sclk),
        .sys_clock(sys_clock));
endmodule
