	.text
	.file	"cJSON.c"
	.globl	cJSON_GetErrorPtr       # -- Begin function cJSON_GetErrorPtr
	.p2align	4, 0x90
	.type	cJSON_GetErrorPtr,@function
cJSON_GetErrorPtr:                      # @cJSON_GetErrorPtr
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	movl	global_error, %eax
	movl	global_error+4, %ecx
	addl	%ecx, %eax
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	cJSON_GetErrorPtr, .Lfunc_end0-cJSON_GetErrorPtr
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_GetStringValue    # -- Begin function cJSON_GetStringValue
	.p2align	4, 0x90
	.type	cJSON_GetStringValue,@function
cJSON_GetStringValue:                   # @cJSON_GetStringValue
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
	movl	%ecx, (%esp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	cJSON_IsString
	cmpl	$0, %eax
	jne	.LBB1_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB1_3
.LBB1_2:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.LBB1_3:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	cJSON_GetStringValue, .Lfunc_end1-cJSON_GetStringValue
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsString          # -- Begin function cJSON_IsString
	.p2align	4, 0x90
	.type	cJSON_IsString,@function
cJSON_IsString:                         # @cJSON_IsString
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB2_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB2_3
.LBB2_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$16, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB2_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	cJSON_IsString, .Lfunc_end2-cJSON_IsString
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Version           # -- Begin function cJSON_Version
	.p2align	4, 0x90
	.type	cJSON_Version,@function
cJSON_Version:                          # @cJSON_Version
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	cJSON_Version.version, %eax
	movl	%eax, (%esp)
	leal	.L.str, %eax
	movl	%eax, 4(%esp)
	movl	$1, 8(%esp)
	movl	$7, 12(%esp)
	movl	$6, 16(%esp)
	calll	sprintf
	leal	cJSON_Version.version, %ecx
	movl	%eax, -4(%ebp)          # 4-byte Spill
	movl	%ecx, %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end3:
	.size	cJSON_Version, .Lfunc_end3-cJSON_Version
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_InitHooks         # -- Begin function cJSON_InitHooks
	.p2align	4, 0x90
	.type	cJSON_InitHooks,@function
cJSON_InitHooks:                        # @cJSON_InitHooks
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -4(%ebp)          # 4-byte Spill
	jne	.LBB4_2
# %bb.1:
	leal	malloc, %eax
	movl	%eax, global_hooks
	leal	free, %eax
	movl	%eax, global_hooks+4
	leal	realloc, %eax
	movl	%eax, global_hooks+8
	jmp	.LBB4_9
.LBB4_2:
	leal	malloc, %eax
	movl	%eax, global_hooks
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB4_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, global_hooks
.LBB4_4:
	leal	free, %eax
	movl	%eax, global_hooks+4
	movl	8(%ebp), %eax
	cmpl	$0, 4(%eax)
	je	.LBB4_6
# %bb.5:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, global_hooks+4
.LBB4_6:
	movl	$0, global_hooks+8
	leal	malloc, %eax
	cmpl	%eax, global_hooks
	jne	.LBB4_9
# %bb.7:
	leal	free, %eax
	cmpl	%eax, global_hooks+4
	jne	.LBB4_9
# %bb.8:
	leal	realloc, %eax
	movl	%eax, global_hooks+8
.LBB4_9:
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	cJSON_InitHooks, .Lfunc_end4-cJSON_InitHooks
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Delete            # -- Begin function cJSON_Delete
	.p2align	4, 0x90
	.type	cJSON_Delete,@function
cJSON_Delete:                           # @cJSON_Delete
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%ebp)
	je	.LBB5_12
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB5_5
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	cmpl	$0, 8(%eax)
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB5_8
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	cmpl	$0, 16(%eax)
	je	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	movl	global_hooks+4, %eax
	movl	8(%ebp), %ecx
	movl	16(%ecx), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	jne	.LBB5_11
# %bb.9:                                #   in Loop: Header=BB5_1 Depth=1
	movl	8(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB5_11
# %bb.10:                               #   in Loop: Header=BB5_1 Depth=1
	movl	global_hooks+4, %eax
	movl	8(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	movl	global_hooks+4, %eax
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB5_1
.LBB5_12:
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	cJSON_Delete, .Lfunc_end5-cJSON_Delete
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cJSON_SetNumberHelper
.LCPI6_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI6_1:
	.quad	-4476578029606273024    # double -2147483648
	.text
	.globl	cJSON_SetNumberHelper
	.p2align	4, 0x90
	.type	cJSON_SetNumberHelper,@function
cJSON_SetNumberHelper:                  # @cJSON_SetNumberHelper
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movsd	12(%ebp), %xmm0         # xmm0 = mem[0],zero
	movl	8(%ebp), %eax
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%ebp)
	movsd	-8(%ebp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	%eax, -20(%ebp)         # 4-byte Spill
	jb	.LBB6_2
# %bb.1:
	movl	8(%ebp), %eax
	movl	$2147483647, 20(%eax)   # imm = 0x7FFFFFFF
	jmp	.LBB6_6
.LBB6_2:
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-8(%ebp), %xmm0
	jb	.LBB6_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	$-2147483648, 20(%eax)  # imm = 0x80000000
	jmp	.LBB6_5
.LBB6_4:
	cvttsd2si	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
.LBB6_5:
	jmp	.LBB6_6
.LBB6_6:
	movsd	-8(%ebp), %xmm0         # xmm0 = mem[0],zero
	movl	8(%ebp), %eax
	movsd	%xmm0, 24(%eax)
	movsd	%xmm0, -16(%ebp)
	fldl	-16(%ebp)
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end6:
	.size	cJSON_SetNumberHelper, .Lfunc_end6-cJSON_SetNumberHelper
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_ParseWithOpts     # -- Begin function cJSON_ParseWithOpts
	.p2align	4, 0x90
	.type	cJSON_ParseWithOpts,@function
cJSON_ParseWithOpts:                    # @cJSON_ParseWithOpts
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$144, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -24(%ebp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -40(%ebp)
	movaps	%xmm0, -56(%ebp)
	movaps	%xmm0, -72(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, global_error
	movl	$0, global_error+8
	movl	$0, global_error+4
	cmpl	$0, 8(%ebp)
	movl	%eax, -100(%ebp)        # 4-byte Spill
	movl	%edx, -104(%ebp)        # 4-byte Spill
	jne	.LBB7_2
# %bb.1:
	jmp	.LBB7_14
.LBB7_2:
	movl	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	strlen
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -60(%ebp)
	leal	-72(%ebp), %eax
	addl	$28, %eax
	movsd	global_hooks+16, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%eax)
	movups	global_hooks, %xmm0
	movups	%xmm0, (%eax)
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	jne	.LBB7_4
# %bb.3:
	jmp	.LBB7_14
.LBB7_4:
	movl	-80(%ebp), %eax
	leal	-72(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -108(%ebp)        # 4-byte Spill
	calll	skip_utf8_bom
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	-108(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	parse_value
	cmpl	$0, %eax
	jne	.LBB7_6
# %bb.5:
	jmp	.LBB7_14
.LBB7_6:
	cmpl	$0, 16(%ebp)
	je	.LBB7_11
# %bb.7:
	movl	%esp, %eax
	leal	-72(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	buffer_skip_whitespace
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %esi
	movl	-64(%ebp), %edi
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	%edx, -116(%ebp)        # 4-byte Spill
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	jae	.LBB7_9
	jmp	.LBB7_8
.LBB7_8:
	movl	-72(%ebp), %eax
	movl	-60(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB7_10
.LBB7_9:
	jmp	.LBB7_14
.LBB7_10:
	jmp	.LBB7_11
.LBB7_11:
	cmpl	$0, -24(%ebp)
	je	.LBB7_13
# %bb.12:
	movl	-72(%ebp), %eax
	movl	-60(%ebp), %ecx
	addl	%ecx, %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
.LBB7_13:
	movl	-80(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.LBB7_26
.LBB7_14:
	cmpl	$0, -80(%ebp)
	je	.LBB7_16
# %bb.15:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
.LBB7_16:
	cmpl	$0, 8(%ebp)
	je	.LBB7_25
# %bb.17:
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -92(%ebp)
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %esi
	subl	%edx, %ecx
	sbbl	%esi, %eax
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	movl	%eax, -128(%ebp)        # 4-byte Spill
	jae	.LBB7_19
	jmp	.LBB7_18
.LBB7_18:
	movsd	-60(%ebp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -92(%ebp)
	jmp	.LBB7_22
.LBB7_19:
	movl	-68(%ebp), %eax
	movl	-64(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%ebp)        # 4-byte Spill
	je	.LBB7_21
	jmp	.LBB7_20
.LBB7_20:
	movl	-68(%ebp), %eax
	movl	-64(%ebp), %ecx
	addl	$-1, %eax
	adcl	$-1, %ecx
	movl	%eax, -92(%ebp)
	movl	%ecx, -88(%ebp)
.LBB7_21:
	jmp	.LBB7_22
.LBB7_22:
	cmpl	$0, -24(%ebp)
	je	.LBB7_24
# %bb.23:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ecx
	addl	%ecx, %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
.LBB7_24:
	movl	-96(%ebp), %eax
	movl	%eax, global_error
	movl	-92(%ebp), %eax
	movl	%eax, global_error+4
	movl	-88(%ebp), %eax
	movl	%eax, global_error+8
	movl	-84(%ebp), %eax
	movl	%eax, global_error+12
.LBB7_25:
	movl	$0, -16(%ebp)
.LBB7_26:
	movl	-16(%ebp), %eax
	addl	$144, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end7:
	.size	cJSON_ParseWithOpts, .Lfunc_end7-cJSON_ParseWithOpts
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cJSON_New_Item
	.type	cJSON_New_Item,@function
cJSON_New_Item:                         # @cJSON_New_Item
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
	movl	(%ecx), %ecx
	movl	%esp, %edx
	movl	$0, 4(%edx)
	movl	$64, (%edx)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB8_2
# %bb.1:
	movl	-8(%ebp), %eax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%eax)
	movups	%xmm0, 32(%eax)
	movups	%xmm0, 16(%eax)
	movups	%xmm0, (%eax)
.LBB8_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end8:
	.size	cJSON_New_Item, .Lfunc_end8-cJSON_New_Item
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function parse_value
	.type	parse_value,@function
parse_value:                            # @parse_value
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$100, %esp
	.cfi_offset %esi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	je	.LBB9_2
# %bb.1:
	movl	-16(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.LBB9_3
.LBB9_2:
	movl	$0, -8(%ebp)
	jmp	.LBB9_34
.LBB9_3:
	cmpl	$0, -16(%ebp)
	je	.LBB9_7
# %bb.4:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	addl	$4, %edx
	adcl	$0, %ecx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%edx, %esi
	sbbl	%ecx, %eax
	movl	%eax, -24(%ebp)         # 4-byte Spill
	movl	%esi, -28(%ebp)         # 4-byte Spill
	jb	.LBB9_7
	jmp	.LBB9_5
.LBB9_5:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$0, 12(%eax)
	movl	$4, 8(%eax)
	movl	$.L.str.2, 4(%eax)
	calll	strncmp
	cmpl	$0, %eax
	jne	.LBB9_7
# %bb.6:
	movl	8(%ebp), %eax
	movl	$4, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$4, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -8(%ebp)
	jmp	.LBB9_34
.LBB9_7:
	cmpl	$0, -16(%ebp)
	je	.LBB9_11
# %bb.8:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	addl	$5, %edx
	adcl	$0, %ecx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%edx, %esi
	sbbl	%ecx, %eax
	movl	%eax, -32(%ebp)         # 4-byte Spill
	movl	%esi, -36(%ebp)         # 4-byte Spill
	jb	.LBB9_11
	jmp	.LBB9_9
.LBB9_9:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$0, 12(%eax)
	movl	$5, 8(%eax)
	movl	$.L.str.3, 4(%eax)
	calll	strncmp
	cmpl	$0, %eax
	jne	.LBB9_11
# %bb.10:
	movl	8(%ebp), %eax
	movl	$1, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$5, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -8(%ebp)
	jmp	.LBB9_34
.LBB9_11:
	cmpl	$0, -16(%ebp)
	je	.LBB9_15
# %bb.12:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	addl	$4, %edx
	adcl	$0, %ecx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%edx, %esi
	sbbl	%ecx, %eax
	movl	%eax, -40(%ebp)         # 4-byte Spill
	movl	%esi, -44(%ebp)         # 4-byte Spill
	jb	.LBB9_15
	jmp	.LBB9_13
.LBB9_13:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$0, 12(%eax)
	movl	$4, 8(%eax)
	movl	$.L.str.4, 4(%eax)
	calll	strncmp
	cmpl	$0, %eax
	jne	.LBB9_15
# %bb.14:
	movl	8(%ebp), %eax
	movl	$2, 12(%eax)
	movl	8(%ebp), %eax
	movl	$1, 20(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$4, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -8(%ebp)
	jmp	.LBB9_34
.LBB9_15:
	cmpl	$0, -16(%ebp)
	je	.LBB9_19
# %bb.16:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -48(%ebp)         # 4-byte Spill
	movl	%ecx, -52(%ebp)         # 4-byte Spill
	jae	.LBB9_19
	jmp	.LBB9_17
.LBB9_17:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$34, %eax
	jne	.LBB9_19
# %bb.18:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	parse_string
	movl	%eax, -8(%ebp)
	jmp	.LBB9_34
.LBB9_19:
	cmpl	$0, -16(%ebp)
	je	.LBB9_25
# %bb.20:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -56(%ebp)         # 4-byte Spill
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	jae	.LBB9_25
	jmp	.LBB9_21
.LBB9_21:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$45, %eax
	je	.LBB9_24
# %bb.22:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$48, %eax
	jl	.LBB9_25
# %bb.23:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$57, %eax
	jg	.LBB9_25
.LBB9_24:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	parse_number
	movl	%eax, -8(%ebp)
	jmp	.LBB9_34
.LBB9_25:
	cmpl	$0, -16(%ebp)
	je	.LBB9_29
# %bb.26:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -64(%ebp)         # 4-byte Spill
	movl	%ecx, -68(%ebp)         # 4-byte Spill
	jae	.LBB9_29
	jmp	.LBB9_27
.LBB9_27:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$91, %eax
	jne	.LBB9_29
# %bb.28:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	parse_array
	movl	%eax, -8(%ebp)
	jmp	.LBB9_34
.LBB9_29:
	cmpl	$0, -16(%ebp)
	je	.LBB9_33
# %bb.30:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -72(%ebp)         # 4-byte Spill
	movl	%ecx, -76(%ebp)         # 4-byte Spill
	jae	.LBB9_33
	jmp	.LBB9_31
.LBB9_31:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$123, %eax
	jne	.LBB9_33
# %bb.32:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	parse_object
	movl	%eax, -8(%ebp)
	jmp	.LBB9_34
.LBB9_33:
	movl	$0, -8(%ebp)
.LBB9_34:
	movl	-8(%ebp), %eax
	addl	$100, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	parse_value, .Lfunc_end9-parse_value
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function buffer_skip_whitespace
	.type	buffer_skip_whitespace,@function
buffer_skip_whitespace:                 # @buffer_skip_whitespace
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
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	je	.LBB10_2
# %bb.1:
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.LBB10_3
.LBB10_2:
	movl	$0, -16(%ebp)
	jmp	.LBB10_12
.LBB10_3:
	jmp	.LBB10_4
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, 8(%ebp)
	movb	%cl, -21(%ebp)          # 1-byte Spill
	je	.LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	xorl	%ebx, %ebx
                                        # kill: def $bl killed $bl killed $ebx
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -28(%ebp)         # 4-byte Spill
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	movb	%bl, -21(%ebp)          # 1-byte Spill
	jae	.LBB10_7
	jmp	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_4 Depth=1
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$32, %eax
	setle	%dl
	movb	%dl, -21(%ebp)          # 1-byte Spill
.LBB10_7:                               #   in Loop: Header=BB10_4 Depth=1
	movb	-21(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_8:                               #   in Loop: Header=BB10_4 Depth=1
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	jmp	.LBB10_4
.LBB10_9:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	xorl	%eax, %edx
	xorl	%esi, %ecx
	orl	%edx, %ecx
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	jne	.LBB10_11
	jmp	.LBB10_10
.LBB10_10:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
.LBB10_11:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB10_12:
	movl	-16(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	buffer_skip_whitespace, .Lfunc_end10-buffer_skip_whitespace
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function skip_utf8_bom
	.type	skip_utf8_bom,@function
skip_utf8_bom:                          # @skip_utf8_bom
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
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	je	.LBB11_3
# %bb.1:
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB11_3
# %bb.2:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %eax
	orl	%eax, %ecx
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_3
.LBB11_3:
	movl	$0, -8(%ebp)
	jmp	.LBB11_9
.LBB11_4:
	cmpl	$0, 8(%ebp)
	je	.LBB11_8
# %bb.5:
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	addl	$4, %edx
	adcl	$0, %ecx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -20(%ebp)         # 4-byte Spill
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	jae	.LBB11_8
	jmp	.LBB11_6
.LBB11_6:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$0, 12(%eax)
	movl	$3, 8(%eax)
	movl	$.L.str.1, 4(%eax)
	calll	strncmp
	cmpl	$0, %eax
	jne	.LBB11_8
# %bb.7:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$3, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
.LBB11_8:
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB11_9:
	movl	-8(%ebp), %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	skip_utf8_bom, .Lfunc_end11-skip_utf8_bom
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Parse             # -- Begin function cJSON_Parse
	.p2align	4, 0x90
	.type	cJSON_Parse,@function
cJSON_Parse:                            # @cJSON_Parse
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	xorl	%ecx, %ecx
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, -4(%ebp)          # 4-byte Spill
	movl	%ecx, -8(%ebp)          # 4-byte Spill
	calll	cJSON_ParseWithOpts
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end12:
	.size	cJSON_Parse, .Lfunc_end12-cJSON_Parse
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Print             # -- Begin function cJSON_Print
	.p2align	4, 0x90
	.type	cJSON_Print,@function
cJSON_Print:                            # @cJSON_Print
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
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	leal	global_hooks, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, -4(%ebp)          # 4-byte Spill
	calll	print
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	cJSON_Print, .Lfunc_end13-cJSON_Print
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print
	.type	print,@function
print:                                  # @print
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
	subl	$140, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	leal	-72(%ebp), %esi
	movl	$0, -80(%ebp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -24(%ebp)
	movaps	%xmm0, -40(%ebp)
	movaps	%xmm0, -56(%ebp)
	movaps	%xmm0, -72(%ebp)
	movl	16(%ebp), %edi
	movl	(%edi), %edi
	movl	%esp, %ebx
	movl	$0, 4(%ebx)
	movl	$256, (%ebx)            # imm = 0x100
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%ecx, -88(%ebp)         # 4-byte Spill
	movl	%edx, -92(%ebp)         # 4-byte Spill
	movl	%esi, -96(%ebp)         # 4-byte Spill
	calll	*%edi
	movl	%eax, -72(%ebp)
	movl	$0, -64(%ebp)
	movl	$256, -68(%ebp)         # imm = 0x100
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-96(%ebp), %eax         # 4-byte Reload
	addl	$36, %eax
	movl	16(%ebp), %ecx
	movsd	16(%ecx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%eax)
	movups	(%ecx), %xmm0
	movups	%xmm0, (%eax)
	cmpl	$0, -72(%ebp)
	jne	.LBB14_2
# %bb.1:
	jmp	.LBB14_15
.LBB14_2:
	leal	-72(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	print_value
	cmpl	$0, %eax
	jne	.LBB14_4
# %bb.3:
	jmp	.LBB14_15
.LBB14_4:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	calll	update_offset
	movl	16(%ebp), %eax
	cmpl	$0, 8(%eax)
	je	.LBB14_8
# %bb.5:
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	-72(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	-56(%ebp), %esi
	addl	$1, %edx
	adcl	$0, %esi
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%ecx, (%edi)
	calll	*%eax
	movl	%eax, -80(%ebp)
	movl	$0, -72(%ebp)
	cmpl	$0, -80(%ebp)
	jne	.LBB14_7
# %bb.6:
	jmp	.LBB14_15
.LBB14_7:
	jmp	.LBB14_14
.LBB14_8:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	calll	*%eax
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	jne	.LBB14_10
# %bb.9:
	jmp	.LBB14_15
.LBB14_10:
	movl	-80(%ebp), %eax
	movl	-72(%ebp), %ecx
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ebx
	addl	$1, %ebx
	adcl	$0, %edi
	subl	%ebx, %edx
	sbbl	%edi, %esi
	movl	%eax, -100(%ebp)        # 4-byte Spill
	movl	%ecx, -104(%ebp)        # 4-byte Spill
	movl	%esi, -108(%ebp)        # 4-byte Spill
	movl	%edx, -112(%ebp)        # 4-byte Spill
	jae	.LBB14_12
	jmp	.LBB14_11
.LBB14_11:
	movl	-68(%ebp), %eax
	movl	-64(%ebp), %ecx
	movl	%eax, -116(%ebp)        # 4-byte Spill
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	jmp	.LBB14_13
.LBB14_12:
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %ecx
	addl	$1, %eax
	adcl	$0, %ecx
	movl	%eax, -116(%ebp)        # 4-byte Spill
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	jmp	.LBB14_13
.LBB14_13:
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	-116(%ebp), %ecx        # 4-byte Reload
	movl	%esp, %edx
	movl	%ecx, 8(%edx)
	movl	-104(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, 4(%edx)
	movl	-100(%ebp), %esi        # 4-byte Reload
	movl	%esi, (%edx)
	movl	%eax, -124(%ebp)        # 4-byte Spill
	calll	memcpy
	movl	-80(%ebp), %ecx
	movl	-60(%ebp), %edx
	movb	$0, (%ecx,%edx)
	movl	16(%ebp), %ecx
	movl	4(%ecx), %ecx
	movl	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, -128(%ebp)        # 4-byte Spill
	calll	*%ecx
.LBB14_14:
	movl	-80(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.LBB14_20
.LBB14_15:
	cmpl	$0, -72(%ebp)
	je	.LBB14_17
# %bb.16:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-72(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB14_17:
	cmpl	$0, -80(%ebp)
	je	.LBB14_19
# %bb.18:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-80(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB14_19:
	movl	$0, -16(%ebp)
.LBB14_20:
	movl	-16(%ebp), %eax
	addl	$140, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end14:
	.size	print, .Lfunc_end14-print
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_PrintUnformatted  # -- Begin function cJSON_PrintUnformatted
	.p2align	4, 0x90
	.type	cJSON_PrintUnformatted,@function
cJSON_PrintUnformatted:                 # @cJSON_PrintUnformatted
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	xorl	%ecx, %ecx
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	leal	global_hooks, %edx
	movl	%edx, 8(%esp)
	movl	%eax, -4(%ebp)          # 4-byte Spill
	movl	%ecx, -8(%ebp)          # 4-byte Spill
	calll	print
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end15:
	.size	cJSON_PrintUnformatted, .Lfunc_end15-cJSON_PrintUnformatted
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_PrintBuffered     # -- Begin function cJSON_PrintBuffered
	.p2align	4, 0x90
	.type	cJSON_PrintBuffered,@function
cJSON_PrintBuffered:                    # @cJSON_PrintBuffered
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$84, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	leal	-56(%ebp), %esi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%esi)
	movups	%xmm0, 32(%esi)
	movups	%xmm0, 16(%esi)
	movups	%xmm0, (%esi)
	cmpl	$0, 12(%ebp)
	movl	%eax, -60(%ebp)         # 4-byte Spill
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%edx, -68(%ebp)         # 4-byte Spill
	jge	.LBB16_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB16_7
.LBB16_2:
	movl	global_hooks, %eax
	movl	12(%ebp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	calll	*%eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jne	.LBB16_4
# %bb.3:
	movl	$0, -8(%ebp)
	jmp	.LBB16_7
.LBB16_4:
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%eax, -52(%ebp)
	movl	%ecx, -48(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	addl	$36, %ecx
	movsd	global_hooks+16, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%ecx)
	movups	global_hooks, %xmm0
	movups	%xmm0, (%ecx)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	print_value
	cmpl	$0, %eax
	jne	.LBB16_6
# %bb.5:
	movl	global_hooks+4, %eax
	movl	-56(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
	movl	$0, -8(%ebp)
	jmp	.LBB16_7
.LBB16_6:
	movl	-56(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB16_7:
	movl	-8(%ebp), %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end16:
	.size	cJSON_PrintBuffered, .Lfunc_end16-cJSON_PrintBuffered
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_value
	.type	print_value,@function
print_value:                            # @print_value
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	je	.LBB17_2
# %bb.1:
	cmpl	$0, -16(%ebp)
	jne	.LBB17_3
.LBB17_2:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_3:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -40(%ebp)         # 4-byte Spill
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	je	.LBB17_7
	jmp	.LBB17_24
.LBB17_24:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%ebp)         # 4-byte Spill
	je	.LBB17_10
	jmp	.LBB17_25
.LBB17_25:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -52(%ebp)         # 4-byte Spill
	je	.LBB17_4
	jmp	.LBB17_26
.LBB17_26:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -56(%ebp)         # 4-byte Spill
	je	.LBB17_13
	jmp	.LBB17_27
.LBB17_27:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -60(%ebp)         # 4-byte Spill
	je	.LBB17_19
	jmp	.LBB17_28
.LBB17_28:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -64(%ebp)         # 4-byte Spill
	je	.LBB17_20
	jmp	.LBB17_29
.LBB17_29:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$64, %eax
	movl	%eax, -68(%ebp)         # 4-byte Spill
	je	.LBB17_21
	jmp	.LBB17_30
.LBB17_30:
	movl	-40(%ebp), %eax         # 4-byte Reload
	subl	$128, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	je	.LBB17_14
	jmp	.LBB17_22
.LBB17_4:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$5, 4(%ecx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB17_6
# %bb.5:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_6:
	movl	-24(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$.L.str.2, 4(%ecx)
	calll	strcpy
	movl	$1, -12(%ebp)
	movl	%eax, -76(%ebp)         # 4-byte Spill
	jmp	.LBB17_23
.LBB17_7:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$6, 4(%ecx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB17_9
# %bb.8:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_9:
	movl	-24(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$.L.str.3, 4(%ecx)
	calll	strcpy
	movl	$1, -12(%ebp)
	movl	%eax, -80(%ebp)         # 4-byte Spill
	jmp	.LBB17_23
.LBB17_10:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$5, 4(%ecx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB17_12
# %bb.11:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_12:
	movl	-24(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$.L.str.4, 4(%ecx)
	calll	strcpy
	movl	$1, -12(%ebp)
	movl	%eax, -84(%ebp)         # 4-byte Spill
	jmp	.LBB17_23
.LBB17_13:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_number
	movl	%eax, -12(%ebp)
	jmp	.LBB17_23
.LBB17_14:
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	cmpl	$0, 16(%eax)
	jne	.LBB17_16
# %bb.15:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_16:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	strlen
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB17_18
# %bb.17:
	movl	$0, -12(%ebp)
	jmp	.LBB17_23
.LBB17_18:
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	16(%ecx), %ecx
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %esi
	movl	%esp, %edi
	movl	%edx, 8(%edi)
	movl	%ecx, 4(%edi)
	movl	%eax, (%edi)
	movl	%esi, -88(%ebp)         # 4-byte Spill
	calll	memcpy
	movl	$1, -12(%ebp)
	movl	%eax, -92(%ebp)         # 4-byte Spill
	jmp	.LBB17_23
.LBB17_19:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_string
	movl	%eax, -12(%ebp)
	jmp	.LBB17_23
.LBB17_20:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_array
	movl	%eax, -12(%ebp)
	jmp	.LBB17_23
.LBB17_21:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_object
	movl	%eax, -12(%ebp)
	jmp	.LBB17_23
.LBB17_22:
	movl	$0, -12(%ebp)
.LBB17_23:
	movl	-12(%ebp), %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end17:
	.size	print_value, .Lfunc_end17-print_value
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_PrintPreallocated # -- Begin function cJSON_PrintPreallocated
	.p2align	4, 0x90
	.type	cJSON_PrintPreallocated,@function
cJSON_PrintPreallocated:                # @cJSON_PrintPreallocated
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$84, %esp
	.cfi_offset %esi, -12
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%edx, -16(%ebp)
	leal	-64(%ebp), %edx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%edx)
	movups	%xmm0, 32(%edx)
	movups	%xmm0, 16(%edx)
	movups	%xmm0, (%edx)
	cmpl	$0, 16(%ebp)
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movl	%ecx, -72(%ebp)         # 4-byte Spill
	movl	%esi, -76(%ebp)         # 4-byte Spill
	jl	.LBB18_2
# %bb.1:
	cmpl	$0, -16(%ebp)
	jne	.LBB18_3
.LBB18_2:
	movl	$0, -8(%ebp)
	jmp	.LBB18_4
.LBB18_3:
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%eax, -60(%ebp)
	movl	%ecx, -56(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	$1, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	addl	$36, %ecx
	movsd	global_hooks+16, %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%ecx)
	movups	global_hooks, %xmm0
	movups	%xmm0, (%ecx)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	print_value
	movl	%eax, -8(%ebp)
.LBB18_4:
	movl	-8(%ebp), %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end18:
	.size	cJSON_PrintPreallocated, .Lfunc_end18-cJSON_PrintPreallocated
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_GetArraySize      # -- Begin function cJSON_GetArraySize
	.p2align	4, 0x90
	.type	cJSON_GetArraySize,@function
cJSON_GetArraySize:                     # @cJSON_GetArraySize
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	jne	.LBB19_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB19_6
.LBB19_2:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.LBB19_3:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%ebp)
	je	.LBB19_5
# %bb.4:                                #   in Loop: Header=BB19_3 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, -16(%ebp)
	adcl	$0, %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB19_3
.LBB19_5:
	movl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
.LBB19_6:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end19:
	.size	cJSON_GetArraySize, .Lfunc_end19-cJSON_GetArraySize
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_GetArrayItem      # -- Begin function cJSON_GetArrayItem
	.p2align	4, 0x90
	.type	cJSON_GetArrayItem,@function
cJSON_GetArrayItem:                     # @cJSON_GetArrayItem
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	$0, 12(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	jge	.LBB20_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB20_3
.LBB20_2:
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	get_array_item
	movl	%eax, -8(%ebp)
.LBB20_3:
	movl	-8(%ebp), %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end20:
	.size	cJSON_GetArrayItem, .Lfunc_end20-cJSON_GetArrayItem
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function get_array_item
	.type	get_array_item,@function
get_array_item:                         # @get_array_item
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%ecx, -12(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%edx, -28(%ebp)         # 4-byte Spill
	jne	.LBB21_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB21_8
.LBB21_2:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%ebp)
	movb	%cl, -29(%ebp)          # 1-byte Spill
	je	.LBB21_5
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %ecx
	orl	%ecx, %eax
	setne	%dl
	movl	%eax, -36(%ebp)         # 4-byte Spill
	movb	%dl, -29(%ebp)          # 1-byte Spill
.LBB21_5:                               #   in Loop: Header=BB21_3 Depth=1
	movb	-29(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_6
	jmp	.LBB21_7
.LBB21_6:                               #   in Loop: Header=BB21_3 Depth=1
	movl	-12(%ebp), %eax
	addl	$-1, -16(%ebp)
	adcl	$-1, %eax
	movl	%eax, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB21_3
.LBB21_7:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB21_8:
	movl	-8(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end21:
	.size	get_array_item, .Lfunc_end21-get_array_item
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_GetObjectItem     # -- Begin function cJSON_GetObjectItem
	.p2align	4, 0x90
	.type	cJSON_GetObjectItem,@function
cJSON_GetObjectItem:                    # @cJSON_GetObjectItem
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	xorl	%edx, %edx
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	-8(%ebp), %esi
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	movl	$0, 8(%esp)
	movl	%edx, -12(%ebp)         # 4-byte Spill
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	calll	get_object_item
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end22:
	.size	cJSON_GetObjectItem, .Lfunc_end22-cJSON_GetObjectItem
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function get_object_item
	.type	get_object_item,@function
get_object_item:                        # @get_object_item
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -16(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	je	.LBB23_2
# %bb.1:
	cmpl	$0, -16(%ebp)
	jne	.LBB23_3
.LBB23_2:
	movl	$0, -8(%ebp)
	jmp	.LBB23_17
.LBB23_3:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, 16(%ebp)
	je	.LBB23_10
# %bb.4:
	jmp	.LBB23_5
.LBB23_5:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%ebp)
	movb	%cl, -33(%ebp)          # 1-byte Spill
	je	.LBB23_7
# %bb.6:                                #   in Loop: Header=BB23_5 Depth=1
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcmp
	cmpl	$0, %eax
	setne	%bl
	movb	%bl, -33(%ebp)          # 1-byte Spill
.LBB23_7:                               #   in Loop: Header=BB23_5 Depth=1
	movb	-33(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_8
	jmp	.LBB23_9
.LBB23_8:                               #   in Loop: Header=BB23_5 Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB23_5
.LBB23_9:
	jmp	.LBB23_16
.LBB23_10:
	jmp	.LBB23_11
.LBB23_11:                              # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%ebp)
	movb	%cl, -34(%ebp)          # 1-byte Spill
	je	.LBB23_13
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	case_insensitive_strcmp
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -34(%ebp)          # 1-byte Spill
.LBB23_13:                              #   in Loop: Header=BB23_11 Depth=1
	movb	-34(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_14
	jmp	.LBB23_15
.LBB23_14:                              #   in Loop: Header=BB23_11 Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB23_11
.LBB23_15:
	jmp	.LBB23_16
.LBB23_16:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB23_17:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end23:
	.size	get_object_item, .Lfunc_end23-get_object_item
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_GetObjectItemCaseSensitive # -- Begin function cJSON_GetObjectItemCaseSensitive
	.p2align	4, 0x90
	.type	cJSON_GetObjectItemCaseSensitive,@function
cJSON_GetObjectItemCaseSensitive:       # @cJSON_GetObjectItemCaseSensitive
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	get_object_item
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end24:
	.size	cJSON_GetObjectItemCaseSensitive, .Lfunc_end24-cJSON_GetObjectItemCaseSensitive
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_HasObjectItem     # -- Begin function cJSON_HasObjectItem
	.p2align	4, 0x90
	.type	cJSON_HasObjectItem,@function
cJSON_HasObjectItem:                    # @cJSON_HasObjectItem
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	cJSON_GetObjectItem
	xorl	%ecx, %ecx
	cmpl	$0, %eax
	movl	$1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end25:
	.size	cJSON_HasObjectItem, .Lfunc_end25-cJSON_HasObjectItem
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddItemToArray    # -- Begin function cJSON_AddItemToArray
	.p2align	4, 0x90
	.type	cJSON_AddItemToArray,@function
cJSON_AddItemToArray:                   # @cJSON_AddItemToArray
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	add_item_to_array
	movl	%eax, -16(%ebp)         # 4-byte Spill
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end26:
	.size	cJSON_AddItemToArray, .Lfunc_end26-cJSON_AddItemToArray
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function add_item_to_array
	.type	add_item_to_array,@function
add_item_to_array:                      # @add_item_to_array
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
	movl	$0, -16(%ebp)
	cmpl	$0, -8(%ebp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	je	.LBB27_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	jne	.LBB27_3
.LBB27_2:
	movl	$0, -4(%ebp)
	jmp	.LBB27_10
.LBB27_3:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.LBB27_5
# %bb.4:
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB27_9
.LBB27_5:
	jmp	.LBB27_6
.LBB27_6:                               # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB27_8
# %bb.7:                                #   in Loop: Header=BB27_6 Depth=1
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.LBB27_6
.LBB27_8:
	movl	-16(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	suffix_object
.LBB27_9:
	movl	$1, -4(%ebp)
.LBB27_10:
	movl	-4(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end27:
	.size	add_item_to_array, .Lfunc_end27-add_item_to_array
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddItemToObject   # -- Begin function cJSON_AddItemToObject
	.p2align	4, 0x90
	.type	cJSON_AddItemToObject,@function
cJSON_AddItemToObject:                  # @cJSON_AddItemToObject
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
	xorl	%esi, %esi
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %edi
	movl	16(%ebp), %ebx
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	leal	global_hooks, %ecx
	movl	%ecx, 12(%esp)
	movl	$0, 16(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%esi, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	movl	%eax, -32(%ebp)         # 4-byte Spill
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end28:
	.size	cJSON_AddItemToObject, .Lfunc_end28-cJSON_AddItemToObject
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function add_item_to_object
	.type	add_item_to_object,@function
add_item_to_object:                     # @add_item_to_object
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
	movl	24(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%esi, -16(%ebp)
	movl	%ecx, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -40(%ebp)         # 4-byte Spill
	movl	%edi, -44(%ebp)         # 4-byte Spill
	movl	%edx, -48(%ebp)         # 4-byte Spill
	je	.LBB29_3
# %bb.1:
	cmpl	$0, -16(%ebp)
	je	.LBB29_3
# %bb.2:
	cmpl	$0, 16(%ebp)
	jne	.LBB29_4
.LBB29_3:
	movl	$0, -12(%ebp)
	jmp	.LBB29_13
.LBB29_4:
	cmpl	$0, 24(%ebp)
	je	.LBB29_6
# %bb.5:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	cast_away_const
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	orl	$512, %eax              # imm = 0x200
	movl	%eax, -36(%ebp)
	jmp	.LBB29_9
.LBB29_6:
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	cJSON_strdup
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB29_8
# %bb.7:
	movl	$0, -12(%ebp)
	jmp	.LBB29_13
.LBB29_8:
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	andl	$-513, %eax             # imm = 0xFDFF
	movl	%eax, -36(%ebp)
.LBB29_9:
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	jne	.LBB29_12
# %bb.10:
	movl	16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB29_12
# %bb.11:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB29_12:
	movl	-32(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	-36(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	add_item_to_array
	movl	%eax, -12(%ebp)
.LBB29_13:
	movl	-12(%ebp), %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end29:
	.size	add_item_to_object, .Lfunc_end29-add_item_to_object
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddItemToObjectCS # -- Begin function cJSON_AddItemToObjectCS
	.p2align	4, 0x90
	.type	cJSON_AddItemToObjectCS,@function
cJSON_AddItemToObjectCS:                # @cJSON_AddItemToObjectCS
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
	movl	16(%ebp), %edi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	global_hooks, %ecx
	movl	%ecx, 12(%esp)
	movl	$1, 16(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	movl	%eax, -28(%ebp)         # 4-byte Spill
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end30:
	.size	cJSON_AddItemToObjectCS, .Lfunc_end30-cJSON_AddItemToObjectCS
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddItemReferenceToArray # -- Begin function cJSON_AddItemReferenceToArray
	.p2align	4, 0x90
	.type	cJSON_AddItemReferenceToArray,@function
cJSON_AddItemReferenceToArray:          # @cJSON_AddItemReferenceToArray
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
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	jne	.LBB31_2
# %bb.1:
	jmp	.LBB31_3
.LBB31_2:
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	global_hooks, %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	calll	create_reference
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	add_item_to_array
	movl	%eax, -20(%ebp)         # 4-byte Spill
.LBB31_3:
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end31:
	.size	cJSON_AddItemReferenceToArray, .Lfunc_end31-cJSON_AddItemReferenceToArray
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function create_reference
	.type	create_reference,@function
create_reference:                       # @create_reference
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
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	jne	.LBB32_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB32_5
.LBB32_2:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB32_4
# %bb.3:
	movl	$0, -8(%ebp)
	jmp	.LBB32_5
.LBB32_4:
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ecx
	movups	48(%ecx), %xmm0
	movups	%xmm0, 48(%eax)
	movups	32(%ecx), %xmm0
	movups	%xmm0, 32(%eax)
	movups	(%ecx), %xmm0
	movups	16(%ecx), %xmm1
	movups	%xmm1, 16(%eax)
	movups	%xmm0, (%eax)
	movl	-24(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	orl	$256, %ecx              # imm = 0x100
	movl	%ecx, 12(%eax)
	movl	-24(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB32_5:
	movl	-8(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end32:
	.size	create_reference, .Lfunc_end32-create_reference
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddItemReferenceToObject # -- Begin function cJSON_AddItemReferenceToObject
	.p2align	4, 0x90
	.type	cJSON_AddItemReferenceToObject,@function
cJSON_AddItemReferenceToObject:         # @cJSON_AddItemReferenceToObject
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$56, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%edx, -16(%ebp)         # 4-byte Spill
	je	.LBB33_2
# %bb.1:
	cmpl	$0, -8(%ebp)
	jne	.LBB33_3
.LBB33_2:
	jmp	.LBB33_4
.LBB33_3:
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	leal	global_hooks, %edx
	movl	%edx, 4(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	calll	create_reference
	xorl	%ecx, %ecx
	movl	-20(%ebp), %edx         # 4-byte Reload
	movl	%edx, (%esp)
	movl	-24(%ebp), %edx         # 4-byte Reload
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	movl	%eax, -32(%ebp)         # 4-byte Spill
.LBB33_4:
	addl	$56, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end33:
	.size	cJSON_AddItemReferenceToObject, .Lfunc_end33-cJSON_AddItemReferenceToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddNullToObject   # -- Begin function cJSON_AddNullToObject
	.p2align	4, 0x90
	.type	cJSON_AddNullToObject,@function
cJSON_AddNullToObject:                  # @cJSON_AddNullToObject
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	cJSON_CreateNull
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB34_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB34_3
.LBB34_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB34_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end34:
	.size	cJSON_AddNullToObject, .Lfunc_end34-cJSON_AddNullToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateNull        # -- Begin function cJSON_CreateNull
	.p2align	4, 0x90
	.type	cJSON_CreateNull,@function
cJSON_CreateNull:                       # @cJSON_CreateNull
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB35_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$4, 12(%eax)
.LBB35_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end35:
	.size	cJSON_CreateNull, .Lfunc_end35-cJSON_CreateNull
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddTrueToObject   # -- Begin function cJSON_AddTrueToObject
	.p2align	4, 0x90
	.type	cJSON_AddTrueToObject,@function
cJSON_AddTrueToObject:                  # @cJSON_AddTrueToObject
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	cJSON_CreateTrue
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB36_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB36_3
.LBB36_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB36_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end36:
	.size	cJSON_AddTrueToObject, .Lfunc_end36-cJSON_AddTrueToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateTrue        # -- Begin function cJSON_CreateTrue
	.p2align	4, 0x90
	.type	cJSON_CreateTrue,@function
cJSON_CreateTrue:                       # @cJSON_CreateTrue
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB37_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$2, 12(%eax)
.LBB37_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end37:
	.size	cJSON_CreateTrue, .Lfunc_end37-cJSON_CreateTrue
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddFalseToObject  # -- Begin function cJSON_AddFalseToObject
	.p2align	4, 0x90
	.type	cJSON_AddFalseToObject,@function
cJSON_AddFalseToObject:                 # @cJSON_AddFalseToObject
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	cJSON_CreateFalse
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB38_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB38_3
.LBB38_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB38_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end38:
	.size	cJSON_AddFalseToObject, .Lfunc_end38-cJSON_AddFalseToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateFalse       # -- Begin function cJSON_CreateFalse
	.p2align	4, 0x90
	.type	cJSON_CreateFalse,@function
cJSON_CreateFalse:                      # @cJSON_CreateFalse
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB39_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$1, 12(%eax)
.LBB39_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end39:
	.size	cJSON_CreateFalse, .Lfunc_end39-cJSON_CreateFalse
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddBoolToObject   # -- Begin function cJSON_AddBoolToObject
	.p2align	4, 0x90
	.type	cJSON_AddBoolToObject,@function
cJSON_AddBoolToObject:                  # @cJSON_AddBoolToObject
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
	movl	%ecx, -16(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	calll	cJSON_CreateBool
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB40_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB40_3
.LBB40_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB40_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end40:
	.size	cJSON_AddBoolToObject, .Lfunc_end40-cJSON_AddBoolToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateBool        # -- Begin function cJSON_CreateBool
	.p2align	4, 0x90
	.type	cJSON_CreateBool,@function
cJSON_CreateBool:                       # @cJSON_CreateBool
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB41_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	movl	$2, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	movl	-8(%ebp), %eax
	movl	%ecx, 12(%eax)
.LBB41_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end41:
	.size	cJSON_CreateBool, .Lfunc_end41-cJSON_CreateBool
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddNumberToObject # -- Begin function cJSON_AddNumberToObject
	.p2align	4, 0x90
	.type	cJSON_AddNumberToObject,@function
cJSON_AddNumberToObject:                # @cJSON_AddNumberToObject
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$68, %esp
	.cfi_offset %esi, -12
	movsd	16(%ebp), %xmm0         # xmm0 = mem[0],zero
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movsd	16(%ebp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, (%esp)
	movsd	%xmm0, -32(%ebp)        # 8-byte Spill
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	calll	cJSON_CreateNumber
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB42_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB42_3
.LBB42_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB42_3:
	movl	-8(%ebp), %eax
	addl	$68, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end42:
	.size	cJSON_AddNumberToObject, .Lfunc_end42-cJSON_AddNumberToObject
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cJSON_CreateNumber
.LCPI43_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI43_1:
	.quad	-4476578029606273024    # double -2147483648
	.text
	.globl	cJSON_CreateNumber
	.p2align	4, 0x90
	.type	cJSON_CreateNumber,@function
cJSON_CreateNumber:                     # @cJSON_CreateNumber
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movsd	8(%ebp), %xmm0          # xmm0 = mem[0],zero
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	movsd	%xmm0, -16(%ebp)        # 8-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB43_8
# %bb.1:
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movl	-8(%ebp), %eax
	movl	$8, 12(%eax)
	movsd	8(%ebp), %xmm1          # xmm1 = mem[0],zero
	movl	-8(%ebp), %eax
	movsd	%xmm1, 24(%eax)
	movsd	8(%ebp), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB43_3
# %bb.2:
	movl	-8(%ebp), %eax
	movl	$2147483647, 20(%eax)   # imm = 0x7FFFFFFF
	jmp	.LBB43_7
.LBB43_3:
	movsd	.LCPI43_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	8(%ebp), %xmm0
	jb	.LBB43_5
# %bb.4:
	movl	-8(%ebp), %eax
	movl	$-2147483648, 20(%eax)  # imm = 0x80000000
	jmp	.LBB43_6
.LBB43_5:
	cvttsd2si	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, 20(%ecx)
.LBB43_6:
	jmp	.LBB43_7
.LBB43_7:
	jmp	.LBB43_8
.LBB43_8:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end43:
	.size	cJSON_CreateNumber, .Lfunc_end43-cJSON_CreateNumber
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddStringToObject # -- Begin function cJSON_AddStringToObject
	.p2align	4, 0x90
	.type	cJSON_AddStringToObject,@function
cJSON_AddStringToObject:                # @cJSON_AddStringToObject
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
	movl	%ecx, -16(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	calll	cJSON_CreateString
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB44_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB44_3
.LBB44_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB44_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end44:
	.size	cJSON_AddStringToObject, .Lfunc_end44-cJSON_AddStringToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateString      # -- Begin function cJSON_CreateString
	.p2align	4, 0x90
	.type	cJSON_CreateString,@function
cJSON_CreateString:                     # @cJSON_CreateString
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.LBB45_4
# %bb.1:
	movl	-16(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	global_hooks, %eax
	movl	%eax, 4(%esp)
	calll	cJSON_strdup
	movl	-16(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	-16(%ebp), %eax
	cmpl	$0, 16(%eax)
	jne	.LBB45_3
# %bb.2:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
	jmp	.LBB45_5
.LBB45_3:
	jmp	.LBB45_4
.LBB45_4:
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB45_5:
	movl	-8(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end45:
	.size	cJSON_CreateString, .Lfunc_end45-cJSON_CreateString
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddRawToObject    # -- Begin function cJSON_AddRawToObject
	.p2align	4, 0x90
	.type	cJSON_AddRawToObject,@function
cJSON_AddRawToObject:                   # @cJSON_AddRawToObject
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
	movl	%ecx, -16(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%edx, -32(%ebp)         # 4-byte Spill
	calll	cJSON_CreateRaw
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB46_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB46_3
.LBB46_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB46_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end46:
	.size	cJSON_AddRawToObject, .Lfunc_end46-cJSON_AddRawToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateRaw         # -- Begin function cJSON_CreateRaw
	.p2align	4, 0x90
	.type	cJSON_CreateRaw,@function
cJSON_CreateRaw:                        # @cJSON_CreateRaw
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.LBB47_4
# %bb.1:
	movl	-16(%ebp), %eax
	movl	$128, 12(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	leal	global_hooks, %eax
	movl	%eax, 4(%esp)
	calll	cJSON_strdup
	movl	-16(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	-16(%ebp), %eax
	cmpl	$0, 16(%eax)
	jne	.LBB47_3
# %bb.2:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
	jmp	.LBB47_5
.LBB47_3:
	jmp	.LBB47_4
.LBB47_4:
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB47_5:
	movl	-8(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end47:
	.size	cJSON_CreateRaw, .Lfunc_end47-cJSON_CreateRaw
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddObjectToObject # -- Begin function cJSON_AddObjectToObject
	.p2align	4, 0x90
	.type	cJSON_AddObjectToObject,@function
cJSON_AddObjectToObject:                # @cJSON_AddObjectToObject
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	cJSON_CreateObject
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB48_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB48_3
.LBB48_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB48_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end48:
	.size	cJSON_AddObjectToObject, .Lfunc_end48-cJSON_AddObjectToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateObject      # -- Begin function cJSON_CreateObject
	.p2align	4, 0x90
	.type	cJSON_CreateObject,@function
cJSON_CreateObject:                     # @cJSON_CreateObject
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB49_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$64, 12(%eax)
.LBB49_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end49:
	.size	cJSON_CreateObject, .Lfunc_end49-cJSON_CreateObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_AddArrayToObject  # -- Begin function cJSON_AddArrayToObject
	.p2align	4, 0x90
	.type	cJSON_AddArrayToObject,@function
cJSON_AddArrayToObject:                 # @cJSON_AddArrayToObject
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	cJSON_CreateArray
	xorl	%ecx, %ecx
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	leal	global_hooks, %eax
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	calll	add_item_to_object
	cmpl	$0, %eax
	je	.LBB50_2
# %bb.1:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB50_3
.LBB50_2:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -8(%ebp)
.LBB50_3:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end50:
	.size	cJSON_AddArrayToObject, .Lfunc_end50-cJSON_AddArrayToObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateArray       # -- Begin function cJSON_CreateArray
	.p2align	4, 0x90
	.type	cJSON_CreateArray,@function
cJSON_CreateArray:                      # @cJSON_CreateArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB51_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$32, 12(%eax)
.LBB51_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end51:
	.size	cJSON_CreateArray, .Lfunc_end51-cJSON_CreateArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DetachItemViaPointer # -- Begin function cJSON_DetachItemViaPointer
	.p2align	4, 0x90
	.type	cJSON_DetachItemViaPointer,@function
cJSON_DetachItemViaPointer:             # @cJSON_DetachItemViaPointer
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
	movl	%eax, -16(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	je	.LBB52_2
# %bb.1:
	cmpl	$0, -16(%ebp)
	jne	.LBB52_3
.LBB52_2:
	movl	$0, -8(%ebp)
	jmp	.LBB52_10
.LBB52_3:
	movl	-16(%ebp), %eax
	cmpl	$0, 4(%eax)
	je	.LBB52_5
# %bb.4:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	4(%ecx), %ecx
	movl	%eax, (%ecx)
.LBB52_5:
	movl	-16(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB52_7
# %bb.6:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%eax, 4(%ecx)
.LBB52_7:
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	8(%ecx), %eax
	jne	.LBB52_9
# %bb.8:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
.LBB52_9:
	movl	-16(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB52_10:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end52:
	.size	cJSON_DetachItemViaPointer, .Lfunc_end52-cJSON_DetachItemViaPointer
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DetachItemFromArray # -- Begin function cJSON_DetachItemFromArray
	.p2align	4, 0x90
	.type	cJSON_DetachItemFromArray,@function
cJSON_DetachItemFromArray:              # @cJSON_DetachItemFromArray
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	$0, 12(%ebp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	jge	.LBB53_2
# %bb.1:
	movl	$0, -16(%ebp)
	jmp	.LBB53_3
.LBB53_2:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%eax, (%edi)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
	calll	get_array_item
	movl	-28(%ebp), %ecx         # 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	cJSON_DetachItemViaPointer
	movl	%eax, -16(%ebp)
.LBB53_3:
	movl	-16(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end53:
	.size	cJSON_DetachItemFromArray, .Lfunc_end53-cJSON_DetachItemFromArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DeleteItemFromArray # -- Begin function cJSON_DeleteItemFromArray
	.p2align	4, 0x90
	.type	cJSON_DeleteItemFromArray,@function
cJSON_DeleteItemFromArray:              # @cJSON_DeleteItemFromArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$20, %esp
	.cfi_offset %esi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	12(%ebp), %esi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	cJSON_DetachItemFromArray
	movl	%eax, (%esp)
	calll	cJSON_Delete
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end54:
	.size	cJSON_DeleteItemFromArray, .Lfunc_end54-cJSON_DeleteItemFromArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DetachItemFromObject # -- Begin function cJSON_DetachItemFromObject
	.p2align	4, 0x90
	.type	cJSON_DetachItemFromObject,@function
cJSON_DetachItemFromObject:             # @cJSON_DetachItemFromObject
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	calll	cJSON_GetObjectItem
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	cJSON_DetachItemViaPointer
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end55:
	.size	cJSON_DetachItemFromObject, .Lfunc_end55-cJSON_DetachItemFromObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DetachItemFromObjectCaseSensitive # -- Begin function cJSON_DetachItemFromObjectCaseSensitive
	.p2align	4, 0x90
	.type	cJSON_DetachItemFromObjectCaseSensitive,@function
cJSON_DetachItemFromObjectCaseSensitive: # @cJSON_DetachItemFromObjectCaseSensitive
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	calll	cJSON_GetObjectItemCaseSensitive
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	cJSON_DetachItemViaPointer
	addl	$40, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end56:
	.size	cJSON_DetachItemFromObjectCaseSensitive, .Lfunc_end56-cJSON_DetachItemFromObjectCaseSensitive
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DeleteItemFromObject # -- Begin function cJSON_DeleteItemFromObject
	.p2align	4, 0x90
	.type	cJSON_DeleteItemFromObject,@function
cJSON_DeleteItemFromObject:             # @cJSON_DeleteItemFromObject
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	cJSON_DetachItemFromObject
	movl	%eax, (%esp)
	calll	cJSON_Delete
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end57:
	.size	cJSON_DeleteItemFromObject, .Lfunc_end57-cJSON_DeleteItemFromObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_DeleteItemFromObjectCaseSensitive # -- Begin function cJSON_DeleteItemFromObjectCaseSensitive
	.p2align	4, 0x90
	.type	cJSON_DeleteItemFromObjectCaseSensitive,@function
cJSON_DeleteItemFromObjectCaseSensitive: # @cJSON_DeleteItemFromObjectCaseSensitive
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
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	cJSON_DetachItemFromObjectCaseSensitive
	movl	%eax, (%esp)
	calll	cJSON_Delete
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end58:
	.size	cJSON_DeleteItemFromObjectCaseSensitive, .Lfunc_end58-cJSON_DeleteItemFromObjectCaseSensitive
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_InsertItemInArray # -- Begin function cJSON_InsertItemInArray
	.p2align	4, 0x90
	.type	cJSON_InsertItemInArray,@function
cJSON_InsertItemInArray:                # @cJSON_InsertItemInArray
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
	movl	$0, -8(%ebp)
	cmpl	$0, 12(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	movl	%edx, -20(%ebp)         # 4-byte Spill
	jge	.LBB59_2
# %bb.1:
	jmp	.LBB59_7
.LBB59_2:
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	get_array_item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.LBB59_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	add_item_to_array
	movl	%eax, -24(%ebp)         # 4-byte Spill
	jmp	.LBB59_7
.LBB59_4:
	movl	-8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	16(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	8(%ecx), %eax
	jne	.LBB59_6
# %bb.5:
	movl	16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB59_7
.LBB59_6:
	movl	16(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	4(%ecx), %ecx
	movl	%eax, (%ecx)
.LBB59_7:
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end59:
	.size	cJSON_InsertItemInArray, .Lfunc_end59-cJSON_InsertItemInArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_ReplaceItemViaPointer # -- Begin function cJSON_ReplaceItemViaPointer
	.p2align	4, 0x90
	.type	cJSON_ReplaceItemViaPointer,@function
cJSON_ReplaceItemViaPointer:            # @cJSON_ReplaceItemViaPointer
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%edx, -16(%ebp)         # 4-byte Spill
	je	.LBB60_3
# %bb.1:
	cmpl	$0, 16(%ebp)
	je	.LBB60_3
# %bb.2:
	cmpl	$0, -8(%ebp)
	jne	.LBB60_4
.LBB60_3:
	movl	$0, -4(%ebp)
	jmp	.LBB60_13
.LBB60_4:
	movl	16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.LBB60_6
# %bb.5:
	movl	$1, -4(%ebp)
	jmp	.LBB60_13
.LBB60_6:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	16(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB60_8
# %bb.7:
	movl	16(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%eax, 4(%ecx)
.LBB60_8:
	movl	16(%ebp), %eax
	cmpl	$0, 4(%eax)
	je	.LBB60_10
# %bb.9:
	movl	16(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	4(%ecx), %ecx
	movl	%eax, (%ecx)
.LBB60_10:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.LBB60_12
# %bb.11:
	movl	16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
.LBB60_12:
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$1, -4(%ebp)
.LBB60_13:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end60:
	.size	cJSON_ReplaceItemViaPointer, .Lfunc_end60-cJSON_ReplaceItemViaPointer
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_ReplaceItemInArray # -- Begin function cJSON_ReplaceItemInArray
	.p2align	4, 0x90
	.type	cJSON_ReplaceItemInArray,@function
cJSON_ReplaceItemInArray:               # @cJSON_ReplaceItemInArray
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
	cmpl	$0, 12(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	movl	%ecx, -16(%ebp)         # 4-byte Spill
	movl	%edx, -20(%ebp)         # 4-byte Spill
	jge	.LBB61_2
# %bb.1:
	jmp	.LBB61_3
.LBB61_2:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%eax, (%edi)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	calll	get_array_item
	movl	16(%ebp), %ecx
	movl	-24(%ebp), %edx         # 4-byte Reload
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	cJSON_ReplaceItemViaPointer
	movl	%eax, -28(%ebp)         # 4-byte Spill
.LBB61_3:
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end61:
	.size	cJSON_ReplaceItemInArray, .Lfunc_end61-cJSON_ReplaceItemInArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_ReplaceItemInObject # -- Begin function cJSON_ReplaceItemInObject
	.p2align	4, 0x90
	.type	cJSON_ReplaceItemInObject,@function
cJSON_ReplaceItemInObject:              # @cJSON_ReplaceItemInObject
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
	xorl	%esi, %esi
	movl	%ecx, -16(%ebp)
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %edi
	movl	16(%ebp), %ebx
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%esi, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
	calll	replace_item_in_object
	movl	%eax, -32(%ebp)         # 4-byte Spill
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end62:
	.size	cJSON_ReplaceItemInObject, .Lfunc_end62-cJSON_ReplaceItemInObject
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function replace_item_in_object
	.type	replace_item_in_object,@function
replace_item_in_object:                 # @replace_item_in_object
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
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%edx, -16(%ebp)
	cmpl	$0, 16(%ebp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	movl	%esi, -28(%ebp)         # 4-byte Spill
	je	.LBB63_2
# %bb.1:
	cmpl	$0, -16(%ebp)
	jne	.LBB63_3
.LBB63_2:
	movl	$0, -8(%ebp)
	jmp	.LBB63_7
.LBB63_3:
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	jne	.LBB63_6
# %bb.4:
	movl	16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB63_6
# %bb.5:
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	calll	cJSON_free
.LBB63_6:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	leal	global_hooks, %eax
	movl	%eax, 4(%esp)
	calll	cJSON_strdup
	movl	16(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	16(%ebp), %eax
	movl	12(%eax), %ecx
	andl	$-513, %ecx             # imm = 0xFDFF
	movl	%ecx, 12(%eax)
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	20(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, -32(%ebp)         # 4-byte Spill
	calll	get_object_item
	movl	16(%ebp), %ecx
	movl	-32(%ebp), %edx         # 4-byte Reload
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	cJSON_ReplaceItemViaPointer
	movl	$1, -8(%ebp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
.LBB63_7:
	movl	-8(%ebp), %eax
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end63:
	.size	replace_item_in_object, .Lfunc_end63-replace_item_in_object
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_ReplaceItemInObjectCaseSensitive # -- Begin function cJSON_ReplaceItemInObjectCaseSensitive
	.p2align	4, 0x90
	.type	cJSON_ReplaceItemInObjectCaseSensitive,@function
cJSON_ReplaceItemInObjectCaseSensitive: # @cJSON_ReplaceItemInObjectCaseSensitive
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
	movl	16(%ebp), %edi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	$1, 12(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	%edx, -24(%ebp)         # 4-byte Spill
	calll	replace_item_in_object
	movl	%eax, -28(%ebp)         # 4-byte Spill
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end64:
	.size	cJSON_ReplaceItemInObjectCaseSensitive, .Lfunc_end64-cJSON_ReplaceItemInObjectCaseSensitive
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cJSON_strdup
	.type	cJSON_strdup,@function
cJSON_strdup:                           # @cJSON_strdup
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	jne	.LBB65_2
# %bb.1:
	movl	$0, -16(%ebp)
	jmp	.LBB65_5
.LBB65_2:
	movl	8(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	strlen
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	calll	*%eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB65_4
# %bb.3:
	movl	$0, -16(%ebp)
	jmp	.LBB65_5
.LBB65_4:
	movl	-40(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %esi
	movl	%esp, %edi
	movl	%edx, 8(%edi)
	movl	%ecx, 4(%edi)
	movl	%eax, (%edi)
	movl	%esi, -48(%ebp)         # 4-byte Spill
	calll	memcpy
	movl	-40(%ebp), %ecx
	movl	%ecx, -16(%ebp)
	movl	%eax, -52(%ebp)         # 4-byte Spill
.LBB65_5:
	movl	-16(%ebp), %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end65:
	.size	cJSON_strdup, .Lfunc_end65-cJSON_strdup
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateStringReference # -- Begin function cJSON_CreateStringReference
	.p2align	4, 0x90
	.type	cJSON_CreateStringReference,@function
cJSON_CreateStringReference:            # @cJSON_CreateStringReference
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB66_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$272, 12(%eax)          # imm = 0x110
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	cast_away_const
	movl	-8(%ebp), %ecx
	movl	%eax, 16(%ecx)
.LBB66_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end66:
	.size	cJSON_CreateStringReference, .Lfunc_end66-cJSON_CreateStringReference
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cast_away_const
	.type	cast_away_const,@function
cast_away_const:                        # @cast_away_const
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -4(%ebp)          # 4-byte Spill
	movl	%ecx, %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end67:
	.size	cast_away_const, .Lfunc_end67-cast_away_const
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateObjectReference # -- Begin function cJSON_CreateObjectReference
	.p2align	4, 0x90
	.type	cJSON_CreateObjectReference,@function
cJSON_CreateObjectReference:            # @cJSON_CreateObjectReference
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB68_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$320, 12(%eax)          # imm = 0x140
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	cast_away_const
	movl	-8(%ebp), %ecx
	movl	%eax, 8(%ecx)
.LBB68_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end68:
	.size	cJSON_CreateObjectReference, .Lfunc_end68-cJSON_CreateObjectReference
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateArrayReference # -- Begin function cJSON_CreateArrayReference
	.p2align	4, 0x90
	.type	cJSON_CreateArrayReference,@function
cJSON_CreateArrayReference:             # @cJSON_CreateArrayReference
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	global_hooks, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	cJSON_New_Item
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.LBB69_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	$288, 12(%eax)          # imm = 0x120
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	cast_away_const
	movl	-8(%ebp), %ecx
	movl	%eax, 8(%ecx)
.LBB69_2:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end69:
	.size	cJSON_CreateArrayReference, .Lfunc_end69-cJSON_CreateArrayReference
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateIntArray    # -- Begin function cJSON_CreateIntArray
	.p2align	4, 0x90
	.type	cJSON_CreateIntArray,@function
cJSON_CreateIntArray:                   # @cJSON_CreateIntArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -48(%ebp)
	cmpl	$0, 12(%ebp)
	movl	%eax, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jl	.LBB70_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	jne	.LBB70_3
.LBB70_2:
	movl	$0, -16(%ebp)
	jmp	.LBB70_15
.LBB70_3:
	calll	cJSON_CreateArray
	movl	%eax, -48(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB70_4:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%ebp)
	movb	%cl, -57(%ebp)          # 1-byte Spill
	je	.LBB70_6
# %bb.5:                                #   in Loop: Header=BB70_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	setb	%bl
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movb	%bl, -57(%ebp)          # 1-byte Spill
.LBB70_6:                               #   in Loop: Header=BB70_4 Depth=1
	movb	-57(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB70_7
	jmp	.LBB70_14
.LBB70_7:                               #   in Loop: Header=BB70_4 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, (%esp)
	calll	cJSON_CreateNumber
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB70_9
# %bb.8:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -16(%ebp)
	jmp	.LBB70_15
.LBB70_9:                               #   in Loop: Header=BB70_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	jne	.LBB70_11
	jmp	.LBB70_10
.LBB70_10:                              #   in Loop: Header=BB70_4 Depth=1
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB70_12
.LBB70_11:                              #   in Loop: Header=BB70_4 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	suffix_object
.LBB70_12:                              #   in Loop: Header=BB70_4 Depth=1
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
# %bb.13:                               #   in Loop: Header=BB70_4 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, -24(%ebp)
	adcl	$0, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB70_4
.LBB70_14:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB70_15:
	movl	-16(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end70:
	.size	cJSON_CreateIntArray, .Lfunc_end70-cJSON_CreateIntArray
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function suffix_object
	.type	suffix_object,@function
suffix_object:                          # @suffix_object
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	addl	$16, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end71:
	.size	suffix_object, .Lfunc_end71-suffix_object
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateFloatArray  # -- Begin function cJSON_CreateFloatArray
	.p2align	4, 0x90
	.type	cJSON_CreateFloatArray,@function
cJSON_CreateFloatArray:                 # @cJSON_CreateFloatArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -48(%ebp)
	cmpl	$0, 12(%ebp)
	movl	%eax, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jl	.LBB72_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	jne	.LBB72_3
.LBB72_2:
	movl	$0, -16(%ebp)
	jmp	.LBB72_15
.LBB72_3:
	calll	cJSON_CreateArray
	movl	%eax, -48(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB72_4:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%ebp)
	movb	%cl, -57(%ebp)          # 1-byte Spill
	je	.LBB72_6
# %bb.5:                                #   in Loop: Header=BB72_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	setb	%bl
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movb	%bl, -57(%ebp)          # 1-byte Spill
.LBB72_6:                               #   in Loop: Header=BB72_4 Depth=1
	movb	-57(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB72_7
	jmp	.LBB72_14
.LBB72_7:                               #   in Loop: Header=BB72_4 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movss	(%eax,%ecx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, (%esp)
	calll	cJSON_CreateNumber
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB72_9
# %bb.8:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -16(%ebp)
	jmp	.LBB72_15
.LBB72_9:                               #   in Loop: Header=BB72_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	jne	.LBB72_11
	jmp	.LBB72_10
.LBB72_10:                              #   in Loop: Header=BB72_4 Depth=1
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB72_12
.LBB72_11:                              #   in Loop: Header=BB72_4 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	suffix_object
.LBB72_12:                              #   in Loop: Header=BB72_4 Depth=1
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
# %bb.13:                               #   in Loop: Header=BB72_4 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, -24(%ebp)
	adcl	$0, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB72_4
.LBB72_14:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB72_15:
	movl	-16(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end72:
	.size	cJSON_CreateFloatArray, .Lfunc_end72-cJSON_CreateFloatArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateDoubleArray # -- Begin function cJSON_CreateDoubleArray
	.p2align	4, 0x90
	.type	cJSON_CreateDoubleArray,@function
cJSON_CreateDoubleArray:                # @cJSON_CreateDoubleArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -48(%ebp)
	cmpl	$0, 12(%ebp)
	movl	%eax, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jl	.LBB73_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	jne	.LBB73_3
.LBB73_2:
	movl	$0, -16(%ebp)
	jmp	.LBB73_15
.LBB73_3:
	calll	cJSON_CreateArray
	movl	%eax, -48(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB73_4:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%ebp)
	movb	%cl, -57(%ebp)          # 1-byte Spill
	je	.LBB73_6
# %bb.5:                                #   in Loop: Header=BB73_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	setb	%bl
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movb	%bl, -57(%ebp)          # 1-byte Spill
.LBB73_6:                               #   in Loop: Header=BB73_4 Depth=1
	movb	-57(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB73_7
	jmp	.LBB73_14
.LBB73_7:                               #   in Loop: Header=BB73_4 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movsd	(%eax,%ecx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%esp)
	calll	cJSON_CreateNumber
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB73_9
# %bb.8:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -16(%ebp)
	jmp	.LBB73_15
.LBB73_9:                               #   in Loop: Header=BB73_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	jne	.LBB73_11
	jmp	.LBB73_10
.LBB73_10:                              #   in Loop: Header=BB73_4 Depth=1
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB73_12
.LBB73_11:                              #   in Loop: Header=BB73_4 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	suffix_object
.LBB73_12:                              #   in Loop: Header=BB73_4 Depth=1
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
# %bb.13:                               #   in Loop: Header=BB73_4 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, -24(%ebp)
	adcl	$0, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB73_4
.LBB73_14:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB73_15:
	movl	-16(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end73:
	.size	cJSON_CreateDoubleArray, .Lfunc_end73-cJSON_CreateDoubleArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_CreateStringArray # -- Begin function cJSON_CreateStringArray
	.p2align	4, 0x90
	.type	cJSON_CreateStringArray,@function
cJSON_CreateStringArray:                # @cJSON_CreateStringArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -48(%ebp)
	cmpl	$0, 12(%ebp)
	movl	%eax, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jl	.LBB74_2
# %bb.1:
	cmpl	$0, 8(%ebp)
	jne	.LBB74_3
.LBB74_2:
	movl	$0, -16(%ebp)
	jmp	.LBB74_15
.LBB74_3:
	calll	cJSON_CreateArray
	movl	%eax, -48(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
.LBB74_4:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%ebp)
	movb	%cl, -57(%ebp)          # 1-byte Spill
	je	.LBB74_6
# %bb.5:                                #   in Loop: Header=BB74_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	setb	%bl
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movb	%bl, -57(%ebp)          # 1-byte Spill
.LBB74_6:                               #   in Loop: Header=BB74_4 Depth=1
	movb	-57(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB74_7
	jmp	.LBB74_14
.LBB74_7:                               #   in Loop: Header=BB74_4 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	calll	cJSON_CreateString
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB74_9
# %bb.8:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
	movl	$0, -16(%ebp)
	jmp	.LBB74_15
.LBB74_9:                               #   in Loop: Header=BB74_4 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	jne	.LBB74_11
	jmp	.LBB74_10
.LBB74_10:                              #   in Loop: Header=BB74_4 Depth=1
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, 8(%ecx)
	jmp	.LBB74_12
.LBB74_11:                              #   in Loop: Header=BB74_4 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	suffix_object
.LBB74_12:                              #   in Loop: Header=BB74_4 Depth=1
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
# %bb.13:                               #   in Loop: Header=BB74_4 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, -24(%ebp)
	adcl	$0, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB74_4
.LBB74_14:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB74_15:
	movl	-16(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end74:
	.size	cJSON_CreateStringArray, .Lfunc_end74-cJSON_CreateStringArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Duplicate         # -- Begin function cJSON_Duplicate
	.p2align	4, 0x90
	.type	cJSON_Duplicate,@function
cJSON_Duplicate:                        # @cJSON_Duplicate
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$72, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -44(%ebp)         # 4-byte Spill
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	jne	.LBB75_2
# %bb.1:
	jmp	.LBB75_26
.LBB75_2:
	leal	global_hooks, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.LBB75_4
# %bb.3:
	jmp	.LBB75_26
.LBB75_4:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movl	-16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	8(%ebp), %eax
	movsd	24(%eax), %xmm0         # xmm0 = mem[0],zero
	movl	-16(%ebp), %eax
	movsd	%xmm0, 24(%eax)
	movl	8(%ebp), %eax
	cmpl	$0, 16(%eax)
	je	.LBB75_8
# %bb.5:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	leal	global_hooks, %eax
	movl	%eax, 4(%esp)
	calll	cJSON_strdup
	movl	-16(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	-16(%ebp), %eax
	cmpl	$0, 16(%eax)
	jne	.LBB75_7
# %bb.6:
	jmp	.LBB75_26
.LBB75_7:
	jmp	.LBB75_8
.LBB75_8:
	movl	8(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB75_15
# %bb.9:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB75_11
# %bb.10:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -52(%ebp)         # 4-byte Spill
	jmp	.LBB75_12
.LBB75_11:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	leal	global_hooks, %eax
	movl	%eax, 4(%esp)
	calll	cJSON_strdup
	movl	%eax, -52(%ebp)         # 4-byte Spill
.LBB75_12:
	movl	-52(%ebp), %eax         # 4-byte Reload
	movl	-16(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	jne	.LBB75_14
# %bb.13:
	jmp	.LBB75_26
.LBB75_14:
	jmp	.LBB75_15
.LBB75_15:
	cmpl	$0, 12(%ebp)
	jne	.LBB75_17
# %bb.16:
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB75_29
.LBB75_17:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.LBB75_18:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%ebp)
	je	.LBB75_25
# %bb.19:                               #   in Loop: Header=BB75_18 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, 4(%esp)
	calll	cJSON_Duplicate
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB75_21
# %bb.20:
	jmp	.LBB75_26
.LBB75_21:                              #   in Loop: Header=BB75_18 Depth=1
	cmpl	$0, -32(%ebp)
	je	.LBB75_23
# %bb.22:                               #   in Loop: Header=BB75_18 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.LBB75_24
.LBB75_23:                              #   in Loop: Header=BB75_18 Depth=1
	movl	-40(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB75_24:                              #   in Loop: Header=BB75_18 Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB75_18
.LBB75_25:
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB75_29
.LBB75_26:
	cmpl	$0, -16(%ebp)
	je	.LBB75_28
# %bb.27:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
.LBB75_28:
	movl	$0, -8(%ebp)
.LBB75_29:
	movl	-8(%ebp), %eax
	addl	$72, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end75:
	.size	cJSON_Duplicate, .Lfunc_end75-cJSON_Duplicate
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Minify            # -- Begin function cJSON_Minify
	.p2align	4, 0x90
	.type	cJSON_Minify,@function
cJSON_Minify:                           # @cJSON_Minify
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -8(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -12(%ebp)         # 4-byte Spill
	jne	.LBB76_2
# %bb.1:
	jmp	.LBB76_48
.LBB76_2:
	jmp	.LBB76_3
.LBB76_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_15 Depth 2
                                        #     Child Loop BB76_23 Depth 2
                                        #     Child Loop BB76_32 Depth 2
	movl	8(%ebp), %eax
	cmpb	$0, (%eax)
	je	.LBB76_47
# %bb.4:                                #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$32, %eax
	jne	.LBB76_6
# %bb.5:                                #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_46
.LBB76_6:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$9, %eax
	jne	.LBB76_8
# %bb.7:                                #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_45
.LBB76_8:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$13, %eax
	jne	.LBB76_10
# %bb.9:                                #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_44
.LBB76_10:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$10, %eax
	jne	.LBB76_12
# %bb.11:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_43
.LBB76_12:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$47, %eax
	jne	.LBB76_20
# %bb.13:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	1(%eax), %eax
	cmpl	$47, %eax
	jne	.LBB76_20
# %bb.14:                               #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_15
.LBB76_15:                              #   Parent Loop BB76_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	movb	%cl, -13(%ebp)          # 1-byte Spill
	je	.LBB76_17
# %bb.16:                               #   in Loop: Header=BB76_15 Depth=2
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$10, %eax
	setne	%cl
	movb	%cl, -13(%ebp)          # 1-byte Spill
.LBB76_17:                              #   in Loop: Header=BB76_15 Depth=2
	movb	-13(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB76_18
	jmp	.LBB76_19
.LBB76_18:                              #   in Loop: Header=BB76_15 Depth=2
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_15
.LBB76_19:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_42
.LBB76_20:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$47, %eax
	jne	.LBB76_30
# %bb.21:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	1(%eax), %eax
	cmpl	$42, %eax
	jne	.LBB76_30
# %bb.22:                               #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_23
.LBB76_23:                              #   Parent Loop BB76_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	movb	%cl, -14(%ebp)          # 1-byte Spill
	je	.LBB76_27
# %bb.24:                               #   in Loop: Header=BB76_23 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$42, %eax
	movb	%cl, -15(%ebp)          # 1-byte Spill
	jne	.LBB76_26
# %bb.25:                               #   in Loop: Header=BB76_23 Depth=2
	movl	8(%ebp), %eax
	movsbl	1(%eax), %eax
	cmpl	$47, %eax
	sete	%cl
	movb	%cl, -15(%ebp)          # 1-byte Spill
.LBB76_26:                              #   in Loop: Header=BB76_23 Depth=2
	movb	-15(%ebp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -14(%ebp)          # 1-byte Spill
.LBB76_27:                              #   in Loop: Header=BB76_23 Depth=2
	movb	-14(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB76_28
	jmp	.LBB76_29
.LBB76_28:                              #   in Loop: Header=BB76_23 Depth=2
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_23
.LBB76_29:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 8(%ebp)
	jmp	.LBB76_41
.LBB76_30:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$34, %eax
	jne	.LBB76_39
# %bb.31:                               #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%ebp)
	movb	(%eax), %dl
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%ebp)
	movb	%dl, (%eax)
.LBB76_32:                              #   Parent Loop BB76_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	movb	%cl, -16(%ebp)          # 1-byte Spill
	je	.LBB76_34
# %bb.33:                               #   in Loop: Header=BB76_32 Depth=2
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$34, %eax
	setne	%cl
	movb	%cl, -16(%ebp)          # 1-byte Spill
.LBB76_34:                              #   in Loop: Header=BB76_32 Depth=2
	movb	-16(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB76_35
	jmp	.LBB76_38
.LBB76_35:                              #   in Loop: Header=BB76_32 Depth=2
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$92, %eax
	jne	.LBB76_37
# %bb.36:                               #   in Loop: Header=BB76_32 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%ebp)
	movb	(%eax), %dl
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%ebp)
	movb	%dl, (%eax)
.LBB76_37:                              #   in Loop: Header=BB76_32 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%ebp)
	movb	(%eax), %dl
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%ebp)
	movb	%dl, (%eax)
	jmp	.LBB76_32
.LBB76_38:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%ebp)
	movb	(%eax), %dl
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%ebp)
	movb	%dl, (%eax)
	jmp	.LBB76_40
.LBB76_39:                              #   in Loop: Header=BB76_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%ebp)
	movb	(%eax), %dl
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%ebp)
	movb	%dl, (%eax)
.LBB76_40:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_41
.LBB76_41:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_42
.LBB76_42:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_43
.LBB76_43:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_44
.LBB76_44:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_45
.LBB76_45:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_46
.LBB76_46:                              #   in Loop: Header=BB76_3 Depth=1
	jmp	.LBB76_3
.LBB76_47:
	movl	-8(%ebp), %eax
	movb	$0, (%eax)
.LBB76_48:
	addl	$16, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end76:
	.size	cJSON_Minify, .Lfunc_end76-cJSON_Minify
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsInvalid         # -- Begin function cJSON_IsInvalid
	.p2align	4, 0x90
	.type	cJSON_IsInvalid,@function
cJSON_IsInvalid:                        # @cJSON_IsInvalid
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB77_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB77_3
.LBB77_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB77_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end77:
	.size	cJSON_IsInvalid, .Lfunc_end77-cJSON_IsInvalid
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsFalse           # -- Begin function cJSON_IsFalse
	.p2align	4, 0x90
	.type	cJSON_IsFalse,@function
cJSON_IsFalse:                          # @cJSON_IsFalse
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB78_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB78_3
.LBB78_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB78_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end78:
	.size	cJSON_IsFalse, .Lfunc_end78-cJSON_IsFalse
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsTrue            # -- Begin function cJSON_IsTrue
	.p2align	4, 0x90
	.type	cJSON_IsTrue,@function
cJSON_IsTrue:                           # @cJSON_IsTrue
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB79_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB79_3
.LBB79_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB79_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end79:
	.size	cJSON_IsTrue, .Lfunc_end79-cJSON_IsTrue
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsBool            # -- Begin function cJSON_IsBool
	.p2align	4, 0x90
	.type	cJSON_IsBool,@function
cJSON_IsBool:                           # @cJSON_IsBool
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB80_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB80_3
.LBB80_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB80_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end80:
	.size	cJSON_IsBool, .Lfunc_end80-cJSON_IsBool
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsNull            # -- Begin function cJSON_IsNull
	.p2align	4, 0x90
	.type	cJSON_IsNull,@function
cJSON_IsNull:                           # @cJSON_IsNull
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB81_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB81_3
.LBB81_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$4, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB81_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end81:
	.size	cJSON_IsNull, .Lfunc_end81-cJSON_IsNull
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsNumber          # -- Begin function cJSON_IsNumber
	.p2align	4, 0x90
	.type	cJSON_IsNumber,@function
cJSON_IsNumber:                         # @cJSON_IsNumber
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB82_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB82_3
.LBB82_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$8, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB82_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end82:
	.size	cJSON_IsNumber, .Lfunc_end82-cJSON_IsNumber
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsArray           # -- Begin function cJSON_IsArray
	.p2align	4, 0x90
	.type	cJSON_IsArray,@function
cJSON_IsArray:                          # @cJSON_IsArray
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB83_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB83_3
.LBB83_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$32, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB83_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end83:
	.size	cJSON_IsArray, .Lfunc_end83-cJSON_IsArray
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsObject          # -- Begin function cJSON_IsObject
	.p2align	4, 0x90
	.type	cJSON_IsObject,@function
cJSON_IsObject:                         # @cJSON_IsObject
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB84_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB84_3
.LBB84_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$64, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB84_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end84:
	.size	cJSON_IsObject, .Lfunc_end84-cJSON_IsObject
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_IsRaw             # -- Begin function cJSON_IsRaw
	.p2align	4, 0x90
	.type	cJSON_IsRaw,@function
cJSON_IsRaw:                            # @cJSON_IsRaw
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	jne	.LBB85_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB85_3
.LBB85_2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	cmpl	$128, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%ebp)
.LBB85_3:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end85:
	.size	cJSON_IsRaw, .Lfunc_end85-cJSON_IsRaw
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_Compare           # -- Begin function cJSON_Compare
	.p2align	4, 0x90
	.type	cJSON_Compare,@function
cJSON_Compare:                          # @cJSON_Compare
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$136, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -8(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -44(%ebp)         # 4-byte Spill
	movl	%edx, -48(%ebp)         # 4-byte Spill
	je	.LBB86_4
# %bb.1:
	cmpl	$0, -8(%ebp)
	je	.LBB86_4
# %bb.2:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$255, %eax
	movl	-8(%ebp), %ecx
	movl	12(%ecx), %ecx
	andl	$255, %ecx
	cmpl	%ecx, %eax
	jne	.LBB86_4
# %bb.3:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_IsInvalid
	cmpl	$0, %eax
	je	.LBB86_5
.LBB86_4:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_5:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	subl	$2, %ecx
	movl	%eax, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jb	.LBB86_6
	jmp	.LBB86_56
.LBB86_56:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%ebp)         # 4-byte Spill
	je	.LBB86_6
	jmp	.LBB86_57
.LBB86_57:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -64(%ebp)         # 4-byte Spill
	je	.LBB86_6
	jmp	.LBB86_58
.LBB86_58:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -68(%ebp)         # 4-byte Spill
	je	.LBB86_6
	jmp	.LBB86_59
.LBB86_59:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -72(%ebp)         # 4-byte Spill
	je	.LBB86_6
	jmp	.LBB86_60
.LBB86_60:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$64, %eax
	movl	%eax, -76(%ebp)         # 4-byte Spill
	je	.LBB86_6
	jmp	.LBB86_61
.LBB86_61:
	movl	-52(%ebp), %eax         # 4-byte Reload
	subl	$128, %eax
	movl	%eax, -80(%ebp)         # 4-byte Spill
	jne	.LBB86_7
	jmp	.LBB86_6
.LBB86_6:
	jmp	.LBB86_8
.LBB86_7:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_8:
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.LBB86_10
# %bb.9:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_10:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	subl	$2, %ecx
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%ecx, -88(%ebp)         # 4-byte Spill
	jb	.LBB86_11
	jmp	.LBB86_62
.LBB86_62:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -92(%ebp)         # 4-byte Spill
	je	.LBB86_11
	jmp	.LBB86_63
.LBB86_63:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -96(%ebp)         # 4-byte Spill
	je	.LBB86_12
	jmp	.LBB86_64
.LBB86_64:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -100(%ebp)        # 4-byte Spill
	je	.LBB86_15
	jmp	.LBB86_65
.LBB86_65:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -104(%ebp)        # 4-byte Spill
	je	.LBB86_21
	jmp	.LBB86_66
.LBB86_66:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$64, %eax
	movl	%eax, -108(%ebp)        # 4-byte Spill
	je	.LBB86_31
	jmp	.LBB86_67
.LBB86_67:
	movl	-84(%ebp), %eax         # 4-byte Reload
	subl	$128, %eax
	movl	%eax, -112(%ebp)        # 4-byte Spill
	je	.LBB86_15
	jmp	.LBB86_54
.LBB86_11:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_12:
	movl	8(%ebp), %eax
	movsd	24(%eax), %xmm0         # xmm0 = mem[0],zero
	movl	-8(%ebp), %eax
	ucomisd	24(%eax), %xmm0
	jne	.LBB86_14
	jp	.LBB86_14
# %bb.13:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_14:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_15:
	movl	8(%ebp), %eax
	cmpl	$0, 16(%eax)
	je	.LBB86_17
# %bb.16:
	movl	-8(%ebp), %eax
	cmpl	$0, 16(%eax)
	jne	.LBB86_18
.LBB86_17:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_18:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-8(%ebp), %ecx
	movl	16(%ecx), %ecx
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	strcmp
	cmpl	$0, %eax
	jne	.LBB86_20
# %bb.19:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_20:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_21:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.LBB86_22:                              # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%ebp)
	movb	%cl, -113(%ebp)         # 1-byte Spill
	je	.LBB86_24
# %bb.23:                               #   in Loop: Header=BB86_22 Depth=1
	cmpl	$0, -24(%ebp)
	setne	%al
	movb	%al, -113(%ebp)         # 1-byte Spill
.LBB86_24:                              #   in Loop: Header=BB86_22 Depth=1
	movb	-113(%ebp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB86_25
	jmp	.LBB86_28
.LBB86_25:                              #   in Loop: Header=BB86_22 Depth=1
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	cJSON_Compare
	cmpl	$0, %eax
	jne	.LBB86_27
# %bb.26:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_27:                              #   in Loop: Header=BB86_22 Depth=1
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB86_22
.LBB86_28:
	movl	-16(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.LBB86_30
# %bb.29:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_30:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_31:
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	cmpl	$0, 8(%ebp)
	je	.LBB86_33
# %bb.32:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -120(%ebp)        # 4-byte Spill
	jmp	.LBB86_34
.LBB86_33:
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)        # 4-byte Spill
	jmp	.LBB86_34
.LBB86_34:
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	%eax, -32(%ebp)
.LBB86_35:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -32(%ebp)
	je	.LBB86_42
# %bb.36:                               #   in Loop: Header=BB86_35 Depth=1
	movl	-8(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	get_object_item
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB86_38
# %bb.37:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_38:                              #   in Loop: Header=BB86_35 Depth=1
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	cJSON_Compare
	cmpl	$0, %eax
	jne	.LBB86_40
# %bb.39:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_40:                              #   in Loop: Header=BB86_35 Depth=1
	jmp	.LBB86_41
.LBB86_41:                              #   in Loop: Header=BB86_35 Depth=1
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.LBB86_35
.LBB86_42:
	cmpl	$0, -8(%ebp)
	je	.LBB86_44
# %bb.43:
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -124(%ebp)        # 4-byte Spill
	jmp	.LBB86_45
.LBB86_44:
	xorl	%eax, %eax
	movl	%eax, -124(%ebp)        # 4-byte Spill
	jmp	.LBB86_45
.LBB86_45:
	movl	-124(%ebp), %eax        # 4-byte Reload
	movl	%eax, -40(%ebp)
.LBB86_46:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%ebp)
	je	.LBB86_53
# %bb.47:                               #   in Loop: Header=BB86_46 Depth=1
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	32(%ecx), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	get_object_item
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB86_49
# %bb.48:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_49:                              #   in Loop: Header=BB86_46 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	cJSON_Compare
	cmpl	$0, %eax
	jne	.LBB86_51
# %bb.50:
	movl	$0, -4(%ebp)
	jmp	.LBB86_55
.LBB86_51:                              #   in Loop: Header=BB86_46 Depth=1
	jmp	.LBB86_52
.LBB86_52:                              #   in Loop: Header=BB86_46 Depth=1
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB86_46
.LBB86_53:
	movl	$1, -4(%ebp)
	jmp	.LBB86_55
.LBB86_54:
	movl	$0, -4(%ebp)
.LBB86_55:
	movl	-4(%ebp), %eax
	addl	$136, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end86:
	.size	cJSON_Compare, .Lfunc_end86-cJSON_Compare
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_malloc            # -- Begin function cJSON_malloc
	.p2align	4, 0x90
	.type	cJSON_malloc,@function
cJSON_malloc:                           # @cJSON_malloc
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
	subl	$28, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	global_hooks, %edx
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%esp, %ebx
	movl	%edi, 4(%ebx)
	movl	%esi, (%ebx)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	movl	%ecx, -20(%ebp)         # 4-byte Spill
	calll	*%edx
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end87:
	.size	cJSON_malloc, .Lfunc_end87-cJSON_malloc
	.cfi_endproc
                                        # -- End function
	.globl	cJSON_free              # -- Begin function cJSON_free
	.p2align	4, 0x90
	.type	cJSON_free,@function
cJSON_free:                             # @cJSON_free
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	global_hooks+4, %ecx
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, -4(%ebp)          # 4-byte Spill
	calll	*%ecx
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end88:
	.size	cJSON_free, .Lfunc_end88-cJSON_free
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function update_offset
	.type	update_offset,@function
update_offset:                          # @update_offset
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	8(%ebp), %eax
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	je	.LBB89_2
# %bb.1:
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.LBB89_3
.LBB89_2:
	jmp	.LBB89_4
.LBB89_3:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	strlen
	movl	8(%ebp), %ecx
	movl	12(%ecx), %esi
	movl	16(%ecx), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, 12(%ecx)
	movl	%edi, 16(%ecx)
.LBB89_4:
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end89:
	.size	update_offset, .Lfunc_end89-update_offset
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function parse_string
	.type	parse_string,@function
parse_string:                           # @parse_string
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
	subl	$124, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%eax), %eax
	leal	1(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%eax), %eax
	leal	1(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -56(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%eax), %eax
	movb	(%edx,%eax), %bl
	movzbl	%bl, %eax
	cmpl	$34, %eax
	movl	%ecx, -80(%ebp)         # 4-byte Spill
	je	.LBB90_2
# %bb.1:
	jmp	.LBB90_36
.LBB90_2:
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
.LBB90_3:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %esi
	xorl	%ebx, %ebx
	subl	%edx, %eax
	movl	%ebx, %edx
	sbbl	$0, %edx
	movl	8(%ecx), %ecx
                                        # kill: def $bl killed $bl killed $ebx
	subl	%esi, %eax
	sbbl	%ecx, %edx
	movl	%edx, -84(%ebp)         # 4-byte Spill
	movl	%eax, -88(%ebp)         # 4-byte Spill
	movb	%bl, -89(%ebp)          # 1-byte Spill
	jae	.LBB90_5
	jmp	.LBB90_4
.LBB90_4:                               #   in Loop: Header=BB90_3 Depth=1
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$34, %eax
	setne	%cl
	movb	%cl, -89(%ebp)          # 1-byte Spill
.LBB90_5:                               #   in Loop: Header=BB90_3 Depth=1
	movb	-89(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_6
	jmp	.LBB90_11
.LBB90_6:                               #   in Loop: Header=BB90_3 Depth=1
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$92, %eax
	jne	.LBB90_10
# %bb.7:                                #   in Loop: Header=BB90_3 Depth=1
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %esi
	xorl	%edi, %edi
	subl	%edx, %eax
	sbbl	$0, %edi
	movl	8(%ecx), %ecx
	subl	%esi, %eax
	sbbl	%ecx, %edi
	movl	%eax, -96(%ebp)         # 4-byte Spill
	movl	%edi, -100(%ebp)        # 4-byte Spill
	jb	.LBB90_9
	jmp	.LBB90_8
.LBB90_8:
	jmp	.LBB90_36
.LBB90_9:                               #   in Loop: Header=BB90_3 Depth=1
	movl	-68(%ebp), %eax
	addl	$1, -72(%ebp)
	adcl	$0, %eax
	movl	%eax, -68(%ebp)
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
.LBB90_10:                              #   in Loop: Header=BB90_3 Depth=1
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB90_3
.LBB90_11:
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %esi
	xorl	%edi, %edi
	subl	%edx, %eax
	sbbl	$0, %edi
	movl	8(%ecx), %ecx
	subl	%esi, %eax
	sbbl	%ecx, %edi
	movl	%eax, -104(%ebp)        # 4-byte Spill
	movl	%edi, -108(%ebp)        # 4-byte Spill
	jae	.LBB90_13
	jmp	.LBB90_12
.LBB90_12:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$34, %eax
	je	.LBB90_14
.LBB90_13:
	jmp	.LBB90_36
.LBB90_14:
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	movl	12(%ecx), %ecx
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	subl	%edx, %eax
	sbbl	$0, %ecx
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	movl	%eax, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	calll	*%eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jne	.LBB90_16
# %bb.15:
	jmp	.LBB90_36
.LBB90_16:
	movl	-56(%ebp), %eax
	movl	%eax, -48(%ebp)
.LBB90_17:                              # =>This Inner Loop Header: Depth=1
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jae	.LBB90_35
# %bb.18:                               #   in Loop: Header=BB90_17 Depth=1
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$92, %eax
	je	.LBB90_20
# %bb.19:                               #   in Loop: Header=BB90_17 Depth=1
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%ebp)
	movb	(%eax), %dl
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	%dl, (%eax)
	jmp	.LBB90_34
.LBB90_20:                              #   in Loop: Header=BB90_17 Depth=1
	movb	$2, -73(%ebp)
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	xorl	%edx, %edx
	subl	%ecx, %eax
	movl	%edx, %ecx
	sbbl	$0, %ecx
	negl	%eax
	sbbl	%ecx, %edx
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	%edx, -116(%ebp)        # 4-byte Spill
	jl	.LBB90_22
	jmp	.LBB90_21
.LBB90_21:
	jmp	.LBB90_36
.LBB90_22:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-32(%ebp), %eax
	movzbl	1(%eax), %eax
	addl	$-34, %eax
	movl	%eax, %ecx
	subl	$83, %ecx
	movl	%eax, -120(%ebp)        # 4-byte Spill
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	ja	.LBB90_32
# %bb.42:                               #   in Loop: Header=BB90_17 Depth=1
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	.LJTI90_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB90_23:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	$8, (%eax)
	jmp	.LBB90_33
.LBB90_24:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	$12, (%eax)
	jmp	.LBB90_33
.LBB90_25:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	$10, (%eax)
	jmp	.LBB90_33
.LBB90_26:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	$13, (%eax)
	jmp	.LBB90_33
.LBB90_27:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%ebp)
	movb	$9, (%eax)
	jmp	.LBB90_33
.LBB90_28:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-32(%ebp), %eax
	movb	1(%eax), %cl
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -48(%ebp)
	movb	%cl, (%eax)
	jmp	.LBB90_33
.LBB90_29:                              #   in Loop: Header=BB90_17 Depth=1
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	utf16_literal_to_utf8
	movb	%al, -73(%ebp)
	movzbl	-73(%ebp), %ecx
	cmpl	$0, %ecx
	jne	.LBB90_31
# %bb.30:
	jmp	.LBB90_36
.LBB90_31:                              #   in Loop: Header=BB90_17 Depth=1
	jmp	.LBB90_33
.LBB90_32:
	jmp	.LBB90_36
.LBB90_33:                              #   in Loop: Header=BB90_17 Depth=1
	movzbl	-73(%ebp), %eax
	movl	-32(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
.LBB90_34:                              #   in Loop: Header=BB90_17 Depth=1
	jmp	.LBB90_17
.LBB90_35:
	movl	-48(%ebp), %eax
	movb	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	xorl	%esi, %esi
	subl	%edx, %eax
	sbbl	$0, %esi
	movl	%eax, 12(%ecx)
	movl	%esi, 16(%ecx)
	movl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -16(%ebp)
	jmp	.LBB90_41
.LBB90_36:
	cmpl	$0, -56(%ebp)
	je	.LBB90_38
# %bb.37:
	movl	-24(%ebp), %eax
	movl	32(%eax), %eax
	movl	-56(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB90_38:
	cmpl	$0, -32(%ebp)
	je	.LBB90_40
# %bb.39:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%ecx), %edx
	xorl	%esi, %esi
	subl	%edx, %eax
	sbbl	$0, %esi
	movl	%eax, 12(%ecx)
	movl	%esi, 16(%ecx)
.LBB90_40:
	movl	$0, -16(%ebp)
.LBB90_41:
	movl	-16(%ebp), %eax
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end90:
	.size	parse_string, .Lfunc_end90-parse_string
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI90_0:
	.long	.LBB90_28
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_28
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_28
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_23
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_24
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_25
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_32
	.long	.LBB90_26
	.long	.LBB90_32
	.long	.LBB90_27
	.long	.LBB90_29
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function parse_number
.LCPI91_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI91_1:
	.quad	-4476578029606273024    # double -2147483648
	.text
	.p2align	4, 0x90
	.type	parse_number,@function
parse_number:                           # @parse_number
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
	subl	$156, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	%ecx, -132(%ebp)        # 4-byte Spill
	calll	get_decimal_point
	movb	%al, -105(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -120(%ebp)
	cmpl	$0, -24(%ebp)
	je	.LBB91_2
# %bb.1:
	movl	-24(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.LBB91_3
.LBB91_2:
	movl	$0, -16(%ebp)
	jmp	.LBB91_25
.LBB91_3:
	movl	$0, -116(%ebp)
	movl	$0, -120(%ebp)
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	xorl	%edx, %edx
	movb	%dl, %bl
	movl	$62, %esi
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -136(%ebp)        # 4-byte Spill
	movl	%edx, -140(%ebp)        # 4-byte Spill
	movb	%bl, -141(%ebp)         # 1-byte Spill
	jb	.LBB91_8
	jmp	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%ebp)
	movb	%cl, -142(%ebp)         # 1-byte Spill
	je	.LBB91_7
# %bb.6:                                #   in Loop: Header=BB91_4 Depth=1
	movl	-24(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	addl	%esi, %edx
	adcl	%edi, %ecx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	setb	%bl
	movl	%edx, -148(%ebp)        # 4-byte Spill
	movl	%ecx, -152(%ebp)        # 4-byte Spill
	movb	%bl, -142(%ebp)         # 1-byte Spill
.LBB91_7:                               #   in Loop: Header=BB91_4 Depth=1
	movb	-142(%ebp), %al         # 1-byte Reload
	movb	%al, -141(%ebp)         # 1-byte Spill
.LBB91_8:                               #   in Loop: Header=BB91_4 Depth=1
	movb	-141(%ebp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_9
	jmp	.LBB91_15
.LBB91_9:                               #   in Loop: Header=BB91_4 Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	-120(%ebp), %eax
	movzbl	(%eax,%ecx), %eax
	addl	$-43, %eax
	movl	%eax, %ecx
	subl	$58, %ecx
	movl	%eax, -156(%ebp)        # 4-byte Spill
	movl	%ecx, -160(%ebp)        # 4-byte Spill
	ja	.LBB91_12
# %bb.26:                               #   in Loop: Header=BB91_4 Depth=1
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	.LJTI91_0(,%eax,4), %ecx
	jmpl	*%ecx
.LBB91_10:                              #   in Loop: Header=BB91_4 Depth=1
	movl	-24(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	-120(%ebp), %eax
	movb	(%eax,%ecx), %dl
	movb	%dl, -104(%ebp,%eax)
	jmp	.LBB91_13
.LBB91_11:                              #   in Loop: Header=BB91_4 Depth=1
	movb	-105(%ebp), %al
	movl	-120(%ebp), %ecx
	movb	%al, -104(%ebp,%ecx)
	jmp	.LBB91_13
.LBB91_12:
	jmp	.LBB91_16
.LBB91_13:                              #   in Loop: Header=BB91_4 Depth=1
	jmp	.LBB91_14
.LBB91_14:                              #   in Loop: Header=BB91_4 Depth=1
	movl	-116(%ebp), %eax
	addl	$1, -120(%ebp)
	adcl	$0, %eax
	movl	%eax, -116(%ebp)
	jmp	.LBB91_4
.LBB91_15:
	jmp	.LBB91_16
.LBB91_16:
	leal	-104(%ebp), %eax
	movl	-120(%ebp), %ecx
	movb	$0, -104(%ebp,%ecx)
	movl	%eax, (%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	calll	strtod
	fstpl	-128(%ebp)
	movsd	-128(%ebp), %xmm0       # xmm0 = mem[0],zero
	leal	-104(%ebp), %eax
	movsd	%xmm0, -32(%ebp)
	cmpl	-40(%ebp), %eax
	jne	.LBB91_18
# %bb.17:
	movl	$0, -16(%ebp)
	jmp	.LBB91_25
.LBB91_18:
	movsd	.LCPI91_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%ebp), %xmm1        # xmm1 = mem[0],zero
	movl	8(%ebp), %eax
	movsd	%xmm1, 24(%eax)
	movsd	-32(%ebp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB91_20
# %bb.19:
	movl	8(%ebp), %eax
	movl	$2147483647, 20(%eax)   # imm = 0x7FFFFFFF
	jmp	.LBB91_24
.LBB91_20:
	movsd	.LCPI91_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%ebp), %xmm0
	jb	.LBB91_22
# %bb.21:
	movl	8(%ebp), %eax
	movl	$-2147483648, 20(%eax)  # imm = 0x80000000
	jmp	.LBB91_23
.LBB91_22:
	cvttsd2si	-32(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
.LBB91_23:
	jmp	.LBB91_24
.LBB91_24:
	movl	8(%ebp), %eax
	movl	$8, 12(%eax)
	movl	-40(%ebp), %eax
	xorl	%ecx, %ecx
	leal	-104(%ebp), %edx
	subl	%edx, %eax
	sbbl	$0, %ecx
	movl	-24(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
	movl	$1, -16(%ebp)
.LBB91_25:
	movl	-16(%ebp), %eax
	addl	$156, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end91:
	.size	parse_number, .Lfunc_end91-parse_number
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI91_0:
	.long	.LBB91_10
	.long	.LBB91_12
	.long	.LBB91_10
	.long	.LBB91_11
	.long	.LBB91_12
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_10
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_10
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_12
	.long	.LBB91_10
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function parse_array
	.type	parse_array,@function
parse_array:                            # @parse_array
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$112, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %eax
	subl	$1000, %edx             # imm = 0x3E8
	sbbl	$0, %eax
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	movl	%edx, -48(%ebp)         # 4-byte Spill
	movl	%eax, -52(%ebp)         # 4-byte Spill
	jb	.LBB92_2
	jmp	.LBB92_1
.LBB92_1:
	movl	$0, -12(%ebp)
	jmp	.LBB92_33
.LBB92_2:
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %bl
	movzbl	%bl, %eax
	cmpl	$91, %eax
	je	.LBB92_4
# %bb.3:
	jmp	.LBB92_30
.LBB92_4:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	cmpl	$0, -16(%ebp)
	movl	%eax, -56(%ebp)         # 4-byte Spill
	je	.LBB92_8
# %bb.5:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -60(%ebp)         # 4-byte Spill
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	jae	.LBB92_8
	jmp	.LBB92_6
.LBB92_6:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$93, %eax
	jne	.LBB92_8
# %bb.7:
	jmp	.LBB92_29
.LBB92_8:
	cmpl	$0, -16(%ebp)
	je	.LBB92_10
# %bb.9:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -68(%ebp)         # 4-byte Spill
	movl	%ecx, -72(%ebp)         # 4-byte Spill
	jb	.LBB92_11
	jmp	.LBB92_10
.LBB92_10:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	jmp	.LBB92_30
.LBB92_11:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
.LBB92_12:                              # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %eax
	addl	$28, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB92_14
# %bb.13:
	jmp	.LBB92_30
.LBB92_14:                              #   in Loop: Header=BB92_12 Depth=1
	cmpl	$0, -24(%ebp)
	jne	.LBB92_16
# %bb.15:                               #   in Loop: Header=BB92_12 Depth=1
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	%eax, -32(%ebp)
	jmp	.LBB92_17
.LBB92_16:                              #   in Loop: Header=BB92_12 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB92_17:                              #   in Loop: Header=BB92_12 Depth=1
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	-32(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -76(%ebp)         # 4-byte Spill
	calll	parse_value
	cmpl	$0, %eax
	jne	.LBB92_19
# %bb.18:
	jmp	.LBB92_30
.LBB92_19:                              #   in Loop: Header=BB92_12 Depth=1
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	%eax, -80(%ebp)         # 4-byte Spill
# %bb.20:                               #   in Loop: Header=BB92_12 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%ebp)
	movb	%cl, -81(%ebp)          # 1-byte Spill
	je	.LBB92_23
# %bb.21:                               #   in Loop: Header=BB92_12 Depth=1
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	xorl	%ebx, %ebx
                                        # kill: def $bl killed $bl killed $ebx
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -88(%ebp)         # 4-byte Spill
	movl	%ecx, -92(%ebp)         # 4-byte Spill
	movb	%bl, -81(%ebp)          # 1-byte Spill
	jae	.LBB92_23
	jmp	.LBB92_22
.LBB92_22:                              #   in Loop: Header=BB92_12 Depth=1
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$44, %eax
	sete	%dl
	movb	%dl, -81(%ebp)          # 1-byte Spill
.LBB92_23:                              #   in Loop: Header=BB92_12 Depth=1
	movb	-81(%ebp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB92_12
# %bb.24:
	cmpl	$0, -16(%ebp)
	je	.LBB92_27
# %bb.25:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -96(%ebp)         # 4-byte Spill
	movl	%ecx, -100(%ebp)        # 4-byte Spill
	jae	.LBB92_27
	jmp	.LBB92_26
.LBB92_26:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$93, %eax
	je	.LBB92_28
.LBB92_27:
	jmp	.LBB92_30
.LBB92_28:
	jmp	.LBB92_29
.LBB92_29:
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	$32, 12(%eax)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -12(%ebp)
	jmp	.LBB92_33
.LBB92_30:
	cmpl	$0, -24(%ebp)
	je	.LBB92_32
# %bb.31:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
.LBB92_32:
	movl	$0, -12(%ebp)
.LBB92_33:
	movl	-12(%ebp), %eax
	addl	$112, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end92:
	.size	parse_array, .Lfunc_end92-parse_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function parse_object
	.type	parse_object,@function
parse_object:                           # @parse_object
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$128, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %eax
	subl	$1000, %edx             # imm = 0x3E8
	sbbl	$0, %eax
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	movl	%edx, -48(%ebp)         # 4-byte Spill
	movl	%eax, -52(%ebp)         # 4-byte Spill
	jb	.LBB93_2
	jmp	.LBB93_1
.LBB93_1:
	movl	$0, -12(%ebp)
	jmp	.LBB93_41
.LBB93_2:
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	cmpl	$0, -16(%ebp)
	je	.LBB93_5
# %bb.3:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -56(%ebp)         # 4-byte Spill
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	jae	.LBB93_5
	jmp	.LBB93_4
.LBB93_4:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$123, %eax
	je	.LBB93_6
.LBB93_5:
	jmp	.LBB93_38
.LBB93_6:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	cmpl	$0, -16(%ebp)
	movl	%eax, -64(%ebp)         # 4-byte Spill
	je	.LBB93_10
# %bb.7:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -68(%ebp)         # 4-byte Spill
	movl	%ecx, -72(%ebp)         # 4-byte Spill
	jae	.LBB93_10
	jmp	.LBB93_8
.LBB93_8:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$125, %eax
	jne	.LBB93_10
# %bb.9:
	jmp	.LBB93_37
.LBB93_10:
	cmpl	$0, -16(%ebp)
	je	.LBB93_12
# %bb.11:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -76(%ebp)         # 4-byte Spill
	movl	%ecx, -80(%ebp)         # 4-byte Spill
	jb	.LBB93_13
	jmp	.LBB93_12
.LBB93_12:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	jmp	.LBB93_38
.LBB93_13:
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
.LBB93_14:                              # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %eax
	addl	$28, %eax
	movl	%eax, (%esp)
	calll	cJSON_New_Item
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.LBB93_16
# %bb.15:
	jmp	.LBB93_38
.LBB93_16:                              #   in Loop: Header=BB93_14 Depth=1
	cmpl	$0, -24(%ebp)
	jne	.LBB93_18
# %bb.17:                               #   in Loop: Header=BB93_14 Depth=1
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	%eax, -32(%ebp)
	jmp	.LBB93_19
.LBB93_18:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB93_19:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	-32(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -84(%ebp)         # 4-byte Spill
	calll	parse_string
	cmpl	$0, %eax
	jne	.LBB93_21
# %bb.20:
	jmp	.LBB93_38
.LBB93_21:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	-32(%ebp), %ecx
	movl	16(%ecx), %ecx
	movl	-32(%ebp), %edx
	movl	%ecx, 32(%edx)
	movl	-32(%ebp), %ecx
	movl	$0, 16(%ecx)
	cmpl	$0, -16(%ebp)
	movl	%eax, -88(%ebp)         # 4-byte Spill
	je	.LBB93_24
# %bb.22:                               #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -92(%ebp)         # 4-byte Spill
	movl	%ecx, -96(%ebp)         # 4-byte Spill
	jae	.LBB93_24
	jmp	.LBB93_23
.LBB93_23:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$58, %eax
	je	.LBB93_25
.LBB93_24:
	jmp	.LBB93_38
.LBB93_25:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	-32(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -100(%ebp)        # 4-byte Spill
	calll	parse_value
	cmpl	$0, %eax
	jne	.LBB93_27
# %bb.26:
	jmp	.LBB93_38
.LBB93_27:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	buffer_skip_whitespace
	movl	%eax, -104(%ebp)        # 4-byte Spill
# %bb.28:                               #   in Loop: Header=BB93_14 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%ebp)
	movb	%cl, -105(%ebp)         # 1-byte Spill
	je	.LBB93_31
# %bb.29:                               #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	xorl	%ebx, %ebx
                                        # kill: def $bl killed $bl killed $ebx
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -112(%ebp)        # 4-byte Spill
	movl	%ecx, -116(%ebp)        # 4-byte Spill
	movb	%bl, -105(%ebp)         # 1-byte Spill
	jae	.LBB93_31
	jmp	.LBB93_30
.LBB93_30:                              #   in Loop: Header=BB93_14 Depth=1
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$44, %eax
	sete	%dl
	movb	%dl, -105(%ebp)         # 1-byte Spill
.LBB93_31:                              #   in Loop: Header=BB93_14 Depth=1
	movb	-105(%ebp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_14
# %bb.32:
	cmpl	$0, -16(%ebp)
	je	.LBB93_35
# %bb.33:
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -120(%ebp)        # 4-byte Spill
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	jae	.LBB93_35
	jmp	.LBB93_34
.LBB93_34:
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	movb	(%ecx,%eax), %dl
	movzbl	%dl, %eax
	cmpl	$125, %eax
	je	.LBB93_36
.LBB93_35:
	jmp	.LBB93_38
.LBB93_36:
	jmp	.LBB93_37
.LBB93_37:
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	$64, 12(%eax)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	$1, -12(%ebp)
	jmp	.LBB93_41
.LBB93_38:
	cmpl	$0, -24(%ebp)
	je	.LBB93_40
# %bb.39:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	calll	cJSON_Delete
.LBB93_40:
	movl	$0, -12(%ebp)
.LBB93_41:
	movl	-12(%ebp), %eax
	addl	$128, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end93:
	.size	parse_object, .Lfunc_end93-parse_object
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function utf16_literal_to_utf8
	.type	utf16_literal_to_utf8,@function
utf16_literal_to_utf8:                  # @utf16_literal_to_utf8
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
	subl	$108, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	8(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	movb	$0, -41(%ebp)
	movb	$0, -42(%ebp)
	movb	$0, -43(%ebp)
	movb	$0, -44(%ebp)
	movl	-24(%ebp), %ecx
	movl	-40(%ebp), %esi
	xorl	%edi, %edi
	subl	%esi, %ecx
	movl	%edi, %esi
	sbbl	$0, %esi
	movl	$5, %ebx
	subl	%ecx, %ebx
	sbbl	%esi, %edi
	movl	%eax, -56(%ebp)         # 4-byte Spill
	movl	%edx, -60(%ebp)         # 4-byte Spill
	movl	%edi, -64(%ebp)         # 4-byte Spill
	movl	%ebx, -68(%ebp)         # 4-byte Spill
	jl	.LBB94_2
	jmp	.LBB94_1
.LBB94_1:
	jmp	.LBB94_37
.LBB94_2:
	movl	-40(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	calll	parse_hex4
	movl	%eax, -36(%ebp)
	cmpl	$56320, -36(%ebp)       # imm = 0xDC00
	jb	.LBB94_5
# %bb.3:
	cmpl	$57343, -36(%ebp)       # imm = 0xDFFF
	ja	.LBB94_5
# %bb.4:
	jmp	.LBB94_37
.LBB94_5:
	cmpl	$55296, -36(%ebp)       # imm = 0xD800
	jb	.LBB94_16
# %bb.6:
	cmpl	$56319, -36(%ebp)       # imm = 0xDBFF
	ja	.LBB94_16
# %bb.7:
	movl	-40(%ebp), %eax
	addl	$6, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -52(%ebp)
	movb	$12, -43(%ebp)
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %ecx
	xorl	%edx, %edx
	subl	%ecx, %eax
	movl	%edx, %ecx
	sbbl	$0, %ecx
	movl	$5, %esi
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%edx, -72(%ebp)         # 4-byte Spill
	movl	%esi, -76(%ebp)         # 4-byte Spill
	jl	.LBB94_9
	jmp	.LBB94_8
.LBB94_8:
	jmp	.LBB94_37
.LBB94_9:
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$92, %eax
	jne	.LBB94_11
# %bb.10:
	movl	-48(%ebp), %eax
	movzbl	1(%eax), %eax
	cmpl	$117, %eax
	je	.LBB94_12
.LBB94_11:
	jmp	.LBB94_37
.LBB94_12:
	movl	-48(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	calll	parse_hex4
	movl	%eax, -52(%ebp)
	cmpl	$56320, -52(%ebp)       # imm = 0xDC00
	jb	.LBB94_14
# %bb.13:
	cmpl	$57343, -52(%ebp)       # imm = 0xDFFF
	jbe	.LBB94_15
.LBB94_14:
	jmp	.LBB94_37
.LBB94_15:
	movl	-36(%ebp), %eax
	andl	$1023, %eax             # imm = 0x3FF
	shll	$10, %eax
	movl	-52(%ebp), %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	leal	65536(%eax,%ecx), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.LBB94_17
.LBB94_16:
	movb	$6, -43(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.LBB94_17:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	xorl	%edx, %edx
	movl	$127, %esi
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -80(%ebp)         # 4-byte Spill
	movl	%edx, -84(%ebp)         # 4-byte Spill
	jb	.LBB94_19
	jmp	.LBB94_18
.LBB94_18:
	movb	$1, -41(%ebp)
	jmp	.LBB94_29
.LBB94_19:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	xorl	%edx, %edx
	movl	$2047, %esi             # imm = 0x7FF
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -88(%ebp)         # 4-byte Spill
	movl	%edx, -92(%ebp)         # 4-byte Spill
	jb	.LBB94_21
	jmp	.LBB94_20
.LBB94_20:
	movb	$2, -41(%ebp)
	movb	$-64, -44(%ebp)
	jmp	.LBB94_28
.LBB94_21:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	xorl	%edx, %edx
	movl	$65535, %esi            # imm = 0xFFFF
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -96(%ebp)         # 4-byte Spill
	movl	%edx, -100(%ebp)        # 4-byte Spill
	jb	.LBB94_23
	jmp	.LBB94_22
.LBB94_22:
	movb	$3, -41(%ebp)
	movb	$-32, -44(%ebp)
	jmp	.LBB94_27
.LBB94_23:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	xorl	%edx, %edx
	movl	$1114111, %esi          # imm = 0x10FFFF
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -104(%ebp)        # 4-byte Spill
	movl	%edx, -108(%ebp)        # 4-byte Spill
	jb	.LBB94_25
	jmp	.LBB94_24
.LBB94_24:
	movb	$4, -41(%ebp)
	movb	$-16, -44(%ebp)
	jmp	.LBB94_26
.LBB94_25:
	jmp	.LBB94_37
.LBB94_26:
	jmp	.LBB94_27
.LBB94_27:
	jmp	.LBB94_28
.LBB94_28:
	jmp	.LBB94_29
.LBB94_29:
	movzbl	-41(%ebp), %eax
	subl	$1, %eax
	movb	%al, %cl
	movb	%cl, -42(%ebp)
.LBB94_30:                              # =>This Inner Loop Header: Depth=1
	movzbl	-42(%ebp), %eax
	cmpl	$0, %eax
	jle	.LBB94_33
# %bb.31:                               #   in Loop: Header=BB94_30 Depth=1
	movl	-32(%ebp), %eax
	orl	$128, %eax
	andl	$191, %eax
	movb	%al, %cl
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	-42(%ebp), %edx
	movb	%cl, (%eax,%edx)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %esi
	shldl	$26, %eax, %esi
	shrl	$6, %edx
	movl	%edx, -28(%ebp)
	movl	%esi, -32(%ebp)
# %bb.32:                               #   in Loop: Header=BB94_30 Depth=1
	movb	-42(%ebp), %al
	addb	$-1, %al
	movb	%al, -42(%ebp)
	jmp	.LBB94_30
.LBB94_33:
	movzbl	-41(%ebp), %eax
	cmpl	$1, %eax
	jle	.LBB94_35
# %bb.34:
	movl	-32(%ebp), %eax
	movzbl	-44(%ebp), %ecx
	orl	%ecx, %eax
	movb	%al, %dl
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movb	%dl, (%eax)
	jmp	.LBB94_36
.LBB94_35:
	movl	-32(%ebp), %eax
	andl	$127, %eax
	movb	%al, %cl
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movb	%cl, (%eax)
.LBB94_36:
	movzbl	-41(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	(%ecx), %edx
	addl	%eax, %edx
	movl	%edx, (%ecx)
	movb	-43(%ebp), %bl
	movb	%bl, -13(%ebp)
	jmp	.LBB94_38
.LBB94_37:
	movb	$0, -13(%ebp)
.LBB94_38:
	movzbl	-13(%ebp), %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end94:
	.size	utf16_literal_to_utf8, .Lfunc_end94-utf16_literal_to_utf8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function parse_hex4
	.type	parse_hex4,@function
parse_hex4:                             # @parse_hex4
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$44, %esp
	.cfi_offset %esi, -12
	movl	8(%ebp), %eax
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	%eax, -28(%ebp)         # 4-byte Spill
.LBB95_1:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	xorl	%edx, %edx
	movl	$3, %esi
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -32(%ebp)         # 4-byte Spill
	movl	%edx, -36(%ebp)         # 4-byte Spill
	jb	.LBB95_18
	jmp	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$48, %eax
	jl	.LBB95_5
# %bb.3:                                #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$57, %eax
	jg	.LBB95_5
# %bb.4:                                #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	subl	$48, %eax
	addl	-12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB95_14
.LBB95_5:                               #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$65, %eax
	jl	.LBB95_8
# %bb.6:                                #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$70, %eax
	jg	.LBB95_8
# %bb.7:                                #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	addl	$10, %eax
	subl	$65, %eax
	addl	-12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB95_13
.LBB95_8:                               #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$97, %eax
	jl	.LBB95_11
# %bb.9:                                #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	cmpl	$102, %eax
	jg	.LBB95_11
# %bb.10:                               #   in Loop: Header=BB95_1 Depth=1
	movl	8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	(%eax,%ecx), %dl
	movzbl	%dl, %eax
	addl	$10, %eax
	subl	$97, %eax
	addl	-12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB95_12
.LBB95_11:
	movl	$0, -8(%ebp)
	jmp	.LBB95_19
.LBB95_12:                              #   in Loop: Header=BB95_1 Depth=1
	jmp	.LBB95_13
.LBB95_13:                              #   in Loop: Header=BB95_1 Depth=1
	jmp	.LBB95_14
.LBB95_14:                              #   in Loop: Header=BB95_1 Depth=1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	xorl	%edx, %edx
	movl	$2, %esi
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -40(%ebp)         # 4-byte Spill
	movl	%edx, -44(%ebp)         # 4-byte Spill
	jb	.LBB95_16
	jmp	.LBB95_15
.LBB95_15:                              #   in Loop: Header=BB95_1 Depth=1
	movl	-12(%ebp), %eax
	shll	$4, %eax
	movl	%eax, -12(%ebp)
.LBB95_16:                              #   in Loop: Header=BB95_1 Depth=1
	jmp	.LBB95_17
.LBB95_17:                              #   in Loop: Header=BB95_1 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, -24(%ebp)
	adcl	$0, %eax
	movl	%eax, -20(%ebp)
	jmp	.LBB95_1
.LBB95_18:
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB95_19:
	movl	-8(%ebp), %eax
	addl	$44, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end95:
	.size	parse_hex4, .Lfunc_end95-parse_hex4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function get_decimal_point
	.type	get_decimal_point,@function
get_decimal_point:                      # @get_decimal_point
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	movb	$46, %al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end96:
	.size	get_decimal_point, .Lfunc_end96-get_decimal_point
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ensure
	.type	ensure,@function
ensure:                                 # @ensure
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	cmpl	$0, 8(%ebp)
	movl	%edx, -44(%ebp)         # 4-byte Spill
	je	.LBB97_2
# %bb.1:
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.LBB97_3
.LBB97_2:
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_3:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%eax), %eax
	orl	%eax, %ecx
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	je	.LBB97_6
	jmp	.LBB97_4
.LBB97_4:
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	subl	%esi, %edx
	sbbl	%eax, %ecx
	movl	%edx, -52(%ebp)         # 4-byte Spill
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	jb	.LBB97_6
	jmp	.LBB97_5
.LBB97_5:
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_6:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	shldl	$1, %eax, %ecx
	orl	%edx, %ecx
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	je	.LBB97_8
	jmp	.LBB97_7
.LBB97_7:
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_8:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %eax
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %esi
	addl	%ecx, %edx
	adcl	%eax, %esi
	addl	$1, %edx
	adcl	$0, %esi
	movl	%edx, -24(%ebp)
	movl	%esi, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	4(%edx), %esi
	movl	8(%edx), %edx
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -64(%ebp)         # 4-byte Spill
	movl	%edx, -68(%ebp)         # 4-byte Spill
	jb	.LBB97_10
	jmp	.LBB97_9
.LBB97_9:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%eax), %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
	jmp	.LBB97_28
.LBB97_10:
	movl	8(%ebp), %eax
	cmpl	$0, 28(%eax)
	je	.LBB97_12
# %bb.11:
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_12:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	subl	$1073741824, %eax       # imm = 0x40000000
	sbbl	$0, %ecx
	movl	%eax, -72(%ebp)         # 4-byte Spill
	movl	%ecx, -76(%ebp)         # 4-byte Spill
	jb	.LBB97_17
	jmp	.LBB97_13
.LBB97_13:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	xorl	%edx, %edx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	subl	%eax, %esi
	sbbl	%ecx, %edx
	movl	%esi, -80(%ebp)         # 4-byte Spill
	movl	%edx, -84(%ebp)         # 4-byte Spill
	jb	.LBB97_15
	jmp	.LBB97_14
.LBB97_14:
	movl	$0, -36(%ebp)
	movl	$2147483647, -40(%ebp)  # imm = 0x7FFFFFFF
	jmp	.LBB97_16
.LBB97_15:
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_16:
	jmp	.LBB97_18
.LBB97_17:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, %edx
	addl	%edx, %edx
	shldl	$1, %eax, %ecx
	movl	%ecx, -36(%ebp)
	movl	%edx, -40(%ebp)
.LBB97_18:
	movl	8(%ebp), %eax
	cmpl	$0, 44(%eax)
	je	.LBB97_22
# %bb.19:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	44(%eax), %eax
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%ecx, (%edi)
	calll	*%eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB97_21
# %bb.20:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	40(%eax), %eax
	movl	%esp, %edx
	movl	%ecx, (%edx)
	calll	*%eax
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_21:
	jmp	.LBB97_27
.LBB97_22:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	calll	*%eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB97_24
# %bb.23:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	40(%eax), %eax
	movl	%esp, %edx
	movl	%ecx, (%edx)
	calll	*%eax
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, -16(%ebp)
	jmp	.LBB97_28
.LBB97_24:
	cmpl	$0, -32(%ebp)
	je	.LBB97_26
# %bb.25:
	movl	-32(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx), %edx
	movl	12(%ecx), %esi
	movl	16(%ecx), %ecx
	addl	$1, %esi
	adcl	$0, %ecx
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%eax, (%edi)
	movl	%ecx, -88(%ebp)         # 4-byte Spill
	calll	memcpy
	movl	%eax, -92(%ebp)         # 4-byte Spill
.LBB97_26:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
.LBB97_27:
	movsd	-40(%ebp), %xmm0        # xmm0 = mem[0],zero
	movl	8(%ebp), %eax
	movsd	%xmm0, 4(%eax)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	12(%ecx), %ecx
	addl	%ecx, %eax
	movl	%eax, -16(%ebp)
.LBB97_28:
	movl	-16(%ebp), %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end97:
	.size	ensure, .Lfunc_end97-ensure
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_number
	.type	print_number,@function
print_number:                           # @print_number
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movsd	24(%eax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	%ecx, -108(%ebp)        # 4-byte Spill
	calll	get_decimal_point
	movb	%al, -89(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.LBB98_2
# %bb.1:
	movl	$0, -12(%ebp)
	jmp	.LBB98_20
.LBB98_2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	mulsd	-32(%ebp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB98_3
	jp	.LBB98_3
	jmp	.LBB98_4
.LBB98_3:
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	leal	.L.str.2, %eax
	movl	%eax, 4(%esp)
	calll	sprintf
	movl	%eax, -36(%ebp)
	jmp	.LBB98_8
.LBB98_4:
	leal	-88(%ebp), %eax
	movsd	-32(%ebp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, (%esp)
	leal	.L.str.5, %eax
	movl	%eax, 4(%esp)
	movsd	%xmm0, 8(%esp)
	calll	sprintf
	leal	-88(%ebp), %ecx
	movl	%eax, -36(%ebp)
	movl	%ecx, (%esp)
	leal	.L.str.6, %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB98_6
# %bb.5:
	movsd	-104(%ebp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-32(%ebp), %xmm0
	jne	.LBB98_6
	jp	.LBB98_6
	jmp	.LBB98_7
.LBB98_6:
	leal	-88(%ebp), %eax
	movsd	-32(%ebp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, (%esp)
	leal	.L.str.7, %eax
	movl	%eax, 4(%esp)
	movsd	%xmm0, 8(%esp)
	calll	sprintf
	movl	%eax, -36(%ebp)
.LBB98_7:
	jmp	.LBB98_8
.LBB98_8:
	cmpl	$0, -36(%ebp)
	jl	.LBB98_10
# %bb.9:
	cmpl	$25, -36(%ebp)
	jle	.LBB98_11
.LBB98_10:
	movl	$0, -12(%ebp)
	jmp	.LBB98_20
.LBB98_11:
	movl	-16(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB98_13
# %bb.12:
	movl	$0, -12(%ebp)
	jmp	.LBB98_20
.LBB98_13:
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
.LBB98_14:                              # =>This Inner Loop Header: Depth=1
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%edx, %eax
	sbbl	%esi, %ecx
	movl	%ecx, -112(%ebp)        # 4-byte Spill
	movl	%eax, -116(%ebp)        # 4-byte Spill
	jae	.LBB98_19
	jmp	.LBB98_15
.LBB98_15:                              #   in Loop: Header=BB98_14 Depth=1
	movl	-48(%ebp), %eax
	movb	-88(%ebp,%eax), %cl
	movzbl	%cl, %eax
	movzbl	-89(%ebp), %edx
	cmpl	%edx, %eax
	jne	.LBB98_17
# %bb.16:                               #   in Loop: Header=BB98_14 Depth=1
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %ecx
	movb	$46, (%eax,%ecx)
	jmp	.LBB98_18
.LBB98_17:                              #   in Loop: Header=BB98_14 Depth=1
	movl	-48(%ebp), %eax
	movb	-88(%ebp,%eax), %cl
	movl	-24(%ebp), %edx
	movb	%cl, (%edx,%eax)
.LBB98_18:                              #   in Loop: Header=BB98_14 Depth=1
	movl	-44(%ebp), %eax
	addl	$1, -48(%ebp)
	adcl	$0, %eax
	movl	%eax, -44(%ebp)
	jmp	.LBB98_14
.LBB98_19:
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-16(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
	movl	$1, -12(%ebp)
.LBB98_20:
	movl	-12(%ebp), %eax
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end98:
	.size	print_number, .Lfunc_end98-print_number
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_string
	.type	print_string,@function
print_string:                           # @print_string
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
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	calll	print_string_ptr
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end99:
	.size	print_string, .Lfunc_end99-print_string
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
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
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -16(%ebp)
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	jne	.LBB100_2
# %bb.1:
	movl	$0, -12(%ebp)
	jmp	.LBB100_18
.LBB100_2:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$1, 4(%ecx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB100_4
# %bb.3:
	movl	$0, -12(%ebp)
	jmp	.LBB100_18
.LBB100_4:
	movl	-24(%ebp), %eax
	movb	$91, (%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	16(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 12(%eax)
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
.LBB100_5:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%ebp)
	je	.LBB100_15
# %bb.6:                                #   in Loop: Header=BB100_5 Depth=1
	movl	-40(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_value
	cmpl	$0, %eax
	jne	.LBB100_8
# %bb.7:
	movl	$0, -12(%ebp)
	jmp	.LBB100_18
.LBB100_8:                              #   in Loop: Header=BB100_5 Depth=1
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	update_offset
	movl	-40(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB100_14
# %bb.9:                                #   in Loop: Header=BB100_5 Depth=1
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	movl	$1, %eax
	sbbl	$-1, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB100_11
# %bb.10:
	movl	$0, -12(%ebp)
	jmp	.LBB100_18
.LBB100_11:                             #   in Loop: Header=BB100_5 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$44, (%eax)
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB100_13
# %bb.12:                               #   in Loop: Header=BB100_5 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$32, (%eax)
.LBB100_13:                             #   in Loop: Header=BB100_5 Depth=1
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
.LBB100_14:                             #   in Loop: Header=BB100_5 Depth=1
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB100_5
.LBB100_15:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$2, 4(%ecx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB100_17
# %bb.16:
	movl	$0, -12(%ebp)
	jmp	.LBB100_18
.LBB100_17:
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$93, (%eax)
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	$1, -12(%ebp)
.LBB100_18:
	movl	-12(%ebp), %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end100:
	.size	print_array, .Lfunc_end100-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_object
	.type	print_object,@function
print_object:                           # @print_object
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -16(%ebp)
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	jne	.LBB101_2
# %bb.1:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_2:
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	movl	$1, %eax
	sbbl	$-1, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB101_4
# %bb.3:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_4:
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$123, (%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$1, %ecx
	adcl	$0, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB101_6
# %bb.5:
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$10, (%eax)
.LBB101_6:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
.LBB101_7:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_12 Depth 2
	cmpl	$0, -40(%ebp)
	je	.LBB101_31
# %bb.8:                                #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB101_16
# %bb.9:                                #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB101_11
# %bb.10:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_11:                             #   in Loop: Header=BB101_7 Depth=1
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
.LBB101_12:                             #   Parent Loop BB101_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	20(%edx), %esi
	movl	24(%edx), %edx
	subl	%esi, %eax
	sbbl	%edx, %ecx
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%eax, -68(%ebp)         # 4-byte Spill
	jae	.LBB101_15
	jmp	.LBB101_13
.LBB101_13:                             #   in Loop: Header=BB101_12 Depth=2
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$9, (%eax)
# %bb.14:                               #   in Loop: Header=BB101_12 Depth=2
	movl	-44(%ebp), %eax
	addl	$1, -48(%ebp)
	adcl	$0, %eax
	movl	%eax, -44(%ebp)
	jmp	.LBB101_12
.LBB101_15:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	movl	24(%eax), %ecx
	movl	20(%eax), %edx
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	addl	%edx, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%eax)
	movl	%edi, 16(%eax)
.LBB101_16:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_string_ptr
	cmpl	$0, %eax
	jne	.LBB101_18
# %bb.17:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_18:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	update_offset
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	movl	$1, %eax
	sbbl	$-1, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB101_20
# %bb.19:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_20:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$58, (%eax)
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB101_22
# %bb.21:                               #   in Loop: Header=BB101_7 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$9, (%eax)
.LBB101_22:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
	movl	-40(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	print_value
	cmpl	$0, %eax
	jne	.LBB101_24
# %bb.23:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_24:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	update_offset
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	setne	%dl
	movzbl	%dl, %eax
	movl	-40(%ebp), %ecx
	movl	(%ecx), %ecx
	cmpl	$1, %ecx
	sbbl	$-1, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	addl	$1, %ecx
	adcl	$0, %esi
	movl	%esp, %edi
	movl	%esi, 8(%edi)
	movl	%ecx, 4(%edi)
	movl	%eax, (%edi)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB101_26
# %bb.25:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_26:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-40(%ebp), %eax
	cmpl	$0, (%eax)
	je	.LBB101_28
# %bb.27:                               #   in Loop: Header=BB101_7 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$44, (%eax)
.LBB101_28:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB101_30
# %bb.29:                               #   in Loop: Header=BB101_7 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$10, (%eax)
.LBB101_30:                             #   in Loop: Header=BB101_7 Depth=1
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	12(%edx), %esi
	movl	16(%edx), %edi
	addl	%eax, %esi
	adcl	%ecx, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 16(%edx)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB101_7
.LBB101_31:
	movl	-16(%ebp), %eax
	movl	-16(%ebp), %ecx
	cmpl	$0, 32(%ecx)
	movl	%eax, -72(%ebp)         # 4-byte Spill
	je	.LBB101_33
# %bb.32:
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %eax
	addl	$1, %ecx
	adcl	$0, %eax
	movl	%ecx, -76(%ebp)         # 4-byte Spill
	movl	%eax, -80(%ebp)         # 4-byte Spill
	jmp	.LBB101_34
.LBB101_33:
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	%ecx, -76(%ebp)         # 4-byte Spill
	movl	%eax, -80(%ebp)         # 4-byte Spill
	jmp	.LBB101_34
.LBB101_34:
	movl	-80(%ebp), %eax         # 4-byte Reload
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	%esp, %edx
	movl	%eax, 8(%edx)
	movl	%ecx, 4(%edx)
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	%eax, (%edx)
	calll	ensure
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.LBB101_36
# %bb.35:
	movl	$0, -12(%ebp)
	jmp	.LBB101_43
.LBB101_36:
	movl	-16(%ebp), %eax
	cmpl	$0, 32(%eax)
	je	.LBB101_42
# %bb.37:
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
.LBB101_38:                             # =>This Inner Loop Header: Depth=1
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	20(%edx), %esi
	movl	24(%edx), %edx
	addl	$-1, %esi
	adcl	$-1, %edx
	subl	%esi, %eax
	sbbl	%edx, %ecx
	movl	%ecx, -84(%ebp)         # 4-byte Spill
	movl	%eax, -88(%ebp)         # 4-byte Spill
	jae	.LBB101_41
	jmp	.LBB101_39
.LBB101_39:                             #   in Loop: Header=BB101_38 Depth=1
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$9, (%eax)
# %bb.40:                               #   in Loop: Header=BB101_38 Depth=1
	movl	-52(%ebp), %eax
	addl	$1, -56(%ebp)
	adcl	$0, %eax
	movl	%eax, -52(%ebp)
	jmp	.LBB101_38
.LBB101_41:
	jmp	.LBB101_42
.LBB101_42:
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)
	movb	$125, (%eax)
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	movl	24(%eax), %edx
	addl	$-1, %ecx
	adcl	$-1, %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 24(%eax)
	movl	$1, -12(%ebp)
.LBB101_43:
	movl	-12(%ebp), %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end101:
	.size	print_object, .Lfunc_end101-print_object
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_string_ptr
	.type	print_string_ptr,@function
print_string_ptr:                       # @print_string_ptr
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$148, %esp
	.cfi_offset %esi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	cmpl	$0, -16(%ebp)
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	jne	.LBB102_2
# %bb.1:
	movl	$0, -8(%ebp)
	jmp	.LBB102_38
.LBB102_2:
	cmpl	$0, 8(%ebp)
	jne	.LBB102_6
# %bb.3:
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$0, 8(%ecx)
	movl	$3, 4(%ecx)
	calll	ensure
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB102_5
# %bb.4:
	movl	$0, -8(%ebp)
	jmp	.LBB102_38
.LBB102_5:
	movl	-32(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	$.L.str.8, 4(%ecx)
	calll	strcpy
	movl	$1, -8(%ebp)
	movl	%eax, -64(%ebp)         # 4-byte Spill
	jmp	.LBB102_38
.LBB102_6:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.LBB102_7:                              # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	cmpb	$0, (%eax)
	je	.LBB102_15
# %bb.8:                                #   in Loop: Header=BB102_7 Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, %ecx
	addl	$-8, %ecx
	subl	$3, %ecx
	movl	%eax, -68(%ebp)         # 4-byte Spill
	movl	%ecx, -72(%ebp)         # 4-byte Spill
	jb	.LBB102_9
	jmp	.LBB102_45
.LBB102_45:                             #   in Loop: Header=BB102_7 Depth=1
	movl	-68(%ebp), %eax         # 4-byte Reload
	addl	$-12, %eax
	subl	$2, %eax
	movl	%eax, -76(%ebp)         # 4-byte Spill
	jb	.LBB102_9
	jmp	.LBB102_46
.LBB102_46:                             #   in Loop: Header=BB102_7 Depth=1
	movl	-68(%ebp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -80(%ebp)         # 4-byte Spill
	je	.LBB102_9
	jmp	.LBB102_47
.LBB102_47:                             #   in Loop: Header=BB102_7 Depth=1
	movl	-68(%ebp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -84(%ebp)         # 4-byte Spill
	jne	.LBB102_10
	jmp	.LBB102_9
.LBB102_9:                              #   in Loop: Header=BB102_7 Depth=1
	movl	-52(%ebp), %eax
	addl	$1, -56(%ebp)
	adcl	$0, %eax
	movl	%eax, -52(%ebp)
	jmp	.LBB102_13
.LBB102_10:                             #   in Loop: Header=BB102_7 Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$32, %eax
	jge	.LBB102_12
# %bb.11:                               #   in Loop: Header=BB102_7 Depth=1
	movl	-52(%ebp), %eax
	addl	$5, -56(%ebp)
	adcl	$0, %eax
	movl	%eax, -52(%ebp)
.LBB102_12:                             #   in Loop: Header=BB102_7 Depth=1
	jmp	.LBB102_13
.LBB102_13:                             #   in Loop: Header=BB102_7 Depth=1
	jmp	.LBB102_14
.LBB102_14:                             #   in Loop: Header=BB102_7 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.LBB102_7
.LBB102_15:
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ecx
	xorl	%edx, %edx
	subl	%ecx, %eax
	sbbl	$0, %edx
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %esi
	addl	%ecx, %eax
	adcl	%esi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-16(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %edx
	addl	$3, %ecx
	adcl	$0, %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	ensure
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.LBB102_17
# %bb.16:
	movl	$0, -8(%ebp)
	jmp	.LBB102_38
.LBB102_17:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %ecx
	orl	%ecx, %eax
	movl	%eax, -88(%ebp)         # 4-byte Spill
	jne	.LBB102_19
	jmp	.LBB102_18
.LBB102_18:
	movl	-32(%ebp), %eax
	movb	$34, (%eax)
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %edx
	movl	%esp, %esi
	movl	%edx, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	calll	memcpy
	movl	-32(%ebp), %ecx
	movl	-48(%ebp), %edx
	movb	$34, 1(%ecx,%edx)
	movl	-32(%ebp), %ecx
	movl	-48(%ebp), %edx
	movb	$0, 2(%ecx,%edx)
	movl	$1, -8(%ebp)
	movl	%eax, -92(%ebp)         # 4-byte Spill
	jmp	.LBB102_38
.LBB102_19:
	movl	-32(%ebp), %eax
	movb	$34, (%eax)
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.LBB102_20:                             # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$0, %eax
	je	.LBB102_37
# %bb.21:                               #   in Loop: Header=BB102_20 Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$31, %eax
	jle	.LBB102_25
# %bb.22:                               #   in Loop: Header=BB102_20 Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$34, %eax
	je	.LBB102_25
# %bb.23:                               #   in Loop: Header=BB102_20 Depth=1
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$92, %eax
	je	.LBB102_25
# %bb.24:                               #   in Loop: Header=BB102_20 Depth=1
	movl	-24(%ebp), %eax
	movb	(%eax), %cl
	movl	-40(%ebp), %eax
	movb	%cl, (%eax)
	jmp	.LBB102_35
.LBB102_25:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%ebp)
	movb	$92, (%eax)
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, %ecx
	subl	$8, %ecx
	movl	%eax, -96(%ebp)         # 4-byte Spill
	movl	%ecx, -100(%ebp)        # 4-byte Spill
	je	.LBB102_28
	jmp	.LBB102_39
.LBB102_39:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -104(%ebp)        # 4-byte Spill
	je	.LBB102_32
	jmp	.LBB102_40
.LBB102_40:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -108(%ebp)        # 4-byte Spill
	je	.LBB102_30
	jmp	.LBB102_41
.LBB102_41:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -112(%ebp)        # 4-byte Spill
	je	.LBB102_29
	jmp	.LBB102_42
.LBB102_42:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -116(%ebp)        # 4-byte Spill
	je	.LBB102_31
	jmp	.LBB102_43
.LBB102_43:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -120(%ebp)        # 4-byte Spill
	je	.LBB102_27
	jmp	.LBB102_44
.LBB102_44:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-96(%ebp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -124(%ebp)        # 4-byte Spill
	jne	.LBB102_33
	jmp	.LBB102_26
.LBB102_26:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$92, (%eax)
	jmp	.LBB102_34
.LBB102_27:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$34, (%eax)
	jmp	.LBB102_34
.LBB102_28:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$98, (%eax)
	jmp	.LBB102_34
.LBB102_29:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$102, (%eax)
	jmp	.LBB102_34
.LBB102_30:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$110, (%eax)
	jmp	.LBB102_34
.LBB102_31:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$114, (%eax)
	jmp	.LBB102_34
.LBB102_32:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movb	$116, (%eax)
	jmp	.LBB102_34
.LBB102_33:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movzbl	(%ecx), %ecx
	movl	%eax, (%esp)
	leal	.L.str.9, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	sprintf
	movl	-40(%ebp), %ecx
	addl	$4, %ecx
	movl	%ecx, -40(%ebp)
	movl	%eax, -128(%ebp)        # 4-byte Spill
.LBB102_34:                             #   in Loop: Header=BB102_20 Depth=1
	jmp	.LBB102_35
.LBB102_35:                             #   in Loop: Header=BB102_20 Depth=1
	jmp	.LBB102_36
.LBB102_36:                             #   in Loop: Header=BB102_20 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB102_20
.LBB102_37:
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movb	$34, 1(%eax,%ecx)
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %ecx
	movb	$0, 2(%eax,%ecx)
	movl	$1, -8(%ebp)
.LBB102_38:
	movl	-8(%ebp), %eax
	addl	$148, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end102:
	.size	print_string_ptr, .Lfunc_end102-print_string_ptr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function case_insensitive_strcmp
	.type	case_insensitive_strcmp,@function
case_insensitive_strcmp:                # @case_insensitive_strcmp
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
	cmpl	$0, 8(%ebp)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
	je	.LBB103_2
# %bb.1:
	cmpl	$0, -8(%ebp)
	jne	.LBB103_3
.LBB103_2:
	movl	$1, -4(%ebp)
	jmp	.LBB103_12
.LBB103_3:
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.LBB103_5
# %bb.4:
	movl	$0, -4(%ebp)
	jmp	.LBB103_12
.LBB103_5:
	jmp	.LBB103_6
.LBB103_6:                              # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, (%esp)
	calll	tolower
	movl	-8(%ebp), %ecx
	movzbl	(%ecx), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -16(%ebp)         # 4-byte Spill
	calll	tolower
	movl	-16(%ebp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB103_11
# %bb.7:                                #   in Loop: Header=BB103_6 Depth=1
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	$0, %eax
	jne	.LBB103_9
# %bb.8:
	movl	$0, -4(%ebp)
	jmp	.LBB103_12
.LBB103_9:                              #   in Loop: Header=BB103_6 Depth=1
	jmp	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_6 Depth=1
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%ebp)
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB103_6
.LBB103_11:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, (%esp)
	calll	tolower
	movl	-8(%ebp), %ecx
	movzbl	(%ecx), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	calll	tolower
	movl	-20(%ebp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -4(%ebp)
.LBB103_12:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end103:
	.size	case_insensitive_strcmp, .Lfunc_end103-case_insensitive_strcmp
	.cfi_endproc
                                        # -- End function
	.type	global_error,@object    # @global_error
	.local	global_error
	.comm	global_error,12,8
	.type	cJSON_Version.version,@object # @cJSON_Version.version
	.local	cJSON_Version.version
	.comm	cJSON_Version.version,15,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%i.%i.%i"
	.size	.L.str, 9

	.type	global_hooks,@object    # @global_hooks
	.data
	.p2align	3
global_hooks:
	.long	malloc
	.long	free
	.long	realloc
	.size	global_hooks, 12

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\357\273\277"
	.size	.L.str.1, 4

	.type	print.default_buffer_size,@object # @print.default_buffer_size
	.section	.rodata,"a",@progbits
	.p2align	3
print.default_buffer_size:
	.quad	256                     # 0x100
	.size	print.default_buffer_size, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"null"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"false"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"true"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%1.15g"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%lg"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%1.17g"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\"\""
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"u%04x"
	.size	.L.str.9, 6


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",@progbits
