// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Dec  6 18:07:14 2018
// Host        : POTATO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_N_Divider_0_0/design_1_N_Divider_0_0_sim_netlist.v
// Design      : design_1_N_Divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_N_Divider_0_0,N_Divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "N_Divider,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_N_Divider_0_0
   (rst,
    clk,
    Clk_Div);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk" *) input clk;
  output Clk_Div;

  wire Clk_Div;
  wire clk;
  wire rst;

  design_1_N_Divider_0_0_N_Divider U0
       (.Clk_Div(Clk_Div),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "N_Divider" *) 
module design_1_N_Divider_0_0_N_Divider
   (Clk_Div,
    clk,
    rst);
  output Clk_Div;
  input clk;
  input rst;

  wire Clk_Div;
  wire Clk_Div_INST_0_i_1_n_0;
  wire Clk_Div_INST_0_i_2_n_0;
  wire Clk_Div_INST_0_i_3_n_0;
  wire Clk_Div_INST_0_i_4_n_0;
  wire Clk_Div_INST_0_i_5_n_0;
  wire Clk_Div_INST_0_i_6_n_0;
  wire clk;
  wire count1;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1__0_n_0;
  wire count1_carry_i_1__1_n_0;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2__0_n_0;
  wire count1_carry_i_2__1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3__0_n_0;
  wire count1_carry_i_3__1_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4__0_n_0;
  wire count1_carry_i_4__1_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5__0_n_0;
  wire count1_carry_i_5__1_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6__0_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7__0_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_i_8_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [26:6]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire rst;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFAABFAABFAAAAAA)) 
    Clk_Div_INST_0
       (.I0(count_reg[26]),
        .I1(Clk_Div_INST_0_i_1_n_0),
        .I2(Clk_Div_INST_0_i_2_n_0),
        .I3(count_reg[25]),
        .I4(count_reg[23]),
        .I5(count_reg[24]),
        .O(Clk_Div));
  LUT3 #(
    .INIT(8'h01)) 
    Clk_Div_INST_0_i_1
       (.I0(count_reg[24]),
        .I1(count_reg[22]),
        .I2(Clk_Div_INST_0_i_3_n_0),
        .O(Clk_Div_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF222A)) 
    Clk_Div_INST_0_i_2
       (.I0(Clk_Div_INST_0_i_4_n_0),
        .I1(count_reg[8]),
        .I2(count_reg[7]),
        .I3(count_reg[6]),
        .I4(Clk_Div_INST_0_i_5_n_0),
        .I5(Clk_Div_INST_0_i_6_n_0),
        .O(Clk_Div_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hEA00AA00AA00AA00)) 
    Clk_Div_INST_0_i_3
       (.I0(count_reg[20]),
        .I1(count_reg[17]),
        .I2(count_reg[19]),
        .I3(count_reg[21]),
        .I4(count_reg[16]),
        .I5(count_reg[18]),
        .O(Clk_Div_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Clk_Div_INST_0_i_4
       (.I0(count_reg[9]),
        .I1(count_reg[14]),
        .I2(count_reg[12]),
        .I3(count_reg[11]),
        .O(Clk_Div_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    Clk_Div_INST_0_i_5
       (.I0(count_reg[18]),
        .I1(count_reg[15]),
        .I2(count_reg[14]),
        .I3(count_reg[13]),
        .I4(count_reg[19]),
        .O(Clk_Div_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    Clk_Div_INST_0_i_6
       (.I0(count_reg[10]),
        .I1(count_reg[14]),
        .I2(count_reg[11]),
        .I3(count_reg[12]),
        .I4(count_reg[21]),
        .I5(count_reg[17]),
        .O(Clk_Div_INST_0_i_6_n_0));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_4__1_n_0,count1_carry_i_5__1_n_0,count1_carry_i_6__0_n_0,count1_carry_i_7__0_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry_i_1__1_n_0,count1_carry_i_2__0_n_0,count1_carry_i_3__1_n_0,count1_carry_i_4__0_n_0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_5__0_n_0,count1_carry_i_6_n_0,count1_carry_i_7_n_0,count1_carry_i_8_n_0}));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1__0_n_0,count1_carry_i_2__1_n_0,count1_carry_i_3__0_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[26],count1_carry_i_4_n_0,count1_carry_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_1
       (.I0(count_reg[11]),
        .O(count1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_1__0
       (.I0(count_reg[26]),
        .O(count1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1__1
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count1_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_2
       (.I0(count_reg[9]),
        .O(count1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_2__0
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2__1
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count1_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_3
       (.I0(count_reg[7]),
        .O(count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__0
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__1
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_4__0
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_4__1
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(count1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_5
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_5__0
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_5__1
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_6
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6__0
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_7
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_7__0
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_8
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2 
       (.I0(count1),
        .I1(\count_reg_n_0_[3] ),
        .O(\count[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_3 
       (.I0(count1),
        .I1(\count_reg_n_0_[2] ),
        .O(\count[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_4 
       (.I0(count1),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[0] ),
        .I1(count1),
        .O(\count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_2 
       (.I0(count1),
        .I1(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_3 
       (.I0(count1),
        .I1(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_4 
       (.I0(count1),
        .I1(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_5 
       (.I0(count1),
        .I1(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_2 
       (.I0(count1),
        .I1(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_3 
       (.I0(count1),
        .I1(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_4 
       (.I0(count1),
        .I1(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_5 
       (.I0(count1),
        .I1(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_2 
       (.I0(count1),
        .I1(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_3 
       (.I0(count1),
        .I1(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_4 
       (.I0(count1),
        .I1(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_5 
       (.I0(count1),
        .I1(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_2 
       (.I0(count1),
        .I1(count_reg[26]),
        .O(\count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_3 
       (.I0(count1),
        .I1(count_reg[25]),
        .O(\count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_4 
       (.I0(count1),
        .I1(count_reg[24]),
        .O(\count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_2 
       (.I0(count1),
        .I1(count_reg[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_3 
       (.I0(count1),
        .I1(count_reg[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_4 
       (.I0(count1),
        .I1(\count_reg_n_0_[5] ),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5 
       (.I0(count1),
        .I1(\count_reg_n_0_[4] ),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_2 
       (.I0(count1),
        .I1(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_3 
       (.I0(count1),
        .I1(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_4 
       (.I0(count1),
        .I1(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_5 
       (.I0(count1),
        .I1(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_2_n_0 ,\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 }));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDCE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]));
  FDCE \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\NLW_count_reg[24]_i_1_CO_UNCONNECTED [3:2],\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[24]_i_1_O_UNCONNECTED [3],\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({1'b0,\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 }));
  FDCE \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]));
  FDCE \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
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
