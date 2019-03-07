----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2018 14:16:52
-- Design Name: 
-- Module Name: Dec3v8 - Behavioral
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

entity Dec3v8 is
    Port ( 
           E : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Dec3v8;

architecture Behavioral of Dec3v8 is
    

begin
 
 with E select 
    S <= X"01" when "000",
         X"02" when "001",
         X"04" when "010",
         X"08" when "011",
         X"10" when "100",
         X"20" when "101",
         X"40" when "110",
         X"80" when "111";
         
end Behavioral;
