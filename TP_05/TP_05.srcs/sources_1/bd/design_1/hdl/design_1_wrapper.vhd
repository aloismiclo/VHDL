--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Dec  6 18:06:22 2018
--Host        : POTATO-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PREP : in STD_LOGIC;
    UPDOWN : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_div : out STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PREP : in STD_LOGIC;
    clk_div : out STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    UPDOWN : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LEDS(7 downto 0) => LEDS(7 downto 0),
      PREP => PREP,
      UPDOWN => UPDOWN,
      clk => clk,
      clk_div => clk_div,
      clk_div_in => clk_div_in,
      rst => rst
    );
end STRUCTURE;
