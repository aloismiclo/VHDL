----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2018 16:51:18
-- Design Name: 
-- Module Name: N_Divider - Behavioral
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

entity N_Divider is
    generic (N : integer := 7);
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Clk_Div : out STD_LOGIC);
end N_Divider;

architecture Behavioral of N_Divider is

signal count : integer range 0 to N;

begin
process(clk,rst)
begin
    if(rst = '1')then                  --reset asynchrone
        count <= 0;
    else if (clk'event and clk = '1') then -- rising_edge(H);
        if (count < N) then 
            count <= count + 1;            -- incrementation synchrone
        else
            count <= 0;
        end if;
    end if;
end if;
end process;

Clk_Div <= '0' when (count < N/2) else '1';

end Behavioral;
