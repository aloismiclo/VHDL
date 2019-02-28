-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jan 31 15:42:00 2019
-- Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_Comparateur_0_0_sim_netlist.vhdl
-- Design      : SPI_Comparateur_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur is
  port (
    S : out STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur is
  signal S_INST_0_i_1_n_0 : STD_LOGIC;
  signal S_INST_0_i_2_n_0 : STD_LOGIC;
  signal S_INST_0_i_3_n_0 : STD_LOGIC;
  signal S_INST_0_i_4_n_0 : STD_LOGIC;
  signal S_INST_0_i_5_n_0 : STD_LOGIC;
  signal S_INST_0_i_6_n_0 : STD_LOGIC;
  signal S_INST_0_i_7_n_0 : STD_LOGIC;
  signal S_INST_0_i_8_n_0 : STD_LOGIC;
  signal S_INST_0_n_1 : STD_LOGIC;
  signal S_INST_0_n_2 : STD_LOGIC;
  signal S_INST_0_n_3 : STD_LOGIC;
  signal NLW_S_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
S_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => S,
      CO(2) => S_INST_0_n_1,
      CO(1) => S_INST_0_n_2,
      CO(0) => S_INST_0_n_3,
      CYINIT => '0',
      DI(3) => S_INST_0_i_1_n_0,
      DI(2) => S_INST_0_i_2_n_0,
      DI(1) => S_INST_0_i_3_n_0,
      DI(0) => S_INST_0_i_4_n_0,
      O(3 downto 0) => NLW_S_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => S_INST_0_i_5_n_0,
      S(2) => S_INST_0_i_6_n_0,
      S(1) => S_INST_0_i_7_n_0,
      S(0) => S_INST_0_i_8_n_0
    );
S_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => A(7),
      I3 => B(7),
      O => S_INST_0_i_1_n_0
    );
S_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => A(5),
      I3 => B(5),
      O => S_INST_0_i_2_n_0
    );
S_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => A(3),
      I3 => B(3),
      O => S_INST_0_i_3_n_0
    );
S_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      O => S_INST_0_i_4_n_0
    );
S_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => B(7),
      I3 => A(7),
      O => S_INST_0_i_5_n_0
    );
S_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => B(5),
      I3 => A(5),
      O => S_INST_0_i_6_n_0
    );
S_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(3),
      I3 => A(3),
      O => S_INST_0_i_7_n_0
    );
S_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => B(1),
      I3 => A(1),
      O => S_INST_0_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_Comparateur_0_0,Comparateur,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Comparateur,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparateur
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(7 downto 0) => B(7 downto 0),
      S => S
    );
end STRUCTURE;
