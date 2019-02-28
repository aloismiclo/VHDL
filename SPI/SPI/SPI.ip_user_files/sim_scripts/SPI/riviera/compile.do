vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xlconstant_v1_1_5
vlib riviera/xlconcat_v2_1_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2c27/src/SPI_Master.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_SPI_Master_0_0/sim/SPI_SPI_Master_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0_clk_wiz.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_clk_wiz_0_0/SPI_clk_wiz_0_0.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/sim/SPI.v" \

vcom -work xil_defaultlib -93 \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b88f/sim/N_Divider.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_N_Divider_0_0/sim/SPI_N_Divider_0_0.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/sim/Comparateur.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/b717/src/Comparateur.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Comparateur_0_0/sim/SPI_Comparateur_0_0.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/sim/Compteur_8bits.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/e6bb/src/Compteur_8bits.vhd" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_Compteur_8bits_0_0/sim/SPI_Compteur_8bits_0_0.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_0_0/sim/SPI_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SPI.srcs/sources_1/bd/SPI/ipshared/85a3" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconcat_0_0/sim/SPI_xlconcat_0_0.v" \
"../../../../SPI.srcs/sources_1/bd/SPI/ip/SPI_xlconstant_1_0/sim/SPI_xlconstant_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

