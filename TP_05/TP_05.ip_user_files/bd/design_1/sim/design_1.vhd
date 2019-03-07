--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Dec  6 17:27:06 2018
--Host        : POTATO-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PREP : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_Dec3v8_0_0 is
  port (
    E : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_Dec3v8_0_0;
  component design_1_Bascule_0_0 is
  port (
    H : in STD_LOGIC;
    RST : in STD_LOGIC;
    PREP : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_Bascule_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_N_Divider_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Clk_Div : out STD_LOGIC
  );
  end component design_1_N_Divider_0_0;
  signal Bascule_0_S : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dec3v8_0_S : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal N_Divider_0_Clk_Div : STD_LOGIC;
  signal PREP_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW";
begin
  LEDS(7 downto 0) <= Dec3v8_0_S(7 downto 0);
  PREP_1 <= PREP;
  clk_1 <= clk;
  rst_1 <= rst;
Bascule_0: component design_1_Bascule_0_0
     port map (
      E(3 downto 0) => xlconstant_0_dout(3 downto 0),
      H => N_Divider_0_Clk_Div,
      PREP => PREP_1,
      RST => rst_1,
      S(3 downto 0) => Bascule_0_S(3 downto 0)
    );
Dec3v8_0: component design_1_Dec3v8_0_0
     port map (
      E(2 downto 0) => Bascule_0_S(2 downto 0),
      S(7 downto 0) => Dec3v8_0_S(7 downto 0)
    );
N_Divider_0: component design_1_N_Divider_0_0
     port map (
      Clk_Div => N_Divider_0_Clk_Div,
      clk => clk_1,
      rst => rst_1
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
end STRUCTURE;
