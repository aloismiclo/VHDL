----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2018 16:50:15
-- Design Name: 
-- Module Name: test_Bascule - Behavioral
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

entity test_Bascule is
   -- Port ( );
end test_Bascule;

architecture Behavioral of test_Bascule is

component Bascule is
    Port ( H : in STD_LOGIC;
           RST : in STD_LOGIC;
           PREP : in STD_LOGIC;
           E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component Bascule;

    signal S_RST : std_logic;
    signal S_H : std_logic;
    Signal S_PREP : std_logic;
    signal S_E : std_logic_vector (3 downto 0);
    signal S_S : std_logic_vector (3 downto 0);

begin

    UUT: Bascule port map (H => S_H, RST => S_RST, PREP => S_PREP, E => S_E, S => S_S);
    
    process
    begin
        S_H <= '1';
        wait for 50ns;
        S_H <= '0';
        wait for 50ns;
    end process;      

    process
    begin
        S_RST <= '0';
        wait for 100ns;
        S_RST <= '1';
        wait for 10ms;
    end process;
    
    process 
    begin 
        S_PREP <= '0';
        S_E <= "0010";
        wait for 110 ns;
        S_PREP <= '1';
        wait for 2 ms;
    end process;

end Behavioral;
