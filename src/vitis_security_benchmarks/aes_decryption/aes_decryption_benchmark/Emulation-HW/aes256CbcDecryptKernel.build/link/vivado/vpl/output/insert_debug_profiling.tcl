# Monitor points
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells aes256CbcDecryptKernel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /aes256CbcDecryptKernel_1/m_axi_gmem0_0]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /aes256CbcDecryptKernel_1/m_axi_gmem0_1]

# Platform options
set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER true [get_bd_intf_pins /slr0/interconnect_axilite_user_0/M00_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER true [get_bd_intf_pins /xtlm_simple_intercon_0/M04_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_SLAVE true [get_bd_cells /memory_subsystem]

# Call debug/profiling automation
set dpa_dict [list \
              [get_bd_cells aes256CbcDecryptKernel_1]  {TYPE exec DETAIL all CLK_SRC /aes256CbcDecryptKernel_1/ap_clk RST_SRC /aes256CbcDecryptKernel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells aes256CbcDecryptKernel_1]} INS_MODE user} \
              [get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_0]  {TYPE data DETAIL all CLK_SRC /aes256CbcDecryptKernel_1/ap_clk RST_SRC /aes256CbcDecryptKernel_1/ap_rst_n MEMORY {{DDR[0]}} PRINTABLE_KEY {[get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_0]} INS_MODE user} \
              [get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_1]  {TYPE data DETAIL all CLK_SRC /aes256CbcDecryptKernel_1/ap_clk RST_SRC /aes256CbcDecryptKernel_1/ap_rst_n MEMORY {{DDR[1]}} PRINTABLE_KEY {[get_bd_intf_pins aes256CbcDecryptKernel_1/m_axi_gmem0_1]} INS_MODE user} \
             ]
set dpa_opts [list \
              AIE_TRACE  {PACKET_RATE 100 CLK_SELECT default PROFILE_STREAMS false} \
              SETTINGS  {HW_EMU true IS_EMBEDDED false} \
              AXILITE  {MASTER /slr0/interconnect_axilite_user_0/M00_AXI CLK_SRC /slr0/interconnect_axilite_user_0/M00_ACLK RST_SRC /dma_pcie_arst} \
              TRACE_OFFLOAD  {DEPTH 8192 MEM_SPACE FIFO MEM_INDEX 0 SLAVE /memory_subsystem MASTER /xtlm_simple_intercon_0/M04_AXI CLK_SRC /xtlm_simple_intercon_0/m04_axi_aclk RST_SRC /xtlm_simple_intercon_0/m04_axi_aresetn SLR SLR0 DEDICATED true USE_HIERARCHY true FIFO_ADDR_SEG 0x0000008000000000 FIFO_ADDR_RANGE 0x0000000000400000} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/centos/workspace/aes_decryption_benchmark/Emulation-HW/aes256CbcDecryptKernel.build/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Assign addresses and write debug_ip_layout
assign_bd_address
debug_profile::write_debug_ip_layout true "xilinx:aws-vu9p-f1:shell-v04261818:201920.2" "/home/centos/workspace/aes_decryption_benchmark/Emulation-HW/aes256CbcDecryptKernel.build/link/int"
