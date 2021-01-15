
################################################################
# This is a generated script based on design: emu
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
# source emu_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flgb2104-2-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name emu

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

   create_bd_design $design_name

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


# Hierarchical cell: embedded_schedular
proc create_hier_cell_embedded_schedular { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_embedded_schedular() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 MAXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 SAXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 host

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_CQDma

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_CUDma_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_a

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_0


  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 0 -to 0 in2
  create_bd_pin -dir I -from 127 -to 0 -type intr irq_cu
  create_bd_pin -dir I -type rst reset_n

  # Create instance: CuDmaController_0, and set properties
  set CuDmaController_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_cudma_controller:1.0 CuDmaController_0 ]

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {0} \
   CONFIG.C_IRQ_ACTIVE {1} \
   CONFIG.C_IRQ_IS_LEVEL {1} \
   CONFIG.C_KIND_OF_INTR {0xFFFFFFFC} \
   CONFIG.C_KIND_OF_LVL {0xFFFFFFFF} \
 ] $axi_intc_0

  # Create instance: cuisr_0, and set properties
  set cuisr_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_cuisr:1.0 cuisr_0 ]

  # Create instance: embedded_scheduler_hw_0, and set properties
  set embedded_scheduler_hw_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_embedded_scheduler_hw:1.0 embedded_scheduler_hw_0 ]

  # Create instance: sim_embedded_scheduler_sw_0, and set properties
  set sim_embedded_scheduler_sw_0 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:sim_embedded_scheduler_sw:2.1 sim_embedded_scheduler_sw_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins m_axi_CUDma_0] [get_bd_intf_pins CuDmaController_0/m_axi_CUDma]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axi_0] [get_bd_intf_pins axi_intc_0/s_axi]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins m_axi_CQDma] [get_bd_intf_pins CuDmaController_0/m_axi_CQDma]
  connect_bd_intf_net -intf_net SAXI_1 [get_bd_intf_pins SAXI] [get_bd_intf_pins sim_embedded_scheduler_sw_0/saxi_lite_cq]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins host] [get_bd_intf_pins embedded_scheduler_hw_0/host]
  connect_bd_intf_net -intf_net cuisr_0_m_axi_a [get_bd_intf_pins m_axi_a] [get_bd_intf_pins cuisr_0/m_axi_a]
  connect_bd_intf_net -intf_net sim_embedded_scheduler_sw_0_maxi_lite_mb [get_bd_intf_pins MAXI] [get_bd_intf_pins sim_embedded_scheduler_sw_0/maxi_lite_mb]

  # Create port connections
  connect_bd_net -net CuDmaController_0_ap_done [get_bd_pins CuDmaController_0/ap_done] [get_bd_pins embedded_scheduler_hw_0/ap_done_cudma]
  connect_bd_net -net IN2_0 [get_bd_pins in2] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins axi_intc_0/irq] [get_bd_pins sim_embedded_scheduler_sw_0/irq]
  connect_bd_net -net cuisr_0_ap_done [get_bd_pins cuisr_0/ap_done] [get_bd_pins embedded_scheduler_hw_0/ap_done_cuisr]
  connect_bd_net -net dma_pcie_aclk_clk [get_bd_pins clk] [get_bd_pins CuDmaController_0/ap_clk] [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins cuisr_0/ap_clk] [get_bd_pins embedded_scheduler_hw_0/clk] [get_bd_pins sim_embedded_scheduler_sw_0/maxi_lite_mb_aclk] [get_bd_pins sim_embedded_scheduler_sw_0/saxi_lite_cq_aclk]
  connect_bd_net -net dma_pcie_aclk_sync_rst [get_bd_pins reset_n] [get_bd_pins CuDmaController_0/ap_rst_n] [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins cuisr_0/ap_rst_n] [get_bd_pins embedded_scheduler_hw_0/reset_n] [get_bd_pins sim_embedded_scheduler_sw_0/maxi_lite_mb_aresetn] [get_bd_pins sim_embedded_scheduler_sw_0/saxi_lite_cq_aresetn]
  connect_bd_net -net embedded_scheduler_hw_0_CqBaseAddress [get_bd_pins CuDmaController_0/CqBaseAddress] [get_bd_pins embedded_scheduler_hw_0/CqBaseAddress]
  connect_bd_net -net embedded_scheduler_hw_0_CuDmaQueue_reg [get_bd_pins CuDmaController_0/CuDmaQueue] [get_bd_pins embedded_scheduler_hw_0/CuDmaQueue_reg]
  connect_bd_net -net embedded_scheduler_hw_0_NoofSlots [get_bd_pins CuDmaController_0/NoOfSlots] [get_bd_pins embedded_scheduler_hw_0/NoofSlots]
  connect_bd_net -net embedded_scheduler_hw_0_SlotSize [get_bd_pins CuDmaController_0/SlotSize] [get_bd_pins embedded_scheduler_hw_0/SlotSize]
  connect_bd_net -net embedded_scheduler_hw_0_ap_offset_cuisr [get_bd_pins cuisr_0/Offset] [get_bd_pins embedded_scheduler_hw_0/Offset]
  connect_bd_net -net embedded_scheduler_hw_0_ap_start_cudma [get_bd_pins CuDmaController_0/ap_start] [get_bd_pins embedded_scheduler_hw_0/ap_start_cudma]
  connect_bd_net -net embedded_scheduler_hw_0_ap_start_cuisr [get_bd_pins cuisr_0/ap_start] [get_bd_pins embedded_scheduler_hw_0/ap_start_cuisr]
  connect_bd_net -net embedded_scheduler_hw_0_irq_cu_completion [get_bd_pins embedded_scheduler_hw_0/irq_cu_completion] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net embedded_scheduler_hw_0_irq_slotavailable [get_bd_pins embedded_scheduler_hw_0/irq_slotavailable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net irq_cu_1 [get_bd_pins irq_cu] [get_bd_pins embedded_scheduler_hw_0/irq_cu]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axi_intc_0/intr] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins embedded_scheduler_hw_0/irq_ack] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clk_reset_wizard
proc create_hier_cell_clk_reset_wizard { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_clk_reset_wizard() - Empty argument(s)!"}
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
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk
  create_bd_pin -dir O -type rst clkwiz_kernel2_rst
  create_bd_pin -dir O -type clk clkwiz_kernel_clk
  create_bd_pin -dir O -type rst clkwiz_kernel_rst
  create_bd_pin -dir O -type clk ddr_default_clk
  create_bd_pin -dir O -type rst ddr_default_rst

  # Create instance: ddr0_ui_clk, and set properties
  set ddr0_ui_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 ddr0_ui_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300120048} \
 ] $ddr0_ui_clk

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

  # Create port connections
  connect_bd_net -net ddr0_ui_clk_clk [get_bd_pins ddr_default_clk] [get_bd_pins ddr0_ui_clk/clk]
  connect_bd_net -net ddr0_ui_clk_sync_rst [get_bd_pins ddr_default_rst] [get_bd_pins ddr0_ui_clk/sync_rst]
  connect_bd_net -net kernel2_clk_clk [get_bd_pins clkwiz_kernel2_clk] [get_bd_pins kernel2_clk/clk]
  connect_bd_net -net kernel2_clk_sync_rst [get_bd_pins clkwiz_kernel2_rst] [get_bd_pins kernel2_clk/sync_rst]
  connect_bd_net -net kernel_clk_clk [get_bd_pins clkwiz_kernel_clk] [get_bd_pins kernel_clk/clk]
  connect_bd_net -net kernel_clk_sync_rst [get_bd_pins clkwiz_kernel_rst] [get_bd_pins kernel_clk/sync_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: static_region
proc create_hier_cell_static_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_static_region() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR_SAXI_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 data_M_AXI_4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 userpf_control_M_AXI


  # Create pins
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk_0
  create_bd_pin -dir O -type rst clkwiz_kernel2_rst_0
  create_bd_pin -dir O -type clk clkwiz_kernel_clk_0
  create_bd_pin -dir O -type rst clkwiz_kernel_rst_0
  create_bd_pin -dir O -type clk ddr_default_clk_0
  create_bd_pin -dir O -type rst ddr_default_rst_0
  create_bd_pin -dir O -type clk dma_pcie_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst dma_pcie_arst
  create_bd_pin -dir I -from 127 -to 0 -type intr irq_cu

  # Create instance: clk_reset_wizard
  create_hier_cell_clk_reset_wizard $hier_obj clk_reset_wizard

  # Create instance: connect_to_es, and set properties
  set connect_to_es [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 connect_to_es ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
 ] $connect_to_es

  # Create instance: connect_to_es_cu, and set properties
  set connect_to_es_cu [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 connect_to_es_cu ]
  set_property -dict [ list \
   CONFIG.NUM_MI {6} \
   CONFIG.NUM_SI {4} \
 ] $connect_to_es_cu

  # Create instance: dma_pcie_clk, and set properties
  set dma_pcie_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 dma_pcie_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000.0} \
 ] $dma_pcie_clk

  # Create instance: embedded_schedular
  create_hier_cell_embedded_schedular $hier_obj embedded_schedular

  # Create instance: icn_pass_0, and set properties
  set icn_pass_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_simple_interconnect:1.0 icn_pass_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ADDR_WIDTH {34} \
   CONFIG.C_M00_AXI_DATA_WIDTH {512} \
   CONFIG.C_NUM_MI {1} \
   CONFIG.C_NUM_SI {1} \
   CONFIG.C_S00_AXI_ADDR_WIDTH {64} \
   CONFIG.C_S00_AXI_DATA_WIDTH {512} \
 ] $icn_pass_0

  # Create instance: psr_dma_pcie_aclk, and set properties
  set psr_dma_pcie_aclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_dma_pcie_aclk ]

  # Create instance: sim_copy_kernel_0, and set properties
  set sim_copy_kernel_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sim_copy_kernel:1.0 sim_copy_kernel_0 ]

  # Create instance: sim_copy_kernel_1, and set properties
  set sim_copy_kernel_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sim_copy_kernel:1.0 sim_copy_kernel_1 ]

  # Create instance: sim_copy_kernel_2, and set properties
  set sim_copy_kernel_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sim_copy_kernel:1.0 sim_copy_kernel_2 ]

  # Create instance: sim_copy_kernel_3, and set properties
  set sim_copy_kernel_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sim_copy_kernel:1.0 sim_copy_kernel_3 ]

  # Create instance: sim_ddr_1, and set properties
  set sim_ddr_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:sim_ddr:3.0 sim_ddr_1 ]
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
 ] $sim_ddr_1

  # Create instance: sim_xdma_0, and set properties
  set sim_xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:sim_xdma:3.0 sim_xdma_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXICTRL_ADDR_WIDTH {64} \
   CONFIG.C_M_AXICTRL_DATA_WIDTH {32} \
   CONFIG.C_M_AXIMM_ADDR_WIDTH {64} \
   CONFIG.C_M_AXIMM_ARUSER_WIDTH {32} \
   CONFIG.C_M_AXIMM_AWUSER_WIDTH {32} \
   CONFIG.C_M_AXIMM_DATA_WIDTH {32} \
 ] $sim_xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins C0_DDR_SAXI_0] [get_bd_intf_pins icn_pass_0/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins icn_pass_0/M00_AXI] [get_bd_intf_pins sim_ddr_1/C0_DDR_SAXI]
  connect_bd_intf_net -intf_net connect_to_es_M00_AXI [get_bd_intf_pins connect_to_es/M00_AXI] [get_bd_intf_pins embedded_schedular/host]
  connect_bd_intf_net -intf_net connect_to_es_M01_AXI [get_bd_intf_pins connect_to_es/M01_AXI] [get_bd_intf_pins embedded_schedular/SAXI]
  connect_bd_intf_net -intf_net connect_to_es_M02_AXI [get_bd_intf_pins connect_to_es/M02_AXI] [get_bd_intf_pins embedded_schedular/s_axi_0]
  connect_bd_intf_net -intf_net connect_to_es_cu_M00_AXI [get_bd_intf_pins connect_to_es/S00_AXI] [get_bd_intf_pins connect_to_es_cu/M00_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M01_AXI [get_bd_intf_pins userpf_control_M_AXI] [get_bd_intf_pins connect_to_es_cu/M01_AXI]
  connect_bd_intf_net -intf_net connect_to_es_cu_M02_AXI [get_bd_intf_pins connect_to_es_cu/M02_AXI] [get_bd_intf_pins sim_copy_kernel_0/s_axi_control]
  connect_bd_intf_net -intf_net connect_to_es_cu_M03_AXI [get_bd_intf_pins connect_to_es_cu/M03_AXI] [get_bd_intf_pins sim_copy_kernel_1/s_axi_control]
  connect_bd_intf_net -intf_net connect_to_es_cu_M04_AXI [get_bd_intf_pins connect_to_es_cu/M04_AXI] [get_bd_intf_pins sim_copy_kernel_2/s_axi_control]
  connect_bd_intf_net -intf_net connect_to_es_cu_M05_AXI [get_bd_intf_pins connect_to_es_cu/M05_AXI] [get_bd_intf_pins sim_copy_kernel_3/s_axi_control]
  connect_bd_intf_net -intf_net data_M_AXI_0_1_conn [get_bd_intf_pins data_M_AXI_0] [get_bd_intf_pins sim_xdma_0/M_AXIMM]
  connect_bd_intf_net -intf_net data_M_AXI_1_1_conn [get_bd_intf_pins data_M_AXI_1] [get_bd_intf_pins sim_copy_kernel_0/m_axi_gmem]
  connect_bd_intf_net -intf_net data_M_AXI_2_1_conn [get_bd_intf_pins data_M_AXI_2] [get_bd_intf_pins sim_copy_kernel_1/m_axi_gmem]
  connect_bd_intf_net -intf_net data_M_AXI_3_1_conn [get_bd_intf_pins data_M_AXI_3] [get_bd_intf_pins sim_copy_kernel_2/m_axi_gmem]
  connect_bd_intf_net -intf_net data_M_AXI_4_1_conn [get_bd_intf_pins data_M_AXI_4] [get_bd_intf_pins sim_copy_kernel_3/m_axi_gmem]
  connect_bd_intf_net -intf_net embedded_schedular_MAXI [get_bd_intf_pins connect_to_es_cu/S03_AXI] [get_bd_intf_pins embedded_schedular/MAXI]
  connect_bd_intf_net -intf_net embedded_schedular_m_axi_CQDma [get_bd_intf_pins connect_to_es/S01_AXI] [get_bd_intf_pins embedded_schedular/m_axi_CQDma]
  connect_bd_intf_net -intf_net embedded_schedular_m_axi_CUDma_0 [get_bd_intf_pins connect_to_es_cu/S02_AXI] [get_bd_intf_pins embedded_schedular/m_axi_CUDma_0]
  connect_bd_intf_net -intf_net embedded_schedular_m_axi_a [get_bd_intf_pins connect_to_es_cu/S01_AXI] [get_bd_intf_pins embedded_schedular/m_axi_a]
  connect_bd_intf_net -intf_net sim_xdma_0_M_AXICTRL [get_bd_intf_pins connect_to_es_cu/S00_AXI] [get_bd_intf_pins sim_xdma_0/M_AXICTRL]

  # Create port connections
  connect_bd_net -net clk_reset_wizard_clkwiz_kernel2_clk [get_bd_pins clkwiz_kernel2_clk_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel2_clk]
  connect_bd_net -net clk_reset_wizard_clkwiz_kernel2_rst [get_bd_pins clkwiz_kernel2_rst_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel2_rst]
  connect_bd_net -net clk_reset_wizard_clkwiz_kernel_clk [get_bd_pins clkwiz_kernel_clk_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel_clk]
  connect_bd_net -net clk_reset_wizard_clkwiz_kernel_rst [get_bd_pins clkwiz_kernel_rst_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel_rst]
  connect_bd_net -net clk_reset_wizard_ddr_default_clk [get_bd_pins ddr_default_clk_0] [get_bd_pins clk_reset_wizard/ddr_default_clk] [get_bd_pins icn_pass_0/m00_axi_aclk] [get_bd_pins icn_pass_0/s00_axi_aclk] [get_bd_pins sim_ddr_1/c0_ddr_saxi_aclk] [get_bd_pins sim_ddr_1/c0_ui_clk] [get_bd_pins sim_ddr_1/s_xdma_axi_aclk]
  connect_bd_net -net clk_reset_wizard_ddr_default_rst [get_bd_pins ddr_default_rst_0] [get_bd_pins clk_reset_wizard/ddr_default_rst] [get_bd_pins icn_pass_0/m00_axi_aresetn] [get_bd_pins icn_pass_0/s00_axi_aresetn] [get_bd_pins sim_ddr_1/c0_ddr_saxi_aresetn] [get_bd_pins sim_ddr_1/s_xdma_axi_aresetn]
  connect_bd_net -net irq_cu_1 [get_bd_pins irq_cu] [get_bd_pins embedded_schedular/irq_cu]
  connect_bd_net -net pcie_dma [get_bd_pins dma_pcie_clk/sync_rst] [get_bd_pins psr_dma_pcie_aclk/ext_reset_in]
  connect_bd_net -net pcie_dma_aclk [get_bd_pins dma_pcie_aclk] [get_bd_pins connect_to_es/ACLK] [get_bd_pins connect_to_es/M00_ACLK] [get_bd_pins connect_to_es/M01_ACLK] [get_bd_pins connect_to_es/M02_ACLK] [get_bd_pins connect_to_es/S00_ACLK] [get_bd_pins connect_to_es/S01_ACLK] [get_bd_pins connect_to_es_cu/ACLK] [get_bd_pins connect_to_es_cu/M00_ACLK] [get_bd_pins connect_to_es_cu/M01_ACLK] [get_bd_pins connect_to_es_cu/M02_ACLK] [get_bd_pins connect_to_es_cu/M03_ACLK] [get_bd_pins connect_to_es_cu/M04_ACLK] [get_bd_pins connect_to_es_cu/M05_ACLK] [get_bd_pins connect_to_es_cu/S00_ACLK] [get_bd_pins connect_to_es_cu/S01_ACLK] [get_bd_pins connect_to_es_cu/S02_ACLK] [get_bd_pins connect_to_es_cu/S03_ACLK] [get_bd_pins dma_pcie_clk/clk] [get_bd_pins embedded_schedular/clk] [get_bd_pins psr_dma_pcie_aclk/slowest_sync_clk] [get_bd_pins sim_copy_kernel_0/ap_clk] [get_bd_pins sim_copy_kernel_1/ap_clk] [get_bd_pins sim_copy_kernel_2/ap_clk] [get_bd_pins sim_copy_kernel_3/ap_clk] [get_bd_pins sim_xdma_0/m_axictrl_aclk] [get_bd_pins sim_xdma_0/m_aximm_aclk]
  connect_bd_net -net psr_dma_pcie_aclk_mb_reset [get_bd_pins dma_pcie_arst] [get_bd_pins connect_to_es/ARESETN] [get_bd_pins connect_to_es/M00_ARESETN] [get_bd_pins connect_to_es/M01_ARESETN] [get_bd_pins connect_to_es/M02_ARESETN] [get_bd_pins connect_to_es/S00_ARESETN] [get_bd_pins connect_to_es/S01_ARESETN] [get_bd_pins connect_to_es_cu/ARESETN] [get_bd_pins connect_to_es_cu/M00_ARESETN] [get_bd_pins connect_to_es_cu/M01_ARESETN] [get_bd_pins connect_to_es_cu/M02_ARESETN] [get_bd_pins connect_to_es_cu/M03_ARESETN] [get_bd_pins connect_to_es_cu/M04_ARESETN] [get_bd_pins connect_to_es_cu/M05_ARESETN] [get_bd_pins connect_to_es_cu/S00_ARESETN] [get_bd_pins connect_to_es_cu/S01_ARESETN] [get_bd_pins connect_to_es_cu/S02_ARESETN] [get_bd_pins connect_to_es_cu/S03_ARESETN] [get_bd_pins embedded_schedular/reset_n] [get_bd_pins psr_dma_pcie_aclk/interconnect_aresetn] [get_bd_pins sim_copy_kernel_0/ap_rst_n] [get_bd_pins sim_copy_kernel_1/ap_rst_n] [get_bd_pins sim_copy_kernel_2/ap_rst_n] [get_bd_pins sim_copy_kernel_3/ap_rst_n] [get_bd_pins sim_xdma_0/m_axictrl_aresetn] [get_bd_pins sim_xdma_0/m_aximm_aresetn]
  connect_bd_net -net sim_copy_kernel_0_interrupt [get_bd_pins embedded_schedular/in2] [get_bd_pins sim_copy_kernel_0/interrupt]

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

  # Create ports

  # Create instance: dynamic_region, and set properties
  set dynamic_region [ create_bd_cell -type module -reference pfm_dynamic dynamic_region ]

  # Create instance: static_region
  create_hier_cell_static_region [current_bd_instance .] static_region

  # Create interface connections
  connect_bd_intf_net -intf_net sta_dy_ctrl0 [get_bd_intf_pins dynamic_region/userpf_control_M_AXI] [get_bd_intf_pins static_region/userpf_control_M_AXI]
  connect_bd_intf_net -intf_net sta_dy_data0 [get_bd_intf_pins dynamic_region/data_M_AXI_0] [get_bd_intf_pins static_region/data_M_AXI_0]
  connect_bd_intf_net -intf_net sta_dy_data1 [get_bd_intf_pins dynamic_region/data_M_AXI_1] [get_bd_intf_pins static_region/data_M_AXI_1]
  connect_bd_intf_net -intf_net sta_dy_data2 [get_bd_intf_pins dynamic_region/data_M_AXI_2] [get_bd_intf_pins static_region/data_M_AXI_2]
  connect_bd_intf_net -intf_net sta_dy_data3 [get_bd_intf_pins dynamic_region/data_M_AXI_3] [get_bd_intf_pins static_region/data_M_AXI_3]
  connect_bd_intf_net -intf_net sta_dy_data4 [get_bd_intf_pins dynamic_region/data_M_AXI_4] [get_bd_intf_pins static_region/data_M_AXI_4]
  connect_bd_intf_net -intf_net sta_dy_ddr1 [get_bd_intf_pins dynamic_region/C0_DDR_MAXI_0] [get_bd_intf_pins static_region/C0_DDR_SAXI_0]

  # Create port connections
  connect_bd_net -net irq_cu_conn [get_bd_pins dynamic_region/irq_cu] [get_bd_pins static_region/irq_cu]
  connect_bd_net -net static_region_clkwiz_kernel2_clk_0 [get_bd_pins dynamic_region/clkwiz_kernel2_clk_0] [get_bd_pins static_region/clkwiz_kernel2_clk_0]
  connect_bd_net -net static_region_clkwiz_kernel2_rst_0 [get_bd_pins dynamic_region/clkwiz_kernel2_rst_0] [get_bd_pins static_region/clkwiz_kernel2_rst_0]
  connect_bd_net -net static_region_clkwiz_kernel_clk_0 [get_bd_pins dynamic_region/clkwiz_kernel_clk_0] [get_bd_pins static_region/clkwiz_kernel_clk_0]
  connect_bd_net -net static_region_clkwiz_kernel_rst_0 [get_bd_pins dynamic_region/clkwiz_kernel_rst_0] [get_bd_pins static_region/clkwiz_kernel_rst_0]
  connect_bd_net -net static_region_ddr_default_clk_0 [get_bd_pins dynamic_region/ddr_default_clk_0] [get_bd_pins static_region/ddr_default_clk_0]
  connect_bd_net -net static_region_ddr_default_rst_0 [get_bd_pins dynamic_region/ddr_default_rst_0] [get_bd_pins static_region/ddr_default_rst_0]
  connect_bd_net -net static_region_dma_pcie_aclk [get_bd_pins dynamic_region/dma_pcie_aclk] [get_bd_pins static_region/dma_pcie_aclk]
  connect_bd_net -net static_region_dma_pcie_arst [get_bd_pins dynamic_region/dma_pcie_arst] [get_bd_pins static_region/dma_pcie_arst]

  # Create address segments
  assign_bd_address -offset 0x1C000000 -range 0x04000000 -target_address_space [get_bd_addr_spaces static_region/sim_xdma_0/M_AXICTRL] [get_bd_addr_segs dynamic_region/userpf_control_M_AXI/Reg0] -force
  assign_bd_address -offset 0x00180000 -range 0x00001000 -target_address_space [get_bd_addr_spaces static_region/sim_xdma_0/M_AXICTRL] [get_bd_addr_segs static_region/embedded_schedular/embedded_scheduler_hw_0/host/reg0] -force
  assign_bd_address -offset 0x00190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/sim_xdma_0/M_AXICTRL] [get_bd_addr_segs static_region/embedded_schedular/sim_embedded_scheduler_sw_0/saxi_lite_cq/saxi_lite_cq_reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CQDma] [get_bd_addr_segs static_region/embedded_schedular/axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CUDma] [get_bd_addr_segs static_region/embedded_schedular/axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C000000 -range 0x04000000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CUDma] [get_bd_addr_segs dynamic_region/userpf_control_M_AXI/Reg0] -force
  assign_bd_address -offset 0x00180000 -range 0x00001000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CQDma] [get_bd_addr_segs static_region/embedded_schedular/embedded_scheduler_hw_0/host/reg0] -force
  assign_bd_address -offset 0x00180000 -range 0x00001000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CUDma] [get_bd_addr_segs static_region/embedded_schedular/embedded_scheduler_hw_0/host/reg0] -force
  assign_bd_address -offset 0x00190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CQDma] [get_bd_addr_segs static_region/embedded_schedular/sim_embedded_scheduler_sw_0/saxi_lite_cq/saxi_lite_cq_reg] -force
  assign_bd_address -offset 0x00190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/CuDmaController_0/m_axi_CUDma] [get_bd_addr_segs static_region/embedded_schedular/sim_embedded_scheduler_sw_0/saxi_lite_cq/saxi_lite_cq_reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/cuisr_0/m_axi_a] [get_bd_addr_segs static_region/embedded_schedular/axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C000000 -range 0x04000000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/cuisr_0/m_axi_a] [get_bd_addr_segs dynamic_region/userpf_control_M_AXI/Reg0] -force
  assign_bd_address -offset 0x00180000 -range 0x00001000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/cuisr_0/m_axi_a] [get_bd_addr_segs static_region/embedded_schedular/embedded_scheduler_hw_0/host/reg0] -force
  assign_bd_address -offset 0x00190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/cuisr_0/m_axi_a] [get_bd_addr_segs static_region/embedded_schedular/sim_embedded_scheduler_sw_0/saxi_lite_cq/saxi_lite_cq_reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/sim_embedded_scheduler_sw_0/maxi_lite_mb] [get_bd_addr_segs static_region/embedded_schedular/axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1C000000 -range 0x04000000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/sim_embedded_scheduler_sw_0/maxi_lite_mb] [get_bd_addr_segs dynamic_region/userpf_control_M_AXI/Reg0] -force
  assign_bd_address -offset 0x00180000 -range 0x00001000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/sim_embedded_scheduler_sw_0/maxi_lite_mb] [get_bd_addr_segs static_region/embedded_schedular/embedded_scheduler_hw_0/host/reg0] -force
  assign_bd_address -offset 0x00190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/sim_embedded_scheduler_sw_0/maxi_lite_mb] [get_bd_addr_segs static_region/embedded_schedular/sim_embedded_scheduler_sw_0/saxi_lite_cq/saxi_lite_cq_reg] -force


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


