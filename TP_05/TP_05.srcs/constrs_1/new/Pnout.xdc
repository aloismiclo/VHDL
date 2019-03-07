# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "H"

# ----------------------------------------------------------------------------
# JA Pmod - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y11  [get_ports {clk_div}];  # "JA1"
set_property PACKAGE_PIN AA11 [get_ports {clk_div_in}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {S[2]}];  # "JA3"
#set_property PACKAGE_PIN AA9  [get_ports {S[3]}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {JA7}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {JA8}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {JA9}];  # "JA9"
#set_property PACKAGE_PIN AA8  [get_ports {JA10}];  # "JA10"

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {LEDS[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {LEDS[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {LEDS[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {LEDS[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {LEDS[4]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {LEDS[5]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {LEDS[6]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {LEDS[7]}];  # "LD7"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
set_property PACKAGE_PIN N15 [get_ports {rst}];  # "BTNL"
set_property PACKAGE_PIN R18 [get_ports {PREP}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

# ----------------------------------------------------------------------------
# User DIP Switches - Bank 35
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN F22 [get_ports {UPDOWN}];  # "SW0"
#set_property PACKAGE_PIN G22 [get_ports {E[1]}];  # "SW1"
#set_property PACKAGE_PIN H22 [get_ports {E[2]}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {E[3]}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {SW4}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {SW5}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {SW6}];  # "SW6"
#set_property PACKAGE_PIN M15 [get_ports {SW7}];  # "SW7"

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
