----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2018 16:12:24
-- Design Name: 
-- Module Name: Bascule - Behavioral
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

entity Bascule is
    Port ( H : in STD_LOGIC;
           RST : in STD_LOGIC;
           PREP : in STD_LOGIC;
           E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Bascule;

architecture Behavioral of Bascule is

signal tmp : std_logic_vector(3 downto 0);

begin
process(H,RST)
begin
    if(RST = '1')then                  --reset asynchrone
        tmp <= "0000";                 -- tmp <= (others => '0');
    else if (H'event and H = '1') then -- rising_edge(H);
        if (PREP = '1') then           --chargement synchrone;
            tmp <= E;
        else
            tmp <= tmp + 1;            -- incrementation synchrone
        end if;
    end if;
end if;
end process;

S <= tmp;


end Behavioral;
