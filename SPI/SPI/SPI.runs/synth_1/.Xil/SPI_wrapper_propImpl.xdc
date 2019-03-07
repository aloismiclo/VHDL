set_property SRC_FILE_INFO {cfile:c:/Users/alois/OneDrive/Documents/Perso/M2_SE/VHDL/SPI/SPI/SPI.srcs/sources_1/bd/SPI/ip/SPI_SPI_Master_0_0/src/zedboard_master_XDC_RevC_D_v3.xdc rfile:../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_SPI_Master_0_0/src/zedboard_master_XDC_RevC_D_v3.xdc id:1 order:EARLY scoped_inst:SPI_i/SPI_Master_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/alois/OneDrive/Documents/Perso/M2_SE/VHDL/SPI/SPI/SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0.xdc rfile:../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0.xdc id:2 order:EARLY scoped_inst:SPI_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/alois/Downloads/zedboard_master_XDC_RevC_D_v3.xdc rfile:../../../../../../../../../../Downloads/zedboard_master_XDC_RevC_D_v3.xdc id:3} [current_design]
current_instance SPI_i/SPI_Master_0/U0
set_property src_info {type:SCOPED_XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
set_property src_info {type:SCOPED_XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11  [get_ports {spi_ss}];  # "JA1"
set_property src_info {type:SCOPED_XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA11 [get_ports {spi_clk}];  # "JA2"
set_property src_info {type:SCOPED_XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y10  [get_ports {MOSI}];  # "JA3"
set_property src_info {type:SCOPED_XDC file:1 line:237 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F22 [get_ports {rst}];  # "SW0"
set_property src_info {type:SCOPED_XDC file:1 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:SCOPED_XDC file:1 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:SCOPED_XDC file:1 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:SCOPED_XDC file:1 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
current_instance
current_instance SPI_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
current_instance
set_property src_info {type:XDC file:3 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F22 [get_ports {Data_In[0]}];  # "SW0"
set_property src_info {type:XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G22 [get_ports {Data_In[1]}];  # "SW1"
set_property src_info {type:XDC file:3 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H22 [get_ports {Data_In[2]}];  # "SW2"
set_property src_info {type:XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F21 [get_ports {Data_In[3]}];  # "SW3"
set_property src_info {type:XDC file:3 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H19 [get_ports {Data_In[4]}];  # "SW4"
set_property src_info {type:XDC file:3 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H18 [get_ports {Data_In[5]}];  # "SW5"
set_property src_info {type:XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H17 [get_ports {Data_In[6]}];  # "SW6"
set_property src_info {type:XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M15 [get_ports {Data_In[7]}];  # "SW7"
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R16 [get_ports {reset_rtl}]
set_property src_info {type:XDC file:3 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R18 [get_ports {UPDOWN}]
set_property src_info {type:XDC file:3 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11  [get_ports sclk];  # "JA1"
set_property src_info {type:XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y10  [get_ports SS];  # "JA10"
set_property src_info {type:XDC file:3 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA11 [get_ports MOSI];  # "JA2"
set_property src_info {type:XDC file:3 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB10 [get_ports {StartIn}];  # "JA8"
set_property src_info {type:XDC file:3 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB9  [get_ports {StartOut}];  # "JA9"
set_property src_info {type:XDC file:3 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports {LED[7]}];  # "LD0"
set_property src_info {type:XDC file:3 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T21 [get_ports {LED[6]}];  # "LD1"
set_property src_info {type:XDC file:3 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U22 [get_ports {LED[5]}];  # "LD2"
set_property src_info {type:XDC file:3 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U21 [get_ports {LED[4]}];  # "LD3"
set_property src_info {type:XDC file:3 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V22 [get_ports {LED[3]}];  # "LD4"
set_property src_info {type:XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W22 [get_ports {LED[2]}];  # "LD5"
set_property src_info {type:XDC file:3 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U19 [get_ports {LED[1]}];  # "LD6"
set_property src_info {type:XDC file:3 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U14 [get_ports {LED[0]}];  # "LD7"
set_property src_info {type:XDC file:3 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:3 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:3 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:3 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
