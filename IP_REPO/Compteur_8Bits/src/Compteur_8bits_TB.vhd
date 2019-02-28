library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Compteur_8bits_TB is

end Compteur_8bits_TB;


architecture Behavioral of Compteur_8bits_TB is

component Compteur_8bits is
    Port ( H : in STD_LOGIC;
           RST : in STD_LOGIC;
           DOWNUP : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0));
end component Compteur_8bits;

    signal S_H : std_logic;
    signal S_RST : std_logic;
    signal S_DOWNUP : std_logic;
    signal S_S : std_logic_vector (7 downto 0);
    
begin
    
    UUT : Compteur_8bits port map (H => S_H , S => S_S, RST => S_RST, DOWNUP => S_DOWNUP);
    
    process
    begin
        S_H <= '1';
        wait for 100ns;
        S_H <= '0';
        wait for 100ns;
    end process;
    
    process 
    begin
        S_RST <= '1';
        wait for  100ns;
        S_RST <= '0';
        wait;
    end process;
    
        process 
    begin
        S_DOWNUP <= '0';
        wait for  10us;
        S_DOWNUP <= '1';
        wait for 10us;
    end process;

end Behavioral;




