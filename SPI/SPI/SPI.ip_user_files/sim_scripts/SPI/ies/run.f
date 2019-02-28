-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2c27/src/SPI_Master.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_SPI_Master_0_0/sim/SPI_SPI_Master_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0_clk_wiz.v" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0.v" \
  "../../../../SPI.srcs/sources_1/bd/SPI/sim/SPI.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b88f/sim/N_Divider.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_N_Divider_0_0/sim/SPI_N_Divider_0_0.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/sim/Comparateur.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/src/Comparateur.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Comparateur_0_0/sim/SPI_Comparateur_0_0.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/sim/Compteur_8bits.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/src/Compteur_8bits.vhd" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Compteur_8bits_0_0/sim/SPI_Compteur_8bits_0_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_0_0/sim/SPI_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconcat_0_0/sim/SPI_xlconcat_0_0.v" \
  "../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_1_0/sim/SPI_xlconstant_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

