#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Fri Jan 15 11:36:36 UTC 2021
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail

xv_cxl_lib_path="/opt/Xilinx/Vivado/2020.1/data/xsim"
xv_cpt_lib_path="/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext"
xv_boost_lib_path="/opt/Xilinx/Vivado/2020.1/tps/boost_1_64_0"

echo "xvlog --incr --relax -prj emu_wrapper_vlog.prj"
xvlog --incr --relax -prj emu_wrapper_vlog.prj 2>&1 | tee compile.log

echo "xvhdl --incr --relax -prj emu_wrapper_vhdl.prj"
xvhdl --incr --relax -prj emu_wrapper_vhdl.prj 2>&1 | tee -a compile.log

echo "xsc -c --gcc_compile_options "-DBOOST_SYSTEM_NO_DEPRECATED" --gcc_compile_options "-I/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/include" --gcc_compile_options "-I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/src -I../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sim -I../../../../prj.ip_user_files/bd/emu/sim -I$xv_boost_lib_path -I$xv_ext_lib_path/protobuf/include -I$xv_cxl_lib_path/ip/xtlm/include -I$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include -I$xv_cxl_lib_path/ip/common_cpp_v1_0/include -I$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" -work xil_defaultlib -f emu_wrapper_xsc.prj"
xsc -c --gcc_compile_options "-DBOOST_SYSTEM_NO_DEPRECATED" --gcc_compile_options "-I/opt/Xilinx/Vivado/2020.1/data/simmodels/xsim/2020.1/lnx64/6.2.0/ext/protobuf/include" --gcc_compile_options "-I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_xtlm_simple_intercon_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_1/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_2/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/bd_0/ip/ip_3/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_memory_subsystem_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_sim_ddr_3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_1_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_icn_pass_3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_hub_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon0_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon1_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon2_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/src -I../../../../prj.ip_user_files/bd/pfm_dynamic/ip/pfm_dynamic_dpa_mon3_0/sim -I../../../../prj.ip_user_files/bd/pfm_dynamic/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_embedded_scheduler_sw_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/common -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/axi_crossbar/systemc_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/top -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/cpp_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim_tlm/ddr_model/systemc_srcs -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_ddr_1_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/src -I../../../../prj.ip_user_files/bd/emu/ip/emu_icn_pass_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/common -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/cpp_src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/src/sysc_src -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_xdma_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_0_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_1_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_2_0/sim -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sysc -I../../../../prj.ip_user_files/bd/emu/ip/emu_sim_copy_kernel_3_0/sim -I../../../../prj.ip_user_files/bd/emu/sim -I$xv_boost_lib_path -I$xv_ext_lib_path/protobuf/include -I$xv_cxl_lib_path/ip/xtlm/include -I$xv_cxl_lib_path/ip/xtlm_simple_interconnect_v1_0/include -I$xv_cxl_lib_path/ip/common_cpp_v1_0/include -I$xv_cxl_lib_path/ip/emu_perf_common_v1_0/include" -work xil_defaultlib -f emu_wrapper_xsc.prj 2>&1 | tee -a compile.log

