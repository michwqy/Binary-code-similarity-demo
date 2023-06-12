	.text
	.file	"x509.c"
	.globl	x509_new                # -- Begin function x509_new
	.p2align	4, 0x90
	.type	x509_new,@function
x509_new:                               # @x509_new
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$2036, %esp             # imm = 0x7F4
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	movl	$-1, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	%esp, %ecx
	movl	$0, 12(%ecx)
	movl	$176, 8(%ecx)
	movl	$0, 4(%ecx)
	movl	$1, (%ecx)
	movl	%eax, -1980(%ebp)       # 4-byte Spill
	movl	%edx, -1984(%ebp)       # 4-byte Spill
	calll	calloc
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_skip_obj
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	-24(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -1988(%ebp)       # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB0_2
# %bb.1:
	jmp	.LBB0_30
.LBB0_2:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_skip_obj
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	-24(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$48, 8(%esp)
	movl	%eax, -1992(%ebp)       # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB0_4
# %bb.3:
	jmp	.LBB0_30
.LBB0_4:
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$160, %eax
	jne	.LBB0_7
# %bb.5:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	asn1_version
	cmpl	$-1, %eax
	jne	.LBB0_7
# %bb.6:
	jmp	.LBB0_30
.LBB0_7:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, 8(%esp)
	calll	asn1_skip_obj
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jge	.LBB0_10
.LBB0_9:
	jmp	.LBB0_30
.LBB0_10:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_signature_type
	cmpl	$0, %eax
	je	.LBB0_12
# %bb.11:
	movl	$-8, -20(%ebp)
	jmp	.LBB0_30
.LBB0_12:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_name
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.13:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_validity
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.14:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	addl	$24, %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_name
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.15:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_public_key
	cmpl	$0, %eax
	je	.LBB0_17
.LBB0_16:
	jmp	.LBB0_30
.LBB0_17:
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movzbl	82(%eax), %eax
	addl	$-4, %eax
	movl	%eax, %ecx
	subl	$9, %ecx
	movl	%eax, -1996(%ebp)       # 4-byte Spill
	movl	%ecx, -2000(%ebp)       # 4-byte Spill
	ja	.LBB0_23
# %bb.35:
	movl	-1996(%ebp), %eax       # 4-byte Reload
	movl	.LJTI0_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB0_18:
	movl	%esp, %eax
	leal	-136(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	MD5_Init
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	subl	-12(%ebp), %ecx
	leal	-136(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	MD5_Update
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	MD5_Final
	leal	-152(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$16, 8(%esp)
	calll	bi_import
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
	jmp	.LBB0_23
.LBB0_19:
	movl	%esp, %eax
	leal	-248(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	SHA1_Init
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	subl	-12(%ebp), %ecx
	leal	-248(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	SHA1_Update
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	SHA1_Final
	leal	-280(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$20, 8(%esp)
	calll	bi_import
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
	jmp	.LBB0_23
.LBB0_20:
	movl	%esp, %eax
	leal	-384(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	SHA256_Init
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	subl	-12(%ebp), %ecx
	leal	-384(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	SHA256_Update
	leal	-424(%ebp), %eax
	movl	%eax, (%esp)
	leal	-384(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	SHA256_Final
	leal	-424(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$32, 8(%esp)
	calll	bi_import
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
	jmp	.LBB0_23
.LBB0_21:
	movl	%esp, %eax
	leal	-1144(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	SHA384_Init
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	subl	-12(%ebp), %ecx
	leal	-1144(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	SHA384_Update
	leal	-1192(%ebp), %eax
	movl	%eax, (%esp)
	leal	-1144(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	SHA384_Final
	leal	-1192(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	bi_import
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
	jmp	.LBB0_23
.LBB0_22:
	movl	%esp, %eax
	leal	-1912(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	SHA512_Init
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	subl	-12(%ebp), %ecx
	leal	-1912(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	SHA512_Update
	leal	-1976(%ebp), %eax
	movl	%eax, (%esp)
	leal	-1912(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	SHA512_Final
	leal	-1976(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$64, 8(%esp)
	calll	bi_import
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
.LBB0_23:
	cmpl	$2, -32(%ebp)
	jne	.LBB0_26
# %bb.24:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$163, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jle	.LBB0_26
# %bb.25:
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	x509_v3_subject_alt_name
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-40(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, -2004(%ebp)       # 4-byte Spill
	calll	x509_v3_basic_constraints
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-40(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, -2008(%ebp)       # 4-byte Spill
	calll	x509_v3_key_usage
	movl	%eax, -2012(%ebp)       # 4-byte Spill
.LBB0_26:
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_skip_obj
	cmpl	$0, %eax
	jne	.LBB0_28
# %bb.27:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_signature
	cmpl	$0, %eax
	je	.LBB0_29
.LBB0_28:
	jmp	.LBB0_30
.LBB0_29:
	movl	$0, -20(%ebp)
.LBB0_30:
	cmpl	$0, -8(%ebp)
	je	.LBB0_32
# %bb.31:
	movl	-28(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%ecx)
.LBB0_32:
	cmpl	$0, -20(%ebp)
	je	.LBB0_34
# %bb.33:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	calll	x509_display_error
	leal	.L.str, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	-40(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -2016(%ebp)       # 4-byte Spill
	calll	x509_free
	movl	16(%ebp), %eax
	movl	$0, (%eax)
.LBB0_34:
	movl	-20(%ebp), %eax
	addl	$2036, %esp             # imm = 0x7F4
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	x509_new, .Lfunc_end0-x509_new
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_22
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function x509_v3_subject_alt_name
	.type	x509_v3_subject_alt_name,@function
x509_v3_subject_alt_name:               # @x509_v3_subject_alt_name
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
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	movl	%edx, -44(%ebp)         # 4-byte Spill
	calll	asn1_is_subject_alt_name
	movl	%eax, 12(%ebp)
	cmpl	$0, %eax
	jle	.LBB1_11
# %bb.1:
	movl	16(%ebp), %eax
	movb	$1, 87(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	asn1_is_critical_ext
	movl	16(%ebp), %ecx
	andb	$1, %al
	movb	%al, 88(%ecx)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$4, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jle	.LBB1_10
# %bb.2:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_next_obj
	movl	%eax, -16(%ebp)
	cmpl	$0, %eax
	jle	.LBB1_9
# %bb.3:
	movl	12(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movl	12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 12(%ebp)
	movb	(%eax,%ecx), %bl
	movzbl	%bl, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	get_asn1_length
	movl	%eax, -32(%ebp)
	cmpl	$130, -28(%ebp)
	jne	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	16(%ebp), %eax
	movl	48(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shldl	$3, %ecx, %edx
	shll	$3, %ecx
	addl	$16, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	realloc
	movl	16(%ebp), %ecx
	movl	%eax, 48(%ecx)
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	malloc
	movl	16(%ebp), %ecx
	movl	48(%ecx), %ecx
	movl	-24(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	16(%ebp), %eax
	movl	48(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	$0, 4(%eax,%ecx,4)
	movl	16(%ebp), %eax
	movl	48(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
	addl	%edx, %ecx
	movl	-32(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	memcpy
	movl	16(%ebp), %ecx
	movl	48(%ecx), %ecx
	movl	-24(%ebp), %edx
	movl	(%ecx,%edx,4), %ecx
	movl	-32(%ebp), %edx
	movb	$0, (%ecx,%edx)
	movl	-24(%ebp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, -48(%ebp)         # 4-byte Spill
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	movl	-32(%ebp), %eax
	addl	12(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.LBB1_4
.LBB1_8:
	jmp	.LBB1_9
.LBB1_9:
	jmp	.LBB1_10
.LBB1_10:
	jmp	.LBB1_11
.LBB1_11:
	xorl	%eax, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	x509_v3_subject_alt_name, .Lfunc_end1-x509_v3_subject_alt_name
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function x509_v3_basic_constraints
	.type	x509_v3_basic_constraints,@function
x509_v3_basic_constraints:              # @x509_v3_basic_constraints
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$0, -12(%ebp)
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	calll	asn1_is_basic_constraints
	movl	%eax, 12(%ebp)
	cmpl	$0, %eax
	jne	.LBB2_2
# %bb.1:
	jmp	.LBB2_8
.LBB2_2:
	movl	16(%ebp), %eax
	movb	$1, 83(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	asn1_is_critical_ext
	movl	16(%ebp), %ecx
	andb	$1, %al
	movb	%al, 84(%ecx)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$4, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB2_6
# %bb.3:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB2_6
# %bb.4:
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	addl	$89, %ecx
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_get_bool
	cmpl	$0, %eax
	jl	.LBB2_6
# %bb.5:
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	addl	$92, %ecx
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_get_int
	cmpl	$0, %eax
	jge	.LBB2_7
.LBB2_6:
	movl	$-1, -12(%ebp)
.LBB2_7:
	jmp	.LBB2_8
.LBB2_8:
	movl	-12(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	x509_v3_basic_constraints, .Lfunc_end2-x509_v3_basic_constraints
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function x509_v3_key_usage
	.type	x509_v3_key_usage,@function
x509_v3_key_usage:                      # @x509_v3_key_usage
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$0, -12(%ebp)
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	calll	asn1_is_key_usage
	movl	%eax, 12(%ebp)
	cmpl	$0, %eax
	jne	.LBB3_2
# %bb.1:
	jmp	.LBB3_6
.LBB3_2:
	movl	16(%ebp), %eax
	movb	$1, 85(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	asn1_is_critical_ext
	movl	16(%ebp), %ecx
	andb	$1, %al
	movb	%al, 86(%ecx)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$4, 8(%esp)
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB3_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	addl	$96, %ecx
	movl	%eax, (%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	asn1_get_bit_string_as_int
	cmpl	$0, %eax
	je	.LBB3_5
.LBB3_4:
	movl	$-1, -12(%ebp)
.LBB3_5:
	jmp	.LBB3_6
.LBB3_6:
	movl	-12(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end3:
	.size	x509_v3_key_usage, .Lfunc_end3-x509_v3_key_usage
	.cfi_endproc
                                        # -- End function
	.globl	x509_display_error      # -- Begin function x509_display_error
	.p2align	4, 0x90
	.type	x509_display_error,@function
x509_display_error:                     # @x509_display_error
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	addl	$11, %ecx
	movl	%ecx, %edx
	subl	$11, %edx
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	movl	%edx, -20(%ebp)         # 4-byte Spill
	ja	.LBB4_12
# %bb.14:
	movl	-16(%ebp), %eax         # 4-byte Reload
	movl	.LJTI4_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB4_1:
	leal	.L.str.40, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_2:
	leal	.L.str.41, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_3:
	leal	.L.str.42, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_4:
	leal	.L.str.43, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_5:
	leal	.L.str.44, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_6:
	leal	.L.str.45, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_7:
	leal	.L.str.46, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_8:
	leal	.L.str.47, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_9:
	leal	.L.str.48, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_10:
	leal	.L.str.49, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_11:
	leal	.L.str.50, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB4_13
.LBB4_12:
	leal	.L.str.51, %eax
	movl	%eax, -8(%ebp)
.LBB4_13:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	x509_display_error, .Lfunc_end4-x509_display_error
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI4_0:
	.long	.LBB4_11
	.long	.LBB4_12
	.long	.LBB4_10
	.long	.LBB4_9
	.long	.LBB4_8
	.long	.LBB4_7
	.long	.LBB4_6
	.long	.LBB4_5
	.long	.LBB4_4
	.long	.LBB4_3
	.long	.LBB4_2
	.long	.LBB4_1
                                        # -- End function
	.text
	.globl	x509_free               # -- Begin function x509_free
	.p2align	4, 0x90
	.type	x509_free,@function
x509_free:                              # @x509_free
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	jne	.LBB5_2
# %bb.1:
	jmp	.LBB5_15
.LBB5_2:
	movl	$0, -12(%ebp)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6, -12(%ebp)
	jge	.LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	free
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	24(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	calll	free
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB5_3
.LBB5_6:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	calll	free
	movl	8(%ebp), %eax
	cmpl	$0, 76(%eax)
	je	.LBB5_8
# %bb.7:
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %ecx
	movl	76(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	bi_free
.LBB5_8:
	movl	8(%ebp), %eax
	cmpl	$0, 48(%eax)
	je	.LBB5_14
# %bb.9:
	movl	$0, -12(%ebp)
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	$0, %eax
	je	.LBB5_13
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	calll	free
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB5_10
.LBB5_13:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	calll	free
.LBB5_14:
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	calll	RSA_free
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	free
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	x509_free
.LBB5_15:
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	x509_free, .Lfunc_end5-x509_free
	.cfi_endproc
                                        # -- End function
	.globl	x509_verify             # -- Begin function x509_verify
	.p2align	4, 0x90
	.type	x509_verify,@function
x509_verify:                            # @x509_verify
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$160, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movb	$0, -89(%ebp)
	cmpl	$0, -16(%ebp)
	movl	%eax, -96(%ebp)         # 4-byte Spill
	movl	%edx, -100(%ebp)        # 4-byte Spill
	jne	.LBB6_2
# %bb.1:
	movl	$-2, -20(%ebp)
	jmp	.LBB6_53
.LBB6_2:
	movl	-16(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	$24, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	asn1_compare_dn
	cmpl	$0, %eax
	jne	.LBB6_4
# %bb.3:
	movb	$1, -89(%ebp)
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.LBB6_4:
	movl	%esp, %eax
	leal	-88(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	$0, 4(%eax)
	calll	gettimeofday
	movl	-88(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	-16(%ebp), %esi
	movl	52(%esi), %edi
	movl	56(%esi), %esi
	subl	%edi, %ecx
	sbbl	%esi, %edx
	movl	%eax, -104(%ebp)        # 4-byte Spill
	movl	%edx, -108(%ebp)        # 4-byte Spill
	movl	%ecx, -112(%ebp)        # 4-byte Spill
	jge	.LBB6_6
	jmp	.LBB6_5
.LBB6_5:
	movl	$-4, -20(%ebp)
	jmp	.LBB6_53
.LBB6_6:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	60(%edx), %esi
	movl	64(%edx), %edx
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -116(%ebp)        # 4-byte Spill
	movl	%edx, -120(%ebp)        # 4-byte Spill
	jge	.LBB6_8
	jmp	.LBB6_7
.LBB6_7:
	movl	$-5, -20(%ebp)
	jmp	.LBB6_53
.LBB6_8:
	movl	-16(%ebp), %eax
	testb	$1, 83(%eax)
	je	.LBB6_18
# %bb.9:
	movl	-16(%ebp), %eax
	testb	$1, 89(%eax)
	jne	.LBB6_12
# %bb.10:
	movl	-16(%ebp), %eax
	movl	96(%eax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB6_12
# %bb.11:
	movl	$-11, -20(%ebp)
	jmp	.LBB6_53
.LBB6_12:
	movl	-16(%ebp), %eax
	testb	$1, 89(%eax)
	je	.LBB6_17
# %bb.13:
	movl	-16(%ebp), %eax
	testb	$1, 85(%eax)
	je	.LBB6_15
# %bb.14:
	movl	-16(%ebp), %eax
	movl	96(%eax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB6_17
.LBB6_15:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	addl	$1, %eax
	movl	16(%ebp), %ecx
	cmpl	(%ecx), %eax
	jge	.LBB6_17
# %bb.16:
	movl	$-11, -20(%ebp)
	jmp	.LBB6_53
.LBB6_17:
	jmp	.LBB6_18
.LBB6_18:
	movl	-16(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB6_35
# %bb.19:
	cmpl	$0, 8(%ebp)
	je	.LBB6_31
# %bb.20:
	jmp	.LBB6_21
.LBB6_21:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$150, -24(%ebp)
	movb	%cl, -121(%ebp)         # 1-byte Spill
	jge	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -121(%ebp)         # 1-byte Spill
.LBB6_23:                               #   in Loop: Header=BB6_21 Depth=1
	movb	-121(%ebp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_24
	jmp	.LBB6_30
.LBB6_24:                               #   in Loop: Header=BB6_21 Depth=1
	movl	-16(%ebp), %eax
	testb	$1, 83(%eax)
	je	.LBB6_27
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	testb	$1, 89(%eax)
	jne	.LBB6_27
# %bb.26:                               #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_21
.LBB6_27:                               #   in Loop: Header=BB6_21 Depth=1
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	(%ecx,%edx,4), %ecx
	addl	$24, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	asn1_compare_dn
	cmpl	$0, %eax
	jne	.LBB6_29
# %bb.28:
	movl	$1, -68(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	72(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	72(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.LBB6_30
.LBB6_29:                               #   in Loop: Header=BB6_21 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB6_21
.LBB6_30:
	jmp	.LBB6_31
.LBB6_31:
	cmpl	$0, -68(%ebp)
	jne	.LBB6_34
# %bb.32:
	cmpb	$0, -89(%ebp)
	jne	.LBB6_34
# %bb.33:
	movl	$-2, -20(%ebp)
	jmp	.LBB6_53
.LBB6_34:
	jmp	.LBB6_39
.LBB6_35:
	movl	-16(%ebp), %eax
	movl	-40(%ebp), %ecx
	addl	$24, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	asn1_compare_dn
	cmpl	$0, %eax
	je	.LBB6_37
# %bb.36:
	movl	$-7, -20(%ebp)
	jmp	.LBB6_53
.LBB6_37:
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
# %bb.38:
	jmp	.LBB6_39
.LBB6_39:
	cmpl	$0, -68(%ebp)
	jne	.LBB6_42
# %bb.40:
	movzbl	-89(%ebp), %eax
	cmpl	$0, %eax
	je	.LBB6_42
# %bb.41:
	movl	$-6, -20(%ebp)
	jmp	.LBB6_53
.LBB6_42:
	movl	-48(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	68(%ecx), %ecx
	movl	-16(%ebp), %edx
	movzwl	80(%edx), %edx
	movl	-48(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, -128(%ebp)        # 4-byte Spill
	movl	%ecx, -132(%ebp)        # 4-byte Spill
	movl	%edx, -136(%ebp)        # 4-byte Spill
	calll	bi_clone
	movl	-48(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -140(%ebp)        # 4-byte Spill
	calll	bi_clone
	movl	-128(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, (%esp)
	movl	-132(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	-136(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	-140(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	calll	sig_verify
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.LBB6_47
# %bb.43:
	movl	-16(%ebp), %eax
	cmpl	$0, 76(%eax)
	je	.LBB6_47
# %bb.44:
	movl	-32(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	76(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	bi_compare
	cmpl	$0, %eax
	je	.LBB6_46
# %bb.45:
	movl	$-3, -20(%ebp)
.LBB6_46:
	movl	-48(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	bi_free
	jmp	.LBB6_48
.LBB6_47:
	movl	$-3, -20(%ebp)
.LBB6_48:
	cmpl	$0, -20(%ebp)
	je	.LBB6_50
# %bb.49:
	jmp	.LBB6_53
.LBB6_50:
	cmpl	$0, -40(%ebp)
	je	.LBB6_52
# %bb.51:
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	x509_verify
	movl	%eax, -20(%ebp)
.LBB6_52:
	jmp	.LBB6_53
.LBB6_53:
	movl	-20(%ebp), %eax
	addl	$160, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end6:
	.size	x509_verify, .Lfunc_end6-x509_verify
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sig_verify
	.type	sig_verify,@function
sig_verify:                             # @sig_verify
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
	subl	$76, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	24(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%esi, -16(%ebp)
	movl	%ecx, -24(%ebp)
	movl	$0, -56(%ebp)
	movl	16(%ebp), %ecx
	addl	$15, %ecx
	andl	$-16, %ecx
	movl	%esp, %esi
	subl	%ecx, %esi
	movl	%esi, %esp
	movl	%esi, -64(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %esi
	movl	16(%ebp), %ebx
	subl	$16, %esp
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, -76(%ebp)         # 4-byte Spill
	movl	%edi, -80(%ebp)         # 4-byte Spill
	movl	%edx, -84(%ebp)         # 4-byte Spill
	calll	bi_import
	addl	$16, %esp
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movb	$0, 64(%eax)
	movl	8(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	24(%ebp), %esi
	subl	$16, %esp
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	calll	bi_mod_power2
	addl	$16, %esp
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	16(%ebp), %esi
	subl	$16, %esp
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	calll	bi_export
	addl	$16, %esp
	movl	8(%ebp), %eax
	movb	$0, 64(%eax)
	movl	$10, -28(%ebp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-64(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -28(%ebp)
	movb	(%eax,%edx), %ch
	movzbl	%ch, %eax
	cmpl	$0, %eax
	movb	%cl, -85(%ebp)          # 1-byte Spill
	je	.LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%ebp), %eax
	cmpl	16(%ebp), %eax
	setl	%cl
	movb	%cl, -85(%ebp)          # 1-byte Spill
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-85(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_4
	jmp	.LBB7_5
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_5:
	movl	16(%ebp), %eax
	subl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jle	.LBB7_9
# %bb.6:
	movl	-64(%ebp), %eax
	movl	-28(%ebp), %ecx
	addl	%ecx, %eax
	subl	$16, %esp
	movl	%eax, (%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	get_signature
	addl	$16, %esp
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.LBB7_8
# %bb.7:
	movl	8(%ebp), %eax
	movl	-72(%ebp), %ecx
	movl	-68(%ebp), %edx
	subl	$16, %esp
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	bi_import
	addl	$16, %esp
	movl	%eax, -56(%ebp)
.LBB7_8:
	jmp	.LBB7_9
.LBB7_9:
	movl	8(%ebp), %eax
	subl	$16, %esp
	movl	%eax, (%esp)
	calll	bi_clear_cache
	addl	$16, %esp
	movl	-56(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end7:
	.size	sig_verify, .Lfunc_end7-sig_verify
	.cfi_endproc
                                        # -- End function
	.globl	x509_print              # -- Begin function x509_print
	.p2align	4, 0x90
	.type	x509_print,@function
x509_print:                             # @x509_print
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$304, %esp              # imm = 0x130
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	jne	.LBB8_2
# %bb.1:
	jmp	.LBB8_86
.LBB8_2:
	leal	.L.str.1, %eax
	movl	%eax, (%esp)
	calll	printf
	leal	.L.str.2, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, 24(%ecx)
	movl	%eax, -40(%ebp)         # 4-byte Spill
	je	.LBB8_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:
	movl	not_part_of_cert, %eax
	movl	%eax, -44(%ebp)         # 4-byte Spill
.LBB8_5:
	movl	-44(%ebp), %eax         # 4-byte Reload
	leal	.L.str.3, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	leal	.L.str.4, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -48(%ebp)         # 4-byte Spill
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, 28(%ecx)
	movl	%eax, -52(%ebp)         # 4-byte Spill
	je	.LBB8_7
# %bb.6:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:
	movl	not_part_of_cert, %eax
	movl	%eax, -56(%ebp)         # 4-byte Spill
.LBB8_8:
	movl	-56(%ebp), %eax         # 4-byte Reload
	leal	.L.str.3, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, 32(%ecx)
	movl	%eax, -60(%ebp)         # 4-byte Spill
	je	.LBB8_10
# %bb.9:
	leal	.L.str.5, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	32(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -64(%ebp)         # 4-byte Spill
	calll	printf
	movl	%eax, -68(%ebp)         # 4-byte Spill
.LBB8_10:
	movl	8(%ebp), %eax
	cmpl	$0, 36(%eax)
	je	.LBB8_12
# %bb.11:
	leal	.L.str.6, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	36(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -72(%ebp)         # 4-byte Spill
	calll	printf
	movl	%eax, -76(%ebp)         # 4-byte Spill
.LBB8_12:
	movl	8(%ebp), %eax
	cmpl	$0, 40(%eax)
	je	.LBB8_14
# %bb.13:
	leal	.L.str.7, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	40(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -80(%ebp)         # 4-byte Spill
	calll	printf
	movl	%eax, -84(%ebp)         # 4-byte Spill
.LBB8_14:
	movl	8(%ebp), %eax
	cmpl	$0, 44(%eax)
	je	.LBB8_16
# %bb.15:
	leal	.L.str.8, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	44(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -88(%ebp)         # 4-byte Spill
	calll	printf
	movl	%eax, -92(%ebp)         # 4-byte Spill
.LBB8_16:
	movl	8(%ebp), %eax
	testb	$1, 83(%eax)
	je	.LBB8_18
# %bb.17:
	movl	8(%ebp), %eax
	movb	84(%eax), %cl
	testb	$1, %cl
	leal	.L.str.10, %eax
	leal	.L.str.11, %edx
	cmovnel	%eax, %edx
	movl	8(%ebp), %eax
	movb	89(%eax), %cl
	testb	$1, %cl
	leal	.L.str.12, %eax
	leal	.L.str.13, %esi
	cmovnel	%eax, %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	leal	.L.str.9, %edi
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	calll	printf
	movl	%eax, -96(%ebp)         # 4-byte Spill
.LBB8_18:
	movl	8(%ebp), %eax
	testb	$1, 85(%eax)
	je	.LBB8_54
# %bb.19:
	movl	8(%ebp), %eax
	movb	86(%eax), %cl
	testb	$1, %cl
	leal	.L.str.10, %eax
	leal	.L.str.11, %edx
	cmovnel	%eax, %edx
	leal	.L.str.14, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	printf
	movb	$0, -17(%ebp)
	movl	8(%ebp), %edx
	movl	96(%edx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movl	%eax, -100(%ebp)        # 4-byte Spill
	je	.LBB8_21
# %bb.20:
	leal	.L.str.15, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -104(%ebp)        # 4-byte Spill
.LBB8_21:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB8_25
# %bb.22:
	testb	$1, -17(%ebp)
	je	.LBB8_24
# %bb.23:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -108(%ebp)        # 4-byte Spill
.LBB8_24:
	leal	.L.str.17, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -112(%ebp)        # 4-byte Spill
.LBB8_25:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB8_29
# %bb.26:
	testb	$1, -17(%ebp)
	je	.LBB8_28
# %bb.27:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -116(%ebp)        # 4-byte Spill
.LBB8_28:
	leal	.L.str.18, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -120(%ebp)        # 4-byte Spill
.LBB8_29:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB8_33
# %bb.30:
	testb	$1, -17(%ebp)
	je	.LBB8_32
# %bb.31:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -124(%ebp)        # 4-byte Spill
.LBB8_32:
	leal	.L.str.19, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -128(%ebp)        # 4-byte Spill
.LBB8_33:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_37
# %bb.34:
	testb	$1, -17(%ebp)
	je	.LBB8_36
# %bb.35:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -132(%ebp)        # 4-byte Spill
.LBB8_36:
	leal	.L.str.20, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -136(%ebp)        # 4-byte Spill
.LBB8_37:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_41
# %bb.38:
	testb	$1, -17(%ebp)
	je	.LBB8_40
# %bb.39:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -140(%ebp)        # 4-byte Spill
.LBB8_40:
	leal	.L.str.21, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -144(%ebp)        # 4-byte Spill
.LBB8_41:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB8_45
# %bb.42:
	testb	$1, -17(%ebp)
	je	.LBB8_44
# %bb.43:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -148(%ebp)        # 4-byte Spill
.LBB8_44:
	leal	.L.str.22, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -152(%ebp)        # 4-byte Spill
.LBB8_45:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_49
# %bb.46:
	testb	$1, -17(%ebp)
	je	.LBB8_48
# %bb.47:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -156(%ebp)        # 4-byte Spill
.LBB8_48:
	leal	.L.str.23, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -160(%ebp)        # 4-byte Spill
.LBB8_49:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB8_53
# %bb.50:
	testb	$1, -17(%ebp)
	je	.LBB8_52
# %bb.51:
	leal	.L.str.16, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -164(%ebp)        # 4-byte Spill
.LBB8_52:
	leal	.L.str.24, %eax
	movl	%eax, (%esp)
	calll	printf
	movb	$1, -17(%ebp)
	movl	%eax, -168(%ebp)        # 4-byte Spill
.LBB8_53:
	leal	.L.str.25, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -172(%ebp)        # 4-byte Spill
.LBB8_54:
	movl	8(%ebp), %eax
	testb	$1, 87(%eax)
	je	.LBB8_61
# %bb.55:
	movl	8(%ebp), %eax
	movb	88(%eax), %cl
	testb	$1, %cl
	leal	.L.str.10, %eax
	leal	.L.str.11, %edx
	cmovnel	%eax, %edx
	leal	.L.str.26, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	printf
	movl	8(%ebp), %edx
	cmpl	$0, 48(%edx)
	movl	%eax, -176(%ebp)        # 4-byte Spill
	je	.LBB8_60
# %bb.56:
	movl	$0, -24(%ebp)
.LBB8_57:                               # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	$0, %eax
	je	.LBB8_59
# %bb.58:                               #   in Loop: Header=BB8_57 Depth=1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%ebp)
	movl	(%eax,%ecx,4), %eax
	leal	.L.str.27, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -180(%ebp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_59:
	jmp	.LBB8_60
.LBB8_60:
	leal	.L.str.25, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -184(%ebp)        # 4-byte Spill
.LBB8_61:
	leal	.L.str.28, %eax
	movl	%eax, (%esp)
	calll	printf
	leal	.L.str.2, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -188(%ebp)        # 4-byte Spill
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, (%ecx)
	movl	%eax, -192(%ebp)        # 4-byte Spill
	je	.LBB8_63
# %bb.62:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -196(%ebp)        # 4-byte Spill
	jmp	.LBB8_64
.LBB8_63:
	movl	not_part_of_cert, %eax
	movl	%eax, -196(%ebp)        # 4-byte Spill
.LBB8_64:
	movl	-196(%ebp), %eax        # 4-byte Reload
	leal	.L.str.3, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	leal	.L.str.4, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -200(%ebp)        # 4-byte Spill
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, 4(%ecx)
	movl	%eax, -204(%ebp)        # 4-byte Spill
	je	.LBB8_66
# %bb.65:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -208(%ebp)        # 4-byte Spill
	jmp	.LBB8_67
.LBB8_66:
	movl	not_part_of_cert, %eax
	movl	%eax, -208(%ebp)        # 4-byte Spill
.LBB8_67:
	movl	-208(%ebp), %eax        # 4-byte Reload
	leal	.L.str.3, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	8(%ebp), %ecx
	cmpl	$0, 8(%ecx)
	movl	%eax, -212(%ebp)        # 4-byte Spill
	je	.LBB8_69
# %bb.68:
	leal	.L.str.5, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	8(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -216(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -220(%ebp)        # 4-byte Spill
.LBB8_69:
	movl	8(%ebp), %eax
	cmpl	$0, 12(%eax)
	je	.LBB8_71
# %bb.70:
	leal	.L.str.6, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	12(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -224(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -228(%ebp)        # 4-byte Spill
.LBB8_71:
	movl	8(%ebp), %eax
	cmpl	$0, 16(%eax)
	je	.LBB8_73
# %bb.72:
	leal	.L.str.7, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	16(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -232(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -236(%ebp)        # 4-byte Spill
.LBB8_73:
	movl	8(%ebp), %eax
	cmpl	$0, 20(%eax)
	je	.LBB8_75
# %bb.74:
	leal	.L.str.8, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	8(%ebp), %ecx
	movl	20(%ecx), %ecx
	leal	.L.str.3, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -240(%ebp)        # 4-byte Spill
	calll	printf
	movl	%eax, -244(%ebp)        # 4-byte Spill
.LBB8_75:
	movl	8(%ebp), %eax
	addl	$52, %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	ctime
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	$.L.str.29, (%ecx)
	calll	printf
	movl	8(%ebp), %ecx
	addl	$60, %ecx
	movl	%esp, %edx
	movl	%ecx, (%edx)
	movl	%eax, -248(%ebp)        # 4-byte Spill
	calll	ctime
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	$.L.str.30, (%ecx)
	calll	printf
	movl	8(%ebp), %ecx
	movl	72(%ecx), %ecx
	movl	32(%ecx), %ecx
	shll	$3, %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	$.L.str.31, (%edx)
	movl	%eax, -252(%ebp)        # 4-byte Spill
	calll	printf
	movl	%esp, %ecx
	movl	$.L.str.32, (%ecx)
	movl	%eax, -256(%ebp)        # 4-byte Spill
	calll	printf
	movl	8(%ebp), %ecx
	movzbl	82(%ecx), %ecx
	addl	$-4, %ecx
	movl	%ecx, %edx
	subl	$9, %edx
	movl	%eax, -260(%ebp)        # 4-byte Spill
	movl	%ecx, -264(%ebp)        # 4-byte Spill
	movl	%edx, -268(%ebp)        # 4-byte Spill
	ja	.LBB8_81
# %bb.87:
	movl	-264(%ebp), %eax        # 4-byte Reload
	movl	.LJTI8_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB8_76:
	leal	.L.str.33, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -272(%ebp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_77:
	leal	.L.str.34, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -276(%ebp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_78:
	leal	.L.str.35, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -280(%ebp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_79:
	leal	.L.str.36, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -284(%ebp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_80:
	leal	.L.str.37, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -288(%ebp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_81:
	movl	8(%ebp), %eax
	movzbl	82(%eax), %eax
	leal	.L.str.38, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -292(%ebp)        # 4-byte Spill
.LBB8_82:
	cmpl	$0, -16(%ebp)
	je	.LBB8_84
# %bb.83:
	movl	$0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	x509_verify
	movl	%eax, (%esp)
	calll	x509_display_error
	leal	.L.str.39, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	movl	%eax, -296(%ebp)        # 4-byte Spill
.LBB8_84:
	cmpl	$0, -16(%ebp)
	je	.LBB8_86
# %bb.85:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	x509_print
.LBB8_86:
	addl	$304, %esp              # imm = 0x130
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end8:
	.size	x509_print, .Lfunc_end8-x509_print
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI8_0:
	.long	.LBB8_76
	.long	.LBB8_77
	.long	.LBB8_81
	.long	.LBB8_81
	.long	.LBB8_81
	.long	.LBB8_81
	.long	.LBB8_81
	.long	.LBB8_78
	.long	.LBB8_79
	.long	.LBB8_80
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function get_signature
	.type	get_signature,@function
get_signature:                          # @get_signature
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	calll	asn1_next_obj
	cmpl	$0, %eax
	jl	.LBB9_2
# %bb.1:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, 8(%esp)
	calll	asn1_skip_obj
	cmpl	$0, %eax
	je	.LBB9_3
.LBB9_2:
	jmp	.LBB9_6
.LBB9_3:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movb	(%eax,%ecx), %bl
	movzbl	%bl, %eax
	cmpl	$4, %eax
	je	.LBB9_5
# %bb.4:
	jmp	.LBB9_6
.LBB9_5:
	movl	8(%ebp), %eax
	movl	%esp, %ecx
	leal	-12(%ebp), %edx
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	calll	get_asn1_length
	movl	-8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %eax
	movl	%eax, -16(%ebp)
.LBB9_6:
	movl	-16(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	get_signature, .Lfunc_end9-get_signature
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: Invalid X509 ASN.1 file (%s)\n"
	.size	.L.str, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"=== CERTIFICATE ISSUED TO ===\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Common Name (CN):\t\t"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s\n"
	.size	.L.str.3, 4

	.type	not_part_of_cert,@object # @not_part_of_cert
	.data
	.p2align	3
not_part_of_cert:
	.long	.L.str.52
	.size	not_part_of_cert, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Organization (O):\t\t"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Organizational Unit (OU):\t"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Location (L):\t\t\t"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Country (C):\t\t\t"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"State (ST):\t\t\t"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Basic Constraints:\t\t%sCA:%s, pathlen:%d\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"critical, "
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"TRUE"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FALSE"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Key Usage:\t\t\t%s"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Digital Signature"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	", "
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Non Repudiation"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Key Encipherment"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Data Encipherment"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Key Agreement"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Key Cert Sign"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"CRL Sign"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Encipher Only"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Decipher Only"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\n"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Subject Alt Name:\t\t%s"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s "
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"=== CERTIFICATE ISSUED BY ===\n"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Not Before:\t\t\t%s"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Not After:\t\t\t%s"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"RSA bitsize:\t\t\t%d\n"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Sig Type:\t\t\t"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"MD5\n"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"SHA1\n"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SHA256\n"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"SHA384\n"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"SHA512\n"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unrecognized: %d\n"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Verify:\t\t\t\t%s\n"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Certificate verify successful"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"X509 not ok"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"No trusted cert is available"
	.size	.L.str.42, 29

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Bad signature"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Cert is not yet valid"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Cert has expired"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Cert is self-signed"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Chain is invalid (check order of certs)"
	.size	.L.str.47, 40

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Unsupported digest"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Invalid private key"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Basic constraint invalid"
	.size	.L.str.50, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Unknown"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"<Not Part Of Certificate>"
	.size	.L.str.52, 26


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",@progbits
