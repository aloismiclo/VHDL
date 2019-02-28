----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2019 15:05:21
-- Design Name: 
-- Module Name: SPI_Master_TB - Behavioral
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

entity SPI_Master_TB is
--  Port ( );
end SPI_Master_TB;

architecture Behavioral of SPI_Master_TB is

component SPI_Master is
    generic (n : integer range 0 to 64 := 8);   -- paramètre générique -> SS width = n * clk period
    Port ( clk : in STD_LOGIC;      -- Basic clock (100MHz)
           rst : in STD_LOGIC;      -- System reset
           Data_In : in STD_LOGIC_VECTOR(n-1 downto 0);-- données à transmettre
           spi_clk : in STD_LOGIC;  -- SPI Clock
           spi_ss : out STD_LOGIC;  -- SPI Slave Select
           MOSI : out STD_LOGIC);   -- Master Output Slave Input
end component SPI_Master;

    signal clk_s, rst_s, spi_clk_s, spi_ss_s, MOSI_s : std_logic;
    signal Data_In_s : std_logic_vector(7 downto 0);

begin
    UUT : SPI_Master generic map (n => 8)
                     port map ( clk => clk_s, rst => rst_s, Data_In => Data_In_s, spi_clk => spi_clk_s, spi_ss => spi_ss_s, MOSI => MOSI_s);
    
    process 
    begin
        clk_s <= '1';
        wait for 100 ns;
        clk_s <= '0';
        wait for 100ns;
    end process;
    
    process
    begin
        Data_In_s <= "10000001";
    
        rst_s <= '1';
        wait for 1us;
        rst_s <= '0';
        wait;
    end process;

end Behavioral;
