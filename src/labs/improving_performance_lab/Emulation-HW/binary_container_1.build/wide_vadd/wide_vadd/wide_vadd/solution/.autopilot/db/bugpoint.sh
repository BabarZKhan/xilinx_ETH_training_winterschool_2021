export PATH=/opt/Xilinx/Vivado/2020.1/tps/lnx64/binutils-2.26/bin:/opt/Xilinx/Vivado/2020.1/tps/lnx64/gcc-6.2.0/bin:/opt/Xilinx/Vitis/2020.1/tps/win64/msys64/usr/bin:/opt/Xilinx/Vitis/2020.1/tps/win64/msys64/mingw64/bin:/opt/Xilinx/Vitis/2020.1/bin:/opt/Xilinx/Vitis/2020.1/lnx64/bin:/opt/Xilinx/Vitis/2020.1/lnx64/tools/bin:/opt/Xilinx/Vivado/2020.1/gnu/microblaze/lin/bin:/opt/Xilinx/Vitis/2020.1/bin:/opt/Xilinx/Vitis/2020.1/tps/lnx64/jre9.0.4/bin:/opt/Xilinx/Vivado/2020.1/tps/lnx64/binutils-2.26/bin:/opt/Xilinx/Vitis/2020.1/bin/../gnu/aarch64/lin/aarch64-linux/bin:/opt/Xilinx/Vitis/2020.1/bin/../gnu/ppc64le/4.9.3/lnx64/bin:/opt/Xilinx/Vitis/2020.1/bin/../gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/opt/Xilinx/Vivado/2020.1/tps/lnx64/gcc-6.2.0/bin:/opt/Xilinx/Vitis/2020.1/gnu/microblaze/lin/bin:/opt/Xilinx/Vitis/2020.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/Vitis/2020.1/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/Vitis/2020.1/gnu/arm/lin/bin:/opt/Xilinx/Vitis/2020.1/gnu/aarch64/lin/aarch64-none/bin:/opt/Xilinx/Vitis/2020.1/gnu/aarch64/lin/aarch64-linux/bin:/opt/Xilinx/Vitis/2020.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/opt/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/opt/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/opt/Xilinx/Vitis/2020.1/tps/lnx64/cmake-3.3.2/bin::/opt/Xilinx/Vitis/2020.1/cardano/bin:/opt/Xilinx/Vitis/2020.1/cardano/tps/lnx64/target/bin/LNa64bin:/opt/Xilinx/Vitis/2020.1/cardano/tps/lnx64/target/bin:/opt/Xilinx/Vivado/2020.1/bin:/opt/xilinx/xrt/bin:/home/centos/src/project_data/aws-fpga/shared/bin/scripts:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/srv/git/centos-git-common:/home/centos/.local/bin:/home/centos/bin
export LD_LIBRARY_PATH=/opt/Xilinx/Vitis/2020.1/lnx64/tools/gdb_v7_2:/opt/Xilinx/Vitis/2020.1/tps/lnx64/dot-2.28/lib:/opt/Xilinx/Vitis/2020.1/lnx64/bin:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/Xilinx/Vitis/2020.1/tps/lnx64/jre9.0.4/lib/:/opt/Xilinx/Vitis/2020.1/tps/lnx64/jre9.0.4/lib//server::/opt/Xilinx/Vitis/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/Xilinx/Vitis/2020.1/tps/lnx64/jre9.0.4/lib/:/opt/Xilinx/Vitis/2020.1/tps/lnx64/jre9.0.4/lib//server:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/xilinx/xrt/lib:/opt/xilinx/xrt/lib:/opt/xilinx/xrt/lib:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o/Default:/opt/Xilinx/Vitis/2020.1/lib/lnx64.o:/opt/Xilinx/Vitis/2020.1/bin/../lnx64/tools/dot/lib:/opt/Xilinx/Vitis/2020.1/bin/../lnx64/tools/dot/lib:/opt/Xilinx/Vitis/2020.1/bin/../lnx64/tools/dot/lib:/opt/Xilinx/Vitis/2020.1/bin/../lnx64/tools/dot/lib:/opt/Xilinx/Vitis/2020.1/lnx64/tools/fpo_v7_0:/opt/Xilinx/Vitis/2020.1/lnx64/tools/fft_v9_1:/opt/Xilinx/Vitis/2020.1/lnx64/tools/fir_v7_0:/opt/Xilinx/Vitis/2020.1/lnx64/tools/dds_v6_0:/opt/Xilinx/Vitis/2020.1/lnx64/lib/csim
export HDI_APPROOT=/opt/Xilinx/Vitis/2020.1
export XILINX_OPENCL_CLANG=/opt/Xilinx/Vitis/2020.1/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -dce  -reset-lda  -loop-simplify -indvars -aggr-aa -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce   -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce    -bitwidthmin2 -bitwidthmin2  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise -complex-op-raise -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -loop-bound -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -inst-clarity -bitwidth -dump-loop-dep-to-ir -check-all-ssdm  /home/centos/workspace/improving_performance_lab/Emulation-HW/binary_container_1.build/wide_vadd/wide_vadd/wide_vadd/solution/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
