	.file	"/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/matmul_naive/matmul_naive.clc.csim_cu-opt.bc"
	.file	1 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.text
	.globl	matmul_naive
	.align	16, 0x90
	.type	matmul_naive,@function
matmul_naive:                           # @matmul_naive
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 30 0                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:30:0
# BB#0:
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 256
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: matmul_naive:in1 <- RSI+0
	#DEBUG_VALUE: matmul_naive:in2 <- RDX+0
	#DEBUG_VALUE: matmul_naive:out_r <- RCX+0
	#DEBUG_VALUE: matmul_naive:dim <- R8D+0
	movl	%r8d, 192(%rsp)         # 4-byte Spill
.Ltmp20:
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_naive:dim <- undef
	movq	%rcx, 112(%rsp)         # 8-byte Spill
.Ltmp21:
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:out_r <- undef
	movq	%rdx, %r15
.Ltmp22:
	#DEBUG_VALUE: matmul_naive:in2 <- R15+0
	movq	%r15, 184(%rsp)         # 8-byte Spill
	movq	%rsi, %r13
.Ltmp23:
	#DEBUG_VALUE: matmul_naive:in1 <- R13+0
	movq	%r13, 176(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	leaq	__unnamed_1(%rip), %rbx
	movq	%rbx, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$16, 56(%rsp)
	movl	$16, 48(%rsp)
	movl	$16, 40(%rsp)
	movl	$16, 32(%rsp)
	movl	$0, (%rsp)
	leaq	__unnamed_2(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	movl	$64, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%rbp, %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecBitsMap@PLT
	leaq	__unnamed_3(%rip), %r12
	leaq	__unnamed_4(%rip), %rax
	leaq	__unnamed_5(%rip), %r14
	leaq	__unnamed_6(%rip), %rcx
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r13, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rbp
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	leaq	__unnamed_7(%rip), %rax
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r13, %rdi
.Ltmp24:
	#DEBUG_VALUE: matmul_naive:in1 <- [%rsp+$176]+$0
	movq	%rax, %rsi
	movq	%rax, %r13
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	leaq	__unnamed_8(%rip), %rax
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r15, %rdi
.Ltmp25:
	#DEBUG_VALUE: matmul_naive:in2 <- [%rsp+$184]+$0
	movq	%r13, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	leaq	__unnamed_9(%rip), %rax
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	112(%rsp), %r15         # 8-byte Reload
.Ltmp26:
	#DEBUG_VALUE: matmul_naive:out_r <- R15+0
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r14, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r15, %rdi
.Ltmp27:
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	movq	%r13, %r14
	movq	%r14, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movl	192(%rsp), %ebp         # 4-byte Reload
.Ltmp28:
	#DEBUG_VALUE: matmul_naive:dim <- EBP+0
	movl	%ebp, %edi
	xorb	%al, %al
	callq	_ssdm_op_SpecBitsMap@PLT
	leaq	__unnamed_10(%rip), %rax
	movq	%rbx, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	%ebp, %edi
	movl	%ebp, %r15d
.Ltmp29:
	#DEBUG_VALUE: matmul_naive:dim <- R15D+0
	leaq	__unnamed_6(%rip), %rbp
	movq	%rbp, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%rbx, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	%r15d, %edi
	movq	%r14, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%rbx, 72(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	$0, %edi
	movq	%rbp, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movl	%r15d, %eax
.Ltmp30:
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	imull	%eax, %eax
.Ltmp31:
	#DEBUG_VALUE: i <- 0+0
	movq	%rax, 120(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB0_5
# BB#1:                                 # %.split9.lr.ph
	#DEBUG_VALUE: matmul_naive:in1 <- [%rsp+$176]+$0
	#DEBUG_VALUE: matmul_naive:in2 <- [%rsp+$184]+$0
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	#DEBUG_VALUE: i <- 0+0
	movq	176(%rsp), %r15         # 8-byte Reload
.Ltmp32:
	#DEBUG_VALUE: matmul_naive:in1 <- R15+0
	.loc	1 39 9 prologue_end     # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:9
	andq	$-4, %r15
.Ltmp33:
	addq	128(%rsp), %r15         # 8-byte Folded Reload
	movq	%r15, %rdi
	movq	120(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %esi
	callq	_ssdm_op_ReadReq.m_axi.p1i32@PLT
	xorl	%ebx, %ebx
	.loc	1 39 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:18
	leaq	__unnamed_1(%rip), %rax
	leaq	__unnamed_11(%rip), %r13
	.loc	1 40 10                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:40:10
.Ltmp34:
	leaq	matmul_naive.A(%rip), %r14
	movq	%rbp, %r12
	movq	%rax, %rbp
.Ltmp35:
	.align	16, 0x90
.LBB0_2:                                # %.split9
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_naive:in2 <- [%rsp+$184]+$0
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	#DEBUG_VALUE: i <- 0+0
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 39 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:18
	movq	%rbp, %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	movq	%r13, %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 40 12                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:40:12
.Ltmp36:
	movq	%r15, %rdi
	callq	_ssdm_op_Read.m_axi.p1i32@PLT
.Ltmp37:
	.loc	1 39 27                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:27
	leaq	4(%rbx), %rcx
	.loc	1 40 10                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:40:10
.Ltmp38:
	andq	$-4, %rbx
	movl	%eax, (%rbx,%r14)
.Ltmp39:
	.loc	1 39 27                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:27
	decq	%r12
	movq	%rcx, %rbx
.Ltmp40:
	.loc	1 39 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:39:9
	jne	.LBB0_2
.Ltmp41:
# BB#3:                                 # %.lr.ph56
	#DEBUG_VALUE: matmul_naive:in2 <- [%rsp+$184]+$0
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	#DEBUG_VALUE: i <- 0+0
	movq	184(%rsp), %r13         # 8-byte Reload
.Ltmp42:
	#DEBUG_VALUE: matmul_naive:in2 <- R13+0
	.loc	1 46 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:9
	andq	$-4, %r13
.Ltmp43:
	addq	128(%rsp), %r13         # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	120(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %esi
	callq	_ssdm_op_ReadReq.m_axi.p1i32@PLT
	xorl	%ebx, %ebx
	.loc	1 46 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:18
	leaq	__unnamed_1(%rip), %r15
	leaq	__unnamed_12(%rip), %r14
	.loc	1 47 10                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:47:10
.Ltmp44:
	leaq	matmul_naive.B(%rip), %r12
.Ltmp45:
	.align	16, 0x90
.LBB0_4:                                # %.split7
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	#DEBUG_VALUE: i <- 0+0
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 46 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:18
	movq	%r15, %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	movq	%r14, %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 47 12                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:47:12
.Ltmp46:
	movq	%r13, %rdi
	callq	_ssdm_op_Read.m_axi.p1i32@PLT
.Ltmp47:
	.loc	1 46 27                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:27
	leaq	4(%rbx), %rcx
	.loc	1 47 10                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:47:10
.Ltmp48:
	andq	$-4, %rbx
	movl	%eax, (%rbx,%r12)
.Ltmp49:
	.loc	1 46 27                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:27
	decq	%rbp
	movq	%rcx, %rbx
.Ltmp50:
	.loc	1 46 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:46:9
	jne	.LBB0_4
.Ltmp51:
.LBB0_5:                                # %._crit_edge57
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: matmul_naive:dim <- [%rsp+$192]+$0
	movl	192(%rsp), %eax         # 4-byte Reload
.Ltmp52:
	#DEBUG_VALUE: matmul_naive:dim <- EAX+0
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:9
	testl	%eax, %eax
.Ltmp53:
	#DEBUG_VALUE: i <- 0+0
	je	.LBB0_12
# BB#6:                                 # %.split5.lr.ph
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
.Ltmp54:
	#DEBUG_VALUE: matmul_naive:dim <- EAX+0
	#DEBUG_VALUE: i <- 0+0
	movl	%eax, %eax
.Ltmp55:
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %rbx
	.loc	1 53 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:53:11
.Ltmp56:
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movslq	%eax, %rax
.Ltmp57:
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:9
	shlq	$2, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	$0, 160(%rsp)           # 8-byte Folded Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_7:                                # %.split5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	$64, %edi
	movl	$64, %esi
	movl	$64, %edx
	xorb	%al, %al
	.loc	1 51 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:18
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_13(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
.Ltmp58:
	#DEBUG_VALUE: j <- 0+0
	imulq	%rbp, %rbx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movq	%rbp, %rdx
	.align	16, 0x90
.LBB0_8:                                # %.split2.lr.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%r14, 184(%rsp)         # 8-byte Spill
	movl	$64, %edi
	movl	$64, %esi
	movl	$64, %edx
	xorb	%al, %al
	.loc	1 54 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:54:11
.Ltmp59:
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_14(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	xorl	%r15d, %r15d
.Ltmp60:
	#DEBUG_VALUE: k <- 0+0
	#DEBUG_VALUE: result <- 0+0
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:9
	movq	160(%rsp), %rbx         # 8-byte Reload
	.loc	1 53 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:53:11
.Ltmp61:
	movq	%r14, %r12
	movq	168(%rsp), %r14         # 8-byte Reload
	.loc	1 58 36                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:36
.Ltmp62:
	leaq	matmul_naive.B(%rip), %r13
	.loc	1 58 19                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:19
	leaq	matmul_naive.A(%rip), %rbp
.Ltmp63:
	.align	16, 0x90
.LBB0_9:                                # %.split2
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: result <- 0+0
	#DEBUG_VALUE: k <- 0+0
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 54 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:54:11
	leaq	__unnamed_1(%rip), %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$64, %edi
	movl	$64, %esi
	movl	$64, %edx
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_15(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 58 36                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:36
.Ltmp64:
	movq	%r12, %rax
	andq	$-4, %rax
.Ltmp65:
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:57:31
	addq	192(%rsp), %r12         # 8-byte Folded Reload
	.loc	1 58 36                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:36
.Ltmp66:
	movl	(%rax,%r13), %eax
	.loc	1 58 19                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:19
	movq	%rbx, %rcx
	andq	$-4, %rcx
	.loc	1 58 34                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:34
	imull	(%rcx,%rbp), %eax
.Ltmp67:
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:57:31
	addq	$4, %rbx
	.loc	1 58 16                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:58:16
.Ltmp68:
	addl	%eax, %r15d
.Ltmp69:
	#DEBUG_VALUE: result <- EAX+0
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:57:31
	decq	%r14
.Ltmp70:
	.loc	1 57 13                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:57:13
	jne	.LBB0_9
.Ltmp71:
# BB#10:                                # %._crit_edge46
                                        #   in Loop: Header=BB0_8 Depth=2
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: result <- EAX+0
	#DEBUG_VALUE: k <- 0+0
	.loc	1 60 22                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:60:22
	movq	152(%rsp), %rax         # 8-byte Reload
.Ltmp72:
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx,4), %rax
	andq	$-4, %rax
	leaq	matmul_naive.C(%rip), %rcx
	movl	%r15d, (%rax,%rcx)
	movq	184(%rsp), %r14         # 8-byte Reload
.Ltmp73:
	.loc	1 53 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:53:11
	addq	$4, %r14
	.loc	1 53 41                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:53:41
.Ltmp74:
	incq	%rdx
.Ltmp75:
	#DEBUG_VALUE: j <- RDX+0
	cmpq	$64, %rdx
	jne	.LBB0_8
.Ltmp76:
# BB#11:                                #   in Loop: Header=BB0_7 Depth=1
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: k <- 0+0
	movq	136(%rsp), %rbx         # 8-byte Reload
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:9
	addq	%rbx, 160(%rsp)         # 8-byte Folded Spill
	movq	144(%rsp), %rbp         # 8-byte Reload
	.loc	1 51 35                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:51:35
.Ltmp77:
	incq	%rbp
.Ltmp78:
	#DEBUG_VALUE: i <- RBP+0
	cmpq	168(%rsp), %rbp         # 8-byte Folded Reload
	jne	.LBB0_7
.Ltmp79:
.LBB0_12:                               # %._crit_edge52.loopexit
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	movq	120(%rsp), %rbp         # 8-byte Reload
	testl	%ebp, %ebp
.Ltmp80:
	#DEBUG_VALUE: i <- 0+0
	movq	128(%rsp), %r13         # 8-byte Reload
	.loc	1 67 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:67:9
.Ltmp81:
	jle	.LBB0_16
# BB#13:                                # %.split.lr.ph
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$112]+$0
	#DEBUG_VALUE: i <- 0+0
	movq	112(%rsp), %rax         # 8-byte Reload
.Ltmp82:
	#DEBUG_VALUE: matmul_naive:out_r <- RAX+0
	andq	$-4, %rax
.Ltmp83:
	addq	%rax, %r13
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	_ssdm_op_WriteReq.m_axi.p1i32@PLT
	xorl	%ebx, %ebx
	.loc	1 67 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:67:18
	leaq	__unnamed_1(%rip), %r14
	leaq	__unnamed_16(%rip), %r15
	.loc	1 68 16                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:68:16
.Ltmp84:
	leaq	matmul_naive.C(%rip), %r12
.Ltmp85:
	.align	16, 0x90
.LBB0_14:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: i <- 0+0
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 67 18                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:67:18
	movq	%r14, %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	movq	%r15, %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 68 16                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:68:16
.Ltmp86:
	movq	%rbx, %rax
	andq	$-4, %rax
	movl	(%rax,%r12), %esi
	.loc	1 68 14                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:68:14
	movq	%r13, %rdi
	movl	$15, %edx
	callq	_ssdm_op_Write.m_axi.p1i32@PLT
.Ltmp87:
	.loc	1 67 27                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:67:27
	addq	$4, %rbx
	decq	%rbp
.Ltmp88:
	.loc	1 67 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:67:9
	jne	.LBB0_14
.Ltmp89:
# BB#15:                                # %._crit_edge.loopexit
	.loc	1 70 1                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl:70:1
	movq	%r13, %rdi
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ssdm_op_WriteResp.m_axi.p1i32@PLT # TAILCALL
.LBB0_16:                               # %._crit_edge
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp90:
.Ltmp91:
	.size	matmul_naive, .Ltmp91-matmul_naive
.Lfunc_end0:
	.cfi_endproc

	.type	matmul_naive.A,@object  # @matmul_naive.A
	.local	matmul_naive.A
	.comm	matmul_naive.A,16384,512
	.type	matmul_naive.B,@object  # @matmul_naive.B
	.local	matmul_naive.B
	.comm	matmul_naive.B,16384,512
	.type	matmul_naive.C,@object  # @matmul_naive.C
	.local	matmul_naive.C
	.comm	matmul_naive.C,16384,512
	.type	c_size,@object          # @c_size
	.section	.rodata,"a",@progbits
	.globl	c_size
	.align	128
c_size:
	.long	64                      # 0x40
	.size	c_size, 4

	.type	__unnamed_2,@object     # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
__unnamed_2:
	.asciz	 "m_axi"
	.size	__unnamed_2, 6

	.type	__unnamed_1,@object     # @1
__unnamed_1:
	.zero	1
	.size	__unnamed_1, 1

	.type	__unnamed_6,@object     # @2
__unnamed_6:
	.asciz	 "s_axilite"
	.size	__unnamed_6, 10

	.type	__unnamed_3,@object     # @3
__unnamed_3:
	.asciz	 "control"
	.size	__unnamed_3, 8

	.type	__unnamed_4,@object     # @4
__unnamed_4:
	.asciz	 "16"
	.size	__unnamed_4, 3

	.type	__unnamed_5,@object     # @5
__unnamed_5:
	.asciz	 "offset_noalias"
	.size	__unnamed_5, 15

	.type	__unnamed_7,@object     # @6
__unnamed_7:
	.asciz	 "ap_none"
	.size	__unnamed_7, 8

	.type	__unnamed_8,@object     # @7
__unnamed_8:
	.asciz	 "28"
	.size	__unnamed_8, 3

	.type	__unnamed_9,@object     # @8
__unnamed_9:
	.asciz	 "40"
	.size	__unnamed_9, 3

	.type	__unnamed_10,@object    # @9
__unnamed_10:
	.asciz	 "52"
	.size	__unnamed_10, 3

	.type	__unnamed_16,@object    # @10
__unnamed_16:
	.asciz	 "writeC"
	.size	__unnamed_16, 7

	.type	__unnamed_15,@object    # @11
__unnamed_15:
	.asciz	 "lreorder3"
	.size	__unnamed_15, 10

	.type	__unnamed_14,@object    # @12
__unnamed_14:
	.asciz	 "lreorder2"
	.size	__unnamed_14, 10

	.type	__unnamed_13,@object    # @13
__unnamed_13:
	.asciz	 "lreorder1"
	.size	__unnamed_13, 10

	.type	__unnamed_12,@object    # @14
__unnamed_12:
	.asciz	 "readB"
	.size	__unnamed_12, 6

	.type	__unnamed_11,@object    # @15
__unnamed_11:
	.asciz	 "readA"
	.size	__unnamed_11, 6

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	465                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1ca DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	1                       # DW_AT_APPLE_optimized
	.byte	2                       # Abbrev [2] 0x27:0x7 DW_TAG_base_type
	.long	.Lstring4               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x2e:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	4                       # Abbrev [4] 0x31:0xd DW_TAG_array_type
	.long	39                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x36:0x7 DW_TAG_subrange_type
	.long	46                      # DW_AT_type
	.short	4095                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x3e:0x171 DW_TAG_subprogram
	.long	.Lstring5               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	7                       # Abbrev [7] 0x5a:0x15 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	49                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.A
	.byte	7                       # Abbrev [7] 0x6f:0x15 DW_TAG_variable
	.long	.Lstring6               # DW_AT_name
	.long	49                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.B
	.byte	7                       # Abbrev [7] 0x84:0x15 DW_TAG_variable
	.long	.Lstring7               # DW_AT_name
	.long	49                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.C
	.byte	8                       # Abbrev [8] 0x99:0xf DW_TAG_formal_parameter
	.long	.Lstring9               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	458                     # DW_AT_type
.Lset0 = .Ldebug_loc0-.Lsection_debug_loc # DW_AT_location
	.long	.Lset0
	.byte	8                       # Abbrev [8] 0xa8:0xf DW_TAG_formal_parameter
	.long	.Lstring10              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	458                     # DW_AT_type
.Lset1 = .Ldebug_loc5-.Lsection_debug_loc # DW_AT_location
	.long	.Lset1
	.byte	8                       # Abbrev [8] 0xb7:0xf DW_TAG_formal_parameter
	.long	.Lstring11              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	463                     # DW_AT_type
.Lset2 = .Ldebug_loc10-.Lsection_debug_loc # DW_AT_location
	.long	.Lset2
	.byte	8                       # Abbrev [8] 0xc6:0xf DW_TAG_formal_parameter
	.long	.Lstring12              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset3 = .Ldebug_loc16-.Lsection_debug_loc # DW_AT_location
	.long	.Lset3
	.byte	9                       # Abbrev [9] 0xd5:0x22 DW_TAG_lexical_block
	.quad	.Ltmp32                 # DW_AT_low_pc
	.quad	.Ltmp41                 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0xe6:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0xf7:0x22 DW_TAG_lexical_block
	.quad	.Ltmp42                 # DW_AT_low_pc
	.quad	.Ltmp51                 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x108:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x119:0x73 DW_TAG_lexical_block
	.quad	.Ltmp52                 # DW_AT_low_pc
	.quad	.Ltmp79                 # DW_AT_high_pc
	.byte	11                      # Abbrev [11] 0x12a:0xf DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset4 = .Ldebug_loc24-.Lsection_debug_loc # DW_AT_location
	.long	.Lset4
	.byte	12                      # Abbrev [12] 0x139:0x52 DW_TAG_lexical_block
	.long	.Ldebug_range+288       # DW_AT_ranges
	.byte	12                      # Abbrev [12] 0x13e:0x4c DW_TAG_lexical_block
	.long	.Ldebug_range+224       # DW_AT_ranges
	.byte	12                      # Abbrev [12] 0x143:0x46 DW_TAG_lexical_block
	.long	.Ldebug_range+160       # DW_AT_ranges
	.byte	11                      # Abbrev [11] 0x148:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset5 = .Ldebug_loc27-.Lsection_debug_loc # DW_AT_location
	.long	.Lset5
	.byte	12                      # Abbrev [12] 0x157:0x31 DW_TAG_lexical_block
	.long	.Ldebug_range+96        # DW_AT_ranges
	.byte	12                      # Abbrev [12] 0x15c:0x2b DW_TAG_lexical_block
	.long	.Ldebug_range+48        # DW_AT_ranges
	.byte	11                      # Abbrev [11] 0x161:0xf DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset6 = .Ldebug_loc30-.Lsection_debug_loc # DW_AT_location
	.long	.Lset6
	.byte	12                      # Abbrev [12] 0x170:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+0         # DW_AT_ranges
	.byte	10                      # Abbrev [10] 0x175:0x10 DW_TAG_variable
	.long	.Lstring16              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x18c:0x22 DW_TAG_lexical_block
	.quad	.Ltmp81                 # DW_AT_low_pc
	.quad	.Ltmp89                 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x19d:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x1af:0x16 DW_TAG_variable
	.long	.Lstring8               # DW_AT_name
	.long	39                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	c_size
	.byte	14                      # Abbrev [14] 0x1c5:0x5 DW_TAG_const_type
	.long	39                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x1ca:0x5 DW_TAG_pointer_type
	.long	453                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x1cf:0x5 DW_TAG_pointer_type
	.long	39                      # DW_AT_type
	.byte	0                       # End Of Children Mark
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	 "\341\177"             # DW_AT_APPLE_optimized
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_pubtypes,"",@progbits
.Lset7 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset7
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset8 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset8
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp23
.Lset9 = .Ltmp93-.Ltmp92                # Loc expr size
	.short	.Lset9
.Ltmp92:
	.byte	84                      # DW_OP_reg4
.Ltmp93:
	.quad	.Ltmp23
	.quad	.Ltmp24
.Lset10 = .Ltmp95-.Ltmp94               # Loc expr size
	.short	.Lset10
.Ltmp94:
	.byte	93                      # DW_OP_reg13
.Ltmp95:
	.quad	.Ltmp24
	.quad	.Ltmp32
.Lset11 = .Ltmp97-.Ltmp96               # Loc expr size
	.short	.Lset11
.Ltmp96:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\260\001"
.Ltmp97:
	.quad	.Ltmp32
	.quad	.Ltmp33
.Lset12 = .Ltmp99-.Ltmp98               # Loc expr size
	.short	.Lset12
.Ltmp98:
	.byte	95                      # DW_OP_reg15
.Ltmp99:
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Lfunc_begin0
	.quad	.Ltmp22
.Lset13 = .Ltmp101-.Ltmp100             # Loc expr size
	.short	.Lset13
.Ltmp100:
	.byte	81                      # DW_OP_reg1
.Ltmp101:
	.quad	.Ltmp22
	.quad	.Ltmp25
.Lset14 = .Ltmp103-.Ltmp102             # Loc expr size
	.short	.Lset14
.Ltmp102:
	.byte	95                      # DW_OP_reg15
.Ltmp103:
	.quad	.Ltmp25
	.quad	.Ltmp42
.Lset15 = .Ltmp105-.Ltmp104             # Loc expr size
	.short	.Lset15
.Ltmp104:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\270\001"
.Ltmp105:
	.quad	.Ltmp42
	.quad	.Ltmp43
.Lset16 = .Ltmp107-.Ltmp106             # Loc expr size
	.short	.Lset16
.Ltmp106:
	.byte	93                      # DW_OP_reg13
.Ltmp107:
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Lfunc_begin0
	.quad	.Ltmp21
.Lset17 = .Ltmp109-.Ltmp108             # Loc expr size
	.short	.Lset17
.Ltmp108:
	.byte	82                      # DW_OP_reg2
.Ltmp109:
	.quad	.Ltmp21
	.quad	.Ltmp21
.Lset18 = .Ltmp111-.Ltmp110             # Loc expr size
	.short	.Lset18
.Ltmp110:
	.byte	119                     # DW_OP_breg7
	.asciz	 "\360"
.Ltmp111:
	.quad	.Ltmp26
	.quad	.Ltmp27
.Lset19 = .Ltmp113-.Ltmp112             # Loc expr size
	.short	.Lset19
.Ltmp112:
	.byte	95                      # DW_OP_reg15
.Ltmp113:
	.quad	.Ltmp27
	.quad	.Ltmp82
.Lset20 = .Ltmp115-.Ltmp114             # Loc expr size
	.short	.Lset20
.Ltmp114:
	.byte	119                     # DW_OP_breg7
	.asciz	 "\360"
.Ltmp115:
	.quad	.Ltmp82
	.quad	.Ltmp83
.Lset21 = .Ltmp117-.Ltmp116             # Loc expr size
	.short	.Lset21
.Ltmp116:
	.byte	80                      # DW_OP_reg0
.Ltmp117:
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Lfunc_begin0
	.quad	.Ltmp20
.Lset22 = .Ltmp119-.Ltmp118             # Loc expr size
	.short	.Lset22
.Ltmp118:
	.byte	88                      # DW_OP_reg8
.Ltmp119:
	.quad	.Ltmp20
	.quad	.Ltmp20
.Lset23 = .Ltmp121-.Ltmp120             # Loc expr size
	.short	.Lset23
.Ltmp120:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\300\001"
.Ltmp121:
	.quad	.Ltmp28
	.quad	.Ltmp29
.Lset24 = .Ltmp123-.Ltmp122             # Loc expr size
	.short	.Lset24
.Ltmp122:
	.byte	86                      # DW_OP_reg6
.Ltmp123:
	.quad	.Ltmp29
	.quad	.Ltmp30
.Lset25 = .Ltmp125-.Ltmp124             # Loc expr size
	.short	.Lset25
.Ltmp124:
	.byte	95                      # DW_OP_reg15
.Ltmp125:
	.quad	.Ltmp30
	.quad	.Ltmp52
.Lset26 = .Ltmp127-.Ltmp126             # Loc expr size
	.short	.Lset26
.Ltmp126:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\300\001"
.Ltmp127:
	.quad	.Ltmp52
	.quad	.Ltmp55
.Lset27 = .Ltmp129-.Ltmp128             # Loc expr size
	.short	.Lset27
.Ltmp128:
	.byte	80                      # DW_OP_reg0
.Ltmp129:
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp53
	.quad	.Ltmp78
.Lset28 = .Ltmp131-.Ltmp130             # Loc expr size
	.short	.Lset28
.Ltmp130:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp131:
	.quad	.Ltmp78
	.quad	.Ltmp79
.Lset29 = .Ltmp133-.Ltmp132             # Loc expr size
	.short	.Lset29
.Ltmp132:
	.byte	86                      # DW_OP_reg6
.Ltmp133:
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Ltmp58
	.quad	.Ltmp75
.Lset30 = .Ltmp135-.Ltmp134             # Loc expr size
	.short	.Lset30
.Ltmp134:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp135:
	.quad	.Ltmp75
	.quad	.Ltmp76
.Lset31 = .Ltmp137-.Ltmp136             # Loc expr size
	.short	.Lset31
.Ltmp136:
	.byte	81                      # DW_OP_reg1
.Ltmp137:
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Ltmp60
	.quad	.Ltmp69
.Lset32 = .Ltmp139-.Ltmp138             # Loc expr size
	.short	.Lset32
.Ltmp138:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp139:
	.quad	.Ltmp69
	.quad	.Ltmp72
.Lset33 = .Ltmp141-.Ltmp140             # Loc expr size
	.short	.Lset33
.Ltmp140:
	.byte	80                      # DW_OP_reg0
.Ltmp141:
	.quad	0
	.quad	0
.Ldebug_loc34:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.quad	.Ltmp62
	.quad	.Ltmp63
	.quad	.Ltmp64
	.quad	.Ltmp71
	.quad	0
	.quad	0
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp62
	.quad	.Ltmp73
	.quad	0
	.quad	0
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp62
	.quad	.Ltmp73
	.quad	.Ltmp74
	.quad	.Ltmp76
	.quad	0
	.quad	0
	.quad	.Ltmp56
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp76
	.quad	0
	.quad	0
	.quad	.Ltmp56
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp76
	.quad	0
	.quad	0
	.quad	.Ltmp56
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp76
	.quad	.Ltmp77
	.quad	.Ltmp79
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 7.0.0 "
.Lstring1:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_naive/matmul_naive/cpu_sources/matmul.cl"
.Lstring2:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/matmul_naive"
.Lstring3:
	.asciz	 "A"
.Lstring4:
	.asciz	 "int"
.Lstring5:
	.asciz	 "matmul_naive"
.Lstring6:
	.asciz	 "B"
.Lstring7:
	.asciz	 "C"
.Lstring8:
	.asciz	 "c_size"
.Lstring9:
	.asciz	 "in1"
.Lstring10:
	.asciz	 "in2"
.Lstring11:
	.asciz	 "out_r"
.Lstring12:
	.asciz	 "dim"
.Lstring13:
	.asciz	 "i"
.Lstring14:
	.asciz	 "j"
.Lstring15:
	.asciz	 "result"
.Lstring16:
	.asciz	 "k"

	.section	".note.GNU-stack","",@progbits
