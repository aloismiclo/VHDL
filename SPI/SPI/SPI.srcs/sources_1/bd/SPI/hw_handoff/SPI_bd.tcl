
################################################################
# This is a generated script based on design: SPI
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source SPI_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name SPI

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Data_In [ create_bd_port -dir I -from 7 -to 0 Data_In ]
  set LED [ create_bd_port -dir O -from 7 -to 0 LED ]
  set MOSI [ create_bd_port -dir O MOSI ]
  set SS [ create_bd_port -dir O SS ]
  set StartIn [ create_bd_port -dir I StartIn ]
  set StartOut [ create_bd_port -dir O StartOut ]
  set UPDOWN [ create_bd_port -dir I UPDOWN ]
  set reset_rtl [ create_bd_port -dir I -type rst reset_rtl ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_rtl
  set sclk [ create_bd_port -dir O sclk ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: Comparateur_0, and set properties
  set Comparateur_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Comparateur:1.0 Comparateur_0 ]
  set_property -dict [ list \
   CONFIG.n {8} \
 ] $Comparateur_0

  # Create instance: Compteur_8bits_0, and set properties
  set Compteur_8bits_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Compteur_8bits:1.1 Compteur_8bits_0 ]
  set_property -dict [ list \
   CONFIG.N {8} \
 ] $Compteur_8bits_0

  # Create instance: N_Divider_0, and set properties
  set N_Divider_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:N_Divider:1.0 N_Divider_0 ]
  set_property -dict [ list \
   CONFIG.N {10} \
 ] $N_Divider_0

  # Create instance: SPI_Master_0, and set properties
  set SPI_Master_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SPI_Master:1.0 SPI_Master_0 ]
  set_property -dict [ list \
   CONFIG.n {8} \
 ] $SPI_Master_0

  # Create instance: SPI_Slave_0, and set properties
  set SPI_Slave_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SPI_Slave:1.0 SPI_Slave_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {290.478} \
   CONFIG.CLKOUT1_PHASE_ERROR {133.882} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {10} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {15.625} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {78.125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {2} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {25} \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Comparateur_0_S [get_bd_ports StartOut] [get_bd_pins Comparateur_0/S]
  connect_bd_net -net Compteur_8bits_0_S [get_bd_pins Comparateur_0/A] [get_bd_pins Compteur_8bits_0/S]
  connect_bd_net -net Data_In_1 [get_bd_ports Data_In] [get_bd_pins SPI_Master_0/Data_In]
  connect_bd_net -net N_Divider_0_Clk_Div [get_bd_pins Compteur_8bits_0/H] [get_bd_pins N_Divider_0/Clk_Div] [get_bd_pins SPI_Master_0/clk]
  connect_bd_net -net SPI_Master_0_MOSI [get_bd_ports MOSI] [get_bd_pins SPI_Master_0/MOSI] [get_bd_pins SPI_Slave_0/SPI_MOSI]
  connect_bd_net -net SPI_Master_0_spi_clk [get_bd_ports sclk] [get_bd_pins SPI_Master_0/spi_clk] [get_bd_pins SPI_Slave_0/SPI_CLK]
  connect_bd_net -net SPI_Master_0_spi_ss [get_bd_ports SS] [get_bd_pins SPI_Master_0/spi_ss] [get_bd_pins SPI_Slave_0/SPI_CS]
  connect_bd_net -net SPI_Slave_0_DATA [get_bd_ports LED] [get_bd_pins SPI_Slave_0/DATA]
  connect_bd_net -net StartIn_1 [get_bd_ports StartIn] [get_bd_pins SPI_Master_0/rst] [get_bd_pins SPI_Slave_0/SPI_RST]
  connect_bd_net -net UPDOWN_1 [get_bd_ports UPDOWN] [get_bd_pins Compteur_8bits_0/DOWNUP]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins N_Divider_0/clk] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset_rtl] [get_bd_pins Compteur_8bits_0/RST] [get_bd_pins N_Divider_0/rst] [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Comparateur_0/B] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


