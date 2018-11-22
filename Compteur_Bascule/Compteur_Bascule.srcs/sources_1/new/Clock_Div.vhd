----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2018 15:33:27
-- Design Name: 
-- Module Name: Clock_Div - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_Div is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (19 downto 0));
end Clock_Div;

architecture Behavioral of Clock_Div is

signal tmp : std_logic_vector(19 downto 0);

begin
process(Clk,Reset)
begin
    if(Reset = '1')then                  --reset asynchrone
        tmp <= (others => '0');
    else if (Clk'event and Clk = '1') then -- rising_edge(H);
            tmp <= tmp + 1;            -- incrementation synchrone
    end if;
end if;
end process;

Q <= tmp;

end Behavioral;
