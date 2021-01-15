	.file	"/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/matmul_partition/matmul_partition.clc.csim_cu-opt.bc"
	.file	1 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl"
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
	.globl	matmul_partition
	.align	16, 0x90
	.type	matmul_partition,@function
matmul_partition:                       # @matmul_partition
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 76 0                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:76:0
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	andq	$-512, %rsp             # imm = 0xFFFFFFFFFFFFFE00
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$50136, %rsp            # imm = 0xC3D8
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	#DEBUG_VALUE: matmul_partition:in1 <- RSI+0
	#DEBUG_VALUE: matmul_partition:in2 <- RDX+0
	#DEBUG_VALUE: matmul_partition:out_r <- RCX+0
	#DEBUG_VALUE: matmul_partition:dim <- R8D+0
	movl	%r8d, 220(%rsp)         # 4-byte Spill
.Ltmp11:
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	movq	%rcx, 192(%rsp)         # 8-byte Spill
.Ltmp12:
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:out_r <- undef
	movq	%rdx, 504(%rsp)         # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: matmul_partition:in2 <- [%rsp+$504]+$0
	#DEBUG_VALUE: matmul_partition:in2 <- undef
	movq	%rsi, %r14
.Ltmp14:
	#DEBUG_VALUE: matmul_partition:in1 <- R14+0
	movq	%r14, 496(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	leaq	__unnamed_1(%rip), %r12
	movq	%r12, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$16, 56(%rsp)
	movl	$16, 48(%rsp)
	movl	$16, 40(%rsp)
	movl	$16, 32(%rsp)
	movl	$0, (%rsp)
	leaq	__unnamed_2(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	movl	$64, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%rbx, %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecBitsMap@PLT
	leaq	__unnamed_3(%rip), %rdx
	leaq	__unnamed_4(%rip), %rax
	leaq	__unnamed_5(%rip), %r15
	leaq	__unnamed_6(%rip), %rcx
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rdx, %rbx
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %r13
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	leaq	__unnamed_7(%rip), %rsi
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r14, %rdi
.Ltmp15:
	#DEBUG_VALUE: matmul_partition:in1 <- [%rsp+$496]+$0
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	leaq	__unnamed_8(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	504(%rsp), %r14         # 8-byte Reload
.Ltmp16:
	#DEBUG_VALUE: matmul_partition:in2 <- R14+0
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%r14, %rdi
	leaq	__unnamed_7(%rip), %rax
.Ltmp17:
	#DEBUG_VALUE: matmul_partition:in2 <- [%rsp+$504]+$0
	movq	%rax, %rsi
	movq	%rax, %r14
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	leaq	__unnamed_9(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	192(%rsp), %rbx         # 8-byte Reload
.Ltmp18:
	#DEBUG_VALUE: matmul_partition:out_r <- RBX+0
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r15, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movq	%rbx, %rdi
.Ltmp19:
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	movq	%r14, %r15
	movq	%r15, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movl	220(%rsp), %ebx         # 4-byte Reload
.Ltmp20:
	#DEBUG_VALUE: matmul_partition:dim <- EBX+0
	movl	%ebx, %edi
	xorb	%al, %al
	callq	_ssdm_op_SpecBitsMap@PLT
	leaq	__unnamed_10(%rip), %rax
	movq	%r12, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%rax, 16(%rsp)
	leaq	__unnamed_3(%rip), %r14
	movq	%r14, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	%ebx, %edi
	movq	%r13, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r12, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	movq	%r12, 72(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r14, 8(%rsp)
	movl	%ebx, %r14d
.Ltmp21:
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, (%rsp)
	movl	$0, %edi
	movq	%r13, %rsi
	movl	$0, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	_ssdm_op_SpecInterface@PLT
	leaq	16896(%rsp), %rdi
	leaq	__unnamed_11(%rip), %rdx
	movl	$1, %esi
	movl	$64, %ecx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_ssdm_SpecArrayPartition@PLT
	leaq	512(%rsp), %rdi
	.loc	1 73 38 prologue_end    # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:73:38
.Ltmp22:
	leaq	__unnamed_12(%rip), %rdx
	movl	$1, %esi
	movl	$64, %ecx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_ssdm_SpecArrayPartition@PLT
	movl	%r14d, %eax
	imull	%eax, %eax
.Ltmp23:
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movq	%rax, 200(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB0_5
# BB#1:                                 # %.split7.lr.ph
	#DEBUG_VALUE: matmul_partition:in1 <- [%rsp+$496]+$0
	#DEBUG_VALUE: matmul_partition:in2 <- [%rsp+$504]+$0
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
.Ltmp24:
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	movq	496(%rsp), %rdi         # 8-byte Reload
.Ltmp25:
	#DEBUG_VALUE: matmul_partition:in1 <- RDI+0
	.loc	1 95 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:95:9
	andq	$-4, %rdi
.Ltmp26:
	addq	208(%rsp), %rdi         # 8-byte Folded Reload
	movq	%rdi, 496(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %esi
	callq	_ssdm_op_ReadReq.m_axi.p1i32@PLT
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_2:                                # %.split7
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_partition:in2 <- [%rsp+$504]+$0
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: i <- 0+0
.Ltmp27:
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	movl	$1, %edi
.Ltmp28:
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 95 34                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:95:34
	leaq	__unnamed_1(%rip), %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_13(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 96 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:96:11
.Ltmp29:
	cmpl	%r14d, %r15d
	movl	$0, %eax
.Ltmp30:
	.loc	1 96 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:96:9
	cmovel	%eax, %r15d
.Ltmp31:
	#DEBUG_VALUE: j <- R15D+0
	.loc	1 96 11                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:96:11
	sete	%al
.Ltmp32:
	.loc	1 96 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:96:9
	movzbl	%al, %eax
	addl	%eax, %r13d
.Ltmp33:
	#DEBUG_VALUE: i <- EAX+0
	.loc	1 100 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:100:9
	movl	%r13d, %eax
.Ltmp34:
	shll	$6, %eax
	.loc	1 100 19                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:100:19
	addl	%r15d, %eax
	movl	%r14d, %r12d
.Ltmp35:
	#DEBUG_VALUE: matmul_partition:dim <- R12D+0
	.loc	1 100 5                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:100:5
	movslq	%eax, %r14
	.loc	1 100 26                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:100:26
	movq	496(%rsp), %rdi         # 8-byte Reload
	callq	_ssdm_op_Read.m_axi.p1i32@PLT
	.loc	1 100 24                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:100:24
	movl	%eax, 16896(%rsp,%r14,4)
	movl	%r12d, %r14d
.Ltmp36:
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	.loc	1 95 66                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:95:66
	incl	%r15d
.Ltmp37:
	.loc	1 95 45                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:95:45
	decq	%rbx
.Ltmp38:
	#DEBUG_VALUE: i <- R13D+0
	.loc	1 95 9                  # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:95:9
	jne	.LBB0_2
.Ltmp39:
# BB#3:                                 # %.lr.ph80
	#DEBUG_VALUE: matmul_partition:in2 <- [%rsp+$504]+$0
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movq	504(%rsp), %rdi         # 8-byte Reload
.Ltmp40:
	#DEBUG_VALUE: matmul_partition:in2 <- RDI+0
	.loc	1 106 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:106:9
	andq	$-4, %rdi
.Ltmp41:
	addq	208(%rsp), %rdi         # 8-byte Folded Reload
	movq	%rdi, 504(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %esi
	callq	_ssdm_op_ReadReq.m_axi.p1i32@PLT
	movq	%rbx, %r15
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_4:                                # %.split5
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
.Ltmp42:
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movl	$1, %edi
.Ltmp43:
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 106 34                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:106:34
	leaq	__unnamed_1(%rip), %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_14(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 107 11                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:107:11
.Ltmp44:
	cmpl	%r14d, %ebx
	movl	$0, %eax
.Ltmp45:
	.loc	1 107 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:107:9
	cmovel	%eax, %ebx
.Ltmp46:
	#DEBUG_VALUE: j <- EBX+0
	.loc	1 107 11                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:107:11
	sete	%al
.Ltmp47:
	.loc	1 107 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:107:9
	movzbl	%al, %eax
	addl	%eax, %r12d
.Ltmp48:
	#DEBUG_VALUE: i <- EAX+0
	.loc	1 111 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:111:9
	movl	%r12d, %eax
.Ltmp49:
	shll	$6, %eax
	.loc	1 111 19                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:111:19
	addl	%ebx, %eax
	movl	%r14d, %r13d
.Ltmp50:
	#DEBUG_VALUE: matmul_partition:dim <- R13D+0
	.loc	1 111 5                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:111:5
	movslq	%eax, %r14
	.loc	1 111 26                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:111:26
	movq	504(%rsp), %rdi         # 8-byte Reload
	callq	_ssdm_op_Read.m_axi.p1i32@PLT
	.loc	1 111 24                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:111:24
	movl	%eax, 512(%rsp,%r14,4)
	movl	%r13d, %r14d
.Ltmp51:
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	.loc	1 106 66                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:106:66
	incl	%ebx
.Ltmp52:
	.loc	1 106 45                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:106:45
	decq	%r15
.Ltmp53:
	#DEBUG_VALUE: i <- R12D+0
	.loc	1 106 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:106:9
	jne	.LBB0_4
.Ltmp54:
.LBB0_5:                                # %._crit_edge81
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- R14D+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	.loc	1 115 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:115:9
	movl	%r14d, 220(%rsp)        # 4-byte Spill
	testl	%r14d, %r14d
.Ltmp55:
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	je	.LBB0_10
# BB#6:                                 # %.split2.lr.ph.preheader
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: i <- 0+0
	movl	220(%rsp), %r15d        # 4-byte Folded Reload
	movq	%r15, 224(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_7:                                # %.split2.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
.Ltmp56:
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: i <- 0+0
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	%r13, 240(%rsp)         # 8-byte Spill
	movl	$64, %edi
.Ltmp57:
	movl	$64, %esi
	movl	$64, %edx
	xorb	%al, %al
	.loc	1 115 18                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:115:18
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_15(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
.Ltmp58:
	#DEBUG_VALUE: j <- 0+0
	.loc	1 124 19                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:19
	movq	%rbx, %rax
	shlq	$8, %rax
	movl	17148(%rsp,%rax), %ecx
	movl	%ecx, 504(%rsp)         # 4-byte Spill
	movl	17144(%rsp,%rax), %ecx
	movl	%ecx, 496(%rsp)         # 4-byte Spill
	movl	17140(%rsp,%rax), %ecx
	movl	%ecx, 492(%rsp)         # 4-byte Spill
	movl	17136(%rsp,%rax), %ecx
	movl	%ecx, 488(%rsp)         # 4-byte Spill
	movl	17132(%rsp,%rax), %ecx
	movl	%ecx, 484(%rsp)         # 4-byte Spill
	movl	17128(%rsp,%rax), %ecx
	movl	%ecx, 480(%rsp)         # 4-byte Spill
	movl	17124(%rsp,%rax), %ecx
	movl	%ecx, 476(%rsp)         # 4-byte Spill
	movl	17120(%rsp,%rax), %ecx
	movl	%ecx, 472(%rsp)         # 4-byte Spill
	movl	17116(%rsp,%rax), %ecx
	movl	%ecx, 468(%rsp)         # 4-byte Spill
	movl	17112(%rsp,%rax), %ecx
	movl	%ecx, 464(%rsp)         # 4-byte Spill
	movl	17108(%rsp,%rax), %ecx
	movl	%ecx, 460(%rsp)         # 4-byte Spill
	movl	17104(%rsp,%rax), %ecx
	movl	%ecx, 456(%rsp)         # 4-byte Spill
	movl	17100(%rsp,%rax), %ecx
	movl	%ecx, 452(%rsp)         # 4-byte Spill
	movl	17096(%rsp,%rax), %ecx
	movl	%ecx, 448(%rsp)         # 4-byte Spill
	movl	17092(%rsp,%rax), %ecx
	movl	%ecx, 444(%rsp)         # 4-byte Spill
	movl	17088(%rsp,%rax), %ecx
	movl	%ecx, 440(%rsp)         # 4-byte Spill
	movl	17084(%rsp,%rax), %ecx
	movl	%ecx, 436(%rsp)         # 4-byte Spill
	movl	17080(%rsp,%rax), %ecx
	movl	%ecx, 432(%rsp)         # 4-byte Spill
	movl	17076(%rsp,%rax), %ecx
	movl	%ecx, 428(%rsp)         # 4-byte Spill
	movl	17072(%rsp,%rax), %ecx
	movl	%ecx, 424(%rsp)         # 4-byte Spill
	movl	17068(%rsp,%rax), %ecx
	movl	%ecx, 420(%rsp)         # 4-byte Spill
	movl	17064(%rsp,%rax), %ecx
	movl	%ecx, 416(%rsp)         # 4-byte Spill
	movl	17060(%rsp,%rax), %ecx
	movl	%ecx, 412(%rsp)         # 4-byte Spill
	movl	17056(%rsp,%rax), %ecx
	movl	%ecx, 408(%rsp)         # 4-byte Spill
	movl	17052(%rsp,%rax), %ecx
	movl	%ecx, 404(%rsp)         # 4-byte Spill
	movl	17048(%rsp,%rax), %ecx
	movl	%ecx, 400(%rsp)         # 4-byte Spill
	movl	17044(%rsp,%rax), %ecx
	movl	%ecx, 396(%rsp)         # 4-byte Spill
	movl	17040(%rsp,%rax), %ecx
	movl	%ecx, 392(%rsp)         # 4-byte Spill
	movl	17036(%rsp,%rax), %ecx
	movl	%ecx, 388(%rsp)         # 4-byte Spill
	movl	17032(%rsp,%rax), %ecx
	movl	%ecx, 384(%rsp)         # 4-byte Spill
	movl	17028(%rsp,%rax), %ecx
	movl	%ecx, 380(%rsp)         # 4-byte Spill
	movl	17024(%rsp,%rax), %ecx
	movl	%ecx, 376(%rsp)         # 4-byte Spill
	movl	17020(%rsp,%rax), %ecx
	movl	%ecx, 372(%rsp)         # 4-byte Spill
	movl	17016(%rsp,%rax), %ecx
	movl	%ecx, 368(%rsp)         # 4-byte Spill
	movl	17012(%rsp,%rax), %ecx
	movl	%ecx, 364(%rsp)         # 4-byte Spill
	movl	17008(%rsp,%rax), %ecx
	movl	%ecx, 360(%rsp)         # 4-byte Spill
	movl	17004(%rsp,%rax), %ecx
	movl	%ecx, 356(%rsp)         # 4-byte Spill
	movl	17000(%rsp,%rax), %ecx
	movl	%ecx, 352(%rsp)         # 4-byte Spill
	movl	16996(%rsp,%rax), %ecx
	movl	%ecx, 348(%rsp)         # 4-byte Spill
	movl	16992(%rsp,%rax), %ecx
	movl	%ecx, 344(%rsp)         # 4-byte Spill
	movl	16988(%rsp,%rax), %ecx
	movl	%ecx, 340(%rsp)         # 4-byte Spill
	movl	16984(%rsp,%rax), %ecx
	movl	%ecx, 336(%rsp)         # 4-byte Spill
	movl	16980(%rsp,%rax), %ecx
	movl	%ecx, 332(%rsp)         # 4-byte Spill
	movl	16976(%rsp,%rax), %ecx
	movl	%ecx, 328(%rsp)         # 4-byte Spill
	movl	16972(%rsp,%rax), %ecx
	movl	%ecx, 324(%rsp)         # 4-byte Spill
	movl	16968(%rsp,%rax), %ecx
	movl	%ecx, 320(%rsp)         # 4-byte Spill
	movl	16964(%rsp,%rax), %ecx
	movl	%ecx, 316(%rsp)         # 4-byte Spill
	movl	16960(%rsp,%rax), %ecx
	movl	%ecx, 312(%rsp)         # 4-byte Spill
	movl	16956(%rsp,%rax), %ecx
	movl	%ecx, 308(%rsp)         # 4-byte Spill
	movl	16952(%rsp,%rax), %ecx
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	movl	16948(%rsp,%rax), %ecx
	movl	%ecx, 300(%rsp)         # 4-byte Spill
	movl	16944(%rsp,%rax), %ecx
	movl	%ecx, 296(%rsp)         # 4-byte Spill
	movl	16940(%rsp,%rax), %ecx
	movl	%ecx, 292(%rsp)         # 4-byte Spill
	movl	16936(%rsp,%rax), %ecx
	movl	%ecx, 288(%rsp)         # 4-byte Spill
	movl	16932(%rsp,%rax), %ecx
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	movl	16928(%rsp,%rax), %ecx
	movl	%ecx, 280(%rsp)         # 4-byte Spill
	movl	16924(%rsp,%rax), %ecx
	movl	%ecx, 276(%rsp)         # 4-byte Spill
	movl	16920(%rsp,%rax), %ecx
	movl	%ecx, 272(%rsp)         # 4-byte Spill
	movl	16916(%rsp,%rax), %ecx
	movl	%ecx, 268(%rsp)         # 4-byte Spill
	movl	16912(%rsp,%rax), %ecx
	movl	%ecx, 264(%rsp)         # 4-byte Spill
	movl	16908(%rsp,%rax), %ecx
	movl	%ecx, 260(%rsp)         # 4-byte Spill
	movl	16904(%rsp,%rax), %ecx
	movl	%ecx, 256(%rsp)         # 4-byte Spill
	movl	16896(%rsp,%rax), %ecx
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	movl	16900(%rsp,%rax), %eax
.Ltmp59:
	.loc	1 120 29                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:29
	movl	%eax, 248(%rsp)         # 4-byte Spill
	leaq	16640(%rsp), %r14
	movq	%r13, %rbx
	movq	%r15, %rbx
.Ltmp60:
	.align	16, 0x90
.LBB0_8:                                # %.split2
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movl	$1, %edi
.Ltmp61:
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 120 20                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:20
	leaq	__unnamed_1(%rip), %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$64, %edi
	movl	$64, %esi
	movl	$64, %edx
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_16(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
.Ltmp62:
	#DEBUG_VALUE: result <- 0+0
	#DEBUG_VALUE: k <- 0+0
	movl	-16128(%r14), %ecx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
.Ltmp63:
	imull	252(%rsp), %ecx         # 4-byte Folded Reload
.Ltmp64:
	#DEBUG_VALUE: result <- ECX+0
	#DEBUG_VALUE: k <- 1+0
	movl	-15872(%r14), %eax
	imull	248(%rsp), %eax         # 4-byte Folded Reload
.Ltmp65:
	#DEBUG_VALUE: k <- 2+0
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%ecx, %eax
.Ltmp66:
	#DEBUG_VALUE: result <- EAX+0
	movl	-15616(%r14), %esi
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	256(%rsp), %esi         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%eax, %esi
.Ltmp67:
	#DEBUG_VALUE: result <- ESI+0
	movl	-14592(%r14), %ecx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	272(%rsp), %ecx         # 4-byte Folded Reload
	movl	-14848(%r14), %edi
	imull	268(%rsp), %edi         # 4-byte Folded Reload
	movl	-15104(%r14), %ebx
	imull	264(%rsp), %ebx         # 4-byte Folded Reload
	movl	-15360(%r14), %eax
	imull	260(%rsp), %eax         # 4-byte Folded Reload
.Ltmp68:
	#DEBUG_VALUE: k <- 10+0
	movl	-13568(%r14), %r9d
	imull	288(%rsp), %r9d         # 4-byte Folded Reload
	movl	-13824(%r14), %r10d
	imull	284(%rsp), %r10d        # 4-byte Folded Reload
	movl	-14080(%r14), %r12d
	imull	280(%rsp), %r12d        # 4-byte Folded Reload
	movl	-14336(%r14), %edx
	imull	276(%rsp), %edx         # 4-byte Folded Reload
.Ltmp69:
	#DEBUG_VALUE: k <- 14+0
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%esi, %eax
.Ltmp70:
	#DEBUG_VALUE: result <- EAX+0
	#DEBUG_VALUE: k <- 15+0
	addl	%ebx, %eax
.Ltmp71:
	#DEBUG_VALUE: k <- 11+0
	addl	%edi, %eax
.Ltmp72:
	#DEBUG_VALUE: k <- 12+0
	addl	%ecx, %eax
.Ltmp73:
	#DEBUG_VALUE: k <- 13+0
	movl	-12800(%r14), %ecx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	300(%rsp), %ecx         # 4-byte Folded Reload
	movl	-13056(%r14), %esi
	imull	296(%rsp), %esi         # 4-byte Folded Reload
	movl	-13312(%r14), %edi
	imull	292(%rsp), %edi         # 4-byte Folded Reload
	movl	-12288(%r14), %r8d
	imull	308(%rsp), %r8d         # 4-byte Folded Reload
	movl	-12544(%r14), %r11d
	imull	304(%rsp), %r11d        # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%edx, %eax
.Ltmp74:
	#DEBUG_VALUE: k <- 19+0
	addl	%r12d, %eax
.Ltmp75:
	#DEBUG_VALUE: k <- 20+0
	addl	%r10d, %eax
.Ltmp76:
	#DEBUG_VALUE: k <- 21+0
	addl	%r9d, %eax
.Ltmp77:
	#DEBUG_VALUE: k <- 22+0
	addl	%edi, %eax
.Ltmp78:
	#DEBUG_VALUE: k <- 16+0
	addl	%esi, %eax
.Ltmp79:
	#DEBUG_VALUE: k <- 17+0
	addl	%ecx, %eax
.Ltmp80:
	#DEBUG_VALUE: k <- 18+0
	movl	-11520(%r14), %ecx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	320(%rsp), %ecx         # 4-byte Folded Reload
	movl	-11776(%r14), %esi
	imull	316(%rsp), %esi         # 4-byte Folded Reload
	movl	-12032(%r14), %edi
	imull	312(%rsp), %edi         # 4-byte Folded Reload
	movl	-10496(%r14), %r9d
	imull	336(%rsp), %r9d         # 4-byte Folded Reload
	movl	-10752(%r14), %r12d
	imull	332(%rsp), %r12d        # 4-byte Folded Reload
	movl	-11008(%r14), %ebx
	imull	328(%rsp), %ebx         # 4-byte Folded Reload
	movl	-11264(%r14), %edx
	imull	324(%rsp), %edx         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%r11d, %eax
.Ltmp81:
	#DEBUG_VALUE: k <- 26+0
	addl	%r8d, %eax
.Ltmp82:
	#DEBUG_VALUE: k <- 27+0
	addl	%edi, %eax
.Ltmp83:
	#DEBUG_VALUE: k <- 23+0
	addl	%esi, %eax
.Ltmp84:
	#DEBUG_VALUE: k <- 24+0
	addl	%ecx, %eax
.Ltmp85:
	#DEBUG_VALUE: k <- 25+0
	movl	-9728(%r14), %ecx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	348(%rsp), %ecx         # 4-byte Folded Reload
	movl	-9984(%r14), %esi
	imull	344(%rsp), %esi         # 4-byte Folded Reload
	movl	-10240(%r14), %edi
	imull	340(%rsp), %edi         # 4-byte Folded Reload
	movl	-9216(%r14), %r10d
	imull	356(%rsp), %r10d        # 4-byte Folded Reload
	movl	-9472(%r14), %r11d
	imull	352(%rsp), %r11d        # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%edx, %eax
.Ltmp86:
	#DEBUG_VALUE: k <- 31+0
	addl	%ebx, %eax
.Ltmp87:
	#DEBUG_VALUE: k <- 32+0
	addl	%r12d, %eax
.Ltmp88:
	#DEBUG_VALUE: k <- 33+0
	addl	%r9d, %eax
.Ltmp89:
	#DEBUG_VALUE: k <- 34+0
	addl	%edi, %eax
.Ltmp90:
	#DEBUG_VALUE: k <- 28+0
	addl	%esi, %eax
.Ltmp91:
	#DEBUG_VALUE: k <- 29+0
	addl	%ecx, %eax
.Ltmp92:
	#DEBUG_VALUE: k <- 30+0
	movl	-8448(%r14), %edx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	368(%rsp), %edx         # 4-byte Folded Reload
	movl	-8704(%r14), %edi
	imull	364(%rsp), %edi         # 4-byte Folded Reload
	movl	-8960(%r14), %esi
	imull	360(%rsp), %esi         # 4-byte Folded Reload
	movl	-7424(%r14), %r8d
	imull	384(%rsp), %r8d         # 4-byte Folded Reload
	movl	-7680(%r14), %r9d
	imull	380(%rsp), %r9d         # 4-byte Folded Reload
	movl	-7936(%r14), %r12d
	imull	376(%rsp), %r12d        # 4-byte Folded Reload
	movl	-8192(%r14), %ecx
	imull	372(%rsp), %ecx         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%r11d, %eax
.Ltmp93:
	#DEBUG_VALUE: k <- 38+0
	addl	%r10d, %eax
.Ltmp94:
	#DEBUG_VALUE: k <- 39+0
	addl	%esi, %eax
.Ltmp95:
	#DEBUG_VALUE: k <- 35+0
	addl	%edi, %eax
.Ltmp96:
	#DEBUG_VALUE: k <- 36+0
	addl	%edx, %eax
.Ltmp97:
	#DEBUG_VALUE: k <- 37+0
	movl	-6656(%r14), %edi
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	396(%rsp), %edi         # 4-byte Folded Reload
	movl	-6912(%r14), %esi
	imull	392(%rsp), %esi         # 4-byte Folded Reload
	movl	-7168(%r14), %ebx
	imull	388(%rsp), %ebx         # 4-byte Folded Reload
	movl	-6144(%r14), %r11d
	imull	404(%rsp), %r11d        # 4-byte Folded Reload
	movl	-6400(%r14), %edx
	imull	400(%rsp), %edx         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%ecx, %eax
.Ltmp98:
	#DEBUG_VALUE: k <- 43+0
	addl	%r12d, %eax
.Ltmp99:
	#DEBUG_VALUE: k <- 46+0
	addl	%r9d, %eax
.Ltmp100:
	#DEBUG_VALUE: k <- 44+0
	addl	%r8d, %eax
.Ltmp101:
	#DEBUG_VALUE: k <- 45+0
	addl	%ebx, %eax
.Ltmp102:
	#DEBUG_VALUE: k <- 40+0
	addl	%esi, %eax
.Ltmp103:
	#DEBUG_VALUE: k <- 41+0
	addl	%edi, %eax
.Ltmp104:
	#DEBUG_VALUE: k <- 42+0
	movl	-5376(%r14), %ebx
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	416(%rsp), %ebx         # 4-byte Folded Reload
	movl	-5632(%r14), %ecx
	imull	412(%rsp), %ecx         # 4-byte Folded Reload
	movl	-5888(%r14), %esi
	imull	408(%rsp), %esi         # 4-byte Folded Reload
	movl	-4608(%r14), %r8d
	imull	428(%rsp), %r8d         # 4-byte Folded Reload
	movl	-4864(%r14), %r10d
	imull	424(%rsp), %r10d        # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%edx, %eax
.Ltmp105:
	#DEBUG_VALUE: k <- 48+0
	addl	%r11d, %eax
.Ltmp106:
	#DEBUG_VALUE: k <- 49+0
	movl	-4352(%r14), %r11d
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	432(%rsp), %r11d        # 4-byte Folded Reload
	movl	-5120(%r14), %edi
	imull	420(%rsp), %edi         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%esi, %eax
.Ltmp107:
	#DEBUG_VALUE: k <- 51+0
	addl	%ecx, %eax
.Ltmp108:
	#DEBUG_VALUE: k <- 47+0
	addl	%ebx, %eax
.Ltmp109:
	#DEBUG_VALUE: k <- 50+0
	movl	-3328(%r14), %r9d
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	448(%rsp), %r9d         # 4-byte Folded Reload
	movl	-3584(%r14), %edx
	imull	444(%rsp), %edx         # 4-byte Folded Reload
	movl	-3840(%r14), %ecx
	imull	440(%rsp), %ecx         # 4-byte Folded Reload
	movl	-4096(%r14), %esi
	imull	436(%rsp), %esi         # 4-byte Folded Reload
	movl	-3072(%r14), %ebx
	imull	452(%rsp), %ebx         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%edi, %eax
.Ltmp110:
	#DEBUG_VALUE: k <- 54+0
	addl	%r10d, %eax
.Ltmp111:
	#DEBUG_VALUE: k <- 55+0
	addl	%r8d, %eax
.Ltmp112:
	#DEBUG_VALUE: k <- 57+0
	addl	%r11d, %eax
.Ltmp113:
	#DEBUG_VALUE: k <- 52+0
	addl	%esi, %eax
.Ltmp114:
	#DEBUG_VALUE: k <- 53+0
	movl	-2560(%r14), %esi
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	460(%rsp), %esi         # 4-byte Folded Reload
	movl	-2816(%r14), %edi
	imull	456(%rsp), %edi         # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%ecx, %eax
.Ltmp115:
	#DEBUG_VALUE: k <- 62+0
	addl	%edx, %eax
.Ltmp116:
	#DEBUG_VALUE: k <- 63+0
	movl	-1536(%r14), %r8d
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	476(%rsp), %r8d         # 4-byte Folded Reload
	movl	-2048(%r14), %r10d
	imull	468(%rsp), %r10d        # 4-byte Folded Reload
	movl	-2304(%r14), %r12d
	imull	464(%rsp), %r12d        # 4-byte Folded Reload
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
	addl	%r9d, %eax
.Ltmp117:
	#DEBUG_VALUE: k <- 58+0
	addl	%ebx, %eax
.Ltmp118:
	#DEBUG_VALUE: k <- 59+0
	addl	%edi, %eax
.Ltmp119:
	#DEBUG_VALUE: k <- 60+0
	addl	%esi, %eax
.Ltmp120:
	#DEBUG_VALUE: k <- 56+0
	movl	-1792(%r14), %esi
	.loc	1 124 38                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:38
	imull	472(%rsp), %esi         # 4-byte Folded Reload
	movl	(%r14), %r9d
	imull	504(%rsp), %r9d         # 4-byte Folded Reload
	movl	-256(%r14), %r11d
	imull	496(%rsp), %r11d        # 4-byte Folded Reload
	movl	-512(%r14), %ebx
	imull	492(%rsp), %ebx         # 4-byte Folded Reload
	movl	-768(%r14), %edx
	imull	488(%rsp), %edx         # 4-byte Folded Reload
	movl	-1024(%r14), %edi
	imull	484(%rsp), %edi         # 4-byte Folded Reload
	movl	-1280(%r14), %ecx
	imull	480(%rsp), %ecx         # 4-byte Folded Reload
.Ltmp121:
	.loc	1 120 29                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:29
	addq	$4, %r14
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
.Ltmp122:
	addl	%r12d, %eax
.Ltmp123:
	.loc	1 120 29                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:29
	leaq	4(%r13), %r12
.Ltmp124:
	#DEBUG_VALUE: result <- EAX+0
	#DEBUG_VALUE: k <- 64+0
	.loc	1 126 26                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:126:26
	andq	$-4, %r13
	.loc	1 124 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:124:16
.Ltmp125:
	addl	%r10d, %eax
.Ltmp126:
	addl	%esi, %eax
	addl	%r8d, %eax
	addl	%ecx, %eax
	addl	%edi, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	addl	%r11d, %eax
	addl	%r9d, %eax
.Ltmp127:
	.loc	1 120 29                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:29
	decq	%r15
	.loc	1 126 26                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:126:26
.Ltmp128:
	movl	%eax, 33280(%rsp,%r13)
.Ltmp129:
	.loc	1 115 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:115:9
	movq	%r12, %r13
	.loc	1 120 11                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:120:11
.Ltmp130:
	jne	.LBB0_8
.Ltmp131:
# BB#9:                                 # %._crit_edge69
                                        #   in Loop: Header=BB0_7 Depth=1
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movq	240(%rsp), %r13         # 8-byte Reload
	.loc	1 115 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:115:9
	addq	$256, %r13              # imm = 0x100
	movq	232(%rsp), %rbx         # 8-byte Reload
	.loc	1 115 35                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:115:35
.Ltmp132:
	incq	%rbx
.Ltmp133:
	#DEBUG_VALUE: i <- RBX+0
	movq	224(%rsp), %r15         # 8-byte Reload
	cmpq	%r15, %rbx
	jne	.LBB0_7
.Ltmp134:
.LBB0_10:                               # %._crit_edge74.loopexit
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	movq	200(%rsp), %r14         # 8-byte Reload
	testl	%r14d, %r14d
.Ltmp135:
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: itr <- 0+0
	movq	208(%rsp), %rbx         # 8-byte Reload
	jle	.LBB0_14
# BB#11:                                # %.split.lr.ph
	#DEBUG_VALUE: matmul_partition:out_r <- [%rsp+$192]+$0
	#DEBUG_VALUE: matmul_partition:dim <- [%rsp+$220]+$0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
.Ltmp136:
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movq	192(%rsp), %rax         # 8-byte Reload
.Ltmp137:
	#DEBUG_VALUE: matmul_partition:out_r <- RAX+0
	.loc	1 134 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:134:9
	andq	$-4, %rax
.Ltmp138:
	addq	%rax, %rbx
	movq	%rbx, %rdi
.Ltmp139:
	movl	%r14d, %esi
	callq	_ssdm_op_WriteReq.m_axi.p1i32@PLT
	xorl	%r13d, %r13d
	movq	%rbx, %r15
	xorl	%ebx, %ebx
	movl	220(%rsp), %r12d        # 4-byte Reload
.Ltmp140:
	#DEBUG_VALUE: matmul_partition:dim <- R12D+0
	.align	16, 0x90
.LBB0_12:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_partition:dim <- R12D+0
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	#DEBUG_VALUE: itr <- 0+0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	movl	$1, %edi
.Ltmp141:
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.loc	1 134 18                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:134:18
	leaq	__unnamed_1(%rip), %r8
	xorb	%al, %al
	callq	_ssdm_op_SpecPipeline@PLT
	movl	$4096, %edi             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	movl	$4096, %edx             # imm = 0x1000
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopTripCount@PLT
	leaq	__unnamed_17(%rip), %rdi
	xorb	%al, %al
	callq	_ssdm_op_SpecLoopName@PLT
	.loc	1 135 11                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:135:11
.Ltmp142:
	cmpl	%r12d, %ebx
	movl	$0, %eax
.Ltmp143:
	.loc	1 135 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:135:9
	cmovel	%eax, %ebx
.Ltmp144:
	#DEBUG_VALUE: j <- EBX+0
	.loc	1 135 11                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:135:11
	sete	%al
.Ltmp145:
	.loc	1 135 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:135:9
	movzbl	%al, %eax
	addl	%eax, %r13d
.Ltmp146:
	#DEBUG_VALUE: i <- EAX+0
	.loc	1 139 22                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:139:22
	movl	%r13d, %eax
.Ltmp147:
	shll	$6, %eax
	.loc	1 139 32                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:139:32
	addl	%ebx, %eax
	.loc	1 139 18                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:139:18
	movslq	%eax, %rax
	movl	33280(%rsp,%rax,4), %esi
	.loc	1 139 16                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:139:16
	movq	%r15, %rdi
	movl	$15, %edx
	callq	_ssdm_op_Write.m_axi.p1i32@PLT
.Ltmp148:
	.loc	1 134 66                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:134:66
	incl	%ebx
.Ltmp149:
	.loc	1 134 45                # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:134:45
	decq	%r14
.Ltmp150:
	#DEBUG_VALUE: i <- R13D+0
	.loc	1 134 9                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:134:9
	jne	.LBB0_12
.Ltmp151:
# BB#13:                                # %._crit_edge.loopexit
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	.loc	1 141 1                 # /home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl:141:1
	movq	%r15, %rdi
.Ltmp152:
	callq	_ssdm_op_WriteResp.m_axi.p1i32@PLT
.Ltmp153:
.LBB0_14:                               # %._crit_edge
	addq	$50136, %rsp            # imm = 0xC3D8
.Ltmp154:
	#DEBUG_VALUE: matmul_partition:B <- RDI+0
	#DEBUG_VALUE: matmul_partition:A <- RDI+0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp155:
.Ltmp156:
	.size	matmul_partition, .Ltmp156-matmul_partition
.Lfunc_end0:
	.cfi_endproc

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

	.type	__unnamed_11,@object    # @10
__unnamed_11:
	.asciz	 "cyclic"
	.size	__unnamed_11, 7

	.type	__unnamed_12,@object    # @11
__unnamed_12:
	.asciz	 "block"
	.size	__unnamed_12, 6

	.type	__unnamed_17,@object    # @12
__unnamed_17:
	.asciz	 "writeC"
	.size	__unnamed_17, 7

	.type	__unnamed_16,@object    # @13
__unnamed_16:
	.asciz	 "lreorder2"
	.size	__unnamed_16, 10

	.type	__unnamed_15,@object    # @14
__unnamed_15:
	.asciz	 "lreorder1"
	.size	__unnamed_15, 10

	.type	__unnamed_14,@object    # @15
__unnamed_14:
	.asciz	 "readB"
	.size	__unnamed_14, 6

	.type	__unnamed_13,@object    # @16
__unnamed_13:
	.asciz	 "readA"
	.size	__unnamed_13, 6

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	534                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x20f DW_TAG_compile_unit
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
	.byte	3                       # Abbrev [3] 0x2e:0x16 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	39                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	c_size
	.byte	4                       # Abbrev [4] 0x44:0x1b6 DW_TAG_subprogram
	.long	.Lstring5               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	5                       # Abbrev [5] 0x60:0xf DW_TAG_formal_parameter
	.long	.Lstring6               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	511                     # DW_AT_type
.Lset0 = .Ldebug_loc0-.Lsection_debug_loc # DW_AT_location
	.long	.Lset0
	.byte	5                       # Abbrev [5] 0x6f:0xf DW_TAG_formal_parameter
	.long	.Lstring7               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	511                     # DW_AT_type
.Lset1 = .Ldebug_loc5-.Lsection_debug_loc # DW_AT_location
	.long	.Lset1
	.byte	5                       # Abbrev [5] 0x7e:0xf DW_TAG_formal_parameter
	.long	.Lstring8               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	516                     # DW_AT_type
.Lset2 = .Ldebug_loc11-.Lsection_debug_loc # DW_AT_location
	.long	.Lset2
	.byte	5                       # Abbrev [5] 0x8d:0xf DW_TAG_formal_parameter
	.long	.Lstring9               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset3 = .Ldebug_loc17-.Lsection_debug_loc # DW_AT_location
	.long	.Lset3
	.byte	6                       # Abbrev [6] 0x9c:0x10 DW_TAG_variable
	.long	.Lstring10              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	524                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\200\204\001"
	.byte	6                       # Abbrev [6] 0xac:0xf DW_TAG_variable
	.long	.Lstring11              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	524                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\200\004"
	.byte	7                       # Abbrev [7] 0xbb:0xb DW_TAG_variable
	.long	.Lstring12              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	524                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0xc6:0x40 DW_TAG_lexical_block
	.quad	.Ltmp25                 # DW_AT_low_pc
	.quad	.Ltmp39                 # DW_AT_high_pc
	.byte	9                       # Abbrev [9] 0xd7:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	10                      # Abbrev [10] 0xe7:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset4 = .Ldebug_loc29-.Lsection_debug_loc # DW_AT_location
	.long	.Lset4
	.byte	10                      # Abbrev [10] 0xf6:0xf DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset5 = .Ldebug_loc33-.Lsection_debug_loc # DW_AT_location
	.long	.Lset5
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x106:0x40 DW_TAG_lexical_block
	.quad	.Ltmp40                 # DW_AT_low_pc
	.quad	.Ltmp54                 # DW_AT_high_pc
	.byte	9                       # Abbrev [9] 0x117:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	10                      # Abbrev [10] 0x127:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset6 = .Ldebug_loc36-.Lsection_debug_loc # DW_AT_location
	.long	.Lset6
	.byte	10                      # Abbrev [10] 0x136:0xf DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset7 = .Ldebug_loc40-.Lsection_debug_loc # DW_AT_location
	.long	.Lset7
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x146:0x73 DW_TAG_lexical_block
	.quad	.Ltmp54                 # DW_AT_low_pc
	.quad	.Ltmp134                # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x157:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset8 = .Ldebug_loc43-.Lsection_debug_loc # DW_AT_location
	.long	.Lset8
	.byte	11                      # Abbrev [11] 0x166:0x52 DW_TAG_lexical_block
	.long	.Ldebug_range+320       # DW_AT_ranges
	.byte	11                      # Abbrev [11] 0x16b:0x4c DW_TAG_lexical_block
	.long	.Ldebug_range+272       # DW_AT_ranges
	.byte	11                      # Abbrev [11] 0x170:0x46 DW_TAG_lexical_block
	.long	.Ldebug_range+224       # DW_AT_ranges
	.byte	9                       # Abbrev [9] 0x175:0x10 DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	11                      # Abbrev [11] 0x185:0x30 DW_TAG_lexical_block
	.long	.Ldebug_range+176       # DW_AT_ranges
	.byte	11                      # Abbrev [11] 0x18a:0x2a DW_TAG_lexical_block
	.long	.Ldebug_range+80        # DW_AT_ranges
	.byte	10                      # Abbrev [10] 0x18f:0xf DW_TAG_variable
	.long	.Lstring16              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	121                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset9 = .Ldebug_loc46-.Lsection_debug_loc # DW_AT_location
	.long	.Lset9
	.byte	11                      # Abbrev [11] 0x19e:0x15 DW_TAG_lexical_block
	.long	.Ldebug_range+0         # DW_AT_ranges
	.byte	10                      # Abbrev [10] 0x1a3:0xf DW_TAG_variable
	.long	.Lstring17              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset10 = .Ldebug_loc53-.Lsection_debug_loc # DW_AT_location
	.long	.Lset10
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x1b9:0x40 DW_TAG_lexical_block
	.quad	.Ltmp137                # DW_AT_low_pc
	.quad	.Ltmp151                # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x1ca:0xf DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset11 = .Ldebug_loc111-.Lsection_debug_loc # DW_AT_location
	.long	.Lset11
	.byte	10                      # Abbrev [10] 0x1d9:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset12 = .Ldebug_loc114-.Lsection_debug_loc # DW_AT_location
	.long	.Lset12
	.byte	9                       # Abbrev [9] 0x1e8:0x10 DW_TAG_variable
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1fa:0x5 DW_TAG_const_type
	.long	39                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1ff:0x5 DW_TAG_pointer_type
	.long	506                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x204:0x5 DW_TAG_pointer_type
	.long	39                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x209:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	15                      # Abbrev [15] 0x20c:0xd DW_TAG_array_type
	.long	39                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x211:0x7 DW_TAG_subrange_type
	.long	521                     # DW_AT_type
	.short	4095                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
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
	.byte	4                       # Abbreviation Code
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
	.byte	5                       # Abbreviation Code
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
	.byte	6                       # Abbreviation Code
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
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
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
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
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
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_pubtypes,"",@progbits
.Lset13 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset13
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset14 = .Linfo_end1-.Linfo_begin1     # Compilation Unit Length
	.long	.Lset14
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp14
.Lset15 = .Ltmp158-.Ltmp157             # Loc expr size
	.short	.Lset15
.Ltmp157:
	.byte	84                      # DW_OP_reg4
.Ltmp158:
	.quad	.Ltmp14
	.quad	.Ltmp15
.Lset16 = .Ltmp160-.Ltmp159             # Loc expr size
	.short	.Lset16
.Ltmp159:
	.byte	94                      # DW_OP_reg14
.Ltmp160:
	.quad	.Ltmp15
	.quad	.Ltmp25
.Lset17 = .Ltmp162-.Ltmp161             # Loc expr size
	.short	.Lset17
.Ltmp161:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\360\003"
.Ltmp162:
	.quad	.Ltmp25
	.quad	.Ltmp26
.Lset18 = .Ltmp164-.Ltmp163             # Loc expr size
	.short	.Lset18
.Ltmp163:
	.byte	85                      # DW_OP_reg5
.Ltmp164:
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
.Lset19 = .Ltmp166-.Ltmp165             # Loc expr size
	.short	.Lset19
.Ltmp165:
	.byte	81                      # DW_OP_reg1
.Ltmp166:
	.quad	.Ltmp13
	.quad	.Ltmp13
.Lset20 = .Ltmp168-.Ltmp167             # Loc expr size
	.short	.Lset20
.Ltmp167:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\370\003"
.Ltmp168:
	.quad	.Ltmp16
	.quad	.Ltmp17
.Lset21 = .Ltmp170-.Ltmp169             # Loc expr size
	.short	.Lset21
.Ltmp169:
	.byte	94                      # DW_OP_reg14
.Ltmp170:
	.quad	.Ltmp17
	.quad	.Ltmp40
.Lset22 = .Ltmp172-.Ltmp171             # Loc expr size
	.short	.Lset22
.Ltmp171:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\370\003"
.Ltmp172:
	.quad	.Ltmp40
	.quad	.Ltmp41
.Lset23 = .Ltmp174-.Ltmp173             # Loc expr size
	.short	.Lset23
.Ltmp173:
	.byte	85                      # DW_OP_reg5
.Ltmp174:
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Lfunc_begin0
	.quad	.Ltmp12
.Lset24 = .Ltmp176-.Ltmp175             # Loc expr size
	.short	.Lset24
.Ltmp175:
	.byte	82                      # DW_OP_reg2
.Ltmp176:
	.quad	.Ltmp12
	.quad	.Ltmp12
.Lset25 = .Ltmp178-.Ltmp177             # Loc expr size
	.short	.Lset25
.Ltmp177:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\300\001"
.Ltmp178:
	.quad	.Ltmp18
	.quad	.Ltmp19
.Lset26 = .Ltmp180-.Ltmp179             # Loc expr size
	.short	.Lset26
.Ltmp179:
	.byte	83                      # DW_OP_reg3
.Ltmp180:
	.quad	.Ltmp19
	.quad	.Ltmp137
.Lset27 = .Ltmp182-.Ltmp181             # Loc expr size
	.short	.Lset27
.Ltmp181:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\300\001"
.Ltmp182:
	.quad	.Ltmp137
	.quad	.Ltmp138
.Lset28 = .Ltmp184-.Ltmp183             # Loc expr size
	.short	.Lset28
.Ltmp183:
	.byte	80                      # DW_OP_reg0
.Ltmp184:
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Lfunc_begin0
	.quad	.Ltmp11
.Lset29 = .Ltmp186-.Ltmp185             # Loc expr size
	.short	.Lset29
.Ltmp185:
	.byte	88                      # DW_OP_reg8
.Ltmp186:
	.quad	.Ltmp11
	.quad	.Ltmp20
.Lset30 = .Ltmp188-.Ltmp187             # Loc expr size
	.short	.Lset30
.Ltmp187:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\334\001"
.Ltmp188:
	.quad	.Ltmp20
	.quad	.Ltmp21
.Lset31 = .Ltmp190-.Ltmp189             # Loc expr size
	.short	.Lset31
.Ltmp189:
	.byte	83                      # DW_OP_reg3
.Ltmp190:
	.quad	.Ltmp21
	.quad	.Ltmp35
.Lset32 = .Ltmp192-.Ltmp191             # Loc expr size
	.short	.Lset32
.Ltmp191:
	.byte	94                      # DW_OP_reg14
.Ltmp192:
	.quad	.Ltmp35
	.quad	.Ltmp36
.Lset33 = .Ltmp194-.Ltmp193             # Loc expr size
	.short	.Lset33
.Ltmp193:
	.byte	92                      # DW_OP_reg12
.Ltmp194:
	.quad	.Ltmp36
	.quad	.Ltmp50
.Lset34 = .Ltmp196-.Ltmp195             # Loc expr size
	.short	.Lset34
.Ltmp195:
	.byte	94                      # DW_OP_reg14
.Ltmp196:
	.quad	.Ltmp50
	.quad	.Ltmp51
.Lset35 = .Ltmp198-.Ltmp197             # Loc expr size
	.short	.Lset35
.Ltmp197:
	.byte	93                      # DW_OP_reg13
.Ltmp198:
	.quad	.Ltmp51
	.quad	.Ltmp55
.Lset36 = .Ltmp200-.Ltmp199             # Loc expr size
	.short	.Lset36
.Ltmp199:
	.byte	94                      # DW_OP_reg14
.Ltmp200:
	.quad	.Ltmp55
	.quad	.Ltmp140
.Lset37 = .Ltmp202-.Ltmp201             # Loc expr size
	.short	.Lset37
.Ltmp201:
	.byte	119                     # DW_OP_breg7
	.ascii	 "\334\001"
.Ltmp202:
	.quad	.Ltmp140
	.quad	.Ltmp151
.Lset38 = .Ltmp204-.Ltmp203             # Loc expr size
	.short	.Lset38
.Ltmp203:
	.byte	92                      # DW_OP_reg12
.Ltmp204:
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Ltmp23
	.quad	.Ltmp33
.Lset39 = .Ltmp206-.Ltmp205             # Loc expr size
	.short	.Lset39
.Ltmp205:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp206:
	.quad	.Ltmp33
	.quad	.Ltmp34
.Lset40 = .Ltmp208-.Ltmp207             # Loc expr size
	.short	.Lset40
.Ltmp207:
	.byte	80                      # DW_OP_reg0
.Ltmp208:
	.quad	.Ltmp38
	.quad	.Ltmp39
.Lset41 = .Ltmp210-.Ltmp209             # Loc expr size
	.short	.Lset41
.Ltmp209:
	.byte	93                      # DW_OP_reg13
.Ltmp210:
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Ltmp23
	.quad	.Ltmp31
.Lset42 = .Ltmp212-.Ltmp211             # Loc expr size
	.short	.Lset42
.Ltmp211:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp212:
	.quad	.Ltmp31
	.quad	.Ltmp37
.Lset43 = .Ltmp214-.Ltmp213             # Loc expr size
	.short	.Lset43
.Ltmp213:
	.byte	95                      # DW_OP_reg15
.Ltmp214:
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp39
	.quad	.Ltmp48
.Lset44 = .Ltmp216-.Ltmp215             # Loc expr size
	.short	.Lset44
.Ltmp215:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp216:
	.quad	.Ltmp48
	.quad	.Ltmp49
.Lset45 = .Ltmp218-.Ltmp217             # Loc expr size
	.short	.Lset45
.Ltmp217:
	.byte	80                      # DW_OP_reg0
.Ltmp218:
	.quad	.Ltmp53
	.quad	.Ltmp54
.Lset46 = .Ltmp220-.Ltmp219             # Loc expr size
	.short	.Lset46
.Ltmp219:
	.byte	92                      # DW_OP_reg12
.Ltmp220:
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Ltmp39
	.quad	.Ltmp46
.Lset47 = .Ltmp222-.Ltmp221             # Loc expr size
	.short	.Lset47
.Ltmp221:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp222:
	.quad	.Ltmp46
	.quad	.Ltmp52
.Lset48 = .Ltmp224-.Ltmp223             # Loc expr size
	.short	.Lset48
.Ltmp223:
	.byte	83                      # DW_OP_reg3
.Ltmp224:
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Ltmp55
	.quad	.Ltmp133
.Lset49 = .Ltmp226-.Ltmp225             # Loc expr size
	.short	.Lset49
.Ltmp225:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp226:
	.quad	.Ltmp133
	.quad	.Ltmp134
.Lset50 = .Ltmp228-.Ltmp227             # Loc expr size
	.short	.Lset50
.Ltmp227:
	.byte	83                      # DW_OP_reg3
.Ltmp228:
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Ltmp62
	.quad	.Ltmp64
.Lset51 = .Ltmp230-.Ltmp229             # Loc expr size
	.short	.Lset51
.Ltmp229:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp230:
	.quad	.Ltmp64
	.quad	.Ltmp66
.Lset52 = .Ltmp232-.Ltmp231             # Loc expr size
	.short	.Lset52
.Ltmp231:
	.byte	82                      # DW_OP_reg2
.Ltmp232:
	.quad	.Ltmp66
	.quad	.Ltmp67
.Lset53 = .Ltmp234-.Ltmp233             # Loc expr size
	.short	.Lset53
.Ltmp233:
	.byte	80                      # DW_OP_reg0
.Ltmp234:
	.quad	.Ltmp67
	.quad	.Ltmp70
.Lset54 = .Ltmp236-.Ltmp235             # Loc expr size
	.short	.Lset54
.Ltmp235:
	.byte	84                      # DW_OP_reg4
.Ltmp236:
	.quad	.Ltmp70
	.quad	.Ltmp71
.Lset55 = .Ltmp238-.Ltmp237             # Loc expr size
	.short	.Lset55
.Ltmp237:
	.byte	80                      # DW_OP_reg0
.Ltmp238:
	.quad	.Ltmp124
	.quad	.Ltmp126
.Lset56 = .Ltmp240-.Ltmp239             # Loc expr size
	.short	.Lset56
.Ltmp239:
	.byte	80                      # DW_OP_reg0
.Ltmp240:
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Ltmp62
	.quad	.Lfunc_end0
.Lset57 = .Ltmp242-.Ltmp241             # Loc expr size
	.short	.Lset57
.Ltmp241:
	.byte	16                      # DW_OP_constu
	.byte	64
.Ltmp242:
	.quad	0
	.quad	0
.Ldebug_loc111:
	.quad	.Ltmp135
	.quad	.Ltmp144
.Lset58 = .Ltmp244-.Ltmp243             # Loc expr size
	.short	.Lset58
.Ltmp243:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp244:
	.quad	.Ltmp144
	.quad	.Ltmp149
.Lset59 = .Ltmp246-.Ltmp245             # Loc expr size
	.short	.Lset59
.Ltmp245:
	.byte	83                      # DW_OP_reg3
.Ltmp246:
	.quad	0
	.quad	0
.Ldebug_loc114:
	.quad	.Ltmp135
	.quad	.Ltmp146
.Lset60 = .Ltmp248-.Ltmp247             # Loc expr size
	.short	.Lset60
.Ltmp247:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp248:
	.quad	.Ltmp146
	.quad	.Ltmp147
.Lset61 = .Ltmp250-.Ltmp249             # Loc expr size
	.short	.Lset61
.Ltmp249:
	.byte	80                      # DW_OP_reg0
.Ltmp250:
	.quad	.Ltmp150
	.quad	.Ltmp151
.Lset62 = .Ltmp252-.Ltmp251             # Loc expr size
	.short	.Lset62
.Ltmp251:
	.byte	93                      # DW_OP_reg13
.Ltmp252:
	.quad	0
	.quad	0
.Ldebug_loc118:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.quad	.Ltmp58
	.quad	.Ltmp59
	.quad	.Ltmp63
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp125
	.quad	.Ltmp127
	.quad	0
	.quad	0
	.quad	.Ltmp58
	.quad	.Ltmp59
	.quad	.Ltmp63
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp124
	.quad	.Ltmp127
	.quad	.Ltmp128
	.quad	.Ltmp129
	.quad	0
	.quad	0
	.quad	.Ltmp58
	.quad	.Ltmp60
	.quad	.Ltmp63
	.quad	.Ltmp129
	.quad	0
	.quad	0
	.quad	.Ltmp58
	.quad	.Ltmp129
	.quad	.Ltmp130
	.quad	.Ltmp131
	.quad	0
	.quad	0
	.quad	.Ltmp58
	.quad	.Ltmp129
	.quad	.Ltmp130
	.quad	.Ltmp131
	.quad	0
	.quad	0
	.quad	.Ltmp58
	.quad	.Ltmp129
	.quad	.Ltmp130
	.quad	.Ltmp131
	.quad	.Ltmp132
	.quad	.Ltmp134
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 7.0.0 "
.Lstring1:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/xo/matmul_partition/matmul_partition/cpu_sources/matmul.cl"
.Lstring2:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/Emulation-HW/matmul.build/link/int/matmul_partition"
.Lstring3:
	.asciz	 "c_size"
.Lstring4:
	.asciz	 "int"
.Lstring5:
	.asciz	 "matmul_partition"
.Lstring6:
	.asciz	 "in1"
.Lstring7:
	.asciz	 "in2"
.Lstring8:
	.asciz	 "out_r"
.Lstring9:
	.asciz	 "dim"
.Lstring10:
	.asciz	 "A"
.Lstring11:
	.asciz	 "B"
.Lstring12:
	.asciz	 "C"
.Lstring13:
	.asciz	 "itr"
.Lstring14:
	.asciz	 "i"
.Lstring15:
	.asciz	 "j"
.Lstring16:
	.asciz	 "result"
.Lstring17:
	.asciz	 "k"

	.section	".note.GNU-stack","",@progbits
