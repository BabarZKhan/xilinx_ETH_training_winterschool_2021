
################################################################
# This is a generated script based on design: pfm_dynamic
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
# source pfm_dynamic_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flgb2104-2-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name pfm_dynamic

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

   create_bd_design -bdsource Vitis $design_name

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


# Hierarchical cell: slr2
proc create_hier_cell_slr2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_slr2() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI1


  # Create pins
  create_bd_pin -dir I -type clk ddr_default_clk_0
  create_bd_pin -dir I -type rst ddr_default_rst_0
  create_bd_pin -dir I -type clk dma_pcie_aclk
  create_bd_pin -dir I -type rst dma_pcie_arst
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type rst ext_reset_in1
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir I -type clk slowest_sync_clk1

  # Create instance: icn_pass_3, and set properties
  set icn_pass_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 icn_pass_3 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_NUM_MI {1} \
   CONFIG.C_NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR2} \
 ] $icn_pass_3

  # Create instance: interconnect_axilite_user_2, and set properties
  set interconnect_axilite_user_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite_user_2 ]
  set_property -dict [ list \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR2} \
 ] $interconnect_axilite_user_2

  # Create instance: psr_kernel2_clk_2, and set properties
  set psr_kernel2_clk_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel2_clk_2 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR2} \
 ] $psr_kernel2_clk_2

  # Create instance: psr_kernel_clk_2, and set properties
  set psr_kernel_clk_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel_clk_2 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR2} \
 ] $psr_kernel_clk_2

  # Create instance: to_delete_kernel_ctrl_2, and set properties
  set to_delete_kernel_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 to_delete_kernel_ctrl_2 ]

  # Create interface connections
  connect_bd_intf_net -intf_net connect_to_es_cu_M03_AXI [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins interconnect_axilite_user_2/S00_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_2_M00_AXI [get_bd_intf_pins interconnect_axilite_user_2/M00_AXI] [get_bd_intf_pins to_delete_kernel_ctrl_2/S_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_3_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins icn_pass_3/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_3_AXI [get_bd_intf_pins S00_AXI] [get_bd_intf_pins icn_pass_3/S00_AXI]

  # Create port connections
  connect_bd_net -net ext_reset_in_0_1 [get_bd_pins ext_reset_in] [get_bd_pins psr_kernel_clk_2/ext_reset_in]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_pins dma_pcie_arst] [get_bd_pins interconnect_axilite_user_2/ARESETN] [get_bd_pins interconnect_axilite_user_2/M00_ARESETN] [get_bd_pins interconnect_axilite_user_2/S00_ARESETN] [get_bd_pins to_delete_kernel_ctrl_2/s_axi_aresetn]
  connect_bd_net -net ext_reset_in_2_1 [get_bd_pins ext_reset_in1] [get_bd_pins psr_kernel2_clk_2/ext_reset_in]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_pins slowest_sync_clk] [get_bd_pins psr_kernel_clk_2/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1_1 [get_bd_pins dma_pcie_aclk] [get_bd_pins interconnect_axilite_user_2/ACLK] [get_bd_pins interconnect_axilite_user_2/M00_ACLK] [get_bd_pins interconnect_axilite_user_2/S00_ACLK] [get_bd_pins to_delete_kernel_ctrl_2/s_axi_aclk]
  connect_bd_net -net slowest_sync_clk_2_1 [get_bd_pins slowest_sync_clk1] [get_bd_pins psr_kernel2_clk_2/slowest_sync_clk]
  connect_bd_net -net ui_clk_clk [get_bd_pins ddr_default_clk_0] [get_bd_pins icn_pass_3/m00_axi_aclk] [get_bd_pins icn_pass_3/s00_axi_aclk]
  connect_bd_net -net ui_clk_sync_rst [get_bd_pins ddr_default_rst_0] [get_bd_pins icn_pass_3/m00_axi_aresetn] [get_bd_pins icn_pass_3/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: slr1
proc create_hier_cell_slr1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_slr1() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI2


  # Create pins
  create_bd_pin -dir I -type clk ddr_default_clk_0
  create_bd_pin -dir I -type rst ddr_default_rst_0
  create_bd_pin -dir I -type clk dma_pcie_aclk
  create_bd_pin -dir I -type rst dma_pcie_arst
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type rst ext_reset_in1
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir I -type clk slowest_sync_clk1

  # Create instance: icn_pass_1, and set properties
  set icn_pass_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 icn_pass_1 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_NUM_MI {1} \
   CONFIG.C_NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $icn_pass_1

  # Create instance: icn_pass_2, and set properties
  set icn_pass_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 icn_pass_2 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_NUM_MI {1} \
   CONFIG.C_NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $icn_pass_2

  # Create instance: interconnect_axilite_user_1, and set properties
  set interconnect_axilite_user_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite_user_1 ]
  set_property -dict [ list \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $interconnect_axilite_user_1

  # Create instance: psr_kernel2_clk_1, and set properties
  set psr_kernel2_clk_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel2_clk_1 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $psr_kernel2_clk_1

  # Create instance: psr_kernel_clk_1, and set properties
  set psr_kernel_clk_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel_clk_1 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $psr_kernel_clk_1

  # Create instance: to_delete_kernel_ctrl_1, and set properties
  set to_delete_kernel_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 to_delete_kernel_ctrl_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net connect_to_es_cu_M02_AXI [get_bd_intf_pins S00_AXI2] [get_bd_intf_pins interconnect_axilite_user_1/S00_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_1_M00_AXI [get_bd_intf_pins interconnect_axilite_user_1/M00_AXI] [get_bd_intf_pins to_delete_kernel_ctrl_1/S_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_1_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins icn_pass_1/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_2_AXI [get_bd_intf_pins M00_AXI1] [get_bd_intf_pins icn_pass_2/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_1_AXI [get_bd_intf_pins S00_AXI] [get_bd_intf_pins icn_pass_1/S00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_2_AXI [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins icn_pass_2/S00_AXI]

  # Create port connections
  connect_bd_net -net ext_reset_in_0_1 [get_bd_pins ext_reset_in] [get_bd_pins psr_kernel_clk_1/ext_reset_in]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_pins dma_pcie_arst] [get_bd_pins interconnect_axilite_user_1/ARESETN] [get_bd_pins interconnect_axilite_user_1/M00_ARESETN] [get_bd_pins interconnect_axilite_user_1/S00_ARESETN] [get_bd_pins to_delete_kernel_ctrl_1/s_axi_aresetn]
  connect_bd_net -net ext_reset_in_2_1 [get_bd_pins ext_reset_in1] [get_bd_pins psr_kernel2_clk_1/ext_reset_in]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_pins slowest_sync_clk] [get_bd_pins psr_kernel_clk_1/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1_1 [get_bd_pins dma_pcie_aclk] [get_bd_pins interconnect_axilite_user_1/ACLK] [get_bd_pins interconnect_axilite_user_1/M00_ACLK] [get_bd_pins interconnect_axilite_user_1/S00_ACLK] [get_bd_pins to_delete_kernel_ctrl_1/s_axi_aclk]
  connect_bd_net -net slowest_sync_clk_2_1 [get_bd_pins slowest_sync_clk1] [get_bd_pins psr_kernel2_clk_1/slowest_sync_clk]
  connect_bd_net -net ui_clk_clk [get_bd_pins ddr_default_clk_0] [get_bd_pins icn_pass_1/m00_axi_aclk] [get_bd_pins icn_pass_1/s00_axi_aclk] [get_bd_pins icn_pass_2/m00_axi_aclk] [get_bd_pins icn_pass_2/s00_axi_aclk]
  connect_bd_net -net ui_clk_sync_rst [get_bd_pins ddr_default_rst_0] [get_bd_pins icn_pass_1/m00_axi_aresetn] [get_bd_pins icn_pass_1/s00_axi_aresetn] [get_bd_pins icn_pass_2/m00_axi_aresetn] [get_bd_pins icn_pass_2/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: slr0
proc create_hier_cell_slr0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_slr0() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI1


  # Create pins
  create_bd_pin -dir I -type clk ddr_default_clk_0
  create_bd_pin -dir I -type rst ddr_default_rst_0
  create_bd_pin -dir I -type clk dma_pcie_aclk
  create_bd_pin -dir I -type rst dma_pcie_arst
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type rst ext_reset_in1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir I -type clk slowest_sync_clk1

  # Create instance: icn_pass_0, and set properties
  set icn_pass_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 icn_pass_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_NUM_MI {1} \
   CONFIG.C_NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $icn_pass_0

  # Create instance: interconnect_axilite_user_0, and set properties
  set interconnect_axilite_user_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite_user_0 ]
  set_property -dict [ list \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $interconnect_axilite_user_0
  set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER {true} [get_bd_intf_pins /slr0/interconnect_axilite_user_0/M00_AXI]

  # Create instance: psr_kernel2_clk_0, and set properties
  set psr_kernel2_clk_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel2_clk_0 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $psr_kernel2_clk_0

  # Create instance: psr_kernel_clk_0, and set properties
  set psr_kernel_clk_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel_clk_0 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $psr_kernel_clk_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M01_AXI] [get_bd_intf_pins interconnect_axilite_user_0/M01_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M01_AXI [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins interconnect_axilite_user_0/S00_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_0_M00_AXI [get_bd_intf_pins M00_AXI1] [get_bd_intf_pins interconnect_axilite_user_0/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_0_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins icn_pass_0/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_0_AXI [get_bd_intf_pins S00_AXI] [get_bd_intf_pins icn_pass_0/S00_AXI]

  # Create port connections
  connect_bd_net -net ext_reset_in_0_1 [get_bd_pins ext_reset_in] [get_bd_pins psr_kernel_clk_0/ext_reset_in]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_pins dma_pcie_arst] [get_bd_pins interconnect_axilite_user_0/ARESETN] [get_bd_pins interconnect_axilite_user_0/M00_ARESETN] [get_bd_pins interconnect_axilite_user_0/S00_ARESETN]
  connect_bd_net -net ext_reset_in_2_1 [get_bd_pins ext_reset_in1] [get_bd_pins psr_kernel2_clk_0/ext_reset_in]
  connect_bd_net -net psr_kernel_clk_0_interconnect_aresetn [get_bd_pins interconnect_axilite_user_0/M01_ARESETN] [get_bd_pins psr_kernel_clk_0/interconnect_aresetn]
  connect_bd_net -net psr_kernel_clk_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins psr_kernel_clk_0/peripheral_aresetn]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_pins slowest_sync_clk] [get_bd_pins interconnect_axilite_user_0/M01_ACLK] [get_bd_pins psr_kernel_clk_0/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1_1 [get_bd_pins dma_pcie_aclk] [get_bd_pins interconnect_axilite_user_0/ACLK] [get_bd_pins interconnect_axilite_user_0/M00_ACLK] [get_bd_pins interconnect_axilite_user_0/S00_ACLK]
  connect_bd_net -net slowest_sync_clk_2_1 [get_bd_pins slowest_sync_clk1] [get_bd_pins psr_kernel2_clk_0/slowest_sync_clk]
  connect_bd_net -net ui_clk_clk [get_bd_pins ddr_default_clk_0] [get_bd_pins icn_pass_0/m00_axi_aclk] [get_bd_pins icn_pass_0/s00_axi_aclk]
  connect_bd_net -net ui_clk_sync_rst [get_bd_pins ddr_default_rst_0] [get_bd_pins icn_pass_0/m00_axi_aresetn] [get_bd_pins icn_pass_0/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: interrupt_concat
proc create_hier_cell_interrupt_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_interrupt_concat() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir O -from 127 -to 0 xlconcat_interrupt_dout

  # Create instance: xlconcat_interrupt, and set properties
  set xlconcat_interrupt [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_interrupt

  # Create instance: xlconcat_interrupt_0, and set properties
  set xlconcat_interrupt_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_0

  # Create instance: xlconcat_interrupt_1, and set properties
  set xlconcat_interrupt_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_1

  # Create instance: xlconcat_interrupt_2, and set properties
  set xlconcat_interrupt_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_2 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_2

  # Create instance: xlconcat_interrupt_3, and set properties
  set xlconcat_interrupt_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_3

  # Create instance: xlconstant_gnd, and set properties
  set xlconstant_gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_gnd ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_gnd

  # Create port connections
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins xlconcat_interrupt_0/In0]
  connect_bd_net -net xlconcat_interrupt_0_dout [get_bd_pins xlconcat_interrupt/In0] [get_bd_pins xlconcat_interrupt_0/dout]
  connect_bd_net -net xlconcat_interrupt_1_dout [get_bd_pins xlconcat_interrupt/In1] [get_bd_pins xlconcat_interrupt_1/dout]
  connect_bd_net -net xlconcat_interrupt_2_dout [get_bd_pins xlconcat_interrupt/In2] [get_bd_pins xlconcat_interrupt_2/dout]
  connect_bd_net -net xlconcat_interrupt_3_dout [get_bd_pins xlconcat_interrupt/In3] [get_bd_pins xlconcat_interrupt_3/dout]
  connect_bd_net -net xlconcat_interrupt_dout [get_bd_pins xlconcat_interrupt_dout] [get_bd_pins xlconcat_interrupt/dout]
  connect_bd_net -net xlconstant_gnd_dout [get_bd_pins xlconcat_interrupt_0/In1] [get_bd_pins xlconcat_interrupt_0/In2] [get_bd_pins xlconcat_interrupt_0/In3] [get_bd_pins xlconcat_interrupt_0/In4] [get_bd_pins xlconcat_interrupt_0/In5] [get_bd_pins xlconcat_interrupt_0/In6] [get_bd_pins xlconcat_interrupt_0/In7] [get_bd_pins xlconcat_interrupt_0/In8] [get_bd_pins xlconcat_interrupt_0/In9] [get_bd_pins xlconcat_interrupt_0/In10] [get_bd_pins xlconcat_interrupt_0/In11] [get_bd_pins xlconcat_interrupt_0/In12] [get_bd_pins xlconcat_interrupt_0/In13] [get_bd_pins xlconcat_interrupt_0/In14] [get_bd_pins xlconcat_interrupt_0/In15] [get_bd_pins xlconcat_interrupt_0/In16] [get_bd_pins xlconcat_interrupt_0/In17] [get_bd_pins xlconcat_interrupt_0/In18] [get_bd_pins xlconcat_interrupt_0/In19] [get_bd_pins xlconcat_interrupt_0/In20] [get_bd_pins xlconcat_interrupt_0/In21] [get_bd_pins xlconcat_interrupt_0/In22] [get_bd_pins xlconcat_interrupt_0/In23] [get_bd_pins xlconcat_interrupt_0/In24] [get_bd_pins xlconcat_interrupt_0/In25] [get_bd_pins xlconcat_interrupt_0/In26] [get_bd_pins xlconcat_interrupt_0/In27] [get_bd_pins xlconcat_interrupt_0/In28] [get_bd_pins xlconcat_interrupt_0/In29] [get_bd_pins xlconcat_interrupt_0/In30] [get_bd_pins xlconcat_interrupt_0/In31] [get_bd_pins xlconcat_interrupt_1/In0] [get_bd_pins xlconcat_interrupt_1/In1] [get_bd_pins xlconcat_interrupt_1/In2] [get_bd_pins xlconcat_interrupt_1/In3] [get_bd_pins xlconcat_interrupt_1/In4] [get_bd_pins xlconcat_interrupt_1/In5] [get_bd_pins xlconcat_interrupt_1/In6] [get_bd_pins xlconcat_interrupt_1/In7] [get_bd_pins xlconcat_interrupt_1/In8] [get_bd_pins xlconcat_interrupt_1/In9] [get_bd_pins xlconcat_interrupt_1/In10] [get_bd_pins xlconcat_interrupt_1/In11] [get_bd_pins xlconcat_interrupt_1/In12] [get_bd_pins xlconcat_interrupt_1/In13] [get_bd_pins xlconcat_interrupt_1/In14] [get_bd_pins xlconcat_interrupt_1/In15] [get_bd_pins xlconcat_interrupt_1/In16] [get_bd_pins xlconcat_interrupt_1/In17] [get_bd_pins xlconcat_interrupt_1/In18] [get_bd_pins xlconcat_interrupt_1/In19] [get_bd_pins xlconcat_interrupt_1/In20] [get_bd_pins xlconcat_interrupt_1/In21] [get_bd_pins xlconcat_interrupt_1/In22] [get_bd_pins xlconcat_interrupt_1/In23] [get_bd_pins xlconcat_interrupt_1/In24] [get_bd_pins xlconcat_interrupt_1/In25] [get_bd_pins xlconcat_interrupt_1/In26] [get_bd_pins xlconcat_interrupt_1/In27] [get_bd_pins xlconcat_interrupt_1/In28] [get_bd_pins xlconcat_interrupt_1/In29] [get_bd_pins xlconcat_interrupt_1/In30] [get_bd_pins xlconcat_interrupt_1/In31] [get_bd_pins xlconcat_interrupt_2/In0] [get_bd_pins xlconcat_interrupt_2/In1] [get_bd_pins xlconcat_interrupt_2/In2] [get_bd_pins xlconcat_interrupt_2/In3] [get_bd_pins xlconcat_interrupt_2/In4] [get_bd_pins xlconcat_interrupt_2/In5] [get_bd_pins xlconcat_interrupt_2/In6] [get_bd_pins xlconcat_interrupt_2/In7] [get_bd_pins xlconcat_interrupt_2/In8] [get_bd_pins xlconcat_interrupt_2/In9] [get_bd_pins xlconcat_interrupt_2/In10] [get_bd_pins xlconcat_interrupt_2/In11] [get_bd_pins xlconcat_interrupt_2/In12] [get_bd_pins xlconcat_interrupt_2/In13] [get_bd_pins xlconcat_interrupt_2/In14] [get_bd_pins xlconcat_interrupt_2/In15] [get_bd_pins xlconcat_interrupt_2/In16] [get_bd_pins xlconcat_interrupt_2/In17] [get_bd_pins xlconcat_interrupt_2/In18] [get_bd_pins xlconcat_interrupt_2/In19] [get_bd_pins xlconcat_interrupt_2/In20] [get_bd_pins xlconcat_interrupt_2/In21] [get_bd_pins xlconcat_interrupt_2/In22] [get_bd_pins xlconcat_interrupt_2/In23] [get_bd_pins xlconcat_interrupt_2/In24] [get_bd_pins xlconcat_interrupt_2/In25] [get_bd_pins xlconcat_interrupt_2/In26] [get_bd_pins xlconcat_interrupt_2/In27] [get_bd_pins xlconcat_interrupt_2/In28] [get_bd_pins xlconcat_interrupt_2/In29] [get_bd_pins xlconcat_interrupt_2/In30] [get_bd_pins xlconcat_interrupt_2/In31] [get_bd_pins xlconcat_interrupt_3/In0] [get_bd_pins xlconcat_interrupt_3/In1] [get_bd_pins xlconcat_interrupt_3/In2] [get_bd_pins xlconcat_interrupt_3/In3] [get_bd_pins xlconcat_interrupt_3/In4] [get_bd_pins xlconcat_interrupt_3/In5] [get_bd_pins xlconcat_interrupt_3/In6] [get_bd_pins xlconcat_interrupt_3/In7] [get_bd_pins xlconcat_interrupt_3/In8] [get_bd_pins xlconcat_interrupt_3/In9] [get_bd_pins xlconcat_interrupt_3/In10] [get_bd_pins xlconcat_interrupt_3/In11] [get_bd_pins xlconcat_interrupt_3/In12] [get_bd_pins xlconcat_interrupt_3/In13] [get_bd_pins xlconcat_interrupt_3/In14] [get_bd_pins xlconcat_interrupt_3/In15] [get_bd_pins xlconcat_interrupt_3/In16] [get_bd_pins xlconcat_interrupt_3/In17] [get_bd_pins xlconcat_interrupt_3/In18] [get_bd_pins xlconcat_interrupt_3/In19] [get_bd_pins xlconcat_interrupt_3/In20] [get_bd_pins xlconcat_interrupt_3/In21] [get_bd_pins xlconcat_interrupt_3/In22] [get_bd_pins xlconcat_interrupt_3/In23] [get_bd_pins xlconcat_interrupt_3/In24] [get_bd_pins xlconcat_interrupt_3/In25] [get_bd_pins xlconcat_interrupt_3/In26] [get_bd_pins xlconcat_interrupt_3/In27] [get_bd_pins xlconcat_interrupt_3/In28] [get_bd_pins xlconcat_interrupt_3/In29] [get_bd_pins xlconcat_interrupt_3/In30] [get_bd_pins xlconcat_interrupt_3/In31] [get_bd_pins xlconstant_gnd/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: System_DPA
proc create_hier_cell_System_DPA { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_System_DPA() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 MON_M_AXI

  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 MON_M_AXI1

  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 MON_S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXIMM


  # Create pins
  create_bd_pin -dir I -type clk dma_pcie_aclk
  create_bd_pin -dir I -type rst dma_pcie_arst
  create_bd_pin -dir I -type clk trace_clk
  create_bd_pin -dir I -type rst trace_rst

  # Create instance: dpa_ctrl_interconnect, and set properties
  set dpa_ctrl_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 dpa_ctrl_interconnect ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.M02_HAS_REGSLICE {1} \
   CONFIG.M03_HAS_REGSLICE {1} \
   CONFIG.M04_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {1} \
 ] $dpa_ctrl_interconnect

  # Create instance: dpa_hub, and set properties
  set dpa_hub [ create_bd_cell -type ip -vlnv xilinx.com:ip:emulation_profiler_core:1.0 dpa_hub ]
  set_property -dict [ list \
   CONFIG.NUM_TRACE_PORTS {5} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
   CONFIG.S_AXIMM_DATA_WIDTH {64} \
 ] $dpa_hub
  set_property HDL_ATTRIBUTE.DPA_IP {true} [get_bd_cells /System_DPA/dpa_hub]
  set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES {0} [get_bd_cells /System_DPA/dpa_hub]
  set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME {dpa_hub} [get_bd_cells /System_DPA/dpa_hub]

  # Create instance: dpa_mon0, and set properties
  set dpa_mon0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_accel_monitor:1.0 dpa_mon0 ]
  set_property -dict [ list \
   CONFIG.COUNT_WIDTH {64} \
   CONFIG.ENABLE_TRACE {1} \
   CONFIG.EN_AXI_LITE {1} \
   CONFIG.MONITOR_MODE {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
   CONFIG.TRACE_ID {64} \
 ] $dpa_mon0
  set_property HDL_ATTRIBUTE.DPA_IP {true} [get_bd_cells /System_DPA/dpa_mon0]
  set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES {11} [get_bd_cells /System_DPA/dpa_mon0]
  set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME {/aes256CbcDecryptKernel_1} [get_bd_cells /System_DPA/dpa_mon0]

  # Create instance: dpa_mon1, and set properties
  set dpa_mon1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_aximm_perf_mon:1.0 dpa_mon1 ]
  set_property -dict [ list \
   CONFIG.CAPTURE_BURSTS {0} \
   CONFIG.COUNT_WIDTH {64} \
   CONFIG.ENABLE_COUNTERS {true} \
   CONFIG.ENABLE_DEBUG {true} \
   CONFIG.ENABLE_TRACE {true} \
   CONFIG.EN_AXI_LITE {1} \
   CONFIG.MODE_SDACCEL {true} \
   CONFIG.MONITOR_ID {aes256CbcDecryptKernel_1:m_axi_gmem0_0-DDR[0]} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
   CONFIG.TRACE_READ_ID {0} \
   CONFIG.TRACE_WRITE_ID {1} \
 ] $dpa_mon1
  set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME {/aes256CbcDecryptKernel_1/m_axi_gmem0_0-DDR[0]} [get_bd_cells /System_DPA/dpa_mon1]
  set_property HDL_ATTRIBUTE.DPA_IP {true} [get_bd_cells /System_DPA/dpa_mon1]
  set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES {11} [get_bd_cells /System_DPA/dpa_mon1]

  # Create instance: dpa_mon2, and set properties
  set dpa_mon2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_aximm_perf_mon:1.0 dpa_mon2 ]
  set_property -dict [ list \
   CONFIG.CAPTURE_BURSTS {0} \
   CONFIG.COUNT_WIDTH {64} \
   CONFIG.ENABLE_COUNTERS {true} \
   CONFIG.ENABLE_DEBUG {true} \
   CONFIG.ENABLE_TRACE {true} \
   CONFIG.EN_AXI_LITE {1} \
   CONFIG.MODE_SDACCEL {true} \
   CONFIG.MONITOR_ID {aes256CbcDecryptKernel_1:m_axi_gmem0_1-DDR[1]} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
   CONFIG.TRACE_READ_ID {2} \
   CONFIG.TRACE_WRITE_ID {3} \
 ] $dpa_mon2
  set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME {/aes256CbcDecryptKernel_1/m_axi_gmem0_1-DDR[1]} [get_bd_cells /System_DPA/dpa_mon2]
  set_property HDL_ATTRIBUTE.DPA_IP {true} [get_bd_cells /System_DPA/dpa_mon2]
  set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES {11} [get_bd_cells /System_DPA/dpa_mon2]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins dpa_ctrl_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net aes256CbcDecryptKernel_1_m_axi_gmem0_0 [get_bd_intf_pins MON_M_AXI] [get_bd_intf_pins dpa_mon1/MON_M_AXI]
  connect_bd_intf_net -intf_net aes256CbcDecryptKernel_1_m_axi_gmem0_1 [get_bd_intf_pins MON_M_AXI1] [get_bd_intf_pins dpa_mon2/MON_M_AXI]
  connect_bd_intf_net -intf_net dpa_ctrl_interconnect_M00_AXI [get_bd_intf_pins dpa_ctrl_interconnect/M00_AXI] [get_bd_intf_pins dpa_hub/S_AXIFIFO]
  connect_bd_intf_net -intf_net dpa_ctrl_interconnect_M01_AXI [get_bd_intf_pins dpa_ctrl_interconnect/M01_AXI] [get_bd_intf_pins dpa_hub/S_AXIHUB]
  connect_bd_intf_net -intf_net dpa_ctrl_interconnect_M02_AXI [get_bd_intf_pins dpa_ctrl_interconnect/M02_AXI] [get_bd_intf_pins dpa_mon0/S_AXI]
  connect_bd_intf_net -intf_net dpa_ctrl_interconnect_M03_AXI [get_bd_intf_pins dpa_ctrl_interconnect/M03_AXI] [get_bd_intf_pins dpa_mon1/S_AXI]
  connect_bd_intf_net -intf_net dpa_ctrl_interconnect_M04_AXI [get_bd_intf_pins dpa_ctrl_interconnect/M04_AXI] [get_bd_intf_pins dpa_mon2/S_AXI]
  connect_bd_intf_net -intf_net dpa_mon0_TRACE_OUT [get_bd_intf_pins dpa_hub/TRACE_IN_0] [get_bd_intf_pins dpa_mon0/TRACE_OUT]
  connect_bd_intf_net -intf_net dpa_mon1_TRACE_OUT_0 [get_bd_intf_pins dpa_hub/TRACE_IN_1] [get_bd_intf_pins dpa_mon1/TRACE_OUT_0]
  connect_bd_intf_net -intf_net dpa_mon1_TRACE_OUT_1 [get_bd_intf_pins dpa_hub/TRACE_IN_2] [get_bd_intf_pins dpa_mon1/TRACE_OUT_1]
  connect_bd_intf_net -intf_net dpa_mon2_TRACE_OUT_0 [get_bd_intf_pins dpa_hub/TRACE_IN_3] [get_bd_intf_pins dpa_mon2/TRACE_OUT_0]
  connect_bd_intf_net -intf_net dpa_mon2_TRACE_OUT_1 [get_bd_intf_pins dpa_hub/TRACE_IN_4] [get_bd_intf_pins dpa_mon2/TRACE_OUT_1]
  connect_bd_intf_net -intf_net slr0_M01_AXI [get_bd_intf_pins MON_S_AXI] [get_bd_intf_pins dpa_mon1/MON_S_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets slr0_M01_AXI] [get_bd_intf_pins MON_S_AXI] [get_bd_intf_pins dpa_mon2/MON_S_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets slr0_M01_AXI] [get_bd_intf_pins MON_S_AXI] [get_bd_intf_pins dpa_mon0/S_AXI_MON]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M04_AXI [get_bd_intf_pins S_AXIMM] [get_bd_intf_pins dpa_hub/S_AXIMM]

  # Create port connections
  connect_bd_net -net ext_reset_in_1_1 [get_bd_pins dma_pcie_arst] [get_bd_pins dpa_ctrl_interconnect/ARESETN] [get_bd_pins dpa_ctrl_interconnect/S00_ARESETN] [get_bd_pins dpa_hub/s_aximm_aresetn]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_pins trace_clk] [get_bd_pins dpa_ctrl_interconnect/M00_ACLK] [get_bd_pins dpa_ctrl_interconnect/M01_ACLK] [get_bd_pins dpa_ctrl_interconnect/M02_ACLK] [get_bd_pins dpa_ctrl_interconnect/M03_ACLK] [get_bd_pins dpa_ctrl_interconnect/M04_ACLK] [get_bd_pins dpa_hub/axilite_clk] [get_bd_pins dpa_hub/trace_clk] [get_bd_pins dpa_mon0/mon_clk] [get_bd_pins dpa_mon0/trace_clk] [get_bd_pins dpa_mon1/mon_clk] [get_bd_pins dpa_mon1/trace_clk] [get_bd_pins dpa_mon2/mon_clk] [get_bd_pins dpa_mon2/trace_clk]
  connect_bd_net -net slowest_sync_clk_1_1 [get_bd_pins dma_pcie_aclk] [get_bd_pins dpa_ctrl_interconnect/ACLK] [get_bd_pins dpa_ctrl_interconnect/S00_ACLK] [get_bd_pins dpa_hub/s_aximm_clk]
  connect_bd_net -net slr0_peripheral_aresetn [get_bd_pins trace_rst] [get_bd_pins dpa_ctrl_interconnect/M00_ARESETN] [get_bd_pins dpa_ctrl_interconnect/M01_ARESETN] [get_bd_pins dpa_ctrl_interconnect/M02_ARESETN] [get_bd_pins dpa_ctrl_interconnect/M03_ARESETN] [get_bd_pins dpa_ctrl_interconnect/M04_ARESETN] [get_bd_pins dpa_hub/axilite_aresetn] [get_bd_pins dpa_hub/trace_aresetn] [get_bd_pins dpa_mon0/mon_resetn] [get_bd_pins dpa_mon0/trace_rst] [get_bd_pins dpa_mon1/mon_resetn] [get_bd_pins dpa_mon1/trace_rst] [get_bd_pins dpa_mon2/mon_resetn] [get_bd_pins dpa_mon2/trace_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set C0_DDR_MAXI_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR_MAXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {35} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300120048} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.PROTOCOL {AXI4} \
   ] $C0_DDR_MAXI_0

  set data_M_AXI_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $data_M_AXI_0

  set data_M_AXI_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $data_M_AXI_1

  set data_M_AXI_2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_2 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $data_M_AXI_2

  set data_M_AXI_3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_3 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $data_M_AXI_3

  set data_M_AXI_4 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_4 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $data_M_AXI_4

  set userpf_control_M_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 userpf_control_M_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {29} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $userpf_control_M_AXI


  # Create ports
  set clkwiz_kernel2_clk_0 [ create_bd_port -dir I -type clk -freq_hz 500000000 clkwiz_kernel2_clk_0 ]
  set clkwiz_kernel2_rst_0 [ create_bd_port -dir I -type rst clkwiz_kernel2_rst_0 ]
  set clkwiz_kernel_clk_0 [ create_bd_port -dir I -type clk -freq_hz 300000000 clkwiz_kernel_clk_0 ]
  set clkwiz_kernel_rst_0 [ create_bd_port -dir I -type rst clkwiz_kernel_rst_0 ]
  set ddr_default_clk_0 [ create_bd_port -dir I -type clk -freq_hz 300120048 ddr_default_clk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {C0_DDR_MAXI_0} \
 ] $ddr_default_clk_0
  set ddr_default_rst_0 [ create_bd_port -dir I -type rst ddr_default_rst_0 ]
  set dma_pcie_aclk [ create_bd_port -dir I -type clk -freq_hz 300000000 dma_pcie_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {userpf_control_M_AXI:userpf_control_M_AXI_slr1:userpf_control_M_AXI_slr2:data_M_AXI_0:data_M_AXI_1:data_M_AXI_2:data_M_AXI_3:data_M_AXI_4} \
 ] $dma_pcie_aclk
  set dma_pcie_arst [ create_bd_port -dir I -from 0 -to 0 -type rst dma_pcie_arst ]
  set irq_cu [ create_bd_port -dir O -from 127 -to 0 -type intr irq_cu ]

  # Create instance: System_DPA
  create_hier_cell_System_DPA [current_bd_instance .] System_DPA

  # Create instance: aes256CbcDecryptKernel_1, and set properties
  set aes256CbcDecryptKernel_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:aes256CbcDecryptKernel:1.0 aes256CbcDecryptKernel_1 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $aes256CbcDecryptKernel_1
  set_property HDL_ATTRIBUTE.DPA_MONITOR {true} [get_bd_cells aes256CbcDecryptKernel_1]
  set_property HDL_ATTRIBUTE.DPA_MONITOR {true} [get_bd_intf_pins /aes256CbcDecryptKernel_1/m_axi_gmem0_0]
  set_property HDL_ATTRIBUTE.DPA_MONITOR {true} [get_bd_intf_pins /aes256CbcDecryptKernel_1/m_axi_gmem0_1]

  # Create instance: interrupt_concat
  create_hier_cell_interrupt_concat [current_bd_instance .] interrupt_concat

  # Create instance: kernel2_clk, and set properties
  set kernel2_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel2_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {500000000} \
 ] $kernel2_clk

  # Create instance: kernel_clk, and set properties
  set kernel_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $kernel_clk

  # Create instance: memory_subsystem, and set properties
  set memory_subsystem [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdx_memory_subsystem:1.0 memory_subsystem ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {resource_map_replication {S00_AXI {} S01_AXI {} S02_AXI {} S03_AXI {}} plram_specifications {{ SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR2 } { SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR1 } { SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR0 }} resource_access_constraints {S00_AXI {M00_AXI_MEM00 PLRAM_MEM00 PLRAM_MEM01 PLRAM_MEM02} S01_AXI M01_AXI_MEM00 S02_AXI M02_AXI_MEM00 S03_AXI M03_AXI_MEM00} __temp_dsa_info {excluded_board_components {amazon:minotaur-vu9p-f1:ddr4_sdram_c0:1.0 amazon:minotaur-vu9p-f1:ddr4_sdram_c1:1.0 amazon:minotaur-vu9p-f1:ddr4_sdram_c2:1.0 amazon:minotaur-vu9p-f1:ddr4_sdram_c3:1.0} axi_passthrough {amazon:minotaur-vu9p-f1:ddr4_sdram_c0:1.0 {offset 0x4000000000 range 16G slr SLR0} amazon:minotaur-vu9p-f1:ddr4_sdram_c1:1.0 {offset 0x400000000 range 16G slr SLR1} amazon:minotaur-vu9p-f1:ddr4_sdram_c2:1.0 {offset 0x4800000000 range 16G slr SLR1} amazon:minotaur-vu9p-f1:ddr4_sdram_c3:1.0 {offset 0x4c00000000 range 16G slr SLR2}} sim_props {ddr4_0 {offset 0x4000000000 range 0x400000000 slr SLR0 passthrough yes} ddr4_1 {offset 0x400000000 range 0x400000000 slr SLR1 passthrough yes} ddr4_2 {offset 0x4800000000 range 0x400000000 slr SLR1 passthrough yes} ddr4_3 {offset 0x4c00000000 range 0x400000000 slr SLR2 passthrough yes} plram_0 {offset 0x5000000000 range 0x20000 slr SLR0 passthrough no} plram_1 {offset 0x5000020000 range 0x20000 slr SLR1 passthrough no} plram_2 {offset 0x5000040000 range 0x20000 slr SLR2 passthrough no}} slr_pblock_map {SLR0 block_dynamic_SLR0 SLR1 pblock_dynamic_SLR1 SLR2 pblock_dynamic_SLR2} child_pblock_declarations {pblock_ddr4_mem00 {range CLOCKREGION_X2Y1:CLOCKREGION_X2Y3 parent pblock_dynamic_SLR0 cell_paths memory/ddr4_mem00} pblock_ddr4_mem02 {range CLOCKREGION_X2Y7:CLOCKREGION_X2Y9 parent pblock_dynamic_SLR1 cell_paths memory/ddr4_mem02} pblock_ddr4_mem03 {range CLOCKREGION_X4Y11:CLOCKREGION_X4Y13 parent pblock_dynamic_SLR2 cell_paths memory/ddr4_mem03}} board_component_slr_map {aws_ddra SLR2 aws_ddrb SLR1 aws_ddrc SLR1 aws_ddrd SLR0}}} \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_SI {6} \
 ] $memory_subsystem
  set_property HDL_ATTRIBUTE.DPA_TRACE_SLAVE {true} [get_bd_cells memory_subsystem]

  # Create instance: sim_ddr_0, and set properties
  set sim_ddr_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:sim_ddr:3.0 sim_ddr_0 ]
  set_property -dict [ list \
   CONFIG.C0_A00_BASE_ADDR {0x0} \
   CONFIG.C0_A00_HIGH_ADDR {0x0000000400000000} \
   CONFIG.C0_APP_ADDR_WIDTH {31} \
   CONFIG.C0_APP_DATA_WIDTH {512} \
   CONFIG.C0_BANK_GROUP_WIDTH {2} \
   CONFIG.C0_BANK_WIDTH {2} \
   CONFIG.C0_COLUMN_WIDTH {10} \
   CONFIG.C0_DATA_WIDTH {72} \
   CONFIG.C0_DDR_SAXI_ADDR_WIDTH {34} \
   CONFIG.C0_DDR_SAXI_BASEADDR {0x0000000000000000} \
   CONFIG.C0_DDR_SAXI_DATA_WIDTH {512} \
   CONFIG.C0_DDR_SAXI_HIGHADDR {0x0000000400000000} \
   CONFIG.C0_MEMORY_PART {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0_MEM_ADDR_MAP {ROW_COLUMN_BANK} \
   CONFIG.C0_Mem_Add_Map {ROW_COLUMN_BANK} \
   CONFIG.C0_RANK_WIDTH {1} \
   CONFIG.C0_ROW_WIDTH {17} \
   CONFIG.C0_SIZE {16GB} \
   CONFIG.C0_TIMEPERIOD_PS {833} \
   CONFIG.C0_TYPE {ddr4} \
   CONFIG.C0_tCK {833} \
   CONFIG.C0_tCKE {0} \
   CONFIG.C0_tFAW {16} \
   CONFIG.C0_tMRD {2} \
   CONFIG.C0_tRAS {39} \
   CONFIG.C0_tRCD {17} \
   CONFIG.C0_tREFI {9363} \
   CONFIG.C0_tRFC {421} \
   CONFIG.C0_tRP {17} \
   CONFIG.C0_tRRD_L {6} \
   CONFIG.C0_tRRD_S {4} \
   CONFIG.C0_tRTP {10} \
   CONFIG.C0_tWR {19} \
   CONFIG.C0_tWTR_L {10} \
   CONFIG.C0_tWTR_S {4} \
   CONFIG.C_NUMBER_OF_GLOBAL_MEMORIES {1} \
 ] $sim_ddr_0

  # Create instance: sim_ddr_2, and set properties
  set sim_ddr_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:sim_ddr:3.0 sim_ddr_2 ]
  set_property -dict [ list \
   CONFIG.C0_A00_BASE_ADDR {0x0} \
   CONFIG.C0_A00_HIGH_ADDR {0x0000000400000000} \
   CONFIG.C0_APP_ADDR_WIDTH {31} \
   CONFIG.C0_APP_DATA_WIDTH {512} \
   CONFIG.C0_BANK_GROUP_WIDTH {2} \
   CONFIG.C0_BANK_WIDTH {2} \
   CONFIG.C0_COLUMN_WIDTH {10} \
   CONFIG.C0_DATA_WIDTH {72} \
   CONFIG.C0_DDR_SAXI_ADDR_WIDTH {34} \
   CONFIG.C0_DDR_SAXI_BASEADDR {0x0000000000000000} \
   CONFIG.C0_DDR_SAXI_DATA_WIDTH {512} \
   CONFIG.C0_DDR_SAXI_HIGHADDR {0x0000000400000000} \
   CONFIG.C0_MEMORY_PART {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0_MEM_ADDR_MAP {ROW_COLUMN_BANK} \
   CONFIG.C0_Mem_Add_Map {ROW_COLUMN_BANK} \
   CONFIG.C0_RANK_WIDTH {1} \
   CONFIG.C0_ROW_WIDTH {17} \
   CONFIG.C0_SIZE {16GB} \
   CONFIG.C0_TIMEPERIOD_PS {833} \
   CONFIG.C0_TYPE {ddr4} \
   CONFIG.C0_tCK {833} \
   CONFIG.C0_tCKE {0} \
   CONFIG.C0_tFAW {16} \
   CONFIG.C0_tMRD {2} \
   CONFIG.C0_tRAS {39} \
   CONFIG.C0_tRCD {17} \
   CONFIG.C0_tREFI {9363} \
   CONFIG.C0_tRFC {421} \
   CONFIG.C0_tRP {17} \
   CONFIG.C0_tRRD_L {6} \
   CONFIG.C0_tRRD_S {4} \
   CONFIG.C0_tRTP {10} \
   CONFIG.C0_tWR {19} \
   CONFIG.C0_tWTR_L {10} \
   CONFIG.C0_tWTR_S {4} \
   CONFIG.C_NUMBER_OF_GLOBAL_MEMORIES {1} \
 ] $sim_ddr_2

  # Create instance: sim_ddr_3, and set properties
  set sim_ddr_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:sim_ddr:3.0 sim_ddr_3 ]
  set_property -dict [ list \
   CONFIG.C0_A00_BASE_ADDR {0x0} \
   CONFIG.C0_A00_HIGH_ADDR {0x0000000400000000} \
   CONFIG.C0_APP_ADDR_WIDTH {31} \
   CONFIG.C0_APP_DATA_WIDTH {512} \
   CONFIG.C0_BANK_GROUP_WIDTH {2} \
   CONFIG.C0_BANK_WIDTH {2} \
   CONFIG.C0_COLUMN_WIDTH {10} \
   CONFIG.C0_DATA_WIDTH {72} \
   CONFIG.C0_DDR_SAXI_ADDR_WIDTH {34} \
   CONFIG.C0_DDR_SAXI_BASEADDR {0x0000000000000000} \
   CONFIG.C0_DDR_SAXI_DATA_WIDTH {512} \
   CONFIG.C0_DDR_SAXI_HIGHADDR {0x0000000400000000} \
   CONFIG.C0_MEMORY_PART {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0_MEM_ADDR_MAP {ROW_COLUMN_BANK} \
   CONFIG.C0_Mem_Add_Map {ROW_COLUMN_BANK} \
   CONFIG.C0_RANK_WIDTH {1} \
   CONFIG.C0_ROW_WIDTH {17} \
   CONFIG.C0_SIZE {16GB} \
   CONFIG.C0_TIMEPERIOD_PS {833} \
   CONFIG.C0_TYPE {ddr4} \
   CONFIG.C0_tCK {833} \
   CONFIG.C0_tCKE {0} \
   CONFIG.C0_tFAW {16} \
   CONFIG.C0_tMRD {2} \
   CONFIG.C0_tRAS {39} \
   CONFIG.C0_tRCD {17} \
   CONFIG.C0_tREFI {9363} \
   CONFIG.C0_tRFC {421} \
   CONFIG.C0_tRP {17} \
   CONFIG.C0_tRRD_L {6} \
   CONFIG.C0_tRRD_S {4} \
   CONFIG.C0_tRTP {10} \
   CONFIG.C0_tWR {19} \
   CONFIG.C0_tWTR_L {10} \
   CONFIG.C0_tWTR_S {4} \
   CONFIG.C_NUMBER_OF_GLOBAL_MEMORIES {1} \
 ] $sim_ddr_3

  # Create instance: slr0
  create_hier_cell_slr0 [current_bd_instance .] slr0

  # Create instance: slr1
  create_hier_cell_slr1 [current_bd_instance .] slr1

  # Create instance: slr2
  create_hier_cell_slr2 [current_bd_instance .] slr2

  # Create instance: user_slr_icn, and set properties
  set user_slr_icn [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 user_slr_icn ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {1} \
 ] $user_slr_icn

  # Create instance: xtlm_simple_intercon_0, and set properties
  set xtlm_simple_intercon_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 xtlm_simple_intercon_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_RANGES {2} \
   CONFIG.C_M00_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M00_A00_BASE_ADDRESS {0x0000004000000000} \
   CONFIG.C_M00_A01_ADDR_RANGE {0x0000000000060000} \
   CONFIG.C_M00_A01_BASE_ADDRESS {"0000000000000000000000000101000000000000000000000000000000000000"} \
   CONFIG.C_M00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_M00_AXI_DATA_WIDTH {32} \
   CONFIG.C_M01_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M01_A00_BASE_ADDRESS {0x0000000400000000} \
   CONFIG.C_M01_A01_ADDR_RANGE {0x0000000000060000} \
   CONFIG.C_M01_A01_BASE_ADDRESS {"0000000000000000000000000101000000000000000000000000000000000000"} \
   CONFIG.C_M01_AXI_ADDR_WIDTH {64} \
   CONFIG.C_M01_AXI_DATA_WIDTH {32} \
   CONFIG.C_M02_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M02_A00_BASE_ADDRESS {0x0000004800000000} \
   CONFIG.C_M02_A01_ADDR_RANGE {0x0000000000060000} \
   CONFIG.C_M02_A01_BASE_ADDRESS {"0000000000000000000000000101000000000000000000000000000000000000"} \
   CONFIG.C_M02_AXI_ADDR_WIDTH {64} \
   CONFIG.C_M02_AXI_DATA_WIDTH {32} \
   CONFIG.C_M03_A00_ADDR_RANGE {"0000000000000000000000000000001111111111111111111111111111111111"} \
   CONFIG.C_M03_A00_BASE_ADDRESS {0x0000004C00000000} \
   CONFIG.C_M03_A01_ADDR_RANGE {0x0000000000060000} \
   CONFIG.C_M03_A01_BASE_ADDRESS {"0000000000000000000000000101000000000000000000000000000000000000"} \
   CONFIG.C_M03_AXI_ADDR_WIDTH {64} \
   CONFIG.C_M03_AXI_DATA_WIDTH {32} \
   CONFIG.C_M04_A00_ADDR_RANGE {0x0000000200000000} \
   CONFIG.C_M04_A00_BASE_ADDRESS {0x0000000000000000} \
   CONFIG.C_M04_AXI_DATA_WIDTH {64} \
   CONFIG.C_NUM_MI {5} \
   CONFIG.C_NUM_SI {5} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {32} \
   CONFIG.C_S01_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S01_AXI_DATA_WIDTH {512} \
   CONFIG.C_S02_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S02_AXI_DATA_WIDTH {512} \
   CONFIG.C_S03_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S03_AXI_DATA_WIDTH {512} \
   CONFIG.C_S04_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S04_AXI_DATA_WIDTH {512} \
 ] $xtlm_simple_intercon_0
  set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER {true} [get_bd_intf_pins /xtlm_simple_intercon_0/M04_AXI]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins System_DPA/S00_AXI] [get_bd_intf_pins slr0/M00_AXI1]
  connect_bd_intf_net -intf_net aes256CbcDecryptKernel_1_m_axi_gmem0_0 [get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_0] [get_bd_intf_pins memory_subsystem/S04_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets aes256CbcDecryptKernel_1_m_axi_gmem0_0] [get_bd_intf_pins System_DPA/MON_M_AXI] [get_bd_intf_pins memory_subsystem/S04_AXI]
  connect_bd_intf_net -intf_net aes256CbcDecryptKernel_1_m_axi_gmem0_1 [get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_1] [get_bd_intf_pins memory_subsystem/S05_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets aes256CbcDecryptKernel_1_m_axi_gmem0_1] [get_bd_intf_pins System_DPA/MON_M_AXI1] [get_bd_intf_pins memory_subsystem/S05_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M01_AXI [get_bd_intf_pins slr0/S00_AXI1] [get_bd_intf_pins user_slr_icn/M00_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M02_AXI [get_bd_intf_pins slr1/S00_AXI2] [get_bd_intf_pins user_slr_icn/M01_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M03_AXI [get_bd_intf_pins slr2/S00_AXI1] [get_bd_intf_pins user_slr_icn/M02_AXI]
  connect_bd_intf_net -intf_net memory_subsystem_M00_AXI [get_bd_intf_pins memory_subsystem/M00_AXI] [get_bd_intf_pins sim_ddr_0/C0_DDR_SAXI]
  connect_bd_intf_net -intf_net memory_subsystem_M01_AXI [get_bd_intf_ports C0_DDR_MAXI_0] [get_bd_intf_pins memory_subsystem/M01_AXI]
  connect_bd_intf_net -intf_net memory_subsystem_M02_AXI [get_bd_intf_pins memory_subsystem/M02_AXI] [get_bd_intf_pins sim_ddr_2/C0_DDR_SAXI]
  connect_bd_intf_net -intf_net memory_subsystem_M03_AXI [get_bd_intf_pins memory_subsystem/M03_AXI] [get_bd_intf_pins sim_ddr_3/C0_DDR_SAXI]
  connect_bd_intf_net -intf_net slr0_M01_AXI [get_bd_intf_pins aes256CbcDecryptKernel_1/s_axi_control] [get_bd_intf_pins slr0/M01_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets slr0_M01_AXI] [get_bd_intf_pins System_DPA/MON_S_AXI] [get_bd_intf_pins slr0/M01_AXI]
  connect_bd_intf_net -intf_net static_region_data_M_AXI_0 [get_bd_intf_ports data_M_AXI_0] [get_bd_intf_pins xtlm_simple_intercon_0/S00_AXI]
  connect_bd_intf_net -intf_net static_region_data_M_AXI_1 [get_bd_intf_ports data_M_AXI_1] [get_bd_intf_pins xtlm_simple_intercon_0/S01_AXI]
  connect_bd_intf_net -intf_net static_region_data_M_AXI_2 [get_bd_intf_ports data_M_AXI_2] [get_bd_intf_pins xtlm_simple_intercon_0/S02_AXI]
  connect_bd_intf_net -intf_net static_region_data_M_AXI_3 [get_bd_intf_ports data_M_AXI_3] [get_bd_intf_pins xtlm_simple_intercon_0/S03_AXI]
  connect_bd_intf_net -intf_net static_region_data_M_AXI_4 [get_bd_intf_ports data_M_AXI_4] [get_bd_intf_pins xtlm_simple_intercon_0/S04_AXI]
  connect_bd_intf_net -intf_net user_slr_icn_slave [get_bd_intf_ports userpf_control_M_AXI] [get_bd_intf_pins user_slr_icn/S00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_0_AXI [get_bd_intf_pins memory_subsystem/S00_AXI] [get_bd_intf_pins slr0/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_1_AXI [get_bd_intf_pins memory_subsystem/S01_AXI] [get_bd_intf_pins slr1/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_2_AXI [get_bd_intf_pins memory_subsystem/S02_AXI] [get_bd_intf_pins slr1/M00_AXI1]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_M_AXI_3_AXI [get_bd_intf_pins memory_subsystem/S03_AXI] [get_bd_intf_pins slr2/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_0_AXI [get_bd_intf_pins slr0/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M00_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_1_AXI [get_bd_intf_pins slr1/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M01_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_2_AXI [get_bd_intf_pins slr1/S00_AXI1] [get_bd_intf_pins xtlm_simple_intercon_0/M02_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_ICN_S_AXI_3_AXI [get_bd_intf_pins slr2/S00_AXI] [get_bd_intf_pins xtlm_simple_intercon_0/M03_AXI]
  connect_bd_intf_net -intf_net xtlm_simple_intercon_0_M04_AXI [get_bd_intf_pins System_DPA/S_AXIMM] [get_bd_intf_pins xtlm_simple_intercon_0/M04_AXI]

  # Create port connections
  connect_bd_net -net aes256CbcDecryptKernel_1_interrupt [get_bd_pins aes256CbcDecryptKernel_1/interrupt] [get_bd_pins interrupt_concat/In0]
  connect_bd_net -net ext_reset_in_0_1 [get_bd_pins kernel_clk/sync_rst] [get_bd_pins slr0/ext_reset_in] [get_bd_pins slr1/ext_reset_in] [get_bd_pins slr2/ext_reset_in]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_ports dma_pcie_arst] [get_bd_pins System_DPA/dma_pcie_arst] [get_bd_pins slr0/dma_pcie_arst] [get_bd_pins slr1/dma_pcie_arst] [get_bd_pins slr2/dma_pcie_arst] [get_bd_pins user_slr_icn/ARESETN] [get_bd_pins user_slr_icn/M00_ARESETN] [get_bd_pins user_slr_icn/M01_ARESETN] [get_bd_pins user_slr_icn/M02_ARESETN] [get_bd_pins user_slr_icn/S00_ARESETN] [get_bd_pins xtlm_simple_intercon_0/m04_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s00_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s01_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s02_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s03_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/s04_axi_aresetn]
  connect_bd_net -net ext_reset_in_2_1 [get_bd_pins kernel2_clk/sync_rst] [get_bd_pins slr0/ext_reset_in1] [get_bd_pins slr1/ext_reset_in1] [get_bd_pins slr2/ext_reset_in1]
  connect_bd_net -net irq_cu_1 [get_bd_ports irq_cu] [get_bd_pins interrupt_concat/xlconcat_interrupt_dout]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_pins System_DPA/trace_clk] [get_bd_pins aes256CbcDecryptKernel_1/ap_clk] [get_bd_pins kernel_clk/clk] [get_bd_pins memory_subsystem/aclk1] [get_bd_pins slr0/slowest_sync_clk] [get_bd_pins slr1/slowest_sync_clk] [get_bd_pins slr2/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1_1 [get_bd_ports dma_pcie_aclk] [get_bd_pins System_DPA/dma_pcie_aclk] [get_bd_pins slr0/dma_pcie_aclk] [get_bd_pins slr1/dma_pcie_aclk] [get_bd_pins slr2/dma_pcie_aclk] [get_bd_pins user_slr_icn/ACLK] [get_bd_pins user_slr_icn/M00_ACLK] [get_bd_pins user_slr_icn/M01_ACLK] [get_bd_pins user_slr_icn/M02_ACLK] [get_bd_pins user_slr_icn/S00_ACLK] [get_bd_pins xtlm_simple_intercon_0/m04_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s00_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s01_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s02_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s03_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/s04_axi_aclk]
  connect_bd_net -net slowest_sync_clk_2_1 [get_bd_pins kernel2_clk/clk] [get_bd_pins slr0/slowest_sync_clk1] [get_bd_pins slr1/slowest_sync_clk1] [get_bd_pins slr2/slowest_sync_clk1]
  connect_bd_net -net slr0_peripheral_aresetn [get_bd_pins System_DPA/trace_rst] [get_bd_pins aes256CbcDecryptKernel_1/ap_rst_n] [get_bd_pins slr0/peripheral_aresetn]
  connect_bd_net -net ui_clk_clk [get_bd_ports ddr_default_clk_0] [get_bd_pins memory_subsystem/aclk] [get_bd_pins sim_ddr_0/c0_ddr_saxi_aclk] [get_bd_pins sim_ddr_0/c0_ui_clk] [get_bd_pins sim_ddr_0/s_xdma_axi_aclk] [get_bd_pins sim_ddr_2/c0_ddr_saxi_aclk] [get_bd_pins sim_ddr_2/c0_ui_clk] [get_bd_pins sim_ddr_2/s_xdma_axi_aclk] [get_bd_pins sim_ddr_3/c0_ddr_saxi_aclk] [get_bd_pins sim_ddr_3/c0_ui_clk] [get_bd_pins sim_ddr_3/s_xdma_axi_aclk] [get_bd_pins slr0/ddr_default_clk_0] [get_bd_pins slr1/ddr_default_clk_0] [get_bd_pins slr2/ddr_default_clk_0] [get_bd_pins xtlm_simple_intercon_0/m00_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m01_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m02_axi_aclk] [get_bd_pins xtlm_simple_intercon_0/m03_axi_aclk]
  connect_bd_net -net ui_clk_sync_rst [get_bd_ports ddr_default_rst_0] [get_bd_pins memory_subsystem/aresetn] [get_bd_pins sim_ddr_0/c0_ddr_saxi_aresetn] [get_bd_pins sim_ddr_0/s_xdma_axi_aresetn] [get_bd_pins sim_ddr_2/c0_ddr_saxi_aresetn] [get_bd_pins sim_ddr_2/s_xdma_axi_aresetn] [get_bd_pins sim_ddr_3/c0_ddr_saxi_aresetn] [get_bd_pins sim_ddr_3/s_xdma_axi_aresetn] [get_bd_pins slr0/ddr_default_rst_0] [get_bd_pins slr1/ddr_default_rst_0] [get_bd_pins slr2/ddr_default_rst_0] [get_bd_pins xtlm_simple_intercon_0/m00_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m01_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m02_axi_aresetn] [get_bd_pins xtlm_simple_intercon_0/m03_axi_aresetn]

  # Create address segments
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces memory_subsystem/M01_AXI] [get_bd_addr_segs C0_DDR_MAXI_0/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces memory_subsystem/M00_AXI] [get_bd_addr_segs sim_ddr_0/C0_DDR_SAXI/C0_DDR_SAXI_mem] -force
  assign_bd_address -offset 0x004800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces memory_subsystem/M02_AXI] [get_bd_addr_segs sim_ddr_2/C0_DDR_SAXI/C0_DDR_SAXI_mem] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces memory_subsystem/M03_AXI] [get_bd_addr_segs sim_ddr_3/C0_DDR_SAXI/C0_DDR_SAXI_mem] -force
  assign_bd_address -offset 0x1C050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs aes256CbcDecryptKernel_1/s_axi_control/Reg] -force
  assign_bd_address -offset 0x1D000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs slr1/to_delete_kernel_ctrl_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x1E000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs slr2/to_delete_kernel_ctrl_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIFIFO/Reg] -force
  assign_bd_address -offset 0x1C010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIHUB/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIMM_MAP/S_AXIMM_BLOCK] -force
  assign_bd_address -offset 0x00000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIMM_MAP/S_AXIMM_BLOCK] -force
  assign_bd_address -offset 0x00000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIMM_MAP/S_AXIMM_BLOCK] -force
  assign_bd_address -offset 0x00000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIMM_MAP/S_AXIMM_BLOCK] -force
  assign_bd_address -offset 0x00000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs System_DPA/dpa_hub/S_AXIMM_MAP/S_AXIMM_BLOCK] -force
  assign_bd_address -offset 0x1C020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs System_DPA/dpa_mon0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs System_DPA/dpa_mon1/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces userpf_control_M_AXI] [get_bd_addr_segs System_DPA/dpa_mon2/S_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S00_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S00_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S00_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S00_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S00_AXI/M00_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S01_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S01_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S01_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S01_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S01_AXI/M01_AXI_MEM00] -force
  assign_bd_address -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S02_AXI/M02_AXI_MEM00] -force
  assign_bd_address -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S02_AXI/M02_AXI_MEM00] -force
  assign_bd_address -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S02_AXI/M02_AXI_MEM00] -force
  assign_bd_address -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S02_AXI/M02_AXI_MEM00] -force
  assign_bd_address -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S02_AXI/M02_AXI_MEM00] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S03_AXI/M03_AXI_MEM00] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S03_AXI/M03_AXI_MEM00] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S03_AXI/M03_AXI_MEM00] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S03_AXI/M03_AXI_MEM00] -force
  assign_bd_address -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S03_AXI/M03_AXI_MEM00] -force
  assign_bd_address -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force
  assign_bd_address -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force
  assign_bd_address -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force
  assign_bd_address -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force
  assign_bd_address -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force
  assign_bd_address -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM01] -force
  assign_bd_address -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM01] -force
  assign_bd_address -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM01] -force
  assign_bd_address -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM01] -force
  assign_bd_address -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM01] -force
  assign_bd_address -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_4] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM02] -force
  assign_bd_address -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_0] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM02] -force
  assign_bd_address -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_3] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM02] -force
  assign_bd_address -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_2] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM02] -force
  assign_bd_address -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces data_M_AXI_1] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM02] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x000400000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/M01_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/M02_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/M03_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/PLRAM_MEM00]
  exclude_bd_addr_seg -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/PLRAM_MEM01]
  exclude_bd_addr_seg -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_0] [get_bd_addr_segs memory_subsystem/S04_AXI/PLRAM_MEM02]
  exclude_bd_addr_seg -offset 0x004000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/M00_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x004800000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/M02_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x004C00000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/M03_AXI_MEM00]
  exclude_bd_addr_seg -offset 0x005000000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/PLRAM_MEM00]
  exclude_bd_addr_seg -offset 0x005000020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/PLRAM_MEM01]
  exclude_bd_addr_seg -offset 0x005000040000 -range 0x00020000 -target_address_space [get_bd_addr_spaces aes256CbcDecryptKernel_1/Data_m_axi_gmem0_1] [get_bd_addr_segs memory_subsystem/S05_AXI/PLRAM_MEM02]


  # Restore current instance
  current_bd_instance $oldCurInst

  # Create PFM attributes
  set_property PFM_NAME {xilinx:aws-vu9p-f1:shell-v04261818:201920.1} [get_files [current_bd_design].bd]


  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


