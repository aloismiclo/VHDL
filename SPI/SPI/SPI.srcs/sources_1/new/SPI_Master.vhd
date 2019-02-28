----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2019 14:33:32
-- Design Name: 
-- Module Name: SPI_Master - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_Master is
    generic (n : integer range 0 to 64 := 8);   -- paramètre générique -> SS width = n * clk period
    Port ( clk : in STD_LOGIC;      -- Basic clock (100MHz)
           rst : in STD_LOGIC;      -- System reset
           Data_In : in STD_LOGIC_VECTOR(n-1 downto 0);-- données à transmettre
           spi_clk : out STD_LOGIC;  -- SPI Clock
           spi_ss : out STD_LOGIC;  -- SPI Slave Select
           MOSI : out STD_LOGIC);   -- Master Output Slave Input
end SPI_Master;

architecture Behavioral of SPI_Master is

signal count : integer range 0 to 15;
signal i : integer range 0 to n-1;
signal spi_ss_tmp,spi_ss_tmp1 : std_logic;
signal mosi_tmp : std_logic;

begin
----------------------------------------------------------------------------|
-- Slave Select generation                                                --|
----------------------------------------------------------------------------|
process (clk, rst) -- counter incrementation process                      --|
begin                                                                     --|             
                                                                          --|
if (rst = '1') then                                                       --|
                                                                          --|
    count <= 0;   -- reset if rst = 1                                     --|
else if (clk'event and clk = '1') then -- rising edge incrementation      --|
    if (count < n+1) then                                                 --|
        count <= count + 1;                                               --|
    else                                                                  --|
        count <= count;                                                   --|  
        end if;                                                           --|
    end if;                                                               --|
end if;                                                                   --|
end process;                                                              --|
----------------------------------------------------------------------------|
spi_ss_tmp <= '0' when (count < n+1 and count > 0) else '1'; -- comparateur avec 8

process(clk)
begin
if(rst ='1') then
   spi_ss_tmp1 <= '1';

else if(clk 'event and clk ='0') then
   spi_ss_tmp1 <= spi_ss_tmp;
   end if;
end if;
end process;

spi_ss <= spi_ss_tmp1;

---------------------------------------------------------------------------------
-- Génération du SCLK
spi_clk <= not(spi_ss_tmp1) and clk;

----------------------------------------------------------------------------|
-- Parallel to serial conversion                                          --|
----------------------------------------------------------------------------|
process (clk, rst) -- counter incrementation process                      --|
begin        
if (rst = '1') then
    MOSI_tmp <= '0';
    i <= 0;
else if (clk'event and clk = '0') then
    if(spi_ss_tmp = '0') then
        mosi_tmp <= Data_In((n-1)-i);
        i <= i + 1;
    end if;
end if;
end if;                                                             --|             
        
end process;  

MOSI <= mosi_tmp;


end Behavioral;
