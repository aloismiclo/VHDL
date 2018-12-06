----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2018 14:43:31
-- Design Name: 
-- Module Name: Test_DEC3v8 - Behavioral
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

entity Test_DEC3v8 is
 --   Port ( );
end Test_DEC3v8;

architecture Behavioral of Test_DEC3v8 is

component Dec3v8 is
    Port ( 
           E : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end component Dec3v8;

    signal S_E : std_logic_vector (2 downto 0);
    signal S_S : std_logic_vector (7 downto 0);

begin

    UUT : Dec3v8 port map (E => S_E, S => S_S);
    
    process 
    begin 
    
        S_E <= "000";
        wait for 100 ns;
        S_E <= "001";
        wait for 100 ns;
        S_E <= "010";
        wait for 100 ns;
        S_E <= "011";
        wait for 100 ns;
        S_E <= "100";
        wait for 100 ns;
        S_E <= "101";
        wait for 100 ns;
        S_E <= "110";
        wait for 100 ns;
        S_E <= "111";
        wait for 100 ns;
    end process;  
end Behavioral;
