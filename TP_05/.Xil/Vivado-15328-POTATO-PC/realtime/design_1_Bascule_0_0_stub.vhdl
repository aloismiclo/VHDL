-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Bascule_0_0 is
  Port ( 
    H : in STD_LOGIC;
    RST : in STD_LOGIC;
    PREP : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_Bascule_0_0;

architecture stub of design_1_Bascule_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Bascule,Vivado 2018.2";
begin
end;
