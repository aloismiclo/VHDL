----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2019 17:17:59
-- Design Name: 
-- Module Name: SPI_Slave - Behavioral
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

entity SPI_Slave is
    generic (n: integer range 1 to 64 :=8);
    Port ( SPI_CLK : in STD_LOGIC;
           SPI_MOSI : in STD_LOGIC;
           SPI_CS : in STD_LOGIC;
           SPI_RST : in STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (n-1 downto 0)); -- ajouter reset
           
end SPI_Slave;



architecture Behavioral of SPI_Slave is
shared variable i : integer range 0 to n-1 := 0;


begin

process (SPI_CLK,SPI_RST)
begin 
    if(SPI_RST = '1') then
        i := 0;
    else if(rising_edge(SPI_CLK)) then 
        if (SPI_CS = '0') then
            DATA(i) <= SPI_MOSI;
            i := i + 1;
        end if;
    end if;    
    end if;
end process;    

end Behavioral;
