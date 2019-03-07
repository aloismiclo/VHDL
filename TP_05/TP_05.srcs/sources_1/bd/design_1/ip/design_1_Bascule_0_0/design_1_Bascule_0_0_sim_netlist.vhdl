-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Dec  6 18:08:00 2018
-- Host        : POTATO-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_Bascule_0_0/design_1_Bascule_0_0_sim_netlist.vhdl
-- Design      : design_1_Bascule_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Bascule_0_0_Bascule is
  port (
    H : in STD_LOGIC;
    RST : in STD_LOGIC;
    PREP : in STD_LOGIC;
    UPDOWN : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Bascule_0_0_Bascule : entity is "Bascule";
end design_1_Bascule_0_0_Bascule;

architecture STRUCTURE of design_1_Bascule_0_0_Bascule is
  signal \^s\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tmp[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp[3]_i_2\ : label is "soft_lutpair0";
begin
  S(3 downto 0) <= \^s\(3 downto 0);
\tmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => E(0),
      I1 => PREP,
      I2 => \^s\(0),
      O => p_0_in(0)
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B88B"
    )
        port map (
      I0 => E(1),
      I1 => PREP,
      I2 => \^s\(0),
      I3 => \^s\(1),
      I4 => UPDOWN,
      O => p_0_in(1)
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => E(2),
      I1 => PREP,
      I2 => \^s\(0),
      I3 => \^s\(1),
      I4 => \^s\(2),
      I5 => UPDOWN,
      O => p_0_in(2)
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => E(3),
      I1 => PREP,
      I2 => \tmp[3]_i_2_n_0\,
      I3 => UPDOWN,
      I4 => \^s\(3),
      I5 => \^s\(2),
      O => p_0_in(3)
    );
\tmp[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => UPDOWN,
      I1 => \^s\(1),
      I2 => \^s\(0),
      O => \tmp[3]_i_2_n_0\
    );
\tmp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => p_0_in(0),
      Q => \^s\(0)
    );
\tmp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => p_0_in(1),
      Q => \^s\(1)
    );
\tmp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => p_0_in(2),
      Q => \^s\(2)
    );
\tmp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => p_0_in(3),
      Q => \^s\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Bascule_0_0 is
  port (
    H : in STD_LOGIC;
    RST : in STD_LOGIC;
    PREP : in STD_LOGIC;
    UPDOWN : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Bascule_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Bascule_0_0 : entity is "design_1_Bascule_0_0,Bascule,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Bascule_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Bascule_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Bascule_0_0 : entity is "Bascule,Vivado 2018.2";
end design_1_Bascule_0_0;

architecture STRUCTURE of design_1_Bascule_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_Bascule_0_0_Bascule
     port map (
      E(3 downto 0) => E(3 downto 0),
      H => H,
      PREP => PREP,
      RST => RST,
      S(3 downto 0) => S(3 downto 0),
      UPDOWN => UPDOWN
    );
end STRUCTURE;
