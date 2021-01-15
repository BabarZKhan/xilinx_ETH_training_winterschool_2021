
################################################################
# This is a generated script based on design: bd_d216
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
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_d216_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flgb2104-2-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_d216

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
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
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
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M00_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   ] $M00_AXI

  set M01_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {35} \
   ] $M01_AXI

  set M02_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   ] $M02_AXI

  set M03_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   ] $M03_AXI

  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   ] $S00_AXI

  set S01_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {35} \
   ] $S01_AXI

  set S02_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   ] $S02_AXI

  set S03_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S03_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   ] $S03_AXI

  set S04_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S04_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   ] $S04_AXI

  set S05_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S05_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {35} \
   ] $S05_AXI


  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M00_AXI:M01_AXI:M02_AXI:M03_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI} \
 ] $aclk
  set aclk1 [ create_bd_port -dir I -type clk aclk1 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S04_AXI:S05_AXI} \
 ] $aclk1
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set ddr4_mem_calib_complete [ create_bd_port -dir O -type data ddr4_mem_calib_complete ]

  # Create instance: plram_0, and set properties
  set plram_0 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:xtlm_simple_memory:1.0 plram_0 ]
  set_property -dict [ list \
   CONFIG.C_MEM_SIZE {0x0000000000020000} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {512} \
 ] $plram_0

  # Create instance: plram_1, and set properties
  set plram_1 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:xtlm_simple_memory:1.0 plram_1 ]
  set_property -dict [ list \
   CONFIG.C_MEM_SIZE {0x0000000000020000} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {512} \
 ] $plram_1

  # Create instance: plram_2, and set properties
  set plram_2 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:xtlm_simple_memory:1.0 plram_2 ]
  set_property -dict [ list \
   CONFIG.C_MEM_SIZE {0x0000000000020000} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {512} \
 ] $plram_2

  # Create instance: xtlm_simple_intercon_0, and set properties
  set xtlm_simple_intercon_0 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:xtlm_simple_interconnect:1.0 xtlm_simple_intercon_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M00_A00_BASE_ADDRESS {0x0000004000000000} \
   CONFIG.C_M00_AXI_ADDR_WIDTH {34} \
   CONFIG.C_M00_AXI_ARUSER_WIDTH {32} \
   CONFIG.C_M00_AXI_AWUSER_WIDTH {32} \
   CONFIG.C_M00_AXI_BUSER_WIDTH {1} \
   CONFIG.C_M00_AXI_DATA_WIDTH {512} \
   CONFIG.C_M00_AXI_HAS_BRESP {true} \
   CONFIG.C_M00_AXI_HAS_BURST {true} \
   CONFIG.C_M00_AXI_HAS_CACHE {true} \
   CONFIG.C_M00_AXI_HAS_LOCK {true} \
   CONFIG.C_M00_AXI_HAS_PROT {true} \
   CONFIG.C_M00_AXI_HAS_QOS {true} \
   CONFIG.C_M00_AXI_HAS_RRESP {true} \
   CONFIG.C_M00_AXI_HAS_WSTRB {true} \
   CONFIG.C_M00_AXI_ID_WIDTH {5} \
   CONFIG.C_M00_AXI_RUSER_WIDTH {1} \
   CONFIG.C_M00_AXI_WUSER_WIDTH {1} \
   CONFIG.C_M01_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M01_A00_BASE_ADDRESS {0x0000000400000000} \
   CONFIG.C_M01_AXI_ADDR_WIDTH {35} \
   CONFIG.C_M01_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_M01_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_M01_AXI_BUSER_WIDTH {0} \
   CONFIG.C_M01_AXI_DATA_WIDTH {512} \
   CONFIG.C_M01_AXI_HAS_BRESP {true} \
   CONFIG.C_M01_AXI_HAS_BURST {true} \
   CONFIG.C_M01_AXI_HAS_CACHE {false} \
   CONFIG.C_M01_AXI_HAS_LOCK {false} \
   CONFIG.C_M01_AXI_HAS_PROT {true} \
   CONFIG.C_M01_AXI_HAS_QOS {false} \
   CONFIG.C_M01_AXI_HAS_RRESP {true} \
   CONFIG.C_M01_AXI_HAS_WSTRB {true} \
   CONFIG.C_M01_AXI_ID_WIDTH {0} \
   CONFIG.C_M01_AXI_RUSER_WIDTH {0} \
   CONFIG.C_M01_AXI_WUSER_WIDTH {0} \
   CONFIG.C_M02_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M02_A00_BASE_ADDRESS {0x0000004800000000} \
   CONFIG.C_M02_AXI_ADDR_WIDTH {34} \
   CONFIG.C_M02_AXI_ARUSER_WIDTH {32} \
   CONFIG.C_M02_AXI_AWUSER_WIDTH {32} \
   CONFIG.C_M02_AXI_BUSER_WIDTH {1} \
   CONFIG.C_M02_AXI_DATA_WIDTH {512} \
   CONFIG.C_M02_AXI_HAS_BRESP {true} \
   CONFIG.C_M02_AXI_HAS_BURST {true} \
   CONFIG.C_M02_AXI_HAS_CACHE {true} \
   CONFIG.C_M02_AXI_HAS_LOCK {true} \
   CONFIG.C_M02_AXI_HAS_PROT {true} \
   CONFIG.C_M02_AXI_HAS_QOS {true} \
   CONFIG.C_M02_AXI_HAS_RRESP {true} \
   CONFIG.C_M02_AXI_HAS_WSTRB {true} \
   CONFIG.C_M02_AXI_ID_WIDTH {5} \
   CONFIG.C_M02_AXI_RUSER_WIDTH {1} \
   CONFIG.C_M02_AXI_WUSER_WIDTH {1} \
   CONFIG.C_M03_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M03_A00_BASE_ADDRESS {0x0000004C00000000} \
   CONFIG.C_M03_AXI_ADDR_WIDTH {34} \
   CONFIG.C_M03_AXI_ARUSER_WIDTH {32} \
   CONFIG.C_M03_AXI_AWUSER_WIDTH {32} \
   CONFIG.C_M03_AXI_BUSER_WIDTH {1} \
   CONFIG.C_M03_AXI_DATA_WIDTH {512} \
   CONFIG.C_M03_AXI_HAS_BRESP {true} \
   CONFIG.C_M03_AXI_HAS_BURST {true} \
   CONFIG.C_M03_AXI_HAS_CACHE {true} \
   CONFIG.C_M03_AXI_HAS_LOCK {true} \
   CONFIG.C_M03_AXI_HAS_PROT {true} \
   CONFIG.C_M03_AXI_HAS_QOS {true} \
   CONFIG.C_M03_AXI_HAS_RRESP {true} \
   CONFIG.C_M03_AXI_HAS_WSTRB {true} \
   CONFIG.C_M03_AXI_ID_WIDTH {5} \
   CONFIG.C_M03_AXI_RUSER_WIDTH {1} \
   CONFIG.C_M03_AXI_WUSER_WIDTH {1} \
   CONFIG.C_M04_A00_ADDR_RANGE {0x0000000000020000} \
   CONFIG.C_M04_A00_BASE_ADDRESS {0x0000005000000000} \
   CONFIG.C_M04_AXI_ADDR_WIDTH {17} \
   CONFIG.C_M04_AXI_DATA_WIDTH {512} \
   CONFIG.C_M05_A00_ADDR_RANGE {0x0000000000020000} \
   CONFIG.C_M05_A00_BASE_ADDRESS {0x0000005000020000} \
   CONFIG.C_M05_AXI_ADDR_WIDTH {17} \
   CONFIG.C_M05_AXI_DATA_WIDTH {512} \
   CONFIG.C_M06_A00_ADDR_RANGE {0x0000000000020000} \
   CONFIG.C_M06_A00_BASE_ADDRESS {0x0000005000040000} \
   CONFIG.C_M06_AXI_ADDR_WIDTH {17} \
   CONFIG.C_M06_AXI_DATA_WIDTH {512} \
   CONFIG.C_NUM_MI {7} \
   CONFIG.C_NUM_SI {6} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {32} \
   CONFIG.C_S00_AXI_HAS_BRESP {true} \
   CONFIG.C_S00_AXI_HAS_BURST {true} \
   CONFIG.C_S00_AXI_HAS_CACHE {true} \
   CONFIG.C_S00_AXI_HAS_LOCK {true} \
   CONFIG.C_S00_AXI_HAS_PROT {true} \
   CONFIG.C_S00_AXI_HAS_QOS {true} \
   CONFIG.C_S00_AXI_HAS_REGION {false} \
   CONFIG.C_S00_AXI_HAS_RRESP {true} \
   CONFIG.C_S00_AXI_HAS_WSTRB {true} \
   CONFIG.C_S01_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S01_AXI_ARUSER_WIDTH {1} \
   CONFIG.C_S01_AXI_AWUSER_WIDTH {1} \
   CONFIG.C_S01_AXI_BUSER_WIDTH {1} \
   CONFIG.C_S01_AXI_DATA_WIDTH {32} \
   CONFIG.C_S01_AXI_HAS_BRESP {true} \
   CONFIG.C_S01_AXI_HAS_BURST {true} \
   CONFIG.C_S01_AXI_HAS_CACHE {true} \
   CONFIG.C_S01_AXI_HAS_LOCK {true} \
   CONFIG.C_S01_AXI_HAS_PROT {true} \
   CONFIG.C_S01_AXI_HAS_QOS {true} \
   CONFIG.C_S01_AXI_HAS_REGION {false} \
   CONFIG.C_S01_AXI_HAS_RRESP {true} \
   CONFIG.C_S01_AXI_HAS_WSTRB {true} \
   CONFIG.C_S01_AXI_ID_WIDTH {1} \
   CONFIG.C_S01_AXI_RUSER_WIDTH {1} \
   CONFIG.C_S01_AXI_WUSER_WIDTH {1} \
   CONFIG.C_S02_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S02_AXI_ARUSER_WIDTH {1} \
   CONFIG.C_S02_AXI_AWUSER_WIDTH {1} \
   CONFIG.C_S02_AXI_BUSER_WIDTH {1} \
   CONFIG.C_S02_AXI_DATA_WIDTH {32} \
   CONFIG.C_S02_AXI_HAS_BRESP {true} \
   CONFIG.C_S02_AXI_HAS_BURST {true} \
   CONFIG.C_S02_AXI_HAS_CACHE {true} \
   CONFIG.C_S02_AXI_HAS_LOCK {true} \
   CONFIG.C_S02_AXI_HAS_PROT {true} \
   CONFIG.C_S02_AXI_HAS_QOS {true} \
   CONFIG.C_S02_AXI_HAS_REGION {false} \
   CONFIG.C_S02_AXI_HAS_RRESP {true} \
   CONFIG.C_S02_AXI_HAS_WSTRB {true} \
   CONFIG.C_S02_AXI_ID_WIDTH {1} \
   CONFIG.C_S02_AXI_RUSER_WIDTH {1} \
   CONFIG.C_S02_AXI_WUSER_WIDTH {1} \
   CONFIG.C_S03_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S03_AXI_ARUSER_WIDTH {1} \
   CONFIG.C_S03_AXI_AWUSER_WIDTH {1} \
   CONFIG.C_S03_AXI_BUSER_WIDTH {1} \
   CONFIG.C_S03_AXI_DATA_WIDTH {32} \
   CONFIG.C_S03_AXI_HAS_BRESP {true} \
   CONFIG.C_S03_AXI_HAS_BURST {true} \
   CONFIG.C_S03_AXI_HAS_CACHE {true} \
   CONFIG.C_S03_AXI_HAS_LOCK {true} \
   CONFIG.C_S03_AXI_HAS_PROT {true} \
   CONFIG.C_S03_AXI_HAS_QOS {true} \
   CONFIG.C_S03_AXI_HAS_REGION {false} \
   CONFIG.C_S03_AXI_HAS_RRESP {true} \
   CONFIG.C_S03_AXI_HAS_WSTRB {true} \
   CONFIG.C_S03_AXI_ID_WIDTH {1} \
   CONFIG.C_S03_AXI_RUSER_WIDTH {1} \
   CONFIG.C_S03_AXI_WUSER_WIDTH {1} \
   CONFIG.C_S04_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S04_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_S04_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_S04_AXI_BUSER_WIDTH {0} \
   CONFIG.C_S04_AXI_DATA_WIDTH {512} \
   CONFIG.C_S04_AXI_HAS_BRESP {true} \
   CONFIG.C_S04_AXI_HAS_BURST {false} \
   CONFIG.C_S04_AXI_HAS_CACHE {true} \
   CONFIG.C_S04_AXI_HAS_LOCK {true} \
   CONFIG.C_S04_AXI_HAS_PROT {true} \
   CONFIG.C_S04_AXI_HAS_QOS {true} \
   CONFIG.C_S04_AXI_HAS_REGION {true} \
   CONFIG.C_S04_AXI_HAS_RRESP {true} \
   CONFIG.C_S04_AXI_HAS_WSTRB {true} \
   CONFIG.C_S04_AXI_ID_WIDTH {0} \
   CONFIG.C_S04_AXI_RUSER_WIDTH {0} \
   CONFIG.C_S04_AXI_WUSER_WIDTH {0} \
   CONFIG.C_S05_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S05_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_S05_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_S05_AXI_BUSER_WIDTH {0} \
   CONFIG.C_S05_AXI_DATA_WIDTH {512} \
   CONFIG.C_S05_AXI_HAS_BRESP {true} \
   CONFIG.C_S05_AXI_HAS_BURST {false} \
   CONFIG.C_S05_AXI_HAS_CACHE {true} \
   CONFIG.C_S05_AXI_HAS_LOCK {true} \
   CONFIG.C_S05_AXI_HAS_PROT {true} \
   CONFIG.C_S05_AXI_HAS_QOS {true} \
   CONFIG.C_S05_AXI_HAS_REGION {true} \
   CONFIG.C_S05_AXI_HAS_RRESP {true} \
   CONFIG.C_S05_AXI_HAS_WSTRB {true} \
   CONFIG.C_S05_AXI_ID_WIDTH {0} \
   CONFIG.C_S05_AXI_RUSER_WIDTH {0} \
   CONFIG.C_S05_AXI_WUSER_WIDTH {0} \
 ] $xtlm_simple_intercon_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_ports S01_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_ports S02_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S02_AXI]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_ports S03_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S03_AXI]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_ports S04_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S04_AXI]
  connect_bd_intf_net -intf_net S05_AXI_1 [get_bd_intf_ports S05_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/S05_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M00_AXI [get_bd_intf_ports M00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M01_AXI [get_bd_intf_ports M01_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M01_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M02_AXI [get_bd_intf_ports M02_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M02_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M03_AXI [get_bd_intf_ports M03_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M03_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M04_AXI [get_bd_intf_pins plram_0/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M04_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M05_AXI [get_bd_intf_pins plram_1/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M05_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M06_AXI [get_bd_intf_pins plram_2/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M06_AXI]

  # Create port connections
  connect_bd_net -net aclk1_1 [get_bd_ports aclk1] [get_bd_pins xtlm_simple_intercon_0/s04_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s05_axi_aclk]
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins plram_0/s00_axi_aclk] [get_bd_pins plram_1/s00_axi_aclk] [get_bd_pins plram_2/s00_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m00_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m01_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m02_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m03_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m04_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m05_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m06_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s00_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s01_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s02_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s03_axi_aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins plram_0/s00_axi_aresetn] [get_bd_pins plram_1/s00_axi_aresetn] [get_bd_pins plram_2/s00_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m00_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m01_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m02_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m03_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m04_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m05_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m06_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s00_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s01_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s02_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s03_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s04_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s05_axi_aresetn]

  # Create address segments
  assign_bd_address -offset 0x004800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S03_AXI] [get_bd_addr_segs M02_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S05_AXI] [get_bd_addr_segs M01_AXI/Reg] -force
  assign_bd_address -offset 0x004800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S04_AXI] [get_bd_addr_segs M02_AXI/Reg] -force
  assign_bd_address -offset 0x004800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs M02_AXI/Reg] -force
  assign_bd_address -offset 0x004800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S02_AXI] [get_bd_addr_segs M02_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S01_AXI] [get_bd_addr_segs M01_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S02_AXI] [get_bd_addr_segs M00_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S03_AXI] [get_bd_addr_segs M00_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S04_AXI] [get_bd_addr_segs M00_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs M00_AXI/Reg] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S02_AXI] [get_bd_addr_segs M03_AXI/Reg] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S03_AXI] [get_bd_addr_segs M03_AXI/Reg] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs M03_AXI/Reg] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces S04_AXI] [get_bd_addr_segs M03_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S02_AXI] [get_bd_addr_segs M01_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs M01_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S03_AXI] [get_bd_addr_segs M01_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S04_AXI] [get_bd_addr_segs M01_AXI/Reg] -force


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


