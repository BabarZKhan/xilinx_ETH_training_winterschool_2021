#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Jan 14 20:12:32 UTC 2021
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
xv_lib_path="/opt/Xilinx/Vivado/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vivado/2020.1/lib/lnx64.o"
set -Eeuo pipefail

xv_cxl_lib_path="/opt/Xilinx/Vivado/2020.1/data/xsim"
xv_cpt_lib_path="/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext"
xv_boost_lib_path="/opt/Xilinx/Vivado/2020.1/tps/boost_1_64_0"

echo "xsc --shared   --gcc_link_options "-L/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/ -lprotobuf"  -lib xil_defaultlib -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so"
xsc --shared   --gcc_link_options "-L/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/ -lprotobuf"  -lib xil_defaultlib -gcc_link_options "-L$xv_ext_lib_path/protobuf -lprotobuf" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0 -lxtlm_simple_interconnect_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -gcc_link_options "-L$xv_cxl_lib_path/ip/emu_perf_common_v1_0 -lemu_perf_common_v1_0" -o libdpi.so

echo "xelab -wto 1c39b58ce5d346e28b709f5beb3df8e9 --incr --debug typical --relax --mt 8 -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sim" --include "../../../../prj.ip_user_files/bd/emu/sim" --include "$xv_boost_lib_path" -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L xlconcat_v2_1_3 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_23 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_21 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L axi_clock_converter_v2_1_20 -L shell_utils_cudma_controller_v1_0_0 -L axi_intc_v4_1_14 -L shell_utils_cuisr_v1_0_0 -L shell_utils_embedded_scheduler_hw_v1_0_0 -L axi_protocol_converter_v2_1_21 -L axi_mmu_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log    --include /opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/include -ignore_assertions   --debug sc "
xelab -wto 1c39b58ce5d346e28b709f5beb3df8e9 --incr --debug typical --relax --mt 8 -sv_root "$xv_ext_lib_path/protobuf" -sc_lib libprotobuf.so --include "$xv_ext_lib_path/protobuf/include" -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0" -sc_lib libxtlm_simple_interconnect_v1_0.so --include "$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -sv_root "$xv_cxl_lib_path/ip/emu_perf_common_v1_0" -sc_lib libemu_perf_common_v1_0.so --include "$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim" --include "../../../../prj.ip_user_files/bd/pfm_dynamic/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/axi_crossbar/systemc_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/top" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/cpp_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/systemc_srcs" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sim" --include "../../../../prj.ip_user_files/bd/emu/sim" --include "$xv_boost_lib_path" -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L xlconcat_v2_1_3 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_23 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_21 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L axi_clock_converter_v2_1_20 -L shell_utils_cudma_controller_v1_0_0 -L axi_intc_v4_1_14 -L shell_utils_cuisr_v1_0_0 -L shell_utils_embedded_scheduler_hw_v1_0_0 -L axi_protocol_converter_v2_1_21 -L axi_mmu_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log    --include /opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/include -ignore_assertions   --debug sc 

