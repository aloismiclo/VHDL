-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 14 13:50:55 2019
-- Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_Compteur_8bits_0_0_sim_netlist.vhdl
-- Design      : SPI_Compteur_8bits_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits is
  port (
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOWNUP : in STD_LOGIC;
    H : in STD_LOGIC;
    RST : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits is
  signal \^s\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0_n_2\ : STD_LOGIC;
  signal \plusOp__0_n_3\ : STD_LOGIC;
  signal \plusOp_i_1__0_n_0\ : STD_LOGIC;
  signal plusOp_i_1_n_0 : STD_LOGIC;
  signal \plusOp_i_2__0_n_0\ : STD_LOGIC;
  signal plusOp_i_2_n_0 : STD_LOGIC;
  signal \plusOp_i_3__0_n_0\ : STD_LOGIC;
  signal plusOp_i_3_n_0 : STD_LOGIC;
  signal plusOp_i_4_n_0 : STD_LOGIC;
  signal plusOp_i_5_n_0 : STD_LOGIC;
  signal plusOp_n_0 : STD_LOGIC;
  signal plusOp_n_1 : STD_LOGIC;
  signal plusOp_n_2 : STD_LOGIC;
  signal plusOp_n_3 : STD_LOGIC;
  signal tmp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_plusOp__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  S(7 downto 0) <= \^s\(7 downto 0);
plusOp: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_n_0,
      CO(2) => plusOp_n_1,
      CO(1) => plusOp_n_2,
      CO(0) => plusOp_n_3,
      CYINIT => \^s\(0),
      DI(3 downto 2) => \^s\(3 downto 2),
      DI(1) => \plusOp_i_1__0_n_0\,
      DI(0) => DOWNUP,
      O(3 downto 0) => tmp(4 downto 1),
      S(3) => plusOp_i_2_n_0,
      S(2) => plusOp_i_3_n_0,
      S(1) => plusOp_i_4_n_0,
      S(0) => plusOp_i_5_n_0
    );
\plusOp__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_n_0,
      CO(3 downto 2) => \NLW_plusOp__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp__0_n_2\,
      CO(0) => \plusOp__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^s\(5 downto 4),
      O(3) => \NLW_plusOp__0_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp(7 downto 5),
      S(3) => '0',
      S(2) => plusOp_i_1_n_0,
      S(1) => \plusOp_i_2__0_n_0\,
      S(0) => \plusOp_i_3__0_n_0\
    );
plusOp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s\(6),
      I1 => \^s\(7),
      O => plusOp_i_1_n_0
    );
\plusOp_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DOWNUP,
      O => \plusOp_i_1__0_n_0\
    );
plusOp_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s\(3),
      I1 => \^s\(4),
      O => plusOp_i_2_n_0
    );
\plusOp_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s\(5),
      I1 => \^s\(6),
      O => \plusOp_i_2__0_n_0\
    );
plusOp_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s\(2),
      I1 => \^s\(3),
      O => plusOp_i_3_n_0
    );
\plusOp_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s\(4),
      I1 => \^s\(5),
      O => \plusOp_i_3__0_n_0\
    );
plusOp_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOWNUP,
      I1 => \^s\(2),
      O => plusOp_i_4_n_0
    );
plusOp_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOWNUP,
      I1 => \^s\(1),
      O => plusOp_i_5_n_0
    );
\tmp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s\(0),
      O => tmp(0)
    );
\tmp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(0),
      Q => \^s\(0)
    );
\tmp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(1),
      Q => \^s\(1)
    );
\tmp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(2),
      Q => \^s\(2)
    );
\tmp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(3),
      Q => \^s\(3)
    );
\tmp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(4),
      Q => \^s\(4)
    );
\tmp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(5),
      Q => \^s\(5)
    );
\tmp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(6),
      Q => \^s\(6)
    );
\tmp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RST,
      D => tmp(7),
      Q => \^s\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    H : in STD_LOGIC;
    RST : in STD_LOGIC;
    DOWNUP : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_Compteur_8bits_0_0,Compteur_8bits,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Compteur_8bits,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Compteur_8bits
     port map (
      DOWNUP => DOWNUP,
      H => H,
      RST => RST,
      S(7 downto 0) => S(7 downto 0)
    );
end STRUCTURE;
