-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Dec  6 18:07:14 2018
-- Host        : POTATO-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_N_Divider_0_0/design_1_N_Divider_0_0_stub.vhdl
-- Design      : design_1_N_Divider_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_N_Divider_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Clk_Div : out STD_LOGIC
  );

end design_1_N_Divider_0_0;

architecture stub of design_1_N_Divider_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,Clk_Div";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "N_Divider,Vivado 2018.2";
begin
end;
