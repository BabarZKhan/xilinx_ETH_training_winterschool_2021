	.file	"/home/centos/workspace/arrayb_block_partitioning/Emulation-SW/matmul.build/link/int/matmul_naive/matmul_naive.clc.csim_cu-opt.bc"
	.file	1 "/home/centos/workspace/arrayb_block_partitioning/src/matmul.cl"
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
	.loc	1 30 0                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:30:0
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
	subq	$24, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 80
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
	movl	%r8d, %ebp
.Ltmp20:
	#DEBUG_VALUE: matmul_naive:dim <- EBP+0
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.Ltmp21:
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	movq	%rdx, %r15
.Ltmp22:
	#DEBUG_VALUE: matmul_naive:in2 <- R15+0
	movl	%ebp, %r14d
	imull	%r14d, %r14d
	testl	%r14d, %r14d
.Ltmp23:
	#DEBUG_VALUE: i <- 0+0
	jle	.LBB0_2
# BB#1:                                 # %._crit_edge19.loopexit
.Ltmp24:
	#DEBUG_VALUE: matmul_naive:in1 <- RSI+0
	#DEBUG_VALUE: matmul_naive:in2 <- R15+0
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: matmul_naive:dim <- EBP+0
	#DEBUG_VALUE: i <- 0+0
	movl	%r14d, %ebx
	.loc	1 39 9 prologue_end     # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:39:9
.Ltmp25:
	shlq	$2, %rbx
	.loc	1 40 10                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:40:10
.Ltmp26:
	movq	matmul_naive.A@GOTPCREL(%rip), %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp27:
	.loc	1 47 10                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:47:10
	movq	matmul_naive.B@GOTPCREL(%rip), %rdi
	movq	%r15, %rsi
.Ltmp28:
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp29:
.LBB0_2:                                # %._crit_edge19
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: matmul_naive:dim <- EBP+0
	#DEBUG_VALUE: i <- 0+0
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:51:9
.Ltmp30:
	testl	%ebp, %ebp
	je	.LBB0_9
# BB#3:                                 # %.split5.preheader
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
.Ltmp31:
	#DEBUG_VALUE: matmul_naive:dim <- EBP+0
	#DEBUG_VALUE: i <- 0+0
	movl	%ebp, %r14d
	movslq	%ebp, %r9
	.loc	1 51 18                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:51:18
	leaq	(,%r9,4), %rdx
	xorl	%r8d, %r8d
	movq	matmul_naive.A@GOTPCREL(%rip), %rbx
	movq	matmul_naive.B@GOTPCREL(%rip), %r10
	.loc	1 60 7                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:60:7
.Ltmp32:
	movq	matmul_naive.C@GOTPCREL(%rip), %r11
	xorl	%r15d, %r15d
.Ltmp33:
	.align	16, 0x90
.LBB0_4:                                # %.split5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	movq	%r15, %rcx
	imulq	%r9, %rcx
.Ltmp34:
	#DEBUG_VALUE: j <- 0+0
	movq	%r8, %rsi
	.align	16, 0x90
.LBB0_5:                                # %.split2.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	xorl	%ebp, %ebp
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:51:9
	movq	%rbx, %rdi
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:57:31
.Ltmp35:
	movq	%r10, %rax
	movq	%r14, %r13
	.align	16, 0x90
.LBB0_6:                                # %.split2
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	.loc	1 58 36                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:58:36
.Ltmp36:
	movl	(%rax,%rsi,4), %r12d
.Ltmp37:
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:57:31
	addq	%rdx, %rax
	.loc	1 58 34                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:58:34
.Ltmp38:
	imull	(%rdi), %r12d
	.loc	1 58 16                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:58:16
	addl	%r12d, %ebp
.Ltmp39:
	#DEBUG_VALUE: result <- R12D+0
	.loc	1 57 31                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:57:31
	addq	$4, %rdi
	decq	%r13
.Ltmp40:
	.loc	1 57 13                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:57:13
	jne	.LBB0_6
.Ltmp41:
# BB#7:                                 # %._crit_edge8
                                        #   in Loop: Header=BB0_5 Depth=2
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	#DEBUG_VALUE: j <- 0+0
	#DEBUG_VALUE: result <- R12D+0
	.loc	1 60 17                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:60:17
	leaq	(%rsi,%rcx), %rax
	.loc	1 60 22                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:60:22
	movl	%ebp, (%r11,%rax,4)
.Ltmp42:
	.loc	1 53 41                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:53:41
	incq	%rsi
.Ltmp43:
	#DEBUG_VALUE: j <- RSI+0
	cmpq	$64, %rsi
	jne	.LBB0_5
.Ltmp44:
# BB#8:                                 #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	.loc	1 51 9                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:51:9
	addq	%rdx, %rbx
	.loc	1 51 35                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:51:35
.Ltmp45:
	incq	%r15
.Ltmp46:
	#DEBUG_VALUE: i <- R15+0
	cmpq	%r14, %r15
	jne	.LBB0_4
.Ltmp47:
.LBB0_9:                                # %._crit_edge14.loopexit
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	movl	12(%rsp), %eax          # 4-byte Reload
	.loc	1 67 27                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:67:27
.Ltmp48:
	testl	%eax, %eax
.Ltmp49:
	#DEBUG_VALUE: i <- 0+0
	je	.LBB0_11
.Ltmp50:
# BB#10:                                # %.split.lr.ph
	#DEBUG_VALUE: matmul_naive:out_r <- [%rsp+$16]+$0
	#DEBUG_VALUE: i <- 0+0
	movl	%eax, %edx
	.loc	1 67 9                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:67:9
	shlq	$2, %rdx
	.loc	1 68 14                 # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:68:14
.Ltmp51:
	movq	matmul_naive.C@GOTPCREL(%rip), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy@PLT
.Ltmp52:
.LBB0_11:                               # %._crit_edge.loopexit
	.loc	1 70 1                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:70:1
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp53:
.Ltmp54:
	.size	matmul_naive, .Ltmp54-matmul_naive
.Lfunc_end0:
	.cfi_endproc

	.globl	__stub____xlnx_cl_single_thread_matmul_naive
	.align	16, 0x90
	.type	__stub____xlnx_cl_single_thread_matmul_naive,@function
__stub____xlnx_cl_single_thread_matmul_naive: # @__stub____xlnx_cl_single_thread_matmul_naive
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 30 0                  # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:30:0
# BB#0:
	.loc	1 26 0 prologue_end     # /home/centos/workspace/arrayb_block_partitioning/src/matmul.cl:26:0
	movq	32(%rdi), %rax
	movl	(%rax), %r8d
	movq	24(%rdi), %rax
	movq	(%rax), %rcx
	movq	8(%rdi), %rax
	movq	16(%rdi), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rsi
	jmp	matmul_naive@PLT        # TAILCALL
.Ltmp55:
.Ltmp56:
	.size	__stub____xlnx_cl_single_thread_matmul_naive, .Ltmp56-__stub____xlnx_cl_single_thread_matmul_naive
.Lfunc_end1:
	.cfi_endproc

	.type	c_size,@object          # @c_size
	.section	.rodata.c_size,"aG",@progbits,c_size,comdat
	.weak	c_size
	.align	128
c_size:
	.long	64                      # 0x40
	.size	c_size, 4

	.type	matmul_naive.A,@object  # @matmul_naive.A
	.section	.bss.matmul_naive.A,"aGw",@nobits,matmul_naive.A,comdat
	.weak	matmul_naive.A
	.align	512
matmul_naive.A:
	.zero	16384
	.size	matmul_naive.A, 16384

	.type	matmul_naive.B,@object  # @matmul_naive.B
	.section	.bss.matmul_naive.B,"aGw",@nobits,matmul_naive.B,comdat
	.weak	matmul_naive.B
	.align	512
matmul_naive.B:
	.zero	16384
	.size	matmul_naive.B, 16384

	.type	matmul_naive.C,@object  # @matmul_naive.C
	.section	.bss.matmul_naive.C,"aGw",@nobits,matmul_naive.C,comdat
	.weak	matmul_naive.C
	.align	512
matmul_naive.C:
	.zero	16384
	.size	matmul_naive.C, 16384

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	495                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1e8 DW_TAG_compile_unit
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
	.byte	4                       # Abbrev [4] 0x44:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	5                       # Abbrev [5] 0x47:0xd DW_TAG_array_type
	.long	39                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x4c:0x7 DW_TAG_subrange_type
	.long	68                      # DW_AT_type
	.short	4095                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x54:0x173 DW_TAG_subprogram
	.long	.Lstring6               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	8                       # Abbrev [8] 0x70:0x15 DW_TAG_variable
	.long	.Lstring5               # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.A
	.byte	8                       # Abbrev [8] 0x85:0x15 DW_TAG_variable
	.long	.Lstring7               # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.B
	.byte	8                       # Abbrev [8] 0x9a:0x15 DW_TAG_variable
	.long	.Lstring8               # DW_AT_name
	.long	71                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	matmul_naive.C
	.byte	9                       # Abbrev [9] 0xaf:0xf DW_TAG_formal_parameter
	.long	.Lstring10              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	488                     # DW_AT_type
.Lset0 = .Ldebug_loc0-.Lsection_debug_loc # DW_AT_location
	.long	.Lset0
	.byte	9                       # Abbrev [9] 0xbe:0xf DW_TAG_formal_parameter
	.long	.Lstring11              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	488                     # DW_AT_type
.Lset1 = .Ldebug_loc3-.Lsection_debug_loc # DW_AT_location
	.long	.Lset1
	.byte	9                       # Abbrev [9] 0xcd:0xf DW_TAG_formal_parameter
	.long	.Lstring12              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	493                     # DW_AT_type
.Lset2 = .Ldebug_loc7-.Lsection_debug_loc # DW_AT_location
	.long	.Lset2
	.byte	9                       # Abbrev [9] 0xdc:0xf DW_TAG_formal_parameter
	.long	.Lstring13              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset3 = .Ldebug_loc11-.Lsection_debug_loc # DW_AT_location
	.long	.Lset3
	.byte	10                      # Abbrev [10] 0xeb:0x22 DW_TAG_lexical_block
	.quad	.Ltmp25                 # DW_AT_low_pc
	.quad	.Ltmp27                 # DW_AT_high_pc
	.byte	11                      # Abbrev [11] 0xfc:0x10 DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x10d:0x1d DW_TAG_lexical_block
	.quad	.Ltmp27                 # DW_AT_low_pc
	.quad	.Ltmp29                 # DW_AT_high_pc
	.byte	12                      # Abbrev [12] 0x11e:0xb DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x12a:0x7a DW_TAG_lexical_block
	.quad	.Ltmp30                 # DW_AT_low_pc
	.quad	.Ltmp47                 # DW_AT_high_pc
	.byte	13                      # Abbrev [13] 0x13b:0xf DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset4 = .Ldebug_loc15-.Lsection_debug_loc # DW_AT_location
	.long	.Lset4
	.byte	14                      # Abbrev [14] 0x14a:0x59 DW_TAG_lexical_block
	.long	.Ldebug_range+192       # DW_AT_ranges
	.byte	14                      # Abbrev [14] 0x14f:0x53 DW_TAG_lexical_block
	.long	.Ldebug_range+144       # DW_AT_ranges
	.byte	14                      # Abbrev [14] 0x154:0x4d DW_TAG_lexical_block
	.long	.Ldebug_range+96        # DW_AT_ranges
	.byte	13                      # Abbrev [13] 0x159:0xf DW_TAG_variable
	.long	.Lstring15              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset5 = .Ldebug_loc18-.Lsection_debug_loc # DW_AT_location
	.long	.Lset5
	.byte	14                      # Abbrev [14] 0x168:0x38 DW_TAG_lexical_block
	.long	.Ldebug_range+48        # DW_AT_ranges
	.byte	14                      # Abbrev [14] 0x16d:0x32 DW_TAG_lexical_block
	.long	.Ldebug_range+0         # DW_AT_ranges
	.byte	13                      # Abbrev [13] 0x172:0xf DW_TAG_variable
	.long	.Lstring16              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
.Lset6 = .Ldebug_loc21-.Lsection_debug_loc # DW_AT_location
	.long	.Lset6
	.byte	10                      # Abbrev [10] 0x181:0x1d DW_TAG_lexical_block
	.quad	.Ltmp35                 # DW_AT_low_pc
	.quad	.Ltmp41                 # DW_AT_high_pc
	.byte	12                      # Abbrev [12] 0x192:0xb DW_TAG_variable
	.long	.Lstring17              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x1a4:0x22 DW_TAG_lexical_block
	.quad	.Ltmp48                 # DW_AT_low_pc
	.quad	.Ltmp52                 # DW_AT_high_pc
	.byte	11                      # Abbrev [11] 0x1b5:0x10 DW_TAG_variable
	.long	.Lstring14              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	39                      # DW_AT_type
	.byte	4                       # DW_AT_const_value
	.long	0
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x1c7:0x1c DW_TAG_subprogram
	.long	.Lstring9               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	16                      # Abbrev [16] 0x1e3:0x5 DW_TAG_const_type
	.long	39                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1e8:0x5 DW_TAG_pointer_type
	.long	483                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1ed:0x5 DW_TAG_pointer_type
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
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
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
	.byte	8                       # Abbreviation Code
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
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
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
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
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
	.byte	13                      # Abbreviation Code
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
	.byte	14                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
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
	.byte	16                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
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
	.quad	.Ltmp28
.Lset9 = .Ltmp58-.Ltmp57                # Loc expr size
	.short	.Lset9
.Ltmp57:
	.byte	84                      # DW_OP_reg4
.Ltmp58:
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Lfunc_begin0
	.quad	.Ltmp22
.Lset10 = .Ltmp60-.Ltmp59               # Loc expr size
	.short	.Lset10
.Ltmp59:
	.byte	81                      # DW_OP_reg1
.Ltmp60:
	.quad	.Ltmp22
	.quad	.Ltmp29
.Lset11 = .Ltmp62-.Ltmp61               # Loc expr size
	.short	.Lset11
.Ltmp61:
	.byte	95                      # DW_OP_reg15
.Ltmp62:
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Lfunc_begin0
	.quad	.Ltmp21
.Lset12 = .Ltmp64-.Ltmp63               # Loc expr size
	.short	.Lset12
.Ltmp63:
	.byte	82                      # DW_OP_reg2
.Ltmp64:
	.quad	.Ltmp21
	.quad	.Lfunc_end0
.Lset13 = .Ltmp66-.Ltmp65               # Loc expr size
	.short	.Lset13
.Ltmp65:
	.byte	119                     # DW_OP_breg7
	.byte	16
.Ltmp66:
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Lfunc_begin0
	.quad	.Ltmp20
.Lset14 = .Ltmp68-.Ltmp67               # Loc expr size
	.short	.Lset14
.Ltmp67:
	.byte	88                      # DW_OP_reg8
.Ltmp68:
	.quad	.Ltmp20
	.quad	.Ltmp33
.Lset15 = .Ltmp70-.Ltmp69               # Loc expr size
	.short	.Lset15
.Ltmp69:
	.byte	86                      # DW_OP_reg6
.Ltmp70:
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Ltmp29
	.quad	.Ltmp46
.Lset16 = .Ltmp72-.Ltmp71               # Loc expr size
	.short	.Lset16
.Ltmp71:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp72:
	.quad	.Ltmp46
	.quad	.Ltmp47
.Lset17 = .Ltmp74-.Ltmp73               # Loc expr size
	.short	.Lset17
.Ltmp73:
	.byte	95                      # DW_OP_reg15
.Ltmp74:
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Ltmp34
	.quad	.Ltmp43
.Lset18 = .Ltmp76-.Ltmp75               # Loc expr size
	.short	.Lset18
.Ltmp75:
	.byte	16                      # DW_OP_constu
	.byte	0
.Ltmp76:
	.quad	.Ltmp43
	.quad	.Ltmp44
.Lset19 = .Ltmp78-.Ltmp77               # Loc expr size
	.short	.Lset19
.Ltmp77:
	.byte	84                      # DW_OP_reg4
.Ltmp78:
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Ltmp39
	.quad	.Ltmp44
.Lset20 = .Ltmp80-.Ltmp79               # Loc expr size
	.short	.Lset20
.Ltmp79:
	.byte	92                      # DW_OP_reg12
.Ltmp80:
	.quad	0
	.quad	0
.Ldebug_loc24:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp42
	.quad	0
	.quad	0
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp44
	.quad	0
	.quad	0
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp44
	.quad	0
	.quad	0
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp44
	.quad	0
	.quad	0
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp44
	.quad	.Ltmp45
	.quad	.Ltmp47
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 7.0.0 "
.Lstring1:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/src/matmul.cl"
.Lstring2:
	.asciz	 "/home/centos/workspace/arrayb_block_partitioning/Emulation-SW/matmul.build/matmul_naive/matmul_naive"
.Lstring3:
	.asciz	 "c_size"
.Lstring4:
	.asciz	 "int"
.Lstring5:
	.asciz	 "A"
.Lstring6:
	.asciz	 "matmul_naive"
.Lstring7:
	.asciz	 "B"
.Lstring8:
	.asciz	 "C"
.Lstring9:
	.asciz	 "__stub____xlnx_cl_single_thread_matmul_naive"
.Lstring10:
	.asciz	 "in1"
.Lstring11:
	.asciz	 "in2"
.Lstring12:
	.asciz	 "out_r"
.Lstring13:
	.asciz	 "dim"
.Lstring14:
	.asciz	 "i"
.Lstring15:
	.asciz	 "j"
.Lstring16:
	.asciz	 "result"
.Lstring17:
	.asciz	 "k"

	.section	".note.GNU-stack","",@progbits
