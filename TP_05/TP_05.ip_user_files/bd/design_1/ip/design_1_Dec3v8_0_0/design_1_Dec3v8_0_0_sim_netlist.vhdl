-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Dec  6 17:08:20 2018
-- Host        : POTATO-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/alois/Documents/Perso/M2_SE/VHDL/TP_05/TP_05.srcs/sources_1/bd/design_1/ip/design_1_Dec3v8_0_0/design_1_Dec3v8_0_0_sim_netlist.vhdl
-- Design      : design_1_Dec3v8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Dec3v8_0_0_Dec3v8 is
  port (
    E : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Dec3v8_0_0_Dec3v8 : entity is "Dec3v8";
end design_1_Dec3v8_0_0_Dec3v8;

architecture STRUCTURE of design_1_Dec3v8_0_0_Dec3v8 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[7]_INST_0\ : label is "soft_lutpair3";
begin
\S[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => E(2),
      I1 => E(0),
      I2 => E(1),
      O => S(0)
    );
\S[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => E(2),
      I1 => E(0),
      I2 => E(1),
      O => S(1)
    );
\S[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => E(0),
      I1 => E(1),
      I2 => E(2),
      O => S(2)
    );
\S[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => E(1),
      I1 => E(0),
      I2 => E(2),
      O => S(3)
    );
\S[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => E(0),
      I1 => E(2),
      I2 => E(1),
      O => S(4)
    );
\S[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => E(2),
      I1 => E(0),
      I2 => E(1),
      O => S(5)
    );
\S[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => E(1),
      I1 => E(2),
      I2 => E(0),
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => E(1),
      I1 => E(2),
      I2 => E(0),
      O => S(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Dec3v8_0_0 is
  port (
    E : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Dec3v8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Dec3v8_0_0 : entity is "design_1_Dec3v8_0_0,Dec3v8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Dec3v8_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Dec3v8_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Dec3v8_0_0 : entity is "Dec3v8,Vivado 2018.2";
end design_1_Dec3v8_0_0;

architecture STRUCTURE of design_1_Dec3v8_0_0 is
begin
U0: entity work.design_1_Dec3v8_0_0_Dec3v8
     port map (
      E(2 downto 0) => E(2 downto 0),
      S(7 downto 0) => S(7 downto 0)
    );
end STRUCTURE;
