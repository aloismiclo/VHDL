----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2018 15:48:07
-- Design Name: 
-- Module Name: Global - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Global is
    Port ( RST : in STD_LOGIC;
           PREP : in STD_LOGIC;
           CLK : in STD_LOGIC;
           E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Global;


architecture Behavioral of Global is

component Dec3v8 is
    Port ( 
           E : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end component Dec3v8;

component Bascule is
    Port ( H : in STD_LOGIC;
           RST : in STD_LOGIC;
           PREP : in STD_LOGIC;
           E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component Bascule;

component N_Divider is
    generic (N : integer := 7);
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Clk_Div : out STD_LOGIC);
end component N_Divider;

--component Clock_Div is
--    Port ( Clk : in STD_LOGIC;
--           Reset : in STD_LOGIC;
--           Q : out STD_LOGIC_VECTOR (19 downto 0));
--end component Clock_Div;

signal tmp : std_logic;
signal S_tmp : std_logic_vector (3 downto 0);

begin

    N_Divider_inst : N_Divider
        generic map (N => 100000000)
        port map (clk => CLK, 
                  rst => RST,
                  Clk_Div => tmp);
        
    Bascule_inst : Bascule
        port map (h => tmp, 
                  rst => rst,
                  prep => prep,
                  E => E,
                  S => S_tmp);
    
    Dec3v8_inst : Dec3v8
        port map (E => S_tmp(3 downto 1),
                  S => S);

end Behavioral;
