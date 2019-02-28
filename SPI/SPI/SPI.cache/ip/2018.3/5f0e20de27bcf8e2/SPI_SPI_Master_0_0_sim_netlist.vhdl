-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 14 13:50:55 2019
-- Host        : DESKTOP-P49MTKL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_SPI_Master_0_0_sim_netlist.vhdl
-- Design      : SPI_SPI_Master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Data_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_ss : out STD_LOGIC;
    MOSI : out STD_LOGIC
  );
  attribute n : integer;
  attribute n of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master is
  signal count0 : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal mosi_tmp_i_3_n_0 : STD_LOGIC;
  signal mosi_tmp_i_4_n_0 : STD_LOGIC;
  signal mosi_tmp_reg_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^spi_ss\ : STD_LOGIC;
  signal spi_ss_tmp1_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair1";
begin
  spi_ss <= \^spi_ss\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      O => count0
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count0,
      CLR => rst,
      D => \p_0_in__0\(0),
      Q => \count_reg__0\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count0,
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => \count_reg__0\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count0,
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => \count_reg__0\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count0,
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => \count_reg__0\(3)
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(0),
      O => \i[0]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => p_1_in(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      O => p_1_in(2)
    );
\i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \i[0]_i_1_n_0\,
      Q => i(0)
    );
\i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(1),
      Q => i(1)
    );
\i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(2),
      Q => i(2)
    );
mosi_tmp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(3),
      O => p_0_in
    );
mosi_tmp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_In(4),
      I1 => Data_In(5),
      I2 => i(1),
      I3 => Data_In(6),
      I4 => i(0),
      I5 => Data_In(7),
      O => mosi_tmp_i_3_n_0
    );
mosi_tmp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_In(0),
      I1 => Data_In(1),
      I2 => i(1),
      I3 => Data_In(2),
      I4 => i(0),
      I5 => Data_In(3),
      O => mosi_tmp_i_4_n_0
    );
mosi_tmp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => mosi_tmp_reg_i_2_n_0,
      Q => MOSI
    );
mosi_tmp_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_tmp_i_3_n_0,
      I1 => mosi_tmp_i_4_n_0,
      O => mosi_tmp_reg_i_2_n_0,
      S => i(2)
    );
spi_clk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk,
      I1 => \^spi_ss\,
      O => spi_clk
    );
spi_ss_tmp1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(2),
      O => spi_ss_tmp1_i_1_n_0
    );
spi_ss_tmp1_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_ss_tmp1_i_1_n_0,
      PRE => rst,
      Q => \^spi_ss\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Data_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_ss : out STD_LOGIC;
    MOSI : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_SPI_Master_0_0,SPI_Master,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_Master,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute n : integer;
  attribute n of U0 : label is 8;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN SPI_SPI_Master_0_0_spi_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master
     port map (
      Data_In(7 downto 0) => Data_In(7 downto 0),
      MOSI => MOSI,
      clk => clk,
      rst => rst,
      spi_clk => spi_clk,
      spi_ss => spi_ss
    );
end STRUCTURE;
