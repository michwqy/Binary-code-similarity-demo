	.text
	.file	"asn1.c"
	.globl	get_asn1_length         # -- Begin function get_asn1_length
	.p2align	4, 0x90
	.type	get_asn1_length,@function
get_asn1_length:                        # @get_asn1_length
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$24, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	jne	.LBB0_2
# %bb.1:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB0_7
.LBB0_2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	andl	$127, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%ebp), %eax
	shll	$8, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -20(%ebp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB0_3
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	-20(%ebp), %eax
	addl	$24, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	get_asn1_length, .Lfunc_end0-get_asn1_length
	.cfi_endproc
                                        # -- End function
	.globl	asn1_next_obj           # -- Begin function asn1_next_obj
	.p2align	4, 0x90
	.type	asn1_next_obj,@function
asn1_next_obj:                          # @asn1_next_obj
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %esi
	movb	(%ecx,%esi), %bl
	movzbl	%bl, %ecx
	cmpl	16(%ebp), %ecx
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	je	.LBB1_2
# %bb.1:
	movl	$-1, -12(%ebp)
	jmp	.LBB1_3
.LBB1_2:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -12(%ebp)
.LBB1_3:
	movl	-12(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	asn1_next_obj, .Lfunc_end1-asn1_next_obj
	.cfi_endproc
                                        # -- End function
	.globl	asn1_skip_obj           # -- Begin function asn1_skip_obj
	.p2align	4, 0x90
	.type	asn1_skip_obj,@function
asn1_skip_obj:                          # @asn1_skip_obj
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %esi
	movb	(%ecx,%esi), %bl
	movzbl	%bl, %ecx
	cmpl	16(%ebp), %ecx
	movl	%eax, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
	je	.LBB2_2
# %bb.1:
	movl	$-1, -12(%ebp)
	jmp	.LBB2_3
.LBB2_2:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
	movl	$0, -12(%ebp)
.LBB2_3:
	movl	-12(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	asn1_skip_obj, .Lfunc_end2-asn1_skip_obj
	.cfi_endproc
                                        # -- End function
	.globl	asn1_get_int            # -- Begin function asn1_get_int
	.p2align	4, 0x90
	.type	asn1_get_int,@function
asn1_get_int:                           # @asn1_get_int
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	$2, 8(%esp)
	movl	%eax, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	movl	%eax, -20(%ebp)
	cmpl	$0, %eax
	jge	.LBB3_2
# %bb.1:
	jmp	.LBB3_6
.LBB3_2:
	cmpl	$1, -20(%ebp)
	jle	.LBB3_5
# %bb.3:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	jne	.LBB3_5
# %bb.4:
	movl	-20(%ebp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
.LBB3_5:
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	ax_malloc
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	addl	%edx, %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	movl	%esp, %edi
	movl	%edx, 8(%edi)
	movl	%ecx, 4(%edi)
	movl	%eax, (%edi)
	movl	%esi, -32(%ebp)         # 4-byte Spill
	calll	memcpy
	movl	-20(%ebp), %ecx
	movl	-16(%ebp), %edx
	addl	(%edx), %ecx
	movl	%ecx, (%edx)
	movl	%eax, -36(%ebp)         # 4-byte Spill
.LBB3_6:
	movl	-20(%ebp), %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end3:
	.size	asn1_get_int, .Lfunc_end3-asn1_get_int
	.cfi_endproc
                                        # -- End function
	.globl	asn1_get_private_key    # -- Begin function asn1_get_private_key
	.p2align	4, 0x90
	.type	asn1_get_private_key,@function
asn1_get_private_key:                   # @asn1_get_private_key
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
	subl	$236, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$7, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -88(%ebp)
	movl	8(%ebp), %esi
	movzbl	(%esi), %esi
	cmpl	$48, %esi
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	%ecx, -116(%ebp)        # 4-byte Spill
	movl	%edx, -120(%ebp)        # 4-byte Spill
	je	.LBB4_2
# %bb.1:
	leal	.L.str, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	$-9, -16(%ebp)
	movl	%eax, -124(%ebp)        # 4-byte Spill
	jmp	.LBB4_13
.LBB4_2:
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	RNG_initialize
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -48(%ebp)
	cmpl	$0, -44(%ebp)
	jle	.LBB4_5
# %bb.3:
	cmpl	$0, -52(%ebp)
	jle	.LBB4_5
# %bb.4:
	cmpl	$0, -48(%ebp)
	jg	.LBB4_6
.LBB4_5:
	movl	$-9, -16(%ebp)
	jmp	.LBB4_13
.LBB4_6:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -104(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -108(%ebp)
	cmpl	$0, -92(%ebp)
	jle	.LBB4_11
# %bb.7:
	cmpl	$0, -96(%ebp)
	jle	.LBB4_11
# %bb.8:
	cmpl	$0, -100(%ebp)
	jle	.LBB4_11
# %bb.9:
	cmpl	$0, -104(%ebp)
	jle	.LBB4_11
# %bb.10:
	cmpl	$0, -108(%ebp)
	jg	.LBB4_12
.LBB4_11:
	movl	$-9, -16(%ebp)
	jmp	.LBB4_13
.LBB4_12:
	movl	16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-32(%ebp), %ebx
	movl	%eax, -128(%ebp)        # 4-byte Spill
	movl	-48(%ebp), %eax
	movl	%eax, -132(%ebp)        # 4-byte Spill
	movl	-56(%ebp), %eax
	movl	%eax, -136(%ebp)        # 4-byte Spill
	movl	-92(%ebp), %eax
	movl	%eax, -140(%ebp)        # 4-byte Spill
	movl	-64(%ebp), %eax
	movl	%eax, -144(%ebp)        # 4-byte Spill
	movl	-92(%ebp), %eax
	movl	%eax, -148(%ebp)        # 4-byte Spill
	movl	-72(%ebp), %eax
	movl	%eax, -152(%ebp)        # 4-byte Spill
	movl	-100(%ebp), %eax
	movl	%eax, -156(%ebp)        # 4-byte Spill
	movl	-80(%ebp), %eax
	movl	%eax, -160(%ebp)        # 4-byte Spill
	movl	-104(%ebp), %eax
	movl	%eax, -164(%ebp)        # 4-byte Spill
	movl	-88(%ebp), %eax
	movl	%eax, -168(%ebp)        # 4-byte Spill
	movl	-108(%ebp), %eax
	movl	%eax, -172(%ebp)        # 4-byte Spill
	movl	-128(%ebp), %eax        # 4-byte Reload
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	-132(%ebp), %eax        # 4-byte Reload
	movl	%eax, 24(%esp)
	movl	-136(%ebp), %eax        # 4-byte Reload
	movl	%eax, 28(%esp)
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%eax, 32(%esp)
	movl	-144(%ebp), %eax        # 4-byte Reload
	movl	%eax, 36(%esp)
	movl	-148(%ebp), %eax        # 4-byte Reload
	movl	%eax, 40(%esp)
	movl	-152(%ebp), %eax        # 4-byte Reload
	movl	%eax, 44(%esp)
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	%eax, 48(%esp)
	movl	-160(%ebp), %eax        # 4-byte Reload
	movl	%eax, 52(%esp)
	movl	-164(%ebp), %eax        # 4-byte Reload
	movl	%eax, 56(%esp)
	movl	-168(%ebp), %eax        # 4-byte Reload
	movl	%eax, 60(%esp)
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	%eax, 64(%esp)
	calll	RSA_priv_key_new
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	$0, -16(%ebp)
.LBB4_13:
	movl	-16(%ebp), %eax
	addl	$236, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	asn1_get_private_key, .Lfunc_end4-asn1_get_private_key
	.cfi_endproc
                                        # -- End function
	.globl	asn1_version            # -- Begin function asn1_version
	.p2align	4, 0x90
	.type	asn1_version,@function
asn1_version:                           # @asn1_version
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	movl	$-1, -12(%ebp)
	movl	-8(%ebp), %ecx
	movl	(%ecx), %esi
	addl	$2, %esi
	movl	%esi, (%ecx)
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	$2, 8(%esp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	movl	%edx, -20(%ebp)         # 4-byte Spill
	calll	asn1_skip_obj
	cmpl	$0, %eax
	je	.LBB5_2
# %bb.1:
	jmp	.LBB5_3
.LBB5_2:
	movl	$0, -12(%ebp)
.LBB5_3:
	movl	-12(%ebp), %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	asn1_version, .Lfunc_end5-asn1_version
	.cfi_endproc
                                        # -- End function
	.globl	asn1_validity           # -- Begin function asn1_validity
	.p2align	4, 0x90
	.type	asn1_validity,@function
asn1_validity:                          # @asn1_validity
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	movb	$1, %bl
	movb	%bl, -25(%ebp)          # 1-byte Spill
	jl	.LBB6_3
# %bb.1:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	16(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	asn1_get_utc_time
	cmpl	$0, %eax
	movb	$1, %bl
	movb	%bl, -25(%ebp)          # 1-byte Spill
	jne	.LBB6_3
# %bb.2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	16(%ebp), %edx
	addl	$36, %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	asn1_get_utc_time
	cmpl	$0, %eax
	setne	%bl
	movb	%bl, -25(%ebp)          # 1-byte Spill
.LBB6_3:
	movb	-25(%ebp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end6:
	.size	asn1_validity, .Lfunc_end6-asn1_validity
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function asn1_get_utc_time
	.type	asn1_get_utc_time,@function
asn1_get_utc_time:                      # @asn1_get_utc_time
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
	subl	$92, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$-1, -20(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %edi
	movl	%edi, %ebx
	addl	$1, %ebx
	movl	%ebx, (%esi)
	movb	(%ecx,%edi), %cl
	movzbl	%cl, %esi
	cmpl	$23, %esi
	movl	%eax, -92(%ebp)         # 4-byte Spill
	movl	%edx, -96(%ebp)         # 4-byte Spill
	je	.LBB7_2
# %bb.1:
	jmp	.LBB7_5
.LBB7_2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	get_asn1_length
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -56(%ebp)
	movaps	%xmm0, -72(%ebp)
	movaps	%xmm0, -88(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movzbl	(%eax,%ecx), %edx
	leal	(%edx,%edx,4), %edx
	leal	-480(%edx,%edx), %edx
	movb	1(%eax,%ecx), %bl
	movzbl	%bl, %eax
	subl	$48, %eax
	addl	%eax, %edx
	movl	%edx, -68(%ebp)
	cmpl	$50, -68(%ebp)
	jg	.LBB7_4
# %bb.3:
	movl	-68(%ebp), %eax
	addl	$100, %eax
	movl	%eax, -68(%ebp)
.LBB7_4:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movzbl	2(%eax,%ecx), %edx
	leal	(%edx,%edx,4), %edx
	movzbl	3(%eax,%ecx), %eax
	leal	-529(%eax,%edx,2), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movzbl	4(%eax,%ecx), %edx
	leal	(%edx,%edx,4), %edx
	movzbl	5(%eax,%ecx), %eax
	leal	-528(%eax,%edx,2), %eax
	movl	%eax, -76(%ebp)
	movl	%esp, %eax
	leal	-88(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	mktime
	movl	16(%ebp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
	movl	$0, -20(%ebp)
.LBB7_5:
	movl	-20(%ebp), %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end7:
	.size	asn1_get_utc_time, .Lfunc_end7-asn1_get_utc_time
	.cfi_endproc
                                        # -- End function
	.globl	asn1_name               # -- Begin function asn1_name
	.p2align	4, 0x90
	.type	asn1_name,@function
asn1_name:                              # @asn1_name
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$52, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	movl	$-1, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	movl	%edx, -40(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB8_2
# %bb.1:
	jmp	.LBB8_21
.LBB8_2:
	jmp	.LBB8_3
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$49, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB8_20
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	asn1_get_oid_x520
	movl	%eax, -16(%ebp)
	cmpl	$0, %eax
	jge	.LBB8_7
.LBB8_6:
	jmp	.LBB8_21
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_printable_str
	cmpl	$0, %eax
	jge	.LBB8_9
# %bb.8:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	jmp	.LBB8_21
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -28(%ebp)
.LBB8_10:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -28(%ebp)
	jge	.LBB8_17
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=2
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %ecx
	movb	g_dn_types(%ecx), %dl
	movzbl	%dl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_15
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=2
	movl	16(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	$0, %eax
	jne	.LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-24(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	$1, -32(%ebp)
	jmp	.LBB8_17
.LBB8_14:                               #   in Loop: Header=BB8_10 Depth=2
	jmp	.LBB8_15
.LBB8_15:                               #   in Loop: Header=BB8_10 Depth=2
	jmp	.LBB8_16
.LBB8_16:                               #   in Loop: Header=BB8_10 Depth=2
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.LBB8_10
.LBB8_17:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -32(%ebp)
	jne	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
.LBB8_19:                               #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_3
.LBB8_20:
	movl	$0, -12(%ebp)
.LBB8_21:
	movl	-12(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end8:
	.size	asn1_name, .Lfunc_end8-asn1_name
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function asn1_get_oid_x520
	.type	asn1_get_oid_x520,@function
asn1_get_oid_x520:                      # @asn1_get_oid_x520
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	$6, 8(%esp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	movl	%eax, -24(%ebp)
	cmpl	$0, %eax
	jge	.LBB9_2
# %bb.1:
	jmp	.LBB9_8
.LBB9_2:
	cmpl	$3, -24(%ebp)
	jne	.LBB9_6
# %bb.3:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	cmpl	$85, %eax
	jne	.LBB9_6
# %bb.4:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	cmpl	$4, %eax
	jne	.LBB9_6
# %bb.5:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB9_7
.LBB9_6:
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
.LBB9_7:
	jmp	.LBB9_8
.LBB9_8:
	movl	-20(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	asn1_get_oid_x520, .Lfunc_end9-asn1_get_oid_x520
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function asn1_get_printable_str
	.type	asn1_get_printable_str,@function
asn1_get_printable_str:                 # @asn1_get_printable_str
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$48, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$-1, -20(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %esi
	movb	(%ecx,%esi), %bl
	movzbl	%bl, %ecx
	cmpl	$19, %ecx
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	je	.LBB10_6
# %bb.1:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$12, %eax
	je	.LBB10_6
# %bb.2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$20, %eax
	je	.LBB10_6
# %bb.3:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$22, %eax
	je	.LBB10_6
# %bb.4:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$30, %eax
	je	.LBB10_6
# %bb.5:
	jmp	.LBB10_14
.LBB10_6:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	get_asn1_length
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	-1(%eax,%ecx), %bl
	movzbl	%bl, %eax
	cmpl	$30, %eax
	jne	.LBB10_12
# %bb.7:
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	addl	$1, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	ax_malloc
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	$0, -24(%ebp)
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.LBB10_11
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	-24(%ebp), %edx
	addl	%edx, %ecx
	movb	1(%eax,%ecx), %bl
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movb	%bl, (%eax,%edx)
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB10_8
.LBB10_11:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%edx, %ecx
	sarl	%ecx
	movb	$0, (%eax,%ecx)
	jmp	.LBB10_13
.LBB10_12:
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	ax_malloc
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	addl	%edx, %ecx
	movl	-20(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	memcpy
	movl	16(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	-20(%ebp), %edx
	movb	$0, (%ecx,%edx)
	movl	%eax, -36(%ebp)         # 4-byte Spill
.LBB10_13:
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
.LBB10_14:
	movl	-20(%ebp), %eax
	addl	$48, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	asn1_get_printable_str, .Lfunc_end10-asn1_get_printable_str
	.cfi_endproc
                                        # -- End function
	.globl	asn1_public_key         # -- Begin function asn1_public_key
	.p2align	4, 0x90
	.type	asn1_public_key,@function
asn1_public_key:                        # @asn1_public_key
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$-1, -20(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -44(%ebp)         # 4-byte Spill
	movl	%edx, -48(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB11_3
# %bb.1:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_skip_obj
	cmpl	$0, %eax
	jne	.LBB11_3
# %bb.2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$3, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB11_4
.LBB11_3:
	jmp	.LBB11_7
.LBB11_4:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB11_6
# %bb.5:
	jmp	.LBB11_7
.LBB11_6:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_get_int
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	addl	$52, %eax
	movl	-32(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-40(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	calll	RSA_pub_key_new
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	$0, -20(%ebp)
.LBB11_7:
	movl	-20(%ebp), %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	asn1_public_key, .Lfunc_end11-asn1_public_key
	.cfi_endproc
                                        # -- End function
	.globl	asn1_signature          # -- Begin function asn1_signature
	.p2align	4, 0x90
	.type	asn1_signature,@function
asn1_signature:                         # @asn1_signature
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
	subl	$44, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$-1, -20(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %edi
	movl	%edi, %ebx
	addl	$1, %ebx
	movl	%ebx, (%esi)
	movb	(%ecx,%edi), %cl
	movzbl	%cl, %esi
	cmpl	$3, %esi
	movl	%eax, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
	je	.LBB12_2
# %bb.1:
	jmp	.LBB12_3
.LBB12_2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	get_asn1_length
	addl	$-1, %eax
	movw	%ax, %si
	movl	16(%ebp), %eax
	movw	%si, 48(%eax)
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	16(%ebp), %eax
	movzwl	48(%eax), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 4(%ecx)
	calll	ax_malloc
	movl	16(%ebp), %ecx
	movl	%eax, 44(%ecx)
	movl	16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %edx
	movl	-16(%ebp), %edi
	movl	(%edi), %edi
	addl	%edi, %edx
	movzwl	48(%eax), %eax
	xorl	%edi, %edi
	movl	%esp, %ebx
	movl	%eax, 8(%ebx)
	movl	%edx, 4(%ebx)
	movl	%ecx, (%ebx)
	movl	%edi, -32(%ebp)         # 4-byte Spill
	calll	memcpy
	movl	16(%ebp), %ecx
	movzwl	48(%ecx), %ecx
	movl	-16(%ebp), %edx
	addl	(%edx), %ecx
	movl	%ecx, (%edx)
	movl	$0, -20(%ebp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
.LBB12_3:
	movl	-20(%ebp), %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end12:
	.size	asn1_signature, .Lfunc_end12-asn1_signature
	.cfi_endproc
                                        # -- End function
	.globl	remove_ca_certs         # -- Begin function remove_ca_certs
	.p2align	4, 0x90
	.type	remove_ca_certs,@function
remove_ca_certs:                        # @remove_ca_certs
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, -4(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB13_2
# %bb.1:
	jmp	.LBB13_8
.LBB13_2:
	jmp	.LBB13_3
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$150, -4(%ebp)
	movb	%cl, -9(%ebp)           # 1-byte Spill
	jge	.LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -9(%ebp)           # 1-byte Spill
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	movb	-9(%ebp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_6
	jmp	.LBB13_7
.LBB13_6:                               #   in Loop: Header=BB13_3 Depth=1
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	x509_free
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4(%ebp)
	movl	$0, (%eax,%ecx,4)
	jmp	.LBB13_3
.LBB13_7:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
.LBB13_8:
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	remove_ca_certs, .Lfunc_end13-remove_ca_certs
	.cfi_endproc
                                        # -- End function
	.globl	asn1_compare_dn         # -- Begin function asn1_compare_dn
	.p2align	4, 0x90
	.type	asn1_compare_dn,@function
asn1_compare_dn:                        # @asn1_compare_dn
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, -12(%ebp)
	jge	.LBB14_6
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-8(%ebp), %edx
	movl	(%edx,%ecx,4), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	asn1_compare_dn_comp
	cmpl	$0, %eax
	je	.LBB14_4
# %bb.3:
	movl	$1, -4(%ebp)
	jmp	.LBB14_7
.LBB14_4:                               #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_1 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB14_1
.LBB14_6:
	movl	$0, -4(%ebp)
.LBB14_7:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end14:
	.size	asn1_compare_dn, .Lfunc_end14-asn1_compare_dn
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function asn1_compare_dn_comp
	.type	asn1_compare_dn_comp,@function
asn1_compare_dn_comp:                   # @asn1_compare_dn_comp
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	jne	.LBB15_3
# %bb.1:
	cmpl	$0, -8(%ebp)
	jne	.LBB15_3
# %bb.2:
	movl	$0, -12(%ebp)
	jmp	.LBB15_8
.LBB15_3:
	cmpl	$0, 8(%ebp)
	je	.LBB15_6
# %bb.4:
	cmpl	$0, -8(%ebp)
	je	.LBB15_6
# %bb.5:
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcmp
	movl	%eax, -20(%ebp)         # 4-byte Spill
	jmp	.LBB15_7
.LBB15_6:
	movl	$1, %eax
	movl	%eax, -20(%ebp)         # 4-byte Spill
	jmp	.LBB15_7
.LBB15_7:
	movl	-20(%ebp), %eax         # 4-byte Reload
	movl	%eax, -12(%ebp)
.LBB15_8:
	movl	-12(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end15:
	.size	asn1_compare_dn_comp, .Lfunc_end15-asn1_compare_dn_comp
	.cfi_endproc
                                        # -- End function
	.globl	asn1_find_oid           # -- Begin function asn1_find_oid
	.p2align	4, 0x90
	.type	asn1_find_oid,@function
asn1_find_oid:                          # @asn1_find_oid
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
	subl	$60, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%edx, -24(%ebp)
	movl	8(%ebp), %edx
	movl	-24(%ebp), %edi
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -48(%ebp)         # 4-byte Spill
	movl	%ecx, -52(%ebp)         # 4-byte Spill
	movl	%esi, -56(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	movl	%eax, -28(%ebp)
	cmpl	$0, %eax
	jle	.LBB16_11
# %bb.1:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jge	.LBB16_10
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -40(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$48, -36(%ebp)
	jne	.LBB16_9
# %bb.4:                                #   in Loop: Header=BB16_2 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, (%ecx)
	movb	(%eax,%edx), %bl
	movzbl	%bl, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -40(%ebp)
	cmpl	$6, -36(%ebp)
	jne	.LBB16_8
# %bb.5:                                #   in Loop: Header=BB16_2 Depth=1
	movl	-40(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.LBB16_8
# %bb.6:                                #   in Loop: Header=BB16_2 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %ecx
	addl	%ecx, %eax
	movl	16(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%edx, 8(%edi)
	movl	%ecx, 4(%edi)
	movl	%eax, (%edi)
	calll	memcmp
	cmpl	$0, %eax
	jne	.LBB16_8
# %bb.7:
	movl	20(%ebp), %eax
	movl	-24(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
	movl	$1, -16(%ebp)
	jmp	.LBB16_12
.LBB16_8:                               #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_9
.LBB16_9:                               #   in Loop: Header=BB16_2 Depth=1
	movl	-44(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	jmp	.LBB16_2
.LBB16_10:
	jmp	.LBB16_11
.LBB16_11:
	movl	$0, -16(%ebp)
.LBB16_12:
	movl	-16(%ebp), %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end16:
	.size	asn1_find_oid, .Lfunc_end16-asn1_find_oid
	.cfi_endproc
                                        # -- End function
	.globl	asn1_find_subjectaltname # -- Begin function asn1_find_subjectaltname
	.p2align	4, 0x90
	.type	asn1_find_subjectaltname,@function
asn1_find_subjectaltname:               # @asn1_find_subjectaltname
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	leal	12(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	sig_subject_alt_name, %edx
	movl	%edx, 8(%esp)
	movl	$3, 12(%esp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	asn1_find_oid
	cmpl	$0, %eax
	je	.LBB17_2
# %bb.1:
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.LBB17_3
.LBB17_2:
	movl	$0, -4(%ebp)
.LBB17_3:
	movl	-4(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end17:
	.size	asn1_find_subjectaltname, .Lfunc_end17-asn1_find_subjectaltname
	.cfi_endproc
                                        # -- End function
	.globl	asn1_signature_type     # -- Begin function asn1_signature_type
	.p2align	4, 0x90
	.type	asn1_signature_type,@function
asn1_signature_type:                    # @asn1_signature_type
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
	subl	$44, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$-1, -20(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	(%esi), %edi
	movl	%edi, %ebx
	addl	$1, %ebx
	movl	%ebx, (%esi)
	movb	(%ecx,%edi), %cl
	movzbl	%cl, %esi
	cmpl	$6, %esi
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	je	.LBB18_2
# %bb.1:
	jmp	.LBB18_9
.LBB18_2:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -24(%ebp)
	cmpl	$5, -24(%ebp)
	jne	.LBB18_5
# %bb.3:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	addl	%ecx, %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	$0, 12(%ecx)
	movl	$5, 8(%ecx)
	movl	$sig_sha1WithRSAEncrypt, (%ecx)
	calll	memcmp
	cmpl	$0, %eax
	jne	.LBB18_5
# %bb.4:
	movl	16(%ebp), %eax
	movb	$5, 50(%eax)
	jmp	.LBB18_8
.LBB18_5:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	addl	%ecx, %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	$0, 12(%ecx)
	movl	$8, 8(%ecx)
	movl	$sig_oid_prefix, (%ecx)
	calll	memcmp
	cmpl	$0, %eax
	je	.LBB18_7
# %bb.6:
	jmp	.LBB18_9
.LBB18_7:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movb	8(%eax,%ecx), %dl
	movl	16(%ebp), %eax
	movb	%dl, 50(%eax)
.LBB18_8:
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$5, 8(%esp)
	calll	asn1_skip_obj
	movl	$0, -20(%ebp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
.LBB18_9:
	movl	-20(%ebp), %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end18:
	.size	asn1_signature_type, .Lfunc_end18-asn1_signature_type
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: This is not a valid ASN.1 file\n"
	.size	.L.str, 39

	.type	g_dn_types,@object      # @g_dn_types
	.section	.rodata,"a",@progbits
g_dn_types:
	.ascii	"\003\n\013"
	.size	g_dn_types, 3

	.type	sig_subject_alt_name,@object # @sig_subject_alt_name
sig_subject_alt_name:
	.ascii	"U\035\021"
	.size	sig_subject_alt_name, 3

	.type	sig_sha1WithRSAEncrypt,@object # @sig_sha1WithRSAEncrypt
sig_sha1WithRSAEncrypt:
	.ascii	"+\016\003\002\035"
	.size	sig_sha1WithRSAEncrypt, 5

	.type	sig_oid_prefix,@object  # @sig_oid_prefix
sig_oid_prefix:
	.ascii	"*\206H\206\367\r\001\001"
	.size	sig_oid_prefix, 8


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",@progbits
