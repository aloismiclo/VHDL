
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

entity Compteur_8bits is
    generic ( N: integer range 1 to 64 :=16);
    Port ( H : in STD_LOGIC;
           RST : in STD_LOGIC;
           DOWNUP : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (N-1 downto 0));
end Compteur_8bits;

architecture Behavioral of Compteur_8bits is

signal tmp : std_logic_vector (N-1 downto 0);


begin
process(H,RST,DOWNUP)
begin
    if(RST = '1') then  
        tmp <= (others => '0');
    else if(H'event and H='1') then
        if(DOWNUP = '0') then
            tmp <= tmp + 1;
        else
            tmp <= tmp - 1;
        end if;
    end if;
end if;
end process;
    
s <= tmp;

end Behavioral;




