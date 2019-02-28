vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/xlconcat_v2_1_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2c27/src/SPI_Master.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_SPI_Master_0_0/sim/SPI_SPI_Master_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0_clk_wiz.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/sim/SPI.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b88f/sim/N_Divider.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_N_Divider_0_0/sim/SPI_N_Divider_0_0.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/sim/Comparateur.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/src/Comparateur.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Comparateur_0_0/sim/SPI_Comparateur_0_0.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/sim/Compteur_8bits.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/src/Compteur_8bits.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Compteur_8bits_0_0/sim/SPI_Compteur_8bits_0_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_0_0/sim/SPI_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconcat_0_0/sim/SPI_xlconcat_0_0.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_1_0/sim/SPI_xlconstant_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

