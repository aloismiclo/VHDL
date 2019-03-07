library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_Slave_tb is
--  Port ( );
end SPI_Slave_tb;



architecture Behavioral of SPI_Slave_tb is

component SPI_Slave is
    Port ( SPI_CLK : in STD_LOGIC;
           SPI_MOSI : in STD_LOGIC;
           SPI_CS : in STD_LOGIC;
           SPI_RST : in STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (7 downto 0)); -- ajouter reset
           
end component SPI_Slave;

signal clk, rst, cs, mosi : std_logic;
signal data_s : std_logic_vector(7 downto 0);

begin

SPI_SLAVE_INST: SPI_Slave 
    port map(
        SPI_CLK => clk,
        SPI_MOSI => mosi,
        SPI_CS => cs,
        SPI_RST => rst,
        DATA => data_s);
        
        
    process 
        begin
        clk <= '0';
        wait for 50ns;
        clk <= '1';
        wait for 50ns;    
    end process;        
        
    process
        begin
        rst <= '0';
        cs <= '0';
        mosi <= '0';
        wait for 50ns;
        mosi <= '1';
        wait for 100ns;
        mosi <= '0';
        wait for 100ns;
        mosi <= '1';
        wait for 100ns;
        mosi <= '0';
        wait for 100ns;
        mosi <= '1';
        wait for 100ns;
        mosi <= '0';
        wait for 100ns;
        mosi <= '1';
        wait for 100ns;
        mosi <= '0';
        wait for 100ns;
    end process;
end Behavioral;
