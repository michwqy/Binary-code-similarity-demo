	.text
	.file	"myls.c"
	.globl	timesort                # -- Begin function timesort
	.p2align	4, 0x90
	.type	timesort,@function
timesort:                               # @timesort
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$152, %esp
	movl	$0, -8(%ebp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-8(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB0_15
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	(%ecx), %eax
	jl	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	(%ecx), %eax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime+4(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	4(%ecx), %eax
	jl	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	(%ecx), %eax
	jne	.LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime+4(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	4(%ecx), %eax
	jne	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	filetime+8(%eax), %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	leal	filetime(%ecx), %ecx
	cmpl	8(%ecx), %eax
	jge	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movups	filetime+96(%eax), %xmm0
	movaps	%xmm0, -40(%ebp)
	movups	filetime+80(%eax), %xmm0
	movaps	%xmm0, -56(%ebp)
	movups	filetime+64(%eax), %xmm0
	movaps	%xmm0, -72(%ebp)
	movups	filetime+48(%eax), %xmm0
	movaps	%xmm0, -88(%ebp)
	movups	filetime+32(%eax), %xmm0
	movaps	%xmm0, -104(%ebp)
	movups	filetime+16(%eax), %xmm0
	movaps	%xmm0, -120(%ebp)
	movups	filetime(%eax), %xmm0
	movaps	%xmm0, -136(%ebp)
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	movl	-12(%ebp), %ecx
	imull	$112, %ecx, %ecx
	movaps	filetime+96(%ecx), %xmm0
	movaps	%xmm0, filetime+96(%eax)
	movaps	filetime+80(%ecx), %xmm0
	movaps	%xmm0, filetime+80(%eax)
	movaps	filetime+64(%ecx), %xmm0
	movaps	%xmm0, filetime+64(%eax)
	movaps	filetime+48(%ecx), %xmm0
	movaps	%xmm0, filetime+48(%eax)
	movaps	filetime+32(%ecx), %xmm0
	movaps	%xmm0, filetime+32(%eax)
	movaps	filetime+16(%ecx), %xmm0
	movaps	%xmm0, filetime+16(%eax)
	movaps	filetime(%ecx), %xmm0
	movaps	%xmm0, filetime(%eax)
	movl	-12(%ebp), %eax
	imull	$112, %eax, %eax
	leal	filetime(%eax), %eax
	leal	-136(%ebp), %ecx
	movups	96(%ecx), %xmm0
	movups	%xmm0, 96(%eax)
	movups	80(%ecx), %xmm0
	movups	%xmm0, 80(%eax)
	movups	64(%ecx), %xmm0
	movups	%xmm0, 64(%eax)
	movups	48(%ecx), %xmm0
	movups	%xmm0, 48(%eax)
	movups	32(%ecx), %xmm0
	movups	%xmm0, 32(%eax)
	movups	(%ecx), %xmm0
	movups	16(%ecx), %xmm1
	movups	%xmm1, 16(%eax)
	movups	%xmm0, (%eax)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB0_3
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB0_1
.LBB0_15:
	movl	$0, -8(%ebp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movl	-8(%ebp), %eax
	imull	$112, %eax, %eax
	leal	filetime(%eax), %eax
	addl	$12, %eax
	subl	$16, %esp
	leal	.L.str, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	addl	$16, %esp
	movl	%eax, -140(%ebp)        # 4-byte Spill
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB0_16
.LBB0_19:
	movl	%ebp, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	timesort, .Lfunc_end0-timesort
	.cfi_endproc
                                        # -- End function
	.globl	sizesort                # -- Begin function sizesort
	.p2align	4, 0x90
	.type	sizesort,@function
sizesort:                               # @sizesort
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$136, %esp
	movl	$0, -4(%ebp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-4(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB1_10
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB1_8
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-4(%ebp), %eax
	imull	$104, %eax, %eax
	movl	filesize(%eax), %eax
	movl	-8(%ebp), %ecx
	imull	$104, %ecx, %ecx
	leal	filesize(%ecx), %ecx
	cmpl	(%ecx), %eax
	jge	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-4(%ebp), %eax
	imull	$104, %eax, %eax
	movsd	filesize+96(%eax), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%ebp)
	movups	filesize+80(%eax), %xmm0
	movaps	%xmm0, -40(%ebp)
	movups	filesize+64(%eax), %xmm0
	movaps	%xmm0, -56(%ebp)
	movups	filesize+48(%eax), %xmm0
	movaps	%xmm0, -72(%ebp)
	movups	filesize+32(%eax), %xmm0
	movaps	%xmm0, -88(%ebp)
	movups	filesize+16(%eax), %xmm0
	movaps	%xmm0, -104(%ebp)
	movups	filesize(%eax), %xmm0
	movaps	%xmm0, -120(%ebp)
	movl	-4(%ebp), %eax
	imull	$104, %eax, %eax
	movl	-8(%ebp), %ecx
	imull	$104, %ecx, %ecx
	movsd	filesize+96(%ecx), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, filesize+96(%eax)
	movups	filesize+80(%ecx), %xmm0
	movups	%xmm0, filesize+80(%eax)
	movups	filesize+64(%ecx), %xmm0
	movups	%xmm0, filesize+64(%eax)
	movups	filesize+48(%ecx), %xmm0
	movups	%xmm0, filesize+48(%eax)
	movups	filesize+32(%ecx), %xmm0
	movups	%xmm0, filesize+32(%eax)
	movups	filesize+16(%ecx), %xmm0
	movups	%xmm0, filesize+16(%eax)
	movups	filesize(%ecx), %xmm0
	movups	%xmm0, filesize(%eax)
	movl	-8(%ebp), %eax
	imull	$104, %eax, %eax
	leal	filesize(%eax), %eax
	leal	-120(%ebp), %ecx
	movsd	96(%ecx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%eax)
	movups	80(%ecx), %xmm0
	movups	%xmm0, 80(%eax)
	movups	64(%ecx), %xmm0
	movups	%xmm0, 64(%eax)
	movups	48(%ecx), %xmm0
	movups	%xmm0, 48(%eax)
	movups	32(%ecx), %xmm0
	movups	%xmm0, 32(%eax)
	movups	(%ecx), %xmm0
	movups	16(%ecx), %xmm1
	movups	%xmm1, 16(%eax)
	movups	%xmm0, (%eax)
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.LBB1_1
.LBB1_10:
	movl	$0, -4(%ebp)
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%ebp), %eax
	cmpl	n, %eax
	jge	.LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-4(%ebp), %eax
	imull	$104, %eax, %eax
	leal	filesize(%eax), %eax
	addl	$4, %eax
	leal	.L.str, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -124(%ebp)        # 4-byte Spill
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.LBB1_11
.LBB1_14:
	addl	$136, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	sizesort, .Lfunc_end1-sizesort
	.cfi_endproc
                                        # -- End function
	.globl	showfile                # -- Begin function showfile
	.p2align	4, 0x90
	.type	showfile,@function
showfile:                               # @showfile
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$508, %esp              # imm = 0x1FC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$8, -164(%ebp)
	movl	$0, -168(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, -192(%ebp)        # 4-byte Spill
	calll	lstat
	cmpl	$0, %eax
	jge	.LBB2_2
# %bb.1:
	leal	.L.str.1, %eax
	movl	%eax, (%esp)
	calll	perror
	jmp	.LBB2_113
.LBB2_2:
	movl	-136(%ebp), %eax
	andl	$61440, %eax            # imm = 0xF000
	movl	%eax, %ecx
	subl	$4096, %ecx             # imm = 0x1000
	movl	%eax, -196(%ebp)        # 4-byte Spill
	movl	%ecx, -200(%ebp)        # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_114
.LBB2_114:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$8192, %eax             # imm = 0x2000
	movl	%eax, -204(%ebp)        # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_115
.LBB2_115:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$16384, %eax            # imm = 0x4000
	movl	%eax, -208(%ebp)        # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_116
.LBB2_116:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$24576, %eax            # imm = 0x6000
	movl	%eax, -212(%ebp)        # 4-byte Spill
	je	.LBB2_6
	jmp	.LBB2_117
.LBB2_117:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$32768, %eax            # imm = 0x8000
	movl	%eax, -216(%ebp)        # 4-byte Spill
	je	.LBB2_3
	jmp	.LBB2_118
.LBB2_118:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$40960, %eax            # imm = 0xA000
	movl	%eax, -220(%ebp)        # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_119
.LBB2_119:
	movl	-196(%ebp), %eax        # 4-byte Reload
	subl	$49152, %eax            # imm = 0xC000
	movl	%eax, -224(%ebp)        # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_10
.LBB2_3:
	movb	$45, -187(%ebp)
	jmp	.LBB2_10
.LBB2_4:
	movb	$115, -187(%ebp)
	jmp	.LBB2_10
.LBB2_5:
	movb	$49, -187(%ebp)
	jmp	.LBB2_10
.LBB2_6:
	movb	$98, -187(%ebp)
	jmp	.LBB2_10
.LBB2_7:
	movb	$99, -187(%ebp)
	jmp	.LBB2_10
.LBB2_8:
	movb	$112, -187(%ebp)
	jmp	.LBB2_10
.LBB2_9:
	movb	$100, -187(%ebp)
.LBB2_10:
	jmp	.LBB2_11
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -164(%ebp)
	jl	.LBB2_20
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-136(%ebp), %eax
	movl	-164(%ebp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB2_18
# %bb.13:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	movl	$1431655766, %ecx       # imm = 0x55555556
	movl	%eax, -228(%ebp)        # 4-byte Spill
	imull	%ecx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	-228(%ebp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -232(%ebp)        # 4-byte Spill
	je	.LBB2_16
	jmp	.LBB2_120
.LBB2_120:                              #   in Loop: Header=BB2_11 Depth=1
	movl	-232(%ebp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -236(%ebp)        # 4-byte Spill
	je	.LBB2_15
	jmp	.LBB2_121
.LBB2_121:                              #   in Loop: Header=BB2_11 Depth=1
	movl	-232(%ebp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -240(%ebp)        # 4-byte Spill
	jne	.LBB2_17
	jmp	.LBB2_14
.LBB2_14:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	movl	$9, %ecx
	subl	%eax, %ecx
	movb	$114, -187(%ebp,%ecx)
	jmp	.LBB2_17
.LBB2_15:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	movl	$9, %ecx
	subl	%eax, %ecx
	movb	$119, -187(%ebp,%ecx)
	jmp	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	movl	$9, %ecx
	subl	%eax, %ecx
	movb	$120, -187(%ebp,%ecx)
.LBB2_17:                               #   in Loop: Header=BB2_11 Depth=1
	jmp	.LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	movl	$9, %ecx
	subl	%eax, %ecx
	movb	$45, -187(%ebp,%ecx)
.LBB2_19:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-164(%ebp), %eax
	addl	$-1, %eax
	movl	%eax, -164(%ebp)
	jmp	.LBB2_11
.LBB2_20:
	movb	$0, -177(%ebp)
	cmpl	$1, option_l
	jne	.LBB2_26
# %bb.21:
	movl	%esp, %eax
	leal	-187(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	$.L.str.2, (%eax)
	calll	printf
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.3, (%esi)
	movl	%eax, -244(%ebp)        # 4-byte Spill
	calll	printf
	movl	-132(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -248(%ebp)        # 4-byte Spill
	calll	getpwuid
	movl	(%eax), %eax
	movl	-128(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -252(%ebp)        # 4-byte Spill
	calll	getgrgid
	movl	(%eax), %eax
	leal	.L.str.4, %ecx
	movl	%ecx, (%esp)
	movl	-252(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	printf
	movsbl	-187(%ebp), %ecx
	cmpl	$99, %ecx
	movl	%eax, -256(%ebp)        # 4-byte Spill
	je	.LBB2_23
# %bb.22:
	movsbl	-187(%ebp), %eax
	cmpl	$98, %eax
	jne	.LBB2_24
.LBB2_23:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	%ecx, %edx
	shldl	$24, %eax, %edx
	shrl	$8, %ecx
	movl	%esp, %eax
	movl	%ecx, 8(%eax)
	movl	%edx, 4(%eax)
	movl	$.L.str.5, (%eax)
	calll	printf
	movzbl	-120(%ebp), %ecx
	xorl	%edx, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.6, (%esi)
	movl	%eax, -260(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -264(%ebp)        # 4-byte Spill
	jmp	.LBB2_25
.LBB2_24:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	%eax, 4(%edx)
	movl	$.L.str.7, (%edx)
	calll	printf
	movl	%eax, -268(%ebp)        # 4-byte Spill
.LBB2_25:
	leal	-160(%ebp), %eax
	addl	$88, %eax
	movl	%eax, (%esp)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	addl	$1900, %eax             # imm = 0x76C
	movl	-176(%ebp), %ecx
	movl	16(%ecx), %ecx
	addl	$1, %ecx
	movl	-176(%ebp), %edx
	movl	12(%edx), %edx
	movl	-176(%ebp), %esi
	movl	8(%esi), %esi
	movl	-176(%ebp), %edi
	movl	4(%edi), %edi
	leal	.L.str.8, %ebx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	calll	printf
	movl	-16(%ebp), %ecx
	leal	.L.str.9, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -272(%ebp)        # 4-byte Spill
	calll	printf
	leal	.L.str.10, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -276(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -280(%ebp)        # 4-byte Spill
	jmp	.LBB2_33
.LBB2_26:
	cmpl	$1, option_n
	jne	.LBB2_32
# %bb.27:
	movl	%esp, %eax
	leal	-187(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	$.L.str.2, (%eax)
	calll	printf
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.3, (%esi)
	movl	%eax, -284(%ebp)        # 4-byte Spill
	calll	printf
	movl	-132(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -288(%ebp)        # 4-byte Spill
	calll	getpwuid
	movl	8(%eax), %eax
	movl	-128(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -292(%ebp)        # 4-byte Spill
	calll	getgrgid
	movl	8(%eax), %eax
	leal	.L.str.11, %ecx
	movl	%ecx, (%esp)
	movl	-292(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	printf
	movsbl	-187(%ebp), %ecx
	cmpl	$99, %ecx
	movl	%eax, -296(%ebp)        # 4-byte Spill
	je	.LBB2_29
# %bb.28:
	movsbl	-187(%ebp), %eax
	cmpl	$98, %eax
	jne	.LBB2_30
.LBB2_29:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	%ecx, %edx
	shldl	$24, %eax, %edx
	shrl	$8, %ecx
	movl	%esp, %eax
	movl	%ecx, 8(%eax)
	movl	%edx, 4(%eax)
	movl	$.L.str.5, (%eax)
	calll	printf
	movzbl	-120(%ebp), %ecx
	xorl	%edx, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.6, (%esi)
	movl	%eax, -300(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -304(%ebp)        # 4-byte Spill
	jmp	.LBB2_31
.LBB2_30:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	%eax, 4(%edx)
	movl	$.L.str.7, (%edx)
	calll	printf
	movl	%eax, -308(%ebp)        # 4-byte Spill
.LBB2_31:
	leal	-72(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %ecx
	addl	$1900, %ecx             # imm = 0x76C
	movl	16(%eax), %edx
	addl	$1, %edx
	movl	12(%eax), %esi
	movl	4(%eax), %edi
	movl	8(%eax), %eax
	movl	%esp, %ebx
	movl	%edi, 20(%ebx)
	movl	%eax, 16(%ebx)
	movl	%esi, 12(%ebx)
	movl	%edx, 8(%ebx)
	movl	%ecx, 4(%ebx)
	movl	$.L.str.8, (%ebx)
	calll	printf
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	$.L.str.12, (%edx)
	movl	%eax, -312(%ebp)        # 4-byte Spill
	calll	printf
	movl	total, %ecx
	movl	-112(%ebp), %edx
	addl	%edx, %ecx
	movl	%ecx, total
	leal	.L.str.10, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -316(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -320(%ebp)        # 4-byte Spill
.LBB2_32:
	jmp	.LBB2_33
.LBB2_33:
	cmpl	$1, option_o
	jne	.LBB2_39
# %bb.34:
	movl	%esp, %eax
	leal	-187(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	$.L.str.2, (%eax)
	calll	printf
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.3, (%esi)
	movl	%eax, -324(%ebp)        # 4-byte Spill
	calll	printf
	movl	-132(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -328(%ebp)        # 4-byte Spill
	calll	getpwuid
	movl	(%eax), %eax
	leal	.L.str.13, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movsbl	-187(%ebp), %ecx
	cmpl	$99, %ecx
	movl	%eax, -332(%ebp)        # 4-byte Spill
	je	.LBB2_36
# %bb.35:
	movsbl	-187(%ebp), %eax
	cmpl	$98, %eax
	jne	.LBB2_37
.LBB2_36:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	%ecx, %edx
	shldl	$24, %eax, %edx
	shrl	$8, %ecx
	movl	%esp, %eax
	movl	%ecx, 8(%eax)
	movl	%edx, 4(%eax)
	movl	$.L.str.5, (%eax)
	calll	printf
	movzbl	-120(%ebp), %ecx
	xorl	%edx, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.6, (%esi)
	movl	%eax, -336(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -340(%ebp)        # 4-byte Spill
	jmp	.LBB2_38
.LBB2_37:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	%eax, 4(%edx)
	movl	$.L.str.7, (%edx)
	calll	printf
	movl	%eax, -344(%ebp)        # 4-byte Spill
.LBB2_38:
	leal	-160(%ebp), %eax
	addl	$88, %eax
	movl	%eax, (%esp)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	addl	$1900, %eax             # imm = 0x76C
	movl	-176(%ebp), %ecx
	movl	16(%ecx), %ecx
	addl	$1, %ecx
	movl	-176(%ebp), %edx
	movl	12(%edx), %edx
	movl	-176(%ebp), %esi
	movl	8(%esi), %esi
	movl	-176(%ebp), %edi
	movl	4(%edi), %edi
	leal	.L.str.8, %ebx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	calll	printf
	movl	-16(%ebp), %ecx
	leal	.L.str.12, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -348(%ebp)        # 4-byte Spill
	calll	printf
	leal	.L.str.10, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -352(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -356(%ebp)        # 4-byte Spill
	jmp	.LBB2_113
.LBB2_39:
	cmpl	$1, option_i
	jne	.LBB2_41
# %bb.40:
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 12(%esi)
	movl	%ecx, 8(%esi)
	movl	%eax, 4(%esi)
	movl	$.L.str.14, (%esi)
	calll	printf
	leal	.L.str.10, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -360(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -364(%ebp)        # 4-byte Spill
	jmp	.LBB2_112
.LBB2_41:
	cmpl	$1, option_R
	jne	.LBB2_46
# %bb.42:
	movsbl	-187(%ebp), %eax
	cmpl	$100, %eax
	jne	.LBB2_44
# %bb.43:
	movl	8(%ebp), %eax
	leal	.L.str.15, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -368(%ebp)        # 4-byte Spill
	calll	showdir
	jmp	.LBB2_45
.LBB2_44:
	movl	-16(%ebp), %eax
	leal	.L.str.16, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -372(%ebp)        # 4-byte Spill
.LBB2_45:
	jmp	.LBB2_111
.LBB2_46:
	cmpl	$1, option_s
	jne	.LBB2_48
# %bb.47:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	%eax, 4(%edx)
	movl	$.L.str.17, (%edx)
	calll	printf
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	$.L.str.9, (%edx)
	movl	%eax, -376(%ebp)        # 4-byte Spill
	calll	printf
	movl	%esp, %ecx
	movl	$.L.str.10, (%ecx)
	movl	%eax, -380(%ebp)        # 4-byte Spill
	calll	printf
	movl	total, %ecx
	movl	-96(%ebp), %edx
	addl	%edx, %ecx
	movl	%ecx, total
	movl	%eax, -384(%ebp)        # 4-byte Spill
	jmp	.LBB2_110
.LBB2_48:
	cmpl	$1, option_m
	jne	.LBB2_50
# %bb.49:
	movl	-16(%ebp), %eax
	leal	.L.str.18, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -388(%ebp)        # 4-byte Spill
	jmp	.LBB2_109
.LBB2_50:
	cmpl	$1, option_A
	jne	.LBB2_52
# %bb.51:
	movl	-16(%ebp), %eax
	leal	.L.str, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -392(%ebp)        # 4-byte Spill
	jmp	.LBB2_108
.LBB2_52:
	cmpl	$1, option_t
	jne	.LBB2_54
# %bb.53:
	leal	-72(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime(%ecx)
	movl	-176(%ebp), %eax
	movl	16(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime+4(%ecx)
	movl	-176(%ebp), %eax
	movl	12(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime+8(%ecx)
	movl	n, %eax
	imull	$112, %eax, %eax
	leal	filetime(%eax), %eax
	addl	$12, %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcpy
	movl	n, %ecx
	addl	$1, %ecx
	movl	%ecx, n
	movl	%eax, -396(%ebp)        # 4-byte Spill
	jmp	.LBB2_107
.LBB2_54:
	cmpl	$1, option_u
	jne	.LBB2_56
# %bb.55:
	leal	-88(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime(%ecx)
	movl	-176(%ebp), %eax
	movl	16(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime+4(%ecx)
	movl	-176(%ebp), %eax
	movl	12(%eax), %eax
	movl	n, %ecx
	imull	$112, %ecx, %ecx
	movl	%eax, filetime+8(%ecx)
	movl	n, %eax
	imull	$112, %eax, %eax
	leal	filetime(%eax), %eax
	addl	$12, %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcpy
	movl	n, %ecx
	addl	$1, %ecx
	movl	%ecx, n
	movl	%eax, -400(%ebp)        # 4-byte Spill
	jmp	.LBB2_106
.LBB2_56:
	cmpl	$1, option_B
	jne	.LBB2_66
# %bb.57:
	movl	$0, -172(%ebp)
.LBB2_58:                               # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %eax
	movl	-172(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movsbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB2_63
# %bb.59:                               #   in Loop: Header=BB2_58 Depth=1
	movl	-16(%ebp), %eax
	movl	-172(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movsbl	%dl, %eax
	cmpl	$126, %eax
	jne	.LBB2_61
# %bb.60:
	jmp	.LBB2_63
.LBB2_61:                               #   in Loop: Header=BB2_58 Depth=1
	jmp	.LBB2_62
.LBB2_62:                               #   in Loop: Header=BB2_58 Depth=1
	movl	-172(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -172(%ebp)
	jmp	.LBB2_58
.LBB2_63:
	movl	-16(%ebp), %eax
	movl	-172(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movsbl	%dl, %eax
	cmpl	$0, %eax
	jne	.LBB2_65
# %bb.64:
	movl	-16(%ebp), %eax
	leal	.L.str.19, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -404(%ebp)        # 4-byte Spill
.LBB2_65:
	jmp	.LBB2_105
.LBB2_66:
	cmpl	$1, option_S
	jne	.LBB2_68
# %bb.67:
	movl	n, %eax
	imull	$104, %eax, %eax
	leal	filesize+4(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcpy
	movl	-112(%ebp), %ecx
	movl	n, %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, n
	imull	$104, %edx, %edx
	leal	filesize(%edx), %edx
	movl	%ecx, (%edx)
	movl	%eax, -408(%ebp)        # 4-byte Spill
	jmp	.LBB2_104
.LBB2_68:
	cmpl	$1, option_r
	jne	.LBB2_70
# %bb.69:
	movl	h, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, h
	imull	$100, %eax, %eax
	leal	filenames(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcpy
	movl	%eax, -412(%ebp)        # 4-byte Spill
	jmp	.LBB2_103
.LBB2_70:
	cmpl	$1, option_N
	jne	.LBB2_72
# %bb.71:
	movl	-16(%ebp), %eax
	leal	.L.str.20, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -416(%ebp)        # 4-byte Spill
	jmp	.LBB2_102
.LBB2_72:
	cmpl	$1, option_Q
	jne	.LBB2_74
# %bb.73:
	movl	-16(%ebp), %eax
	leal	.L.str.21, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -420(%ebp)        # 4-byte Spill
	jmp	.LBB2_101
.LBB2_74:
	cmpl	$1, option_1
	jne	.LBB2_76
# %bb.75:
	movl	-16(%ebp), %eax
	leal	.L.str.12, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -424(%ebp)        # 4-byte Spill
	jmp	.LBB2_100
.LBB2_76:
	cmpl	$1, option_a
	jne	.LBB2_78
# %bb.77:
	movl	-16(%ebp), %eax
	leal	.L.str.12, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -428(%ebp)        # 4-byte Spill
	jmp	.LBB2_99
.LBB2_78:
	cmpl	$1, option_g
	jne	.LBB2_84
# %bb.79:
	movl	%esp, %eax
	leal	-187(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	$.L.str.2, (%eax)
	calll	printf
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.3, (%esi)
	movl	%eax, -432(%ebp)        # 4-byte Spill
	calll	printf
	movl	-132(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -436(%ebp)        # 4-byte Spill
	calll	getpwuid
	movl	(%eax), %eax
	leal	.L.str.13, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movsbl	-187(%ebp), %ecx
	cmpl	$99, %ecx
	movl	%eax, -440(%ebp)        # 4-byte Spill
	je	.LBB2_81
# %bb.80:
	movsbl	-187(%ebp), %eax
	cmpl	$98, %eax
	jne	.LBB2_82
.LBB2_81:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	%ecx, %edx
	shldl	$24, %eax, %edx
	shrl	$8, %ecx
	movl	%esp, %eax
	movl	%ecx, 8(%eax)
	movl	%edx, 4(%eax)
	movl	$.L.str.5, (%eax)
	calll	printf
	movzbl	-120(%ebp), %ecx
	xorl	%edx, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$.L.str.6, (%esi)
	movl	%eax, -444(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -448(%ebp)        # 4-byte Spill
	jmp	.LBB2_83
.LBB2_82:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	%eax, 4(%edx)
	movl	$.L.str.7, (%edx)
	calll	printf
	movl	%eax, -452(%ebp)        # 4-byte Spill
.LBB2_83:
	leal	-160(%ebp), %eax
	addl	$88, %eax
	movl	%eax, (%esp)
	calll	localtime
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	addl	$1900, %eax             # imm = 0x76C
	movl	-176(%ebp), %ecx
	movl	16(%ecx), %ecx
	addl	$1, %ecx
	movl	-176(%ebp), %edx
	movl	12(%edx), %edx
	movl	-176(%ebp), %esi
	movl	8(%esi), %esi
	movl	-176(%ebp), %edi
	movl	4(%edi), %edi
	leal	.L.str.8, %ebx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	calll	printf
	movl	-16(%ebp), %ecx
	leal	.L.str.12, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -456(%ebp)        # 4-byte Spill
	calll	printf
	leal	.L.str.10, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -460(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -464(%ebp)        # 4-byte Spill
	jmp	.LBB2_98
.LBB2_84:
	cmpl	$1, option_F
	jne	.LBB2_97
# %bb.85:
	movl	-16(%ebp), %eax
	leal	.L.str.9, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movsbl	-187(%ebp), %ecx
	cmpl	$100, %ecx
	movl	%eax, -468(%ebp)        # 4-byte Spill
	jne	.LBB2_87
# %bb.86:
	leal	.L.str.22, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -472(%ebp)        # 4-byte Spill
.LBB2_87:
	movsbl	-187(%ebp), %eax
	cmpl	$49, %eax
	jne	.LBB2_89
# %bb.88:
	leal	.L.str.23, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -476(%ebp)        # 4-byte Spill
.LBB2_89:
	movsbl	-187(%ebp), %eax
	cmpl	$112, %eax
	jne	.LBB2_91
# %bb.90:
	leal	.L.str.24, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -480(%ebp)        # 4-byte Spill
.LBB2_91:
	movsbl	-187(%ebp), %eax
	cmpl	$115, %eax
	jne	.LBB2_93
# %bb.92:
	leal	.L.str.25, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -484(%ebp)        # 4-byte Spill
.LBB2_93:
	movsbl	-187(%ebp), %eax
	cmpl	$45, %eax
	jne	.LBB2_96
# %bb.94:
	movl	-136(%ebp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB2_96
# %bb.95:
	leal	.L.str.26, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -488(%ebp)        # 4-byte Spill
.LBB2_96:
	leal	.L.str.10, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -492(%ebp)        # 4-byte Spill
.LBB2_97:
	jmp	.LBB2_98
.LBB2_98:
	jmp	.LBB2_99
.LBB2_99:
	jmp	.LBB2_100
.LBB2_100:
	jmp	.LBB2_101
.LBB2_101:
	jmp	.LBB2_102
.LBB2_102:
	jmp	.LBB2_103
.LBB2_103:
	jmp	.LBB2_104
.LBB2_104:
	jmp	.LBB2_105
.LBB2_105:
	jmp	.LBB2_106
.LBB2_106:
	jmp	.LBB2_107
.LBB2_107:
	jmp	.LBB2_108
.LBB2_108:
	jmp	.LBB2_109
.LBB2_109:
	jmp	.LBB2_110
.LBB2_110:
	jmp	.LBB2_111
.LBB2_111:
	jmp	.LBB2_112
.LBB2_112:
	jmp	.LBB2_113
.LBB2_113:
	addl	$508, %esp              # imm = 0x1FC
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	showfile, .Lfunc_end2-showfile
	.cfi_endproc
                                        # -- End function
	.globl	showdir                 # -- Begin function showdir
	.p2align	4, 0x90
	.type	showdir,@function
showdir:                                # @showdir
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$184, %esp
	movl	8(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$0, -124(%ebp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	leal	-128(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$0, 8(%esp)
	leal	alphasort, %edx
	movl	%edx, 12(%esp)
	movl	%eax, -140(%ebp)        # 4-byte Spill
	movl	%ecx, -144(%ebp)        # 4-byte Spill
	calll	scandir
	movl	%eax, -132(%ebp)
	cmpl	$0, -132(%ebp)
	jge	.LBB3_2
# %bb.1:
	leal	.L.str.27, %eax
	movl	%eax, (%esp)
	calll	perror
	jmp	.LBB3_27
.LBB3_2:
	movl	$-1, -136(%ebp)
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_13
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	movl	-136(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	cmpl	$0, option_a
	jne	.LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	movl	-128(%ebp), %eax
	movl	-136(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movsbl	19(%eax), %eax
	cmpl	$46, %eax
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=1
	cmpl	$1, option_d
	jne	.LBB3_10
# %bb.9:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	leal	filename, %eax
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -148(%ebp)        # 4-byte Spill
	jmp	.LBB3_27
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=1
	movl	8(%ebp), %eax
	movl	-128(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	(%ecx,%edx,4), %ecx
	addl	$19, %ecx
	movl	%esp, %edx
	movl	%ecx, 12(%edx)
	movl	%eax, 8(%edx)
	leal	-120(%ebp), %eax
	movl	%eax, (%edx)
	movl	$.L.str.28, 4(%edx)
	movl	%eax, -152(%ebp)        # 4-byte Spill
	calll	sprintf
	movl	-128(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	(%ecx,%edx,4), %ecx
	addl	$19, %ecx
	movl	-152(%ebp), %edx        # 4-byte Reload
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -156(%ebp)        # 4-byte Spill
	calll	showfile
	cmpl	$1, option_1
	jne	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_3 Depth=1
	leal	.L.str.10, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -160(%ebp)        # 4-byte Spill
.LBB3_12:                               #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_13:
	cmpl	$1, option_s
	je	.LBB3_15
# %bb.14:
	cmpl	$1, option_n
	jne	.LBB3_16
.LBB3_15:
	movl	total, %eax
	leal	.L.str.29, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	$0, total
	movl	%eax, -164(%ebp)        # 4-byte Spill
.LBB3_16:
	cmpl	$1, option_r
	jne	.LBB3_22
# %bb.17:
	movl	h, %eax
	movl	%eax, -124(%ebp)
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -124(%ebp)
	jl	.LBB3_21
# %bb.19:                               #   in Loop: Header=BB3_18 Depth=1
	movl	-124(%ebp), %eax
	imull	$100, %eax, %eax
	leal	filenames(%eax), %eax
	leal	.L.str.20, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -168(%ebp)        # 4-byte Spill
# %bb.20:                               #   in Loop: Header=BB3_18 Depth=1
	movl	-124(%ebp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%ebp)
	jmp	.LBB3_18
.LBB3_21:
	jmp	.LBB3_22
.LBB3_22:
	cmpl	$1, option_t
	je	.LBB3_24
# %bb.23:
	cmpl	$1, option_u
	jne	.LBB3_25
.LBB3_24:
	calll	timesort
.LBB3_25:
	cmpl	$1, option_S
	jne	.LBB3_27
# %bb.26:
	calll	sizesort
.LBB3_27:
	addl	$184, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end3:
	.size	showdir, .Lfunc_end3-showdir
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$200, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	$8, -156(%ebp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, filename+80
	movaps	%xmm0, filename+64
	movaps	%xmm0, filename+48
	movaps	%xmm0, filename+32
	movaps	%xmm0, filename+16
	movaps	%xmm0, filename
	movl	$0, filename+96
	movl	%esp, %eax
	movl	$.L.str.30, 4(%eax)
	movl	$filename, (%eax)
	movl	%ecx, -164(%ebp)        # 4-byte Spill
	calll	strcpy
	movl	%eax, -168(%ebp)        # 4-byte Spill
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	.L.str.31, %eax
	movl	%eax, 8(%esp)
	calll	getopt
	movl	%eax, -160(%ebp)
	cmpl	$-1, %eax
	je	.LBB4_25
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-160(%ebp), %eax
	addl	$-49, %eax
	movl	%eax, %ecx
	subl	$68, %ecx
	movl	%eax, -172(%ebp)        # 4-byte Spill
	movl	%ecx, -176(%ebp)        # 4-byte Spill
	ja	.LBB4_24
# %bb.32:                               #   in Loop: Header=BB4_1 Depth=1
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	.LJTI4_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_a
	jmp	.LBB4_24
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_t
	jmp	.LBB4_24
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_l
	jmp	.LBB4_24
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_1
	jmp	.LBB4_24
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_i
	jmp	.LBB4_24
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_d
	jmp	.LBB4_24
.LBB4_9:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_n
	jmp	.LBB4_24
.LBB4_10:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_F
	jmp	.LBB4_24
.LBB4_11:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_A
	jmp	.LBB4_24
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_R
	jmp	.LBB4_24
.LBB4_13:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_s
	jmp	.LBB4_24
.LBB4_14:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_m
	jmp	.LBB4_24
.LBB4_15:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_o
	jmp	.LBB4_24
.LBB4_16:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_r
	jmp	.LBB4_24
.LBB4_17:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_Q
	jmp	.LBB4_24
.LBB4_18:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_g
	jmp	.LBB4_24
.LBB4_19:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_N
	jmp	.LBB4_24
.LBB4_20:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_B
	jmp	.LBB4_24
.LBB4_21:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_S
	jmp	.LBB4_24
.LBB4_22:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$1, option_u
	jmp	.LBB4_24
.LBB4_23:                               #   in Loop: Header=BB4_1 Depth=1
	movl	optopt, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	leal	.L.str.32, %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -180(%ebp)        # 4-byte Spill
.LBB4_24:                               #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_1
.LBB4_25:
	leal	filename, %eax
	movl	%eax, (%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	stat
	cmpl	$0, %eax
	jge	.LBB4_27
# %bb.26:
	leal	.L.str.1, %eax
	movl	%eax, (%esp)
	calll	perror
	movl	$-1, -4(%ebp)
	jmp	.LBB4_31
.LBB4_27:
	movl	-128(%ebp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB4_29
# %bb.28:
	leal	filename, %eax
	movl	%eax, (%esp)
	calll	showdir
	jmp	.LBB4_30
.LBB4_29:
	leal	filename, %eax
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	calll	showfile
.LBB4_30:
	leal	.L.str.10, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	$0, -4(%ebp)
	movl	%eax, -184(%ebp)        # 4-byte Spill
.LBB4_31:
	movl	-4(%ebp), %eax
	addl	$200, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI4_0:
	.long	.LBB4_6
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_23
	.long	.LBB4_24
	.long	.LBB4_11
	.long	.LBB4_20
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_10
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_19
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_17
	.long	.LBB4_12
	.long	.LBB4_21
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_3
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_8
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_18
	.long	.LBB4_24
	.long	.LBB4_7
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_5
	.long	.LBB4_14
	.long	.LBB4_9
	.long	.LBB4_15
	.long	.LBB4_24
	.long	.LBB4_24
	.long	.LBB4_16
	.long	.LBB4_13
	.long	.LBB4_4
	.long	.LBB4_22
                                        # -- End function
	.type	total,@object           # @total
	.bss
	.globl	total
	.p2align	2
total:
	.long	0                       # 0x0
	.size	total, 4

	.type	h,@object               # @h
	.globl	h
	.p2align	2
h:
	.long	0                       # 0x0
	.size	h, 4

	.type	n,@object               # @n
	.globl	n
	.p2align	2
n:
	.long	0                       # 0x0
	.size	n, 4

	.type	filetime,@object        # @filetime
	.comm	filetime,11200,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s    "
	.size	.L.str, 7

	.type	filesize,@object        # @filesize
	.comm	filesize,10400,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"stat"
	.size	.L.str.1, 5

	.type	option_l,@object        # @option_l
	.local	option_l
	.comm	option_l,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s "
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%2d "
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" %s\t%s\t"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%5d,"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%2d"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%8lld "
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%d %d %2d %2d:%d "
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	option_n,@object        # @option_n
	.local	option_n
	.comm	option_n,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	" %d\t%d\t"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s  "
	.size	.L.str.12, 5

	.type	option_o,@object        # @option_o
	.local	option_o
	.comm	option_o,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" %s\t"
	.size	.L.str.13, 5

	.type	option_i,@object        # @option_i
	.local	option_i
	.comm	option_i,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%8llu %s      "
	.size	.L.str.14, 15

	.type	option_R,@object        # @option_R
	.local	option_R
	.comm	option_R,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: \n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s\n"
	.size	.L.str.16, 4

	.type	option_s,@object        # @option_s
	.local	option_s
	.comm	option_s,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%4lld "
	.size	.L.str.17, 7

	.type	option_m,@object        # @option_m
	.local	option_m
	.comm	option_m,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s,  "
	.size	.L.str.18, 6

	.type	option_A,@object        # @option_A
	.local	option_A
	.comm	option_A,4,4
	.type	option_t,@object        # @option_t
	.local	option_t
	.comm	option_t,4,4
	.type	option_u,@object        # @option_u
	.local	option_u
	.comm	option_u,4,4
	.type	option_B,@object        # @option_B
	.local	option_B
	.comm	option_B,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%-15s"
	.size	.L.str.19, 6

	.type	option_S,@object        # @option_S
	.local	option_S
	.comm	option_S,4,4
	.type	option_r,@object        # @option_r
	.local	option_r
	.comm	option_r,4,4
	.type	filenames,@object       # @filenames
	.comm	filenames,10000,16
	.type	option_N,@object        # @option_N
	.local	option_N
	.comm	option_N,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s     "
	.size	.L.str.20, 8

	.type	option_Q,@object        # @option_Q
	.local	option_Q
	.comm	option_Q,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\"%s\"  "
	.size	.L.str.21, 7

	.type	option_1,@object        # @option_1
	.local	option_1
	.comm	option_1,4,4
	.type	option_a,@object        # @option_a
	.local	option_a
	.comm	option_a,4,4
	.type	option_g,@object        # @option_g
	.local	option_g
	.comm	option_g,4,4
	.type	option_F,@object        # @option_F
	.local	option_F
	.comm	option_F,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"|"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"="
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"*"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"opendir"
	.size	.L.str.27, 8

	.type	option_d,@object        # @option_d
	.local	option_d
	.comm	option_d,4,4
	.type	filename,@object        # @filename
	.comm	filename,100,16
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s/%s"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"total = %d"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"."
	.size	.L.str.30, 2

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"al1idntFRAsmorQgNBSu"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Unknown option:%c\n"
	.size	.L.str.32, 19


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",@progbits
