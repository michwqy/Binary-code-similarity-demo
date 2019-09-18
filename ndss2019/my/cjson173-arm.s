	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"cJSON.c"
	.globl	cJSON_GetErrorPtr       @ -- Begin function cJSON_GetErrorPtr
	.p2align	2
	.type	cJSON_GetErrorPtr,%function
	.code	32                      @ @cJSON_GetErrorPtr
cJSON_GetErrorPtr:
	.fnstart
@ %bb.0:
	ldr	r0, .LCPI0_0
	ldr	r1, [r0]
	ldr	r0, [r0, #8]
	add	r0, r1, r0
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	global_error
.Lfunc_end0:
	.size	cJSON_GetErrorPtr, .Lfunc_end0-cJSON_GetErrorPtr
	.fnend
                                        @ -- End function
	.globl	cJSON_GetStringValue    @ -- Begin function cJSON_GetStringValue
	.p2align	2
	.type	cJSON_GetStringValue,%function
	.code	32                      @ @cJSON_GetStringValue
cJSON_GetStringValue:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_IsString
	cmp	r0, #0
	bne	.LBB1_2
	b	.LBB1_1
.LBB1_1:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB1_3
.LBB1_2:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #16]
	str	r0, [r11, #-8]
	b	.LBB1_3
.LBB1_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end1:
	.size	cJSON_GetStringValue, .Lfunc_end1-cJSON_GetStringValue
	.fnend
                                        @ -- End function
	.globl	cJSON_IsString          @ -- Begin function cJSON_IsString
	.p2align	2
	.type	cJSON_IsString,%function
	.code	32                      @ @cJSON_IsString
cJSON_IsString:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB2_2
	b	.LBB2_1
.LBB2_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB2_3
.LBB2_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #16
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB2_3
.LBB2_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end2:
	.size	cJSON_IsString, .Lfunc_end2-cJSON_IsString
	.fnend
                                        @ -- End function
	.globl	cJSON_Version           @ -- Begin function cJSON_Version
	.p2align	2
	.type	cJSON_Version,%function
	.code	32                      @ @cJSON_Version
cJSON_Version:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r0, sp
	mov	r1, #3
	str	r1, [r0]
	ldr	r0, .LCPI3_0
	ldr	r1, .LCPI3_1
	mov	r2, #1
	mov	r3, #7
	str	r0, [r11, #-4]          @ 4-byte Spill
	bl	sprintf
	ldr	r1, [r11, #-4]          @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI3_0:
	.long	cJSON_Version.version
.LCPI3_1:
	.long	.L.str
.Lfunc_end3:
	.size	cJSON_Version, .Lfunc_end3-cJSON_Version
	.fnend
                                        @ -- End function
	.globl	cJSON_InitHooks         @ -- Begin function cJSON_InitHooks
	.p2align	2
	.type	cJSON_InitHooks,%function
	.code	32                      @ @cJSON_InitHooks
cJSON_InitHooks:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB4_2
	b	.LBB4_1
.LBB4_1:
	ldr	r0, .LCPI4_0
	ldr	r1, .LCPI4_1
	str	r1, [r0]
	ldr	r1, .LCPI4_2
	str	r1, [r0, #4]
	ldr	r1, .LCPI4_3
	str	r1, [r0, #8]
	b	.LBB4_9
.LBB4_2:
	ldr	r0, .LCPI4_0
	ldr	r1, .LCPI4_1
	str	r1, [r0]
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB4_4
	b	.LBB4_3
.LBB4_3:
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	ldr	r1, .LCPI4_0
	str	r0, [r1]
	b	.LBB4_4
.LBB4_4:
	ldr	r0, .LCPI4_0
	ldr	r1, .LCPI4_2
	str	r1, [r0, #4]
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB4_6
	b	.LBB4_5
.LBB4_5:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #4]
	ldr	r1, .LCPI4_0
	str	r0, [r1, #4]
	b	.LBB4_6
.LBB4_6:
	ldr	r0, .LCPI4_0
	mov	r1, #0
	str	r1, [r0, #8]
	ldr	r0, [r0]
	ldr	r1, .LCPI4_1
	cmp	r0, r1
	bne	.LBB4_9
	b	.LBB4_7
.LBB4_7:
	ldr	r0, .LCPI4_0
	ldr	r0, [r0, #4]
	ldr	r1, .LCPI4_2
	cmp	r0, r1
	bne	.LBB4_9
	b	.LBB4_8
.LBB4_8:
	ldr	r0, .LCPI4_0
	ldr	r1, .LCPI4_3
	str	r1, [r0, #8]
	b	.LBB4_9
.LBB4_9:
	add	sp, sp, #16
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI4_0:
	.long	global_hooks
.LCPI4_1:
	.long	malloc
.LCPI4_2:
	.long	free
.LCPI4_3:
	.long	realloc
.Lfunc_end4:
	.size	cJSON_InitHooks, .Lfunc_end4-cJSON_InitHooks
	.fnend
                                        @ -- End function
	.globl	cJSON_Delete            @ -- Begin function cJSON_Delete
	.p2align	2
	.type	cJSON_Delete,%function
	.code	32                      @ @cJSON_Delete
cJSON_Delete:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [r11, #-8]
	mov	r0, #0
	str	r0, [sp, #16]
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB5_1
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB5_12
	b	.LBB5_2
.LBB5_2:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #13]
	tst	r0, #1
	bne	.LBB5_5
	b	.LBB5_3
.LBB5_3:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	cmp	r0, #0
	beq	.LBB5_5
	b	.LBB5_4
.LBB5_4:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	bl	cJSON_Delete
	b	.LBB5_5
.LBB5_5:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #13]
	tst	r0, #1
	bne	.LBB5_8
	b	.LBB5_6
.LBB5_6:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.LBB5_8
	b	.LBB5_7
.LBB5_7:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, .LCPI5_0
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #16]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB5_8
.LBB5_8:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #13]
	tst	r0, #2
	bne	.LBB5_11
	b	.LBB5_9
.LBB5_9:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	beq	.LBB5_11
	b	.LBB5_10
.LBB5_10:                               @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, .LCPI5_0
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #32]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB5_11
.LBB5_11:                               @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, .LCPI5_0
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-8]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp]                @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB5_1
.LBB5_12:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.13:
.LCPI5_0:
	.long	global_hooks
.Lfunc_end5:
	.size	cJSON_Delete, .Lfunc_end5-cJSON_Delete
	.fnend
                                        @ -- End function
	.globl	cJSON_SetNumberHelper   @ -- Begin function cJSON_SetNumberHelper
	.p2align	2
	.type	cJSON_SetNumberHelper,%function
	.code	32                      @ @cJSON_SetNumberHelper
cJSON_SetNumberHelper:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	mov	r1, r3
	mov	r12, r2
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	mov	r3, #1069547520
	orr	r3, r3, #-1073741824
	ldr	r4, .LCPI6_0
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r2
	mov	r2, r3
	mov	r3, r4
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	__gedf2
	cmp	r0, #0
	blt	.LBB6_2
	b	.LBB6_1
.LBB6_1:
	ldr	r0, [r11, #-16]
	mvn	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB6_6
.LBB6_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mov	r2, #0
	mov	r3, #31457280
	orr	r3, r3, #-1073741824
	bl	__ledf2
	cmp	r0, #0
	bgt	.LBB6_4
	b	.LBB6_3
.LBB6_3:
	ldr	r0, [r11, #-16]
	mov	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB6_5
.LBB6_4:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	bl	__fixdfsi
	ldr	r1, [r11, #-16]
	str	r0, [r1, #20]
	b	.LBB6_5
.LBB6_5:
	b	.LBB6_6
.LBB6_6:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [r11, #-16]
	str	r1, [r2, #28]
	str	r0, [r2, #24]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.7:
.LCPI6_0:
	.long	1105199103              @ 0x41dfffff
.Lfunc_end6:
	.size	cJSON_SetNumberHelper, .Lfunc_end6-cJSON_SetNumberHelper
	.fnend
                                        @ -- End function
	.globl	cJSON_ParseWithOpts     @ -- Begin function cJSON_ParseWithOpts
	.p2align	2
	.type	cJSON_ParseWithOpts,%function
	.code	32                      @ @cJSON_ParseWithOpts
cJSON_ParseWithOpts:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #152
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-32]
	str	r1, [r11, #-40]
	str	r2, [r11, #-44]
	add	r0, sp, #72
	mov	r1, #0
	mov	r2, #56
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r12, [sp, #36]          @ 4-byte Spill
	str	lr, [sp, #32]           @ 4-byte Spill
	bl	memset
	ldr	r1, [sp, #44]           @ 4-byte Reload
	str	r1, [sp, #64]
	ldr	r2, .LCPI7_0
	str	r1, [r2]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	ldr	r2, [r11, #-32]
	cmp	r2, #0
	str	r0, [sp, #28]           @ 4-byte Spill
	bne	.LBB7_2
	b	.LBB7_1
.LBB7_1:
	b	.LBB7_14
.LBB7_2:
	ldr	r0, [r11, #-32]
	str	r0, [sp, #72]
	ldr	r0, [r11, #-32]
	bl	strlen
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #80]
	str	r1, [sp, #84]
	mov	r0, #0
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	add	r0, sp, #72
	add	r0, r0, #32
	ldr	r1, .LCPI7_1
	mov	lr, r1
	ldm	lr, {r2, r3, r4, r5, r6, r12}
	stm	r0, {r2, r3, r4, r5, r6, r12}
	mov	r0, r1
	bl	cJSON_New_Item
	str	r0, [sp, #64]
	ldr	r0, [sp, #64]
	cmp	r0, #0
	bne	.LBB7_4
	b	.LBB7_3
.LBB7_3:
	b	.LBB7_14
.LBB7_4:
	ldr	r0, [sp, #64]
	add	r1, sp, #72
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	bl	skip_utf8_bom
	bl	buffer_skip_whitespace
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	parse_value
	cmp	r0, #0
	bne	.LBB7_6
	b	.LBB7_5
.LBB7_5:
	b	.LBB7_14
.LBB7_6:
	ldr	r0, [r11, #-44]
	cmp	r0, #0
	beq	.LBB7_11
	b	.LBB7_7
.LBB7_7:
	add	r0, sp, #72
	bl	buffer_skip_whitespace
	ldr	lr, [sp, #80]
	ldr	r1, [sp, #84]
	ldr	r2, [sp, #88]
	ldr	r3, [sp, #92]
	subs	r2, r2, lr
	sbcs	r1, r3, r1
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	bhs	.LBB7_9
	b	.LBB7_8
.LBB7_8:
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #88]
	ldrb	r0, [r0, r1]
	cmp	r0, #0
	beq	.LBB7_10
	b	.LBB7_9
.LBB7_9:
	b	.LBB7_14
.LBB7_10:
	b	.LBB7_11
.LBB7_11:
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB7_13
	b	.LBB7_12
.LBB7_12:
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #88]
	add	r0, r0, r1
	ldr	r1, [r11, #-40]
	str	r0, [r1]
	b	.LBB7_13
.LBB7_13:
	ldr	r0, [sp, #64]
	str	r0, [r11, #-24]
	b	.LBB7_26
.LBB7_14:
	ldr	r0, [sp, #64]
	cmp	r0, #0
	beq	.LBB7_16
	b	.LBB7_15
.LBB7_15:
	ldr	r0, [sp, #64]
	bl	cJSON_Delete
	b	.LBB7_16
.LBB7_16:
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	beq	.LBB7_25
	b	.LBB7_17
.LBB7_17:
	ldr	r0, [r11, #-32]
	str	r0, [sp, #48]
	mov	r0, #0
	str	r0, [sp, #60]
	str	r0, [sp, #56]
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #84]
	ldr	r2, [sp, #88]
	ldr	r3, [sp, #92]
	subs	r0, r2, r0
	sbcs	r1, r3, r1
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	bhs	.LBB7_19
	b	.LBB7_18
.LBB7_18:
	ldr	r0, [sp, #88]
	ldr	r1, [sp, #92]
	str	r1, [sp, #60]
	str	r0, [sp, #56]
	b	.LBB7_22
.LBB7_19:
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #84]
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB7_21
	b	.LBB7_20
.LBB7_20:
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #84]
	subs	r0, r0, #1
	sbc	r1, r1, #0
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	b	.LBB7_21
.LBB7_21:
	b	.LBB7_22
.LBB7_22:
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB7_24
	b	.LBB7_23
.LBB7_23:
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #56]
	add	r0, r0, r1
	ldr	r1, [r11, #-40]
	str	r0, [r1]
	b	.LBB7_24
.LBB7_24:
	ldr	r0, .LCPI7_0
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #56]
	ldr	r12, [sp, #60]
	str	r12, [r0, #12]
	str	r3, [r0, #8]
	str	r2, [r0, #4]
	str	r1, [r0]
	b	.LBB7_25
.LBB7_25:
	mov	r0, #0
	str	r0, [r11, #-24]
	b	.LBB7_26
.LBB7_26:
	ldr	r0, [r11, #-24]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.27:
.LCPI7_0:
	.long	global_error
.LCPI7_1:
	.long	global_hooks
.Lfunc_end7:
	.size	cJSON_ParseWithOpts, .Lfunc_end7-cJSON_ParseWithOpts
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function cJSON_New_Item
	.type	cJSON_New_Item,%function
	.code	32                      @ @cJSON_New_Item
cJSON_New_Item:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	mov	r2, #64
	mov	r3, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB8_2
	b	.LBB8_1
.LBB8_1:
	ldr	r0, [sp, #16]
	mov	r1, #0
	mov	r2, #64
	bl	memset
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB8_2
.LBB8_2:
	ldr	r0, [sp, #16]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end8:
	.size	cJSON_New_Item, .Lfunc_end8-cJSON_New_Item
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_value
	.type	parse_value,%function
	.code	32                      @ @parse_value
parse_value:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [r11, #-20]         @ 4-byte Spill
	str	r3, [r11, #-24]         @ 4-byte Spill
	beq	.LBB9_2
	b	.LBB9_1
.LBB9_1:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB9_3
	b	.LBB9_2
.LBB9_2:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_3:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_7
	b	.LBB9_4
.LBB9_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	adds	r3, r3, #4
	adc	r0, r0, #0
	subs	r1, r1, r3
	sbcs	r0, r2, r0
	str	r1, [r11, #-28]         @ 4-byte Spill
	str	r0, [r11, #-32]         @ 4-byte Spill
	blo	.LBB9_7
	b	.LBB9_5
.LBB9_5:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, .LCPI9_0
	mov	r2, #4
	mov	r3, #0
	bl	strncmp
	cmp	r0, #0
	bne	.LBB9_7
	b	.LBB9_6
.LBB9_6:
	ldr	r0, [r11, #-8]
	mov	r1, #4
	str	r1, [r0, #12]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #4
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_7:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_11
	b	.LBB9_8
.LBB9_8:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	adds	r3, r3, #5
	adc	r0, r0, #0
	subs	r1, r1, r3
	sbcs	r0, r2, r0
	str	r1, [r11, #-36]         @ 4-byte Spill
	str	r0, [sp, #40]           @ 4-byte Spill
	blo	.LBB9_11
	b	.LBB9_9
.LBB9_9:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, .LCPI9_1
	mov	r2, #5
	mov	r3, #0
	bl	strncmp
	cmp	r0, #0
	bne	.LBB9_11
	b	.LBB9_10
.LBB9_10:
	ldr	r0, [r11, #-8]
	mov	r1, #1
	str	r1, [r0, #12]
	ldr	r0, [r11, #-16]
	ldr	r2, [r0, #16]
	ldr	r3, [r0, #20]
	adds	r2, r2, #5
	adc	r3, r3, #0
	str	r2, [r0, #16]
	str	r3, [r0, #20]
	str	r1, [r11, #-4]
	b	.LBB9_34
.LBB9_11:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_15
	b	.LBB9_12
.LBB9_12:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	adds	r3, r3, #4
	adc	r0, r0, #0
	subs	r1, r1, r3
	sbcs	r0, r2, r0
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r0, [sp, #32]           @ 4-byte Spill
	blo	.LBB9_15
	b	.LBB9_13
.LBB9_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, .LCPI9_2
	mov	r2, #4
	mov	r3, #0
	bl	strncmp
	cmp	r0, #0
	bne	.LBB9_15
	b	.LBB9_14
.LBB9_14:
	ldr	r0, [r11, #-8]
	mov	r1, #2
	str	r1, [r0, #12]
	ldr	r0, [r11, #-8]
	mov	r1, #1
	str	r1, [r0, #20]
	ldr	r0, [r11, #-16]
	ldr	r2, [r0, #16]
	ldr	r3, [r0, #20]
	adds	r2, r2, #4
	adc	r3, r3, #0
	str	r2, [r0, #16]
	str	r3, [r0, #20]
	str	r1, [r11, #-4]
	b	.LBB9_34
.LBB9_15:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_19
	b	.LBB9_16
.LBB9_16:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #24]           @ 4-byte Spill
	bhs	.LBB9_19
	b	.LBB9_17
.LBB9_17:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #34
	bne	.LBB9_19
	b	.LBB9_18
.LBB9_18:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	parse_string
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_19:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_25
	b	.LBB9_20
.LBB9_20:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	bhs	.LBB9_25
	b	.LBB9_21
.LBB9_21:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #45
	beq	.LBB9_24
	b	.LBB9_22
.LBB9_22:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #48
	blt	.LBB9_25
	b	.LBB9_23
.LBB9_23:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #57
	bgt	.LBB9_25
	b	.LBB9_24
.LBB9_24:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	parse_number
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_25:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_29
	b	.LBB9_26
.LBB9_26:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #8]            @ 4-byte Spill
	bhs	.LBB9_29
	b	.LBB9_27
.LBB9_27:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #91
	bne	.LBB9_29
	b	.LBB9_28
.LBB9_28:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	parse_array
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_29:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB9_33
	b	.LBB9_30
.LBB9_30:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	bhs	.LBB9_33
	b	.LBB9_31
.LBB9_31:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #123
	bne	.LBB9_33
	b	.LBB9_32
.LBB9_32:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	parse_object
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_33:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_34
.LBB9_34:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.35:
.LCPI9_0:
	.long	.L.str.2
.LCPI9_1:
	.long	.L.str.3
.LCPI9_2:
	.long	.L.str.4
.Lfunc_end9:
	.size	parse_value, .Lfunc_end9-parse_value
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function buffer_skip_whitespace
	.type	buffer_skip_whitespace,%function
	.code	32                      @ @buffer_skip_whitespace
buffer_skip_whitespace:
	.fnstart
@ %bb.0:
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB10_2
	b	.LBB10_1
.LBB10_1:
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB10_3
	b	.LBB10_2
.LBB10_2:
	mov	r0, #0
	str	r0, [sp, #24]
	b	.LBB10_12
.LBB10_3:
	b	.LBB10_4
.LBB10_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	beq	.LBB10_7
	b	.LBB10_5
.LBB10_5:                               @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	mov	r12, #0
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	bhs	.LBB10_7
	b	.LBB10_6
.LBB10_6:                               @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	mov	r1, #0
	cmp	r0, #33
	movlt	r1, #1
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB10_7
.LBB10_7:                               @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB10_9
	b	.LBB10_8
.LBB10_8:                               @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB10_4
.LBB10_9:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	eor	r0, r0, r2
	eor	r1, r3, r1
	orr	r0, r1, r0
	cmp	r0, #0
	bne	.LBB10_11
	b	.LBB10_10
.LBB10_10:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB10_11
.LBB10_11:
	ldr	r0, [sp, #16]
	str	r0, [sp, #24]
	b	.LBB10_12
.LBB10_12:
	ldr	r0, [sp, #24]
	add	sp, sp, #32
	mov	pc, lr
.Lfunc_end10:
	.size	buffer_skip_whitespace, .Lfunc_end10-buffer_skip_whitespace
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function skip_utf8_bom
	.type	skip_utf8_bom,%function
	.code	32                      @ @skip_utf8_bom
skip_utf8_bom:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB11_3
	b	.LBB11_1
.LBB11_1:
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB11_3
	b	.LBB11_2
.LBB11_2:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #16]
	ldr	r0, [r0, #20]
	orr	r0, r1, r0
	cmp	r0, #0
	beq	.LBB11_4
	b	.LBB11_3
.LBB11_3:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB11_9
.LBB11_4:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB11_8
	b	.LBB11_5
.LBB11_5:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	adds	r3, r3, #4
	adc	r0, r0, #0
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #4]            @ 4-byte Spill
	bhs	.LBB11_8
	b	.LBB11_6
.LBB11_6:
	ldr	r0, [sp, #16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, .LCPI11_0
	mov	r2, #3
	mov	r3, #0
	bl	strncmp
	cmp	r0, #0
	bne	.LBB11_8
	b	.LBB11_7
.LBB11_7:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #3
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB11_8
.LBB11_8:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB11_9
.LBB11_9:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI11_0:
	.long	.L.str.1
.Lfunc_end11:
	.size	skip_utf8_bom, .Lfunc_end11-skip_utf8_bom
	.fnend
                                        @ -- End function
	.globl	cJSON_Parse             @ -- Begin function cJSON_Parse
	.p2align	2
	.type	cJSON_Parse,%function
	.code	32                      @ @cJSON_Parse
cJSON_Parse:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	mov	r2, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r2
	bl	cJSON_ParseWithOpts
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end12:
	.size	cJSON_Parse, .Lfunc_end12-cJSON_Parse
	.fnend
                                        @ -- End function
	.globl	cJSON_Print             @ -- Begin function cJSON_Print
	.p2align	2
	.type	cJSON_Print,%function
	.code	32                      @ @cJSON_Print
cJSON_Print:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r2, .LCPI13_0
	mov	r3, #1
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r3
	bl	print
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI13_0:
	.long	global_hooks
.Lfunc_end13:
	.size	cJSON_Print, .Lfunc_end13-cJSON_Print
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print
	.type	print,%function
	.code	32                      @ @print
print:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #176
	bic	sp, sp, #15
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [sp, #160]
	str	r1, [sp, #156]
	str	r2, [sp, #152]
	mov	r0, #0
	str	r0, [sp, #88]
	add	r1, sp, #96
	mov	r2, #64
	str	r0, [sp, #84]           @ 4-byte Spill
	mov	r0, r1
	ldr	r4, [sp, #84]           @ 4-byte Reload
	str	r1, [sp, #80]           @ 4-byte Spill
	mov	r1, r4
	str	r3, [sp, #76]           @ 4-byte Spill
	str	r12, [sp, #72]          @ 4-byte Spill
	str	lr, [sp, #68]           @ 4-byte Spill
	bl	memset
	ldr	r1, [sp, #152]
	ldr	r1, [r1]
	mov	r2, #256
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r2
	ldr	r3, [sp, #84]           @ 4-byte Reload
	str	r1, [sp, #60]           @ 4-byte Spill
	mov	r1, r3
	ldr	r4, [sp, #60]           @ 4-byte Reload
	str	r2, [sp, #56]           @ 4-byte Spill
	mov	lr, pc
	mov	pc, r4
	str	r0, [sp, #96]
	ldr	r0, [sp, #84]           @ 4-byte Reload
	str	r0, [sp, #108]
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r1, [sp, #104]
	ldr	r2, [sp, #156]
	str	r2, [sp, #132]
	ldr	r2, [sp, #80]           @ 4-byte Reload
	add	r3, r2, #40
	ldr	r12, [sp, #152]
	ldm	r12, {r4, r5, r6, r7, r8, lr}
	stm	r3, {r4, r5, r6, r7, r8, lr}
	ldr	r3, [sp, #96]
	cmp	r3, #0
	bne	.LBB14_2
	b	.LBB14_1
.LBB14_1:
	b	.LBB14_15
.LBB14_2:
	ldr	r0, [sp, #160]
	add	r1, sp, #96
	bl	print_value
	cmp	r0, #0
	bne	.LBB14_4
	b	.LBB14_3
.LBB14_3:
	b	.LBB14_15
.LBB14_4:
	add	r0, sp, #96
	bl	update_offset
	ldr	r0, [sp, #152]
	ldr	r0, [r0, #8]
	cmp	r0, #0
	beq	.LBB14_8
	b	.LBB14_5
.LBB14_5:
	ldr	r0, [sp, #152]
	ldr	r0, [r0, #8]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #112]
	ldr	r3, [sp, #116]
	adds	r2, r2, #1
	adc	r3, r3, #0
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	str	r0, [sp, #88]
	mov	r0, #0
	str	r0, [sp, #96]
	ldr	r0, [sp, #88]
	cmp	r0, #0
	bne	.LBB14_7
	b	.LBB14_6
.LBB14_6:
	b	.LBB14_15
.LBB14_7:
	b	.LBB14_14
.LBB14_8:
	ldr	r0, [sp, #152]
	ldr	r0, [r0]
	ldr	r1, [sp, #112]
	ldr	r2, [sp, #116]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #48]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #88]
	ldr	r0, [sp, #88]
	cmp	r0, #0
	bne	.LBB14_10
	b	.LBB14_9
.LBB14_9:
	b	.LBB14_15
.LBB14_10:
	ldr	r0, [sp, #88]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #108]
	ldr	r12, [sp, #112]
	ldr	lr, [sp, #116]
	adds	r12, r12, #1
	adc	lr, lr, #0
	subs	r2, r2, r12
	sbcs	r3, r3, lr
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	bhs	.LBB14_12
	b	.LBB14_11
.LBB14_11:
	ldr	r0, [sp, #104]
	ldr	r1, [sp, #108]
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB14_13
.LBB14_12:
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #116]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB14_13
.LBB14_13:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r2, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r2
	ldr	r3, [sp, #40]           @ 4-byte Reload
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp, #16]           @ 4-byte Reload
	bl	memcpy
	ldr	r1, [sp, #88]
	ldr	r2, [sp, #112]
	mov	r3, #0
	strb	r3, [r1, r2]
	ldr	r1, [sp, #152]
	ldr	r1, [r1, #4]
	ldr	r2, [sp, #96]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r2
	mov	lr, pc
	mov	pc, r1
	b	.LBB14_14
.LBB14_14:
	ldr	r0, [sp, #88]
	str	r0, [sp, #168]
	b	.LBB14_20
.LBB14_15:
	ldr	r0, [sp, #96]
	cmp	r0, #0
	beq	.LBB14_17
	b	.LBB14_16
.LBB14_16:
	ldr	r0, [sp, #152]
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #96]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB14_17
.LBB14_17:
	ldr	r0, [sp, #88]
	cmp	r0, #0
	beq	.LBB14_19
	b	.LBB14_18
.LBB14_18:
	ldr	r0, [sp, #152]
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #88]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB14_19
.LBB14_19:
	mov	r0, #0
	str	r0, [sp, #168]
	b	.LBB14_20
.LBB14_20:
	ldr	r0, [sp, #168]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	mov	pc, lr
.Lfunc_end14:
	.size	print, .Lfunc_end14-print
	.fnend
                                        @ -- End function
	.globl	cJSON_PrintUnformatted  @ -- Begin function cJSON_PrintUnformatted
	.p2align	2
	.type	cJSON_PrintUnformatted,%function
	.code	32                      @ @cJSON_PrintUnformatted
cJSON_PrintUnformatted:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r2, .LCPI15_0
	mov	r3, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r3
	bl	print
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI15_0:
	.long	global_hooks
.Lfunc_end15:
	.size	cJSON_PrintUnformatted, .Lfunc_end15-cJSON_PrintUnformatted
	.fnend
                                        @ -- End function
	.globl	cJSON_PrintBuffered     @ -- Begin function cJSON_PrintBuffered
	.p2align	2
	.type	cJSON_PrintBuffered,%function
	.code	32                      @ @cJSON_PrintBuffered
cJSON_PrintBuffered:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #112
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-32]
	str	r1, [r11, #-36]
	str	r2, [r11, #-40]
	add	r0, sp, #32
	mov	r1, #0
	mov	r2, #64
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
	str	lr, [sp, #20]           @ 4-byte Spill
	bl	memset
	ldr	r1, [r11, #-36]
	cmn	r1, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	bgt	.LBB16_2
	b	.LBB16_1
.LBB16_1:
	mov	r0, #0
	str	r0, [r11, #-24]
	b	.LBB16_7
.LBB16_2:
	ldr	r0, .LCPI16_0
	ldr	r0, [r0]
	ldr	r1, [r11, #-36]
	asr	r2, r1, #31
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #32]
	ldr	r0, [sp, #32]
	cmp	r0, #0
	bne	.LBB16_4
	b	.LBB16_3
.LBB16_3:
	mov	r0, #0
	str	r0, [r11, #-24]
	b	.LBB16_7
.LBB16_4:
	ldr	r0, [r11, #-36]
	asr	r1, r0, #31
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	mov	r0, #0
	str	r0, [sp, #52]
	str	r0, [sp, #48]
	str	r0, [sp, #64]
	ldr	r0, [r11, #-40]
	str	r0, [sp, #68]
	add	r0, sp, #32
	add	r1, r0, #40
	ldr	r2, .LCPI16_0
	ldm	r2, {r3, r4, r5, r6, r12, lr}
	stm	r1, {r3, r4, r5, r6, r12, lr}
	ldr	r1, [r11, #-32]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	print_value
	cmp	r0, #0
	bne	.LBB16_6
	b	.LBB16_5
.LBB16_5:
	ldr	r0, .LCPI16_0
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #32]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	mov	r0, #0
	str	r0, [r11, #-24]
	b	.LBB16_7
.LBB16_6:
	ldr	r0, [sp, #32]
	str	r0, [r11, #-24]
	b	.LBB16_7
.LBB16_7:
	ldr	r0, [r11, #-24]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI16_0:
	.long	global_hooks
.Lfunc_end16:
	.size	cJSON_PrintBuffered, .Lfunc_end16-cJSON_PrintBuffered
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_value
	.type	print_value,%function
	.code	32                      @ @print_value
print_value:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #64
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	beq	.LBB17_2
	b	.LBB17_1
.LBB17_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB17_3
	b	.LBB17_2
.LBB17_2:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_3:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #12]
	mov	r1, r0
	cmp	r0, #1
	str	r1, [sp, #20]           @ 4-byte Spill
	beq	.LBB17_14
	b	.LBB17_4
.LBB17_4:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB17_17
	b	.LBB17_5
.LBB17_5:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #4
	beq	.LBB17_11
	b	.LBB17_6
.LBB17_6:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #8
	beq	.LBB17_20
	b	.LBB17_7
.LBB17_7:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #16
	beq	.LBB17_26
	b	.LBB17_8
.LBB17_8:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #32
	beq	.LBB17_27
	b	.LBB17_9
.LBB17_9:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #64
	beq	.LBB17_28
	b	.LBB17_10
.LBB17_10:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #128
	beq	.LBB17_21
	b	.LBB17_29
.LBB17_11:
	ldr	r0, [r11, #-16]
	mov	r2, #5
	mov	r3, #0
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB17_13
	b	.LBB17_12
.LBB17_12:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_13:
	ldr	r0, [r11, #-24]
	ldr	r1, .LCPI17_2
	bl	strcpy
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB17_30
.LBB17_14:
	ldr	r0, [r11, #-16]
	mov	r2, #6
	mov	r3, #0
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB17_16
	b	.LBB17_15
.LBB17_15:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_16:
	ldr	r0, [r11, #-24]
	ldr	r1, .LCPI17_1
	bl	strcpy
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB17_30
.LBB17_17:
	ldr	r0, [r11, #-16]
	mov	r2, #5
	mov	r3, #0
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB17_19
	b	.LBB17_18
.LBB17_18:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_19:
	ldr	r0, [r11, #-24]
	ldr	r1, .LCPI17_0
	bl	strcpy
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB17_30
.LBB17_20:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	print_number
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_21:
	mov	r0, #0
	str	r0, [sp, #36]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	bne	.LBB17_23
	b	.LBB17_22
.LBB17_22:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_23:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	bl	strlen
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	ldr	r0, [r11, #-16]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB17_25
	b	.LBB17_24
.LBB17_24:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_25:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #16]
	ldr	r2, [sp, #32]
	bl	memcpy
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB17_30
.LBB17_26:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	print_string
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_27:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	print_array
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_28:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	print_object
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_29:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_30
.LBB17_30:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.31:
.LCPI17_0:
	.long	.L.str.4
.LCPI17_1:
	.long	.L.str.3
.LCPI17_2:
	.long	.L.str.2
.Lfunc_end17:
	.size	print_value, .Lfunc_end17-print_value
	.fnend
                                        @ -- End function
	.globl	cJSON_PrintPreallocated @ -- Begin function cJSON_PrintPreallocated
	.p2align	2
	.type	cJSON_PrintPreallocated,%function
	.code	32                      @ @cJSON_PrintPreallocated
cJSON_PrintPreallocated:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #104
	mov	r12, r3
	mov	lr, r2
	mov	r4, r1
	mov	r5, r0
	str	r0, [r11, #-24]
	str	r1, [r11, #-32]
	str	r2, [r11, #-36]
	str	r3, [r11, #-40]
	add	r0, sp, #24
	mov	r1, #0
	mov	r2, #64
	str	r12, [sp, #20]          @ 4-byte Spill
	str	lr, [sp, #16]           @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	str	r5, [sp, #8]            @ 4-byte Spill
	bl	memset
	ldr	r1, [r11, #-36]
	cmp	r1, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	blt	.LBB18_2
	b	.LBB18_1
.LBB18_1:
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	bne	.LBB18_3
	b	.LBB18_2
.LBB18_2:
	mov	r0, #0
	str	r0, [r11, #-20]
	b	.LBB18_4
.LBB18_3:
	ldr	r0, [r11, #-32]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-36]
	asr	r1, r0, #31
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	mov	r0, #0
	str	r0, [sp, #44]
	str	r0, [sp, #40]
	mov	r0, #1
	str	r0, [sp, #56]
	ldr	r0, [r11, #-40]
	str	r0, [sp, #60]
	add	r0, sp, #24
	add	r1, r0, #40
	ldr	r2, .LCPI18_0
	ldm	r2, {r3, r4, r5, r6, r12, lr}
	stm	r1, {r3, r4, r5, r6, r12, lr}
	ldr	r1, [r11, #-24]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp]                @ 4-byte Reload
	bl	print_value
	str	r0, [r11, #-20]
	b	.LBB18_4
.LBB18_4:
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI18_0:
	.long	global_hooks
.Lfunc_end18:
	.size	cJSON_PrintPreallocated, .Lfunc_end18-cJSON_PrintPreallocated
	.fnend
                                        @ -- End function
	.globl	cJSON_GetArraySize      @ -- Begin function cJSON_GetArraySize
	.p2align	2
	.type	cJSON_GetArraySize,%function
	.code	32                      @ @cJSON_GetArraySize
cJSON_GetArraySize:
	.fnstart
@ %bb.0:
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [sp, #24]
	mov	r0, #0
	str	r0, [sp, #16]
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB19_2
	b	.LBB19_1
.LBB19_1:
	mov	r0, #0
	str	r0, [sp, #28]
	b	.LBB19_6
.LBB19_2:
	ldr	r0, [sp, #24]
	ldr	r0, [r0, #8]
	str	r0, [sp, #16]
	b	.LBB19_3
.LBB19_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB19_5
	b	.LBB19_4
.LBB19_4:                               @   in Loop: Header=BB19_3 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	str	r0, [sp, #16]
	b	.LBB19_3
.LBB19_5:
	ldr	r0, [sp, #8]
	str	r0, [sp, #28]
	b	.LBB19_6
.LBB19_6:
	ldr	r0, [sp, #28]
	add	sp, sp, #32
	mov	pc, lr
.Lfunc_end19:
	.size	cJSON_GetArraySize, .Lfunc_end19-cJSON_GetArraySize
	.fnend
                                        @ -- End function
	.globl	cJSON_GetArrayItem      @ -- Begin function cJSON_GetArrayItem
	.p2align	2
	.type	cJSON_GetArrayItem,%function
	.code	32                      @ @cJSON_GetArrayItem
cJSON_GetArrayItem:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	ldr	r0, [sp, #12]
	cmn	r0, #1
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bgt	.LBB20_2
	b	.LBB20_1
.LBB20_1:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB20_3
.LBB20_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	asr	r3, r1, #31
	mov	r2, r1
	bl	get_array_item
	str	r0, [r11, #-8]
	b	.LBB20_3
.LBB20_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end20:
	.size	cJSON_GetArrayItem, .Lfunc_end20-cJSON_GetArrayItem
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function get_array_item
	.type	get_array_item,%function
	.code	32                      @ @get_array_item
get_array_item:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r1, r3
	mov	r12, r2
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	r0, #0
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r12, [sp, #12]          @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bne	.LBB21_2
	b	.LBB21_1
.LBB21_1:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB21_8
.LBB21_2:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #8]
	str	r0, [sp, #16]
	b	.LBB21_3
.LBB21_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp]                @ 4-byte Spill
	beq	.LBB21_5
	b	.LBB21_4
.LBB21_4:                               @   in Loop: Header=BB21_3 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	orr	r0, r0, r1
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB21_5
.LBB21_5:                               @   in Loop: Header=BB21_3 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB21_7
	b	.LBB21_6
.LBB21_6:                               @   in Loop: Header=BB21_3 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	subs	r0, r0, #1
	sbc	r1, r1, #0
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	str	r0, [sp, #16]
	b	.LBB21_3
.LBB21_7:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB21_8
.LBB21_8:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end21:
	.size	get_array_item, .Lfunc_end21-get_array_item
	.fnend
                                        @ -- End function
	.globl	cJSON_GetObjectItem     @ -- Begin function cJSON_GetObjectItem
	.p2align	2
	.type	cJSON_GetObjectItem,%function
	.code	32                      @ @cJSON_GetObjectItem
cJSON_GetObjectItem:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	mov	r12, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp]                @ 4-byte Spill
	bl	get_object_item
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end22:
	.size	cJSON_GetObjectItem, .Lfunc_end22-cJSON_GetObjectItem
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function get_object_item
	.type	get_object_item,%function
	.code	32                      @ @get_object_item
get_object_item:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #28]
	mov	r0, #0
	str	r0, [sp, #24]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
	str	lr, [sp, #12]           @ 4-byte Spill
	beq	.LBB23_2
	b	.LBB23_1
.LBB23_1:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB23_3
	b	.LBB23_2
.LBB23_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB23_17
.LBB23_3:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #8]
	str	r0, [sp, #24]
	ldr	r0, [sp, #28]
	cmp	r0, #0
	beq	.LBB23_10
	b	.LBB23_4
.LBB23_4:
	b	.LBB23_5
.LBB23_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	beq	.LBB23_7
	b	.LBB23_6
.LBB23_6:                               @   in Loop: Header=BB23_5 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #24]
	ldr	r1, [r1, #32]
	bl	strcmp
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB23_7
.LBB23_7:                               @   in Loop: Header=BB23_5 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB23_9
	b	.LBB23_8
.LBB23_8:                               @   in Loop: Header=BB23_5 Depth=1
	ldr	r0, [sp, #24]
	ldr	r0, [r0]
	str	r0, [sp, #24]
	b	.LBB23_5
.LBB23_9:
	b	.LBB23_16
.LBB23_10:
	b	.LBB23_11
.LBB23_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB23_13
	b	.LBB23_12
.LBB23_12:                              @   in Loop: Header=BB23_11 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #24]
	ldr	r1, [r1, #32]
	bl	case_insensitive_strcmp
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB23_13
.LBB23_13:                              @   in Loop: Header=BB23_11 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB23_15
	b	.LBB23_14
.LBB23_14:                              @   in Loop: Header=BB23_11 Depth=1
	ldr	r0, [sp, #24]
	ldr	r0, [r0]
	str	r0, [sp, #24]
	b	.LBB23_11
.LBB23_15:
	b	.LBB23_16
.LBB23_16:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-8]
	b	.LBB23_17
.LBB23_17:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end23:
	.size	get_object_item, .Lfunc_end23-get_object_item
	.fnend
                                        @ -- End function
	.globl	cJSON_GetObjectItemCaseSensitive @ -- Begin function cJSON_GetObjectItemCaseSensitive
	.p2align	2
	.type	cJSON_GetObjectItemCaseSensitive,%function
	.code	32                      @ @cJSON_GetObjectItemCaseSensitive
cJSON_GetObjectItemCaseSensitive:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	mov	r12, #1
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp]                @ 4-byte Spill
	bl	get_object_item
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end24:
	.size	cJSON_GetObjectItemCaseSensitive, .Lfunc_end24-cJSON_GetObjectItemCaseSensitive
	.fnend
                                        @ -- End function
	.globl	cJSON_HasObjectItem     @ -- Begin function cJSON_HasObjectItem
	.p2align	2
	.type	cJSON_HasObjectItem,%function
	.code	32                      @ @cJSON_HasObjectItem
cJSON_HasObjectItem:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	cJSON_GetObjectItem
	cmp	r0, #0
	movne	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end25:
	.size	cJSON_HasObjectItem, .Lfunc_end25-cJSON_HasObjectItem
	.fnend
                                        @ -- End function
	.globl	cJSON_AddItemToArray    @ -- Begin function cJSON_AddItemToArray
	.p2align	2
	.type	cJSON_AddItemToArray,%function
	.code	32                      @ @cJSON_AddItemToArray
cJSON_AddItemToArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	add_item_to_array
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end26:
	.size	cJSON_AddItemToArray, .Lfunc_end26-cJSON_AddItemToArray
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function add_item_to_array
	.type	add_item_to_array,%function
	.code	32                      @ @add_item_to_array
add_item_to_array:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	beq	.LBB27_2
	b	.LBB27_1
.LBB27_1:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	bne	.LBB27_3
	b	.LBB27_2
.LBB27_2:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB27_10
.LBB27_3:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB27_5
	b	.LBB27_4
.LBB27_4:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-8]
	str	r0, [r1, #8]
	b	.LBB27_9
.LBB27_5:
	b	.LBB27_6
.LBB27_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB27_8
	b	.LBB27_7
.LBB27_7:                               @   in Loop: Header=BB27_6 Depth=1
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	str	r0, [sp, #8]
	b	.LBB27_6
.LBB27_8:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	bl	suffix_object
	b	.LBB27_9
.LBB27_9:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB27_10
.LBB27_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end27:
	.size	add_item_to_array, .Lfunc_end27-add_item_to_array
	.fnend
                                        @ -- End function
	.globl	cJSON_AddItemToObject   @ -- Begin function cJSON_AddItemToObject
	.p2align	2
	.type	cJSON_AddItemToObject,%function
	.code	32                      @ @cJSON_AddItemToObject
cJSON_AddItemToObject:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #24]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #24]
	mov	r4, sp
	mov	r5, #0
	str	r5, [r4]
	ldr	r4, .LCPI28_0
	str	r3, [sp, #20]           @ 4-byte Spill
	mov	r3, r4
	str	lr, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	bl	add_item_to_object
	str	r0, [sp, #8]            @ 4-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI28_0:
	.long	global_hooks
.Lfunc_end28:
	.size	cJSON_AddItemToObject, .Lfunc_end28-cJSON_AddItemToObject
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function add_item_to_object
	.type	add_item_to_object,%function
	.code	32                      @ @add_item_to_object
add_item_to_object:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #64
	ldr	r12, [r11, #8]
	mov	lr, r3
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
	str	r0, [r11, #-24]
	str	r1, [r11, #-32]
	str	r2, [sp, #40]
	str	r3, [sp, #32]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	str	lr, [sp, #20]           @ 4-byte Spill
	str	r4, [sp, #16]           @ 4-byte Spill
	str	r5, [sp, #12]           @ 4-byte Spill
	str	r6, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	beq	.LBB29_3
	b	.LBB29_1
.LBB29_1:
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	beq	.LBB29_3
	b	.LBB29_2
.LBB29_2:
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB29_4
	b	.LBB29_3
.LBB29_3:
	mov	r0, #0
	str	r0, [r11, #-20]
	b	.LBB29_13
.LBB29_4:
	ldr	r0, [sp, #40]
	ldrb	r0, [r0, #13]
	tst	r0, #2
	bne	.LBB29_7
	b	.LBB29_5
.LBB29_5:
	ldr	r0, [sp, #40]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	beq	.LBB29_7
	b	.LBB29_6
.LBB29_6:
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #40]
	ldr	r1, [r1, #32]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp]                @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB29_7
.LBB29_7:
	ldr	r0, [r11, #8]
	cmp	r0, #0
	beq	.LBB29_9
	b	.LBB29_8
.LBB29_8:
	ldr	r0, [r11, #-32]
	bl	cast_away_const
	ldr	lr, [sp, #40]
	str	r0, [lr, #32]
	ldr	r0, [sp, #40]
	ldr	lr, [r0, #12]
	orr	lr, lr, #512
	str	lr, [r0, #12]
	b	.LBB29_12
.LBB29_9:
	ldr	r0, [r11, #-32]
	ldr	r1, [sp, #32]
	bl	cJSON_strdup
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB29_11
	b	.LBB29_10
.LBB29_10:
	mov	r0, #0
	str	r0, [r11, #-20]
	b	.LBB29_13
.LBB29_11:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #40]
	str	r0, [r1, #32]
	ldr	r0, [sp, #40]
	ldr	r1, [r0, #12]
	bic	r1, r1, #512
	str	r1, [r0, #12]
	b	.LBB29_12
.LBB29_12:
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #40]
	bl	add_item_to_array
	str	r0, [r11, #-20]
	b	.LBB29_13
.LBB29_13:
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	mov	pc, lr
.Lfunc_end29:
	.size	add_item_to_object, .Lfunc_end29-add_item_to_object
	.fnend
                                        @ -- End function
	.globl	cJSON_AddItemToObjectCS @ -- Begin function cJSON_AddItemToObjectCS
	.p2align	2
	.type	cJSON_AddItemToObjectCS,%function
	.code	32                      @ @cJSON_AddItemToObjectCS
cJSON_AddItemToObjectCS:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #24]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #24]
	mov	r4, sp
	mov	r5, #1
	str	r5, [r4]
	ldr	r4, .LCPI30_0
	str	r3, [sp, #20]           @ 4-byte Spill
	mov	r3, r4
	str	lr, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	bl	add_item_to_object
	str	r0, [sp, #8]            @ 4-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI30_0:
	.long	global_hooks
.Lfunc_end30:
	.size	cJSON_AddItemToObjectCS, .Lfunc_end30-cJSON_AddItemToObjectCS
	.fnend
                                        @ -- End function
	.globl	cJSON_AddItemReferenceToArray @ -- Begin function cJSON_AddItemReferenceToArray
	.p2align	2
	.type	cJSON_AddItemReferenceToArray,%function
	.code	32                      @ @cJSON_AddItemReferenceToArray
cJSON_AddItemReferenceToArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	bne	.LBB31_2
	b	.LBB31_1
.LBB31_1:
	b	.LBB31_3
.LBB31_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, .LCPI31_0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	create_reference
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	add_item_to_array
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB31_3
.LBB31_3:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI31_0:
	.long	global_hooks
.Lfunc_end31:
	.size	cJSON_AddItemReferenceToArray, .Lfunc_end31-cJSON_AddItemReferenceToArray
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function create_reference
	.type	create_reference,%function
	.code	32                      @ @create_reference
create_reference:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #24]
	str	r1, [sp, #16]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bne	.LBB32_2
	b	.LBB32_1
.LBB32_1:
	mov	r0, #0
	str	r0, [r11, #-16]
	b	.LBB32_5
.LBB32_2:
	ldr	r0, [sp, #16]
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB32_4
	b	.LBB32_3
.LBB32_3:
	mov	r0, #0
	str	r0, [r11, #-16]
	b	.LBB32_5
.LBB32_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #24]
	ldm	r1!, {r2, r3, r4, r12, lr}
	stm	r0!, {r2, r3, r4, r12, lr}
	ldm	r1!, {r2, r3, r4, r12, lr}
	stm	r0!, {r2, r3, r4, r12, lr}
	ldm	r1, {r2, r3, r4, r5, r12, lr}
	stm	r0, {r2, r3, r4, r5, r12, lr}
	ldr	r0, [sp, #8]
	mov	r1, #0
	str	r1, [r0, #32]
	ldr	r0, [sp, #8]
	ldr	r2, [r0, #12]
	orr	r2, r2, #256
	str	r2, [r0, #12]
	ldr	r0, [sp, #8]
	str	r1, [r0, #4]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r0, [sp, #8]
	str	r0, [r11, #-16]
	b	.LBB32_5
.LBB32_5:
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Lfunc_end32:
	.size	create_reference, .Lfunc_end32-create_reference
	.fnend
                                        @ -- End function
	.globl	cJSON_AddItemReferenceToObject @ -- Begin function cJSON_AddItemReferenceToObject
	.p2align	2
	.type	cJSON_AddItemReferenceToObject,%function
	.code	32                      @ @cJSON_AddItemReferenceToObject
cJSON_AddItemReferenceToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #64
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [r11, #-24]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r3, [r11, #-28]         @ 4-byte Spill
	str	r12, [sp, #32]          @ 4-byte Spill
	str	lr, [sp, #28]           @ 4-byte Spill
	beq	.LBB33_2
	b	.LBB33_1
.LBB33_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB33_3
	b	.LBB33_2
.LBB33_2:
	b	.LBB33_4
.LBB33_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-24]
	ldr	r3, .LCPI33_0
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #20]           @ 4-byte Spill
	mov	r1, r3
	str	r3, [sp, #16]           @ 4-byte Spill
	bl	create_reference
	mov	r1, sp
	mov	r2, #0
	str	r2, [r1]
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	ldr	r2, [sp, #12]           @ 4-byte Reload
	ldr	r3, [sp, #16]           @ 4-byte Reload
	bl	add_item_to_object
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB33_4
.LBB33_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI33_0:
	.long	global_hooks
.Lfunc_end33:
	.size	cJSON_AddItemReferenceToObject, .Lfunc_end33-cJSON_AddItemReferenceToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_AddNullToObject   @ -- Begin function cJSON_AddNullToObject
	.p2align	2
	.type	cJSON_AddNullToObject,%function
	.code	32                      @ @cJSON_AddNullToObject
cJSON_AddNullToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateNull
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	lr, #0
	str	lr, [r3]
	ldr	r3, .LCPI34_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB34_2
	b	.LBB34_1
.LBB34_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB34_3
.LBB34_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB34_3
.LBB34_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI34_0:
	.long	global_hooks
.Lfunc_end34:
	.size	cJSON_AddNullToObject, .Lfunc_end34-cJSON_AddNullToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateNull        @ -- Begin function cJSON_CreateNull
	.p2align	2
	.type	cJSON_CreateNull,%function
	.code	32                      @ @cJSON_CreateNull
cJSON_CreateNull:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r0, .LCPI35_0
	bl	cJSON_New_Item
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB35_2
	b	.LBB35_1
.LBB35_1:
	ldr	r0, [sp]
	mov	r1, #4
	str	r1, [r0, #12]
	b	.LBB35_2
.LBB35_2:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI35_0:
	.long	global_hooks
.Lfunc_end35:
	.size	cJSON_CreateNull, .Lfunc_end35-cJSON_CreateNull
	.fnend
                                        @ -- End function
	.globl	cJSON_AddTrueToObject   @ -- Begin function cJSON_AddTrueToObject
	.p2align	2
	.type	cJSON_AddTrueToObject,%function
	.code	32                      @ @cJSON_AddTrueToObject
cJSON_AddTrueToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateTrue
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	lr, #0
	str	lr, [r3]
	ldr	r3, .LCPI36_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB36_2
	b	.LBB36_1
.LBB36_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB36_3
.LBB36_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB36_3
.LBB36_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI36_0:
	.long	global_hooks
.Lfunc_end36:
	.size	cJSON_AddTrueToObject, .Lfunc_end36-cJSON_AddTrueToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateTrue        @ -- Begin function cJSON_CreateTrue
	.p2align	2
	.type	cJSON_CreateTrue,%function
	.code	32                      @ @cJSON_CreateTrue
cJSON_CreateTrue:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r0, .LCPI37_0
	bl	cJSON_New_Item
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB37_2
	b	.LBB37_1
.LBB37_1:
	ldr	r0, [sp]
	mov	r1, #2
	str	r1, [r0, #12]
	b	.LBB37_2
.LBB37_2:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI37_0:
	.long	global_hooks
.Lfunc_end37:
	.size	cJSON_CreateTrue, .Lfunc_end37-cJSON_CreateTrue
	.fnend
                                        @ -- End function
	.globl	cJSON_AddFalseToObject  @ -- Begin function cJSON_AddFalseToObject
	.p2align	2
	.type	cJSON_AddFalseToObject,%function
	.code	32                      @ @cJSON_AddFalseToObject
cJSON_AddFalseToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateFalse
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	lr, #0
	str	lr, [r3]
	ldr	r3, .LCPI38_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB38_2
	b	.LBB38_1
.LBB38_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB38_3
.LBB38_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB38_3
.LBB38_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI38_0:
	.long	global_hooks
.Lfunc_end38:
	.size	cJSON_AddFalseToObject, .Lfunc_end38-cJSON_AddFalseToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateFalse       @ -- Begin function cJSON_CreateFalse
	.p2align	2
	.type	cJSON_CreateFalse,%function
	.code	32                      @ @cJSON_CreateFalse
cJSON_CreateFalse:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r0, .LCPI39_0
	bl	cJSON_New_Item
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB39_2
	b	.LBB39_1
.LBB39_1:
	ldr	r0, [sp]
	mov	r1, #1
	str	r1, [r0, #12]
	b	.LBB39_2
.LBB39_2:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI39_0:
	.long	global_hooks
.Lfunc_end39:
	.size	cJSON_CreateFalse, .Lfunc_end39-cJSON_CreateFalse
	.fnend
                                        @ -- End function
	.globl	cJSON_AddBoolToObject   @ -- Begin function cJSON_AddBoolToObject
	.p2align	2
	.type	cJSON_AddBoolToObject,%function
	.code	32                      @ @cJSON_AddBoolToObject
cJSON_AddBoolToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	ldr	r0, [sp, #20]
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	cJSON_CreateBool
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	r12, #0
	str	r12, [r3]
	ldr	r3, .LCPI40_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB40_2
	b	.LBB40_1
.LBB40_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB40_3
.LBB40_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB40_3
.LBB40_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI40_0:
	.long	global_hooks
.Lfunc_end40:
	.size	cJSON_AddBoolToObject, .Lfunc_end40-cJSON_AddBoolToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateBool        @ -- Begin function cJSON_CreateBool
	.p2align	2
	.type	cJSON_CreateBool,%function
	.code	32                      @ @cJSON_CreateBool
cJSON_CreateBool:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [r11, #-4]
	ldr	r0, .LCPI41_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB41_2
	b	.LBB41_1
.LBB41_1:
	ldr	r0, [r11, #-4]
	mov	r1, #1
	cmp	r0, #0
	movne	r1, #2
	ldr	r0, [sp, #8]
	str	r1, [r0, #12]
	b	.LBB41_2
.LBB41_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI41_0:
	.long	global_hooks
.Lfunc_end41:
	.size	cJSON_CreateBool, .Lfunc_end41-cJSON_CreateBool
	.fnend
                                        @ -- End function
	.globl	cJSON_AddNumberToObject @ -- Begin function cJSON_AddNumberToObject
	.p2align	2
	.type	cJSON_AddNumberToObject,%function
	.code	32                      @ @cJSON_AddNumberToObject
cJSON_AddNumberToObject:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #64
	mov	r12, r3
	mov	lr, r2
	mov	r4, r1
	mov	r5, r0
	str	r0, [r11, #-24]
	str	r1, [r11, #-32]
	str	r3, [sp, #36]
	str	r2, [sp, #32]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	str	lr, [sp, #20]           @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	str	r5, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateNumber
	str	r0, [sp, #24]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-32]
	ldr	r2, [sp, #24]
	mov	r3, sp
	mov	r12, #0
	str	r12, [r3]
	ldr	r3, .LCPI42_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB42_2
	b	.LBB42_1
.LBB42_1:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-16]
	b	.LBB42_3
.LBB42_2:
	ldr	r0, [sp, #24]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-16]
	b	.LBB42_3
.LBB42_3:
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI42_0:
	.long	global_hooks
.Lfunc_end42:
	.size	cJSON_AddNumberToObject, .Lfunc_end42-cJSON_AddNumberToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateNumber      @ -- Begin function cJSON_CreateNumber
	.p2align	2
	.type	cJSON_CreateNumber,%function
	.code	32                      @ @cJSON_CreateNumber
cJSON_CreateNumber:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	ldr	r0, .LCPI43_0
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB43_8
	b	.LBB43_1
.LBB43_1:
	ldr	r0, [sp, #8]
	mov	r1, #8
	str	r1, [r0, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	str	r1, [r2, #28]
	str	r0, [r2, #24]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	r2, #1069547520
	orr	r2, r2, #-1073741824
	ldr	r3, .LCPI43_1
	bl	__gedf2
	cmp	r0, #0
	blt	.LBB43_3
	b	.LBB43_2
.LBB43_2:
	ldr	r0, [sp, #8]
	mvn	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB43_7
.LBB43_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	r2, #0
	mov	r3, #31457280
	orr	r3, r3, #-1073741824
	bl	__ledf2
	cmp	r0, #0
	bgt	.LBB43_5
	b	.LBB43_4
.LBB43_4:
	ldr	r0, [sp, #8]
	mov	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB43_6
.LBB43_5:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	bl	__fixdfsi
	ldr	r1, [sp, #8]
	str	r0, [r1, #20]
	b	.LBB43_6
.LBB43_6:
	b	.LBB43_7
.LBB43_7:
	b	.LBB43_8
.LBB43_8:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.9:
.LCPI43_0:
	.long	global_hooks
.LCPI43_1:
	.long	1105199103              @ 0x41dfffff
.Lfunc_end43:
	.size	cJSON_CreateNumber, .Lfunc_end43-cJSON_CreateNumber
	.fnend
                                        @ -- End function
	.globl	cJSON_AddStringToObject @ -- Begin function cJSON_AddStringToObject
	.p2align	2
	.type	cJSON_AddStringToObject,%function
	.code	32                      @ @cJSON_AddStringToObject
cJSON_AddStringToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #24]
	ldr	r0, [sp, #24]
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	cJSON_CreateString
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	r12, #0
	str	r12, [r3]
	ldr	r3, .LCPI44_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB44_2
	b	.LBB44_1
.LBB44_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB44_3
.LBB44_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB44_3
.LBB44_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI44_0:
	.long	global_hooks
.Lfunc_end44:
	.size	cJSON_AddStringToObject, .Lfunc_end44-cJSON_AddStringToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateString      @ -- Begin function cJSON_CreateString
	.p2align	2
	.type	cJSON_CreateString,%function
	.code	32                      @ @cJSON_CreateString
cJSON_CreateString:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [sp, #16]
	ldr	r0, .LCPI45_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB45_4
	b	.LBB45_1
.LBB45_1:
	ldr	r0, [sp, #8]
	mov	r1, #16
	str	r1, [r0, #12]
	ldr	r0, [sp, #16]
	ldr	r1, .LCPI45_0
	bl	cJSON_strdup
	ldr	r1, [sp, #8]
	str	r0, [r1, #16]
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	bne	.LBB45_3
	b	.LBB45_2
.LBB45_2:
	ldr	r0, [sp, #8]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB45_5
.LBB45_3:
	b	.LBB45_4
.LBB45_4:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-8]
	b	.LBB45_5
.LBB45_5:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI45_0:
	.long	global_hooks
.Lfunc_end45:
	.size	cJSON_CreateString, .Lfunc_end45-cJSON_CreateString
	.fnend
                                        @ -- End function
	.globl	cJSON_AddRawToObject    @ -- Begin function cJSON_AddRawToObject
	.p2align	2
	.type	cJSON_AddRawToObject,%function
	.code	32                      @ @cJSON_AddRawToObject
cJSON_AddRawToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #24]
	ldr	r0, [sp, #24]
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	cJSON_CreateRaw
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	r12, #0
	str	r12, [r3]
	ldr	r3, .LCPI46_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB46_2
	b	.LBB46_1
.LBB46_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB46_3
.LBB46_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB46_3
.LBB46_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI46_0:
	.long	global_hooks
.Lfunc_end46:
	.size	cJSON_AddRawToObject, .Lfunc_end46-cJSON_AddRawToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateRaw         @ -- Begin function cJSON_CreateRaw
	.p2align	2
	.type	cJSON_CreateRaw,%function
	.code	32                      @ @cJSON_CreateRaw
cJSON_CreateRaw:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [sp, #16]
	ldr	r0, .LCPI47_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB47_4
	b	.LBB47_1
.LBB47_1:
	ldr	r0, [sp, #8]
	mov	r1, #128
	str	r1, [r0, #12]
	ldr	r0, [sp, #16]
	ldr	r1, .LCPI47_0
	bl	cJSON_strdup
	ldr	r1, [sp, #8]
	str	r0, [r1, #16]
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	bne	.LBB47_3
	b	.LBB47_2
.LBB47_2:
	ldr	r0, [sp, #8]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB47_5
.LBB47_3:
	b	.LBB47_4
.LBB47_4:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-8]
	b	.LBB47_5
.LBB47_5:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI47_0:
	.long	global_hooks
.Lfunc_end47:
	.size	cJSON_CreateRaw, .Lfunc_end47-cJSON_CreateRaw
	.fnend
                                        @ -- End function
	.globl	cJSON_AddObjectToObject @ -- Begin function cJSON_AddObjectToObject
	.p2align	2
	.type	cJSON_AddObjectToObject,%function
	.code	32                      @ @cJSON_AddObjectToObject
cJSON_AddObjectToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateObject
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	lr, #0
	str	lr, [r3]
	ldr	r3, .LCPI48_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB48_2
	b	.LBB48_1
.LBB48_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB48_3
.LBB48_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB48_3
.LBB48_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI48_0:
	.long	global_hooks
.Lfunc_end48:
	.size	cJSON_AddObjectToObject, .Lfunc_end48-cJSON_AddObjectToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateObject      @ -- Begin function cJSON_CreateObject
	.p2align	2
	.type	cJSON_CreateObject,%function
	.code	32                      @ @cJSON_CreateObject
cJSON_CreateObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r0, .LCPI49_0
	bl	cJSON_New_Item
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB49_2
	b	.LBB49_1
.LBB49_1:
	ldr	r0, [sp]
	mov	r1, #64
	str	r1, [r0, #12]
	b	.LBB49_2
.LBB49_2:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI49_0:
	.long	global_hooks
.Lfunc_end49:
	.size	cJSON_CreateObject, .Lfunc_end49-cJSON_CreateObject
	.fnend
                                        @ -- End function
	.globl	cJSON_AddArrayToObject  @ -- Begin function cJSON_AddArrayToObject
	.p2align	2
	.type	cJSON_AddArrayToObject,%function
	.code	32                      @ @cJSON_AddArrayToObject
cJSON_AddArrayToObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bl	cJSON_CreateArray
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, sp
	mov	lr, #0
	str	lr, [r3]
	ldr	r3, .LCPI50_0
	bl	add_item_to_object
	cmp	r0, #0
	beq	.LBB50_2
	b	.LBB50_1
.LBB50_1:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-8]
	b	.LBB50_3
.LBB50_2:
	ldr	r0, [sp, #16]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB50_3
.LBB50_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI50_0:
	.long	global_hooks
.Lfunc_end50:
	.size	cJSON_AddArrayToObject, .Lfunc_end50-cJSON_AddArrayToObject
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateArray       @ -- Begin function cJSON_CreateArray
	.p2align	2
	.type	cJSON_CreateArray,%function
	.code	32                      @ @cJSON_CreateArray
cJSON_CreateArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r0, .LCPI51_0
	bl	cJSON_New_Item
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB51_2
	b	.LBB51_1
.LBB51_1:
	ldr	r0, [sp]
	mov	r1, #32
	str	r1, [r0, #12]
	b	.LBB51_2
.LBB51_2:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI51_0:
	.long	global_hooks
.Lfunc_end51:
	.size	cJSON_CreateArray, .Lfunc_end51-cJSON_CreateArray
	.fnend
                                        @ -- End function
	.globl	cJSON_DetachItemViaPointer @ -- Begin function cJSON_DetachItemViaPointer
	.p2align	2
	.type	cJSON_DetachItemViaPointer,%function
	.code	32                      @ @cJSON_DetachItemViaPointer
cJSON_DetachItemViaPointer:
	.fnstart
@ %bb.0:
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #16]
	str	r1, [sp, #8]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	beq	.LBB52_2
	b	.LBB52_1
.LBB52_1:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB52_3
	b	.LBB52_2
.LBB52_2:
	mov	r0, #0
	str	r0, [sp, #24]
	b	.LBB52_10
.LBB52_3:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB52_5
	b	.LBB52_4
.LBB52_4:
	ldr	r0, [sp, #8]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r1, [r0]
	b	.LBB52_5
.LBB52_5:
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB52_7
	b	.LBB52_6
.LBB52_6:
	ldr	r0, [sp, #8]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r0, [r1, #4]
	b	.LBB52_7
.LBB52_7:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	ldr	r1, [r1, #8]
	cmp	r0, r1
	bne	.LBB52_9
	b	.LBB52_8
.LBB52_8:
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	ldr	r1, [sp, #16]
	str	r0, [r1, #8]
	b	.LBB52_9
.LBB52_9:
	ldr	r0, [sp, #8]
	mov	r1, #0
	str	r1, [r0, #4]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r0, [sp, #8]
	str	r0, [sp, #24]
	b	.LBB52_10
.LBB52_10:
	ldr	r0, [sp, #24]
	add	sp, sp, #32
	mov	pc, lr
.Lfunc_end52:
	.size	cJSON_DetachItemViaPointer, .Lfunc_end52-cJSON_DetachItemViaPointer
	.fnend
                                        @ -- End function
	.globl	cJSON_DetachItemFromArray @ -- Begin function cJSON_DetachItemFromArray
	.p2align	2
	.type	cJSON_DetachItemFromArray,%function
	.code	32                      @ @cJSON_DetachItemFromArray
cJSON_DetachItemFromArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #20]
	ldr	r0, [sp, #20]
	cmn	r0, #1
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	bgt	.LBB53_2
	b	.LBB53_1
.LBB53_1:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB53_3
.LBB53_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #20]
	asr	r3, r1, #31
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r2, r1
	bl	get_array_item
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	cJSON_DetachItemViaPointer
	str	r0, [r11, #-8]
	b	.LBB53_3
.LBB53_3:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end53:
	.size	cJSON_DetachItemFromArray, .Lfunc_end53-cJSON_DetachItemFromArray
	.fnend
                                        @ -- End function
	.globl	cJSON_DeleteItemFromArray @ -- Begin function cJSON_DeleteItemFromArray
	.p2align	2
	.type	cJSON_DeleteItemFromArray,%function
	.code	32                      @ @cJSON_DeleteItemFromArray
cJSON_DeleteItemFromArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bl	cJSON_DetachItemFromArray
	bl	cJSON_Delete
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end54:
	.size	cJSON_DeleteItemFromArray, .Lfunc_end54-cJSON_DeleteItemFromArray
	.fnend
                                        @ -- End function
	.globl	cJSON_DetachItemFromObject @ -- Begin function cJSON_DetachItemFromObject
	.p2align	2
	.type	cJSON_DetachItemFromObject,%function
	.code	32                      @ @cJSON_DetachItemFromObject
cJSON_DetachItemFromObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	cJSON_GetObjectItem
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	bl	cJSON_DetachItemViaPointer
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end55:
	.size	cJSON_DetachItemFromObject, .Lfunc_end55-cJSON_DetachItemFromObject
	.fnend
                                        @ -- End function
	.globl	cJSON_DetachItemFromObjectCaseSensitive @ -- Begin function cJSON_DetachItemFromObjectCaseSensitive
	.p2align	2
	.type	cJSON_DetachItemFromObjectCaseSensitive,%function
	.code	32                      @ @cJSON_DetachItemFromObjectCaseSensitive
cJSON_DetachItemFromObjectCaseSensitive:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	cJSON_GetObjectItemCaseSensitive
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	bl	cJSON_DetachItemViaPointer
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end56:
	.size	cJSON_DetachItemFromObjectCaseSensitive, .Lfunc_end56-cJSON_DetachItemFromObjectCaseSensitive
	.fnend
                                        @ -- End function
	.globl	cJSON_DeleteItemFromObject @ -- Begin function cJSON_DeleteItemFromObject
	.p2align	2
	.type	cJSON_DeleteItemFromObject,%function
	.code	32                      @ @cJSON_DeleteItemFromObject
cJSON_DeleteItemFromObject:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	cJSON_DetachItemFromObject
	bl	cJSON_Delete
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end57:
	.size	cJSON_DeleteItemFromObject, .Lfunc_end57-cJSON_DeleteItemFromObject
	.fnend
                                        @ -- End function
	.globl	cJSON_DeleteItemFromObjectCaseSensitive @ -- Begin function cJSON_DeleteItemFromObjectCaseSensitive
	.p2align	2
	.type	cJSON_DeleteItemFromObjectCaseSensitive,%function
	.code	32                      @ @cJSON_DeleteItemFromObjectCaseSensitive
cJSON_DeleteItemFromObjectCaseSensitive:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	cJSON_DetachItemFromObjectCaseSensitive
	bl	cJSON_Delete
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end58:
	.size	cJSON_DeleteItemFromObjectCaseSensitive, .Lfunc_end58-cJSON_DeleteItemFromObjectCaseSensitive
	.fnend
                                        @ -- End function
	.globl	cJSON_InsertItemInArray @ -- Begin function cJSON_InsertItemInArray
	.p2align	2
	.type	cJSON_InsertItemInArray,%function
	.code	32                      @ @cJSON_InsertItemInArray
cJSON_InsertItemInArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	mov	r0, #0
	str	r0, [sp, #16]
	ldr	r0, [r11, #-12]
	cmn	r0, #1
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bgt	.LBB59_2
	b	.LBB59_1
.LBB59_1:
	b	.LBB59_7
.LBB59_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	asr	r3, r1, #31
	mov	r2, r1
	bl	get_array_item
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB59_4
	b	.LBB59_3
.LBB59_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	add_item_to_array
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB59_7
.LBB59_4:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-16]
	str	r0, [r1]
	ldr	r0, [sp, #16]
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-16]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #16]
	str	r0, [r1, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #8]
	cmp	r0, r1
	bne	.LBB59_6
	b	.LBB59_5
.LBB59_5:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-8]
	str	r0, [r1, #8]
	b	.LBB59_7
.LBB59_6:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #4]
	str	r0, [r1]
	b	.LBB59_7
.LBB59_7:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end59:
	.size	cJSON_InsertItemInArray, .Lfunc_end59-cJSON_InsertItemInArray
	.fnend
                                        @ -- End function
	.globl	cJSON_ReplaceItemViaPointer @ -- Begin function cJSON_ReplaceItemViaPointer
	.p2align	2
	.type	cJSON_ReplaceItemViaPointer,%function
	.code	32                      @ @cJSON_ReplaceItemViaPointer
cJSON_ReplaceItemViaPointer:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	beq	.LBB60_3
	b	.LBB60_1
.LBB60_1:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB60_3
	b	.LBB60_2
.LBB60_2:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB60_4
	b	.LBB60_3
.LBB60_3:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB60_13
.LBB60_4:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bne	.LBB60_6
	b	.LBB60_5
.LBB60_5:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB60_13
.LBB60_6:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	ldr	r1, [sp, #16]
	str	r0, [r1]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #16]
	str	r0, [r1, #4]
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB60_8
	b	.LBB60_7
.LBB60_7:
	ldr	r0, [sp, #16]
	ldr	r1, [r0]
	str	r0, [r1, #4]
	b	.LBB60_8
.LBB60_8:
	ldr	r0, [sp, #16]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB60_10
	b	.LBB60_9
.LBB60_9:
	ldr	r0, [sp, #16]
	ldr	r1, [r0, #4]
	str	r0, [r1]
	b	.LBB60_10
.LBB60_10:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bne	.LBB60_12
	b	.LBB60_11
.LBB60_11:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-8]
	str	r0, [r1, #8]
	b	.LBB60_12
.LBB60_12:
	ldr	r0, [r11, #-16]
	mov	r1, #0
	str	r1, [r0]
	ldr	r0, [r11, #-16]
	str	r1, [r0, #4]
	ldr	r0, [r11, #-16]
	bl	cJSON_Delete
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB60_13
.LBB60_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end60:
	.size	cJSON_ReplaceItemViaPointer, .Lfunc_end60-cJSON_ReplaceItemViaPointer
	.fnend
                                        @ -- End function
	.globl	cJSON_ReplaceItemInArray @ -- Begin function cJSON_ReplaceItemInArray
	.p2align	2
	.type	cJSON_ReplaceItemInArray,%function
	.code	32                      @ @cJSON_ReplaceItemInArray
cJSON_ReplaceItemInArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-12]
	cmn	r0, #1
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
	str	lr, [sp, #12]           @ 4-byte Spill
	bgt	.LBB61_2
	b	.LBB61_1
.LBB61_1:
	b	.LBB61_3
.LBB61_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	asr	r3, r1, #31
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r2, r1
	bl	get_array_item
	ldr	r2, [r11, #-16]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	cJSON_ReplaceItemViaPointer
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB61_3
.LBB61_3:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end61:
	.size	cJSON_ReplaceItemInArray, .Lfunc_end61-cJSON_ReplaceItemInArray
	.fnend
                                        @ -- End function
	.globl	cJSON_ReplaceItemInObject @ -- Begin function cJSON_ReplaceItemInObject
	.p2align	2
	.type	cJSON_ReplaceItemInObject,%function
	.code	32                      @ @cJSON_ReplaceItemInObject
cJSON_ReplaceItemInObject:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r4, #0
	str	r3, [sp, #12]           @ 4-byte Spill
	mov	r3, r4
	str	lr, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	bl	replace_item_in_object
	str	r0, [sp]                @ 4-byte Spill
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end62:
	.size	cJSON_ReplaceItemInObject, .Lfunc_end62-cJSON_ReplaceItemInObject
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function replace_item_in_object
	.type	replace_item_in_object,%function
	.code	32                      @ @replace_item_in_object
replace_item_in_object:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #56
	mov	r12, r3
	mov	lr, r2
	mov	r4, r1
	mov	r5, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #32]
	str	r3, [sp, #28]
	ldr	r0, [sp, #32]
	cmp	r0, #0
	str	r12, [sp, #24]          @ 4-byte Spill
	str	lr, [sp, #20]           @ 4-byte Spill
	str	r4, [sp, #16]           @ 4-byte Spill
	str	r5, [sp, #12]           @ 4-byte Spill
	beq	.LBB63_2
	b	.LBB63_1
.LBB63_1:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB63_3
	b	.LBB63_2
.LBB63_2:
	mov	r0, #0
	str	r0, [r11, #-12]
	b	.LBB63_7
.LBB63_3:
	ldr	r0, [sp, #32]
	ldrb	r0, [r0, #13]
	tst	r0, #2
	bne	.LBB63_6
	b	.LBB63_4
.LBB63_4:
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	beq	.LBB63_6
	b	.LBB63_5
.LBB63_5:
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #32]
	bl	cJSON_free
	b	.LBB63_6
.LBB63_6:
	ldr	r0, [r11, #-24]
	ldr	r1, .LCPI63_0
	bl	cJSON_strdup
	ldr	r1, [sp, #32]
	str	r0, [r1, #32]
	ldr	r0, [sp, #32]
	ldr	r1, [r0, #12]
	bic	r1, r1, #512
	str	r1, [r0, #12]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #28]
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	get_object_item
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	cJSON_ReplaceItemViaPointer
	mov	r1, #1
	str	r1, [r11, #-12]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB63_7
.LBB63_7:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI63_0:
	.long	global_hooks
.Lfunc_end63:
	.size	replace_item_in_object, .Lfunc_end63-replace_item_in_object
	.fnend
                                        @ -- End function
	.globl	cJSON_ReplaceItemInObjectCaseSensitive @ -- Begin function cJSON_ReplaceItemInObjectCaseSensitive
	.p2align	2
	.type	cJSON_ReplaceItemInObjectCaseSensitive,%function
	.code	32                      @ @cJSON_ReplaceItemInObjectCaseSensitive
cJSON_ReplaceItemInObjectCaseSensitive:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [sp, #24]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r4, #1
	str	r3, [sp, #12]           @ 4-byte Spill
	mov	r3, r4
	str	lr, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	bl	replace_item_in_object
	str	r0, [sp]                @ 4-byte Spill
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end64:
	.size	cJSON_ReplaceItemInObjectCaseSensitive, .Lfunc_end64-cJSON_ReplaceItemInObjectCaseSensitive
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function cJSON_strdup
	.type	cJSON_strdup,%function
	.code	32                      @ @cJSON_strdup
cJSON_strdup:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	mov	r0, #0
	str	r0, [sp, #28]
	str	r0, [sp, #24]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bne	.LBB65_2
	b	.LBB65_1
.LBB65_1:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB65_5
.LBB65_2:
	ldr	r0, [r11, #-16]
	bl	strlen
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	ldr	r1, [sp, #24]
	ldr	lr, [sp, #28]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	ldr	r2, [sp, #4]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB65_4
	b	.LBB65_3
.LBB65_3:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB65_5
.LBB65_4:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #24]
	bl	memcpy
	ldr	r1, [sp, #16]
	str	r1, [r11, #-8]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB65_5
.LBB65_5:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end65:
	.size	cJSON_strdup, .Lfunc_end65-cJSON_strdup
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateStringReference @ -- Begin function cJSON_CreateStringReference
	.p2align	2
	.type	cJSON_CreateStringReference,%function
	.code	32                      @ @cJSON_CreateStringReference
cJSON_CreateStringReference:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [r11, #-8]
	ldr	r0, .LCPI66_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB66_2
	b	.LBB66_1
.LBB66_1:
	ldr	r0, [sp, #8]
	mov	r1, #272
	str	r1, [r0, #12]
	ldr	r0, [r11, #-8]
	bl	cast_away_const
	ldr	r1, [sp, #8]
	str	r0, [r1, #16]
	b	.LBB66_2
.LBB66_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI66_0:
	.long	global_hooks
.Lfunc_end66:
	.size	cJSON_CreateStringReference, .Lfunc_end66-cJSON_CreateStringReference
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function cast_away_const
	.type	cast_away_const,%function
	.code	32                      @ @cast_away_const
cast_away_const:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	str	r1, [sp, #4]            @ 4-byte Spill
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end67:
	.size	cast_away_const, .Lfunc_end67-cast_away_const
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateObjectReference @ -- Begin function cJSON_CreateObjectReference
	.p2align	2
	.type	cJSON_CreateObjectReference,%function
	.code	32                      @ @cJSON_CreateObjectReference
cJSON_CreateObjectReference:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [r11, #-8]
	ldr	r0, .LCPI68_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB68_2
	b	.LBB68_1
.LBB68_1:
	ldr	r0, [sp, #8]
	mov	r1, #320
	str	r1, [r0, #12]
	ldr	r0, [r11, #-8]
	bl	cast_away_const
	ldr	r1, [sp, #8]
	str	r0, [r1, #8]
	b	.LBB68_2
.LBB68_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI68_0:
	.long	global_hooks
.Lfunc_end68:
	.size	cJSON_CreateObjectReference, .Lfunc_end68-cJSON_CreateObjectReference
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateArrayReference @ -- Begin function cJSON_CreateArrayReference
	.p2align	2
	.type	cJSON_CreateArrayReference,%function
	.code	32                      @ @cJSON_CreateArrayReference
cJSON_CreateArrayReference:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [r11, #-8]
	ldr	r0, .LCPI69_0
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	cJSON_New_Item
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB69_2
	b	.LBB69_1
.LBB69_1:
	ldr	r0, [sp, #8]
	mov	r1, #288
	str	r1, [r0, #12]
	ldr	r0, [r11, #-8]
	bl	cast_away_const
	ldr	r1, [sp, #8]
	str	r0, [r1, #8]
	b	.LBB69_2
.LBB69_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI69_0:
	.long	global_hooks
.Lfunc_end69:
	.size	cJSON_CreateArrayReference, .Lfunc_end69-cJSON_CreateArrayReference
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateIntArray    @ -- Begin function cJSON_CreateIntArray
	.p2align	2
	.type	cJSON_CreateIntArray,%function
	.code	32                      @ @cJSON_CreateIntArray
cJSON_CreateIntArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [sp, #40]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	blt	.LBB70_2
	b	.LBB70_1
.LBB70_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB70_3
	b	.LBB70_2
.LBB70_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB70_15
.LBB70_3:
	bl	cJSON_CreateArray
	str	r0, [sp, #24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB70_4
.LBB70_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB70_6
	b	.LBB70_5
.LBB70_5:                               @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-20]
	subs	r0, r0, r2
	sbcs	r1, r1, r2, asr #31
	mov	r2, #0
	movlo	r2, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB70_6
.LBB70_6:                               @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB70_14
	b	.LBB70_7
.LBB70_7:                               @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	bl	__floatsidf
	bl	cJSON_CreateNumber
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB70_9
	b	.LBB70_8
.LBB70_8:
	ldr	r0, [sp, #24]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB70_15
.LBB70_9:                               @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB70_11
	b	.LBB70_10
.LBB70_10:                              @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	str	r0, [r1, #8]
	b	.LBB70_12
.LBB70_11:                              @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	bl	suffix_object
	b	.LBB70_12
.LBB70_12:                              @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [sp, #40]
	str	r0, [sp, #32]
	b	.LBB70_13
.LBB70_13:                              @   in Loop: Header=BB70_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r11, #-32]
	str	r1, [r11, #-28]
	b	.LBB70_4
.LBB70_14:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-8]
	b	.LBB70_15
.LBB70_15:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end70:
	.size	cJSON_CreateIntArray, .Lfunc_end70-cJSON_CreateIntArray
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function suffix_object
	.type	suffix_object,%function
	.code	32                      @ @suffix_object
suffix_object:
	.fnstart
@ %bb.0:
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #16]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	str	r0, [r1]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	str	r0, [r1, #4]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	add	sp, sp, #24
	mov	pc, lr
.Lfunc_end71:
	.size	suffix_object, .Lfunc_end71-suffix_object
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateFloatArray  @ -- Begin function cJSON_CreateFloatArray
	.p2align	2
	.type	cJSON_CreateFloatArray,%function
	.code	32                      @ @cJSON_CreateFloatArray
cJSON_CreateFloatArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [sp, #40]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	blt	.LBB72_2
	b	.LBB72_1
.LBB72_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB72_3
	b	.LBB72_2
.LBB72_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB72_15
.LBB72_3:
	bl	cJSON_CreateArray
	str	r0, [sp, #24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB72_4
.LBB72_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB72_6
	b	.LBB72_5
.LBB72_5:                               @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-20]
	subs	r0, r0, r2
	sbcs	r1, r1, r2, asr #31
	mov	r2, #0
	movlo	r2, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB72_6
.LBB72_6:                               @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB72_14
	b	.LBB72_7
.LBB72_7:                               @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	bl	__extendsfdf2
	bl	cJSON_CreateNumber
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB72_9
	b	.LBB72_8
.LBB72_8:
	ldr	r0, [sp, #24]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB72_15
.LBB72_9:                               @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB72_11
	b	.LBB72_10
.LBB72_10:                              @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	str	r0, [r1, #8]
	b	.LBB72_12
.LBB72_11:                              @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	bl	suffix_object
	b	.LBB72_12
.LBB72_12:                              @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [sp, #40]
	str	r0, [sp, #32]
	b	.LBB72_13
.LBB72_13:                              @   in Loop: Header=BB72_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r11, #-32]
	str	r1, [r11, #-28]
	b	.LBB72_4
.LBB72_14:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-8]
	b	.LBB72_15
.LBB72_15:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end72:
	.size	cJSON_CreateFloatArray, .Lfunc_end72-cJSON_CreateFloatArray
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateDoubleArray @ -- Begin function cJSON_CreateDoubleArray
	.p2align	2
	.type	cJSON_CreateDoubleArray,%function
	.code	32                      @ @cJSON_CreateDoubleArray
cJSON_CreateDoubleArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [sp, #40]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	blt	.LBB73_2
	b	.LBB73_1
.LBB73_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB73_3
	b	.LBB73_2
.LBB73_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB73_15
.LBB73_3:
	bl	cJSON_CreateArray
	str	r0, [sp, #24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB73_4
.LBB73_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB73_6
	b	.LBB73_5
.LBB73_5:                               @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-20]
	subs	r0, r0, r2
	sbcs	r1, r1, r2, asr #31
	mov	r2, #0
	movlo	r2, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB73_6
.LBB73_6:                               @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB73_14
	b	.LBB73_7
.LBB73_7:                               @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	r1, [r0, r1, lsl #3]!
	ldr	r0, [r0, #4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp]                @ 4-byte Reload
	bl	cJSON_CreateNumber
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB73_9
	b	.LBB73_8
.LBB73_8:
	ldr	r0, [sp, #24]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB73_15
.LBB73_9:                               @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB73_11
	b	.LBB73_10
.LBB73_10:                              @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	str	r0, [r1, #8]
	b	.LBB73_12
.LBB73_11:                              @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	bl	suffix_object
	b	.LBB73_12
.LBB73_12:                              @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [sp, #40]
	str	r0, [sp, #32]
	b	.LBB73_13
.LBB73_13:                              @   in Loop: Header=BB73_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r11, #-32]
	str	r1, [r11, #-28]
	b	.LBB73_4
.LBB73_14:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-8]
	b	.LBB73_15
.LBB73_15:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end73:
	.size	cJSON_CreateDoubleArray, .Lfunc_end73-cJSON_CreateDoubleArray
	.fnend
                                        @ -- End function
	.globl	cJSON_CreateStringArray @ -- Begin function cJSON_CreateStringArray
	.p2align	2
	.type	cJSON_CreateStringArray,%function
	.code	32                      @ @cJSON_CreateStringArray
cJSON_CreateStringArray:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [sp, #40]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	blt	.LBB74_2
	b	.LBB74_1
.LBB74_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB74_3
	b	.LBB74_2
.LBB74_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB74_15
.LBB74_3:
	bl	cJSON_CreateArray
	str	r0, [sp, #24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB74_4
.LBB74_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB74_6
	b	.LBB74_5
.LBB74_5:                               @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-20]
	subs	r0, r0, r2
	sbcs	r1, r1, r2, asr #31
	mov	r2, #0
	movlo	r2, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	b	.LBB74_6
.LBB74_6:                               @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB74_14
	b	.LBB74_7
.LBB74_7:                               @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	bl	cJSON_CreateString
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB74_9
	b	.LBB74_8
.LBB74_8:
	ldr	r0, [sp, #24]
	bl	cJSON_Delete
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB74_15
.LBB74_9:                               @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB74_11
	b	.LBB74_10
.LBB74_10:                              @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	str	r0, [r1, #8]
	b	.LBB74_12
.LBB74_11:                              @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	bl	suffix_object
	b	.LBB74_12
.LBB74_12:                              @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [sp, #40]
	str	r0, [sp, #32]
	b	.LBB74_13
.LBB74_13:                              @   in Loop: Header=BB74_4 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r11, #-32]
	str	r1, [r11, #-28]
	b	.LBB74_4
.LBB74_14:
	ldr	r0, [sp, #24]
	str	r0, [r11, #-8]
	b	.LBB74_15
.LBB74_15:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end74:
	.size	cJSON_CreateStringArray, .Lfunc_end74-cJSON_CreateStringArray
	.fnend
                                        @ -- End function
	.globl	cJSON_Duplicate         @ -- Begin function cJSON_Duplicate
	.p2align	2
	.type	cJSON_Duplicate,%function
	.code	32                      @ @cJSON_Duplicate
cJSON_Duplicate:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #64
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, #0
	str	r0, [r11, #-24]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	bne	.LBB75_2
	b	.LBB75_1
.LBB75_1:
	b	.LBB75_26
.LBB75_2:
	ldr	r0, .LCPI75_0
	bl	cJSON_New_Item
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB75_4
	b	.LBB75_3
.LBB75_3:
	b	.LBB75_26
.LBB75_4:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #12]
	bic	r0, r0, #256
	ldr	r1, [r11, #-24]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #20]
	ldr	r1, [r11, #-24]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	ldr	r2, [r11, #-24]
	str	r0, [r2, #28]
	str	r1, [r2, #24]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.LBB75_8
	b	.LBB75_5
.LBB75_5:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	ldr	r1, .LCPI75_0
	bl	cJSON_strdup
	ldr	r1, [r11, #-24]
	str	r0, [r1, #16]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	bne	.LBB75_7
	b	.LBB75_6
.LBB75_6:
	b	.LBB75_26
.LBB75_7:
	b	.LBB75_8
.LBB75_8:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	beq	.LBB75_15
	b	.LBB75_9
.LBB75_9:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #13]
	tst	r0, #2
	beq	.LBB75_11
	b	.LBB75_10
.LBB75_10:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #32]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB75_12
.LBB75_11:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #32]
	ldr	r1, .LCPI75_0
	bl	cJSON_strdup
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB75_12
.LBB75_12:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [r11, #-24]
	str	r0, [r1, #32]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	bne	.LBB75_14
	b	.LBB75_13
.LBB75_13:
	b	.LBB75_26
.LBB75_14:
	b	.LBB75_15
.LBB75_15:
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	bne	.LBB75_17
	b	.LBB75_16
.LBB75_16:
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-8]
	b	.LBB75_29
.LBB75_17:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #8]
	str	r0, [sp, #32]
	b	.LBB75_18
.LBB75_18:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #32]
	cmp	r0, #0
	beq	.LBB75_25
	b	.LBB75_19
.LBB75_19:                              @   in Loop: Header=BB75_18 Depth=1
	ldr	r0, [sp, #32]
	mov	r1, #1
	bl	cJSON_Duplicate
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB75_21
	b	.LBB75_20
.LBB75_20:
	b	.LBB75_26
.LBB75_21:                              @   in Loop: Header=BB75_18 Depth=1
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.LBB75_23
	b	.LBB75_22
.LBB75_22:                              @   in Loop: Header=BB75_18 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #24]
	str	r0, [r1]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #16]
	str	r0, [r1, #4]
	ldr	r0, [sp, #16]
	str	r0, [sp, #24]
	b	.LBB75_24
.LBB75_23:                              @   in Loop: Header=BB75_18 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-24]
	str	r0, [r1, #8]
	ldr	r0, [sp, #16]
	str	r0, [sp, #24]
	b	.LBB75_24
.LBB75_24:                              @   in Loop: Header=BB75_18 Depth=1
	ldr	r0, [sp, #32]
	ldr	r0, [r0]
	str	r0, [sp, #32]
	b	.LBB75_18
.LBB75_25:
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-8]
	b	.LBB75_29
.LBB75_26:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB75_28
	b	.LBB75_27
.LBB75_27:
	ldr	r0, [r11, #-24]
	bl	cJSON_Delete
	b	.LBB75_28
.LBB75_28:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB75_29
.LBB75_29:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.30:
.LCPI75_0:
	.long	global_hooks
.Lfunc_end75:
	.size	cJSON_Duplicate, .Lfunc_end75-cJSON_Duplicate
	.fnend
                                        @ -- End function
	.globl	cJSON_Minify            @ -- Begin function cJSON_Minify
	.p2align	2
	.type	cJSON_Minify,%function
	.code	32                      @ @cJSON_Minify
cJSON_Minify:
	.fnstart
@ %bb.0:
	sub	sp, sp, #40
	mov	r1, r0
	str	r0, [sp, #32]
	ldr	r0, [sp, #32]
	str	r0, [sp, #24]
	ldr	r0, [sp, #32]
	cmp	r0, #0
	str	r1, [sp, #20]           @ 4-byte Spill
	bne	.LBB76_2
	b	.LBB76_1
.LBB76_1:
	b	.LBB76_48
.LBB76_2:
	b	.LBB76_3
.LBB76_3:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB76_32 Depth 2
                                        @     Child Loop BB76_23 Depth 2
                                        @     Child Loop BB76_15 Depth 2
	ldr	r0, [sp, #32]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB76_47
	b	.LBB76_4
.LBB76_4:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #32
	bne	.LBB76_6
	b	.LBB76_5
.LBB76_5:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_46
.LBB76_6:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #9
	bne	.LBB76_8
	b	.LBB76_7
.LBB76_7:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_45
.LBB76_8:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #13
	bne	.LBB76_10
	b	.LBB76_9
.LBB76_9:                               @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_44
.LBB76_10:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #10
	bne	.LBB76_12
	b	.LBB76_11
.LBB76_11:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_43
.LBB76_12:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #47
	bne	.LBB76_20
	b	.LBB76_13
.LBB76_13:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0, #1]
	cmp	r0, #47
	bne	.LBB76_20
	b	.LBB76_14
.LBB76_14:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_15
.LBB76_15:                              @   Parent Loop BB76_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #16]           @ 4-byte Spill
	beq	.LBB76_17
	b	.LBB76_16
.LBB76_16:                              @   in Loop: Header=BB76_15 Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	sub	r1, r0, #10
	cmp	r0, #10
	movne	r1, #1
	str	r1, [sp, #16]           @ 4-byte Spill
	b	.LBB76_17
.LBB76_17:                              @   in Loop: Header=BB76_15 Depth=2
	ldr	r0, [sp, #16]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB76_19
	b	.LBB76_18
.LBB76_18:                              @   in Loop: Header=BB76_15 Depth=2
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_15
.LBB76_19:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_42
.LBB76_20:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #47
	bne	.LBB76_30
	b	.LBB76_21
.LBB76_21:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0, #1]
	cmp	r0, #42
	bne	.LBB76_30
	b	.LBB76_22
.LBB76_22:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_23
.LBB76_23:                              @   Parent Loop BB76_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB76_27
	b	.LBB76_24
.LBB76_24:                              @   in Loop: Header=BB76_23 Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	mov	r1, #0
	cmp	r0, #42
	str	r1, [sp, #8]            @ 4-byte Spill
	bne	.LBB76_26
	b	.LBB76_25
.LBB76_25:                              @   in Loop: Header=BB76_23 Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0, #1]
	sub	r0, r0, #47
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB76_26
.LBB76_26:                              @   in Loop: Header=BB76_23 Depth=2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	eor	r0, r0, #1
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB76_27
.LBB76_27:                              @   in Loop: Header=BB76_23 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB76_29
	b	.LBB76_28
.LBB76_28:                              @   in Loop: Header=BB76_23 Depth=2
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB76_23
.LBB76_29:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #2
	str	r0, [sp, #32]
	b	.LBB76_41
.LBB76_30:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #34
	bne	.LBB76_39
	b	.LBB76_31
.LBB76_31:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r1, r0, #1
	str	r1, [sp, #32]
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	add	r2, r1, #1
	str	r2, [sp, #24]
	strb	r0, [r1]
	b	.LBB76_32
.LBB76_32:                              @   Parent Loop BB76_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB76_34
	b	.LBB76_33
.LBB76_33:                              @   in Loop: Header=BB76_32 Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	sub	r1, r0, #34
	cmp	r0, #34
	movne	r1, #1
	str	r1, [sp, #4]            @ 4-byte Spill
	b	.LBB76_34
.LBB76_34:                              @   in Loop: Header=BB76_32 Depth=2
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB76_38
	b	.LBB76_35
.LBB76_35:                              @   in Loop: Header=BB76_32 Depth=2
	ldr	r0, [sp, #32]
	ldrsb	r0, [r0]
	cmp	r0, #92
	bne	.LBB76_37
	b	.LBB76_36
.LBB76_36:                              @   in Loop: Header=BB76_32 Depth=2
	ldr	r0, [sp, #32]
	add	r1, r0, #1
	str	r1, [sp, #32]
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	add	r2, r1, #1
	str	r2, [sp, #24]
	strb	r0, [r1]
	b	.LBB76_37
.LBB76_37:                              @   in Loop: Header=BB76_32 Depth=2
	ldr	r0, [sp, #32]
	add	r1, r0, #1
	str	r1, [sp, #32]
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	add	r2, r1, #1
	str	r2, [sp, #24]
	strb	r0, [r1]
	b	.LBB76_32
.LBB76_38:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r1, r0, #1
	str	r1, [sp, #32]
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	add	r2, r1, #1
	str	r2, [sp, #24]
	strb	r0, [r1]
	b	.LBB76_40
.LBB76_39:                              @   in Loop: Header=BB76_3 Depth=1
	ldr	r0, [sp, #32]
	add	r1, r0, #1
	str	r1, [sp, #32]
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	add	r2, r1, #1
	str	r2, [sp, #24]
	strb	r0, [r1]
	b	.LBB76_40
.LBB76_40:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_41
.LBB76_41:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_42
.LBB76_42:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_43
.LBB76_43:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_44
.LBB76_44:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_45
.LBB76_45:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_46
.LBB76_46:                              @   in Loop: Header=BB76_3 Depth=1
	b	.LBB76_3
.LBB76_47:
	ldr	r0, [sp, #24]
	mov	r1, #0
	strb	r1, [r0]
	b	.LBB76_48
.LBB76_48:
	add	sp, sp, #40
	mov	pc, lr
.Lfunc_end76:
	.size	cJSON_Minify, .Lfunc_end76-cJSON_Minify
	.fnend
                                        @ -- End function
	.globl	cJSON_IsInvalid         @ -- Begin function cJSON_IsInvalid
	.p2align	2
	.type	cJSON_IsInvalid,%function
	.code	32                      @ @cJSON_IsInvalid
cJSON_IsInvalid:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB77_2
	b	.LBB77_1
.LBB77_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB77_3
.LBB77_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB77_3
.LBB77_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end77:
	.size	cJSON_IsInvalid, .Lfunc_end77-cJSON_IsInvalid
	.fnend
                                        @ -- End function
	.globl	cJSON_IsFalse           @ -- Begin function cJSON_IsFalse
	.p2align	2
	.type	cJSON_IsFalse,%function
	.code	32                      @ @cJSON_IsFalse
cJSON_IsFalse:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB78_2
	b	.LBB78_1
.LBB78_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB78_3
.LBB78_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #1
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB78_3
.LBB78_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end78:
	.size	cJSON_IsFalse, .Lfunc_end78-cJSON_IsFalse
	.fnend
                                        @ -- End function
	.globl	cJSON_IsTrue            @ -- Begin function cJSON_IsTrue
	.p2align	2
	.type	cJSON_IsTrue,%function
	.code	32                      @ @cJSON_IsTrue
cJSON_IsTrue:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB79_2
	b	.LBB79_1
.LBB79_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB79_3
.LBB79_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #2
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB79_3
.LBB79_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end79:
	.size	cJSON_IsTrue, .Lfunc_end79-cJSON_IsTrue
	.fnend
                                        @ -- End function
	.globl	cJSON_IsBool            @ -- Begin function cJSON_IsBool
	.p2align	2
	.type	cJSON_IsBool,%function
	.code	32                      @ @cJSON_IsBool
cJSON_IsBool:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB80_2
	b	.LBB80_1
.LBB80_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB80_3
.LBB80_2:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #12]
	and	r0, r0, #3
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #12]
	b	.LBB80_3
.LBB80_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end80:
	.size	cJSON_IsBool, .Lfunc_end80-cJSON_IsBool
	.fnend
                                        @ -- End function
	.globl	cJSON_IsNull            @ -- Begin function cJSON_IsNull
	.p2align	2
	.type	cJSON_IsNull,%function
	.code	32                      @ @cJSON_IsNull
cJSON_IsNull:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB81_2
	b	.LBB81_1
.LBB81_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB81_3
.LBB81_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #4
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB81_3
.LBB81_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end81:
	.size	cJSON_IsNull, .Lfunc_end81-cJSON_IsNull
	.fnend
                                        @ -- End function
	.globl	cJSON_IsNumber          @ -- Begin function cJSON_IsNumber
	.p2align	2
	.type	cJSON_IsNumber,%function
	.code	32                      @ @cJSON_IsNumber
cJSON_IsNumber:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB82_2
	b	.LBB82_1
.LBB82_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB82_3
.LBB82_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #8
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB82_3
.LBB82_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end82:
	.size	cJSON_IsNumber, .Lfunc_end82-cJSON_IsNumber
	.fnend
                                        @ -- End function
	.globl	cJSON_IsArray           @ -- Begin function cJSON_IsArray
	.p2align	2
	.type	cJSON_IsArray,%function
	.code	32                      @ @cJSON_IsArray
cJSON_IsArray:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB83_2
	b	.LBB83_1
.LBB83_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB83_3
.LBB83_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #32
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB83_3
.LBB83_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end83:
	.size	cJSON_IsArray, .Lfunc_end83-cJSON_IsArray
	.fnend
                                        @ -- End function
	.globl	cJSON_IsObject          @ -- Begin function cJSON_IsObject
	.p2align	2
	.type	cJSON_IsObject,%function
	.code	32                      @ @cJSON_IsObject
cJSON_IsObject:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB84_2
	b	.LBB84_1
.LBB84_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB84_3
.LBB84_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #64
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB84_3
.LBB84_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end84:
	.size	cJSON_IsObject, .Lfunc_end84-cJSON_IsObject
	.fnend
                                        @ -- End function
	.globl	cJSON_IsRaw             @ -- Begin function cJSON_IsRaw
	.p2align	2
	.type	cJSON_IsRaw,%function
	.code	32                      @ @cJSON_IsRaw
cJSON_IsRaw:
	.fnstart
@ %bb.0:
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	bne	.LBB85_2
	b	.LBB85_1
.LBB85_1:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB85_3
.LBB85_2:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #12]
	sub	r0, r0, #128
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB85_3
.LBB85_3:
	ldr	r0, [sp, #12]
	add	sp, sp, #16
	mov	pc, lr
.Lfunc_end85:
	.size	cJSON_IsRaw, .Lfunc_end85-cJSON_IsRaw
	.fnend
                                        @ -- End function
	.globl	cJSON_Compare           @ -- Begin function cJSON_Compare
	.p2align	2
	.type	cJSON_Compare,%function
	.code	32                      @ @cJSON_Compare
cJSON_Compare:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #88
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r3, [sp, #36]           @ 4-byte Spill
	str	r12, [sp, #32]          @ 4-byte Spill
	str	lr, [sp, #28]           @ 4-byte Spill
	beq	.LBB86_4
	b	.LBB86_1
.LBB86_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB86_4
	b	.LBB86_2
.LBB86_2:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #12]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #12]
	cmp	r0, r1
	bne	.LBB86_4
	b	.LBB86_3
.LBB86_3:
	ldr	r0, [r11, #-8]
	bl	cJSON_IsInvalid
	cmp	r0, #0
	beq	.LBB86_5
	b	.LBB86_4
.LBB86_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_5:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #12]
	sub	r1, r0, #1
	cmp	r1, #2
	str	r0, [sp, #24]           @ 4-byte Spill
	blo	.LBB86_12
	b	.LBB86_6
.LBB86_6:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #4
	beq	.LBB86_12
	b	.LBB86_7
.LBB86_7:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #8
	beq	.LBB86_12
	b	.LBB86_8
.LBB86_8:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #16
	beq	.LBB86_12
	b	.LBB86_9
.LBB86_9:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #32
	beq	.LBB86_12
	b	.LBB86_10
.LBB86_10:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #64
	beq	.LBB86_12
	b	.LBB86_11
.LBB86_11:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #128
	bne	.LBB86_13
	b	.LBB86_12
.LBB86_12:
	b	.LBB86_14
.LBB86_13:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_14:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bne	.LBB86_16
	b	.LBB86_15
.LBB86_15:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_16:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #12]
	sub	r1, r0, #1
	cmp	r1, #2
	str	r0, [sp, #20]           @ 4-byte Spill
	blo	.LBB86_23
	b	.LBB86_17
.LBB86_17:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #4
	beq	.LBB86_23
	b	.LBB86_18
.LBB86_18:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #8
	beq	.LBB86_24
	b	.LBB86_19
.LBB86_19:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #16
	beq	.LBB86_27
	b	.LBB86_20
.LBB86_20:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #32
	beq	.LBB86_33
	b	.LBB86_21
.LBB86_21:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #64
	beq	.LBB86_43
	b	.LBB86_22
.LBB86_22:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #128
	beq	.LBB86_27
	b	.LBB86_66
.LBB86_23:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_24:
	ldr	r0, [r11, #-8]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #24]
	ldr	r2, [r2, #28]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #16]           @ 4-byte Reload
	str	r2, [sp, #12]           @ 4-byte Spill
	mov	r2, r3
	ldr	r3, [sp, #12]           @ 4-byte Reload
	bl	__nedf2
	cmp	r0, #0
	bne	.LBB86_26
	b	.LBB86_25
.LBB86_25:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_26:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_27:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.LBB86_29
	b	.LBB86_28
.LBB86_28:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	bne	.LBB86_30
	b	.LBB86_29
.LBB86_29:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_30:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #16]
	bl	strcmp
	cmp	r0, #0
	bne	.LBB86_32
	b	.LBB86_31
.LBB86_31:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_32:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_33:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #8]
	str	r0, [r11, #-32]
	b	.LBB86_34
.LBB86_34:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	beq	.LBB86_36
	b	.LBB86_35
.LBB86_35:                              @   in Loop: Header=BB86_34 Depth=1
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB86_36
.LBB86_36:                              @   in Loop: Header=BB86_34 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB86_40
	b	.LBB86_37
.LBB86_37:                              @   in Loop: Header=BB86_34 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-20]
	bl	cJSON_Compare
	cmp	r0, #0
	bne	.LBB86_39
	b	.LBB86_38
.LBB86_38:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_39:                              @   in Loop: Header=BB86_34 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-32]
	ldr	r0, [r0]
	str	r0, [r11, #-32]
	b	.LBB86_34
.LBB86_40:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-32]
	cmp	r0, r1
	beq	.LBB86_42
	b	.LBB86_41
.LBB86_41:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_42:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_43:
	mov	r0, #0
	str	r0, [r11, #-40]
	str	r0, [sp, #40]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB86_45
	b	.LBB86_44
.LBB86_44:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB86_46
.LBB86_45:
	mov	r0, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB86_46
.LBB86_46:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [r11, #-40]
	b	.LBB86_47
.LBB86_47:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB86_54
	b	.LBB86_48
.LBB86_48:                              @   in Loop: Header=BB86_47 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-40]
	ldr	r1, [r1, #32]
	ldr	r2, [r11, #-20]
	bl	get_object_item
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	cmp	r0, #0
	bne	.LBB86_50
	b	.LBB86_49
.LBB86_49:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_50:                              @   in Loop: Header=BB86_47 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [sp, #40]
	ldr	r2, [r11, #-20]
	bl	cJSON_Compare
	cmp	r0, #0
	bne	.LBB86_52
	b	.LBB86_51
.LBB86_51:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_52:                              @   in Loop: Header=BB86_47 Depth=1
	b	.LBB86_53
.LBB86_53:                              @   in Loop: Header=BB86_47 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r0, [r0]
	str	r0, [r11, #-40]
	b	.LBB86_47
.LBB86_54:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB86_56
	b	.LBB86_55
.LBB86_55:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #8]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB86_57
.LBB86_56:
	mov	r0, #0
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB86_57
.LBB86_57:
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #40]
	b	.LBB86_58
.LBB86_58:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #40]
	cmp	r0, #0
	beq	.LBB86_65
	b	.LBB86_59
.LBB86_59:                              @   in Loop: Header=BB86_58 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #40]
	ldr	r1, [r1, #32]
	ldr	r2, [r11, #-20]
	bl	get_object_item
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	bne	.LBB86_61
	b	.LBB86_60
.LBB86_60:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_61:                              @   in Loop: Header=BB86_58 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-20]
	bl	cJSON_Compare
	cmp	r0, #0
	bne	.LBB86_63
	b	.LBB86_62
.LBB86_62:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_63:                              @   in Loop: Header=BB86_58 Depth=1
	b	.LBB86_64
.LBB86_64:                              @   in Loop: Header=BB86_58 Depth=1
	ldr	r0, [sp, #40]
	ldr	r0, [r0]
	str	r0, [sp, #40]
	b	.LBB86_58
.LBB86_65:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_66:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB86_67
.LBB86_67:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end86:
	.size	cJSON_Compare, .Lfunc_end86-cJSON_Compare
	.fnend
                                        @ -- End function
	.globl	cJSON_malloc            @ -- Begin function cJSON_malloc
	.p2align	2
	.type	cJSON_malloc,%function
	.code	32                      @ @cJSON_malloc
cJSON_malloc:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	ldr	r0, .LCPI87_0
	ldr	r0, [r0]
	ldr	r1, [sp, #16]
	ldr	r12, [sp, #20]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r12
	ldr	r4, [sp, #12]           @ 4-byte Reload
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	lr, pc
	mov	pc, r4
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI87_0:
	.long	global_hooks
.Lfunc_end87:
	.size	cJSON_malloc, .Lfunc_end87-cJSON_malloc
	.fnend
                                        @ -- End function
	.globl	cJSON_free              @ -- Begin function cJSON_free
	.p2align	2
	.type	cJSON_free,%function
	.code	32                      @ @cJSON_free
cJSON_free:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	str	r0, [sp, #8]
	ldr	r0, .LCPI88_0
	ldr	r0, [r0, #4]
	ldr	r2, [sp, #8]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #4]            @ 4-byte Reload
	str	r1, [sp]                @ 4-byte Spill
	mov	lr, pc
	mov	pc, r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI88_0:
	.long	global_hooks
.Lfunc_end88:
	.size	cJSON_free, .Lfunc_end88-cJSON_free
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function update_offset
	.type	update_offset,%function
	.code	32                      @ @update_offset
update_offset:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [r11, #-8]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB89_2
	b	.LBB89_1
.LBB89_1:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB89_3
	b	.LBB89_2
.LBB89_2:
	b	.LBB89_4
.LBB89_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	bl	strlen
	ldr	lr, [r11, #-8]
	ldr	r2, [lr, #16]
	ldr	r3, [lr, #20]
	adds	r0, r2, r0
	adc	r1, r3, r1
	str	r0, [lr, #16]
	str	r1, [lr, #20]
	b	.LBB89_4
.LBB89_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end89:
	.size	update_offset, .Lfunc_end89-update_offset
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_string
	.type	parse_string,%function
	.code	32                      @ @parse_string
parse_string:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #128
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	add	r0, r0, #1
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	add	r0, r0, #1
	str	r0, [r11, #-32]
	mov	r0, #0
	str	r0, [r11, #-40]
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #34
	str	r2, [sp, #56]           @ 4-byte Spill
	str	r3, [sp, #52]           @ 4-byte Spill
	beq	.LBB90_2
	b	.LBB90_1
.LBB90_1:
	b	.LBB90_38
.LBB90_2:
	mov	r0, #0
	str	r0, [r11, #-52]
	str	r0, [r11, #-56]
	str	r0, [sp, #68]
	str	r0, [sp, #64]
	b	.LBB90_3
.LBB90_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	ldr	r3, [r1, #8]
	ldr	r1, [r1, #12]
	subs	r0, r0, r2
	mov	r2, #0
	sbc	r12, r2, #0
	subs	r0, r0, r3
	sbcs	r1, r12, r1
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r2, [sp, #40]           @ 4-byte Spill
	bhs	.LBB90_5
	b	.LBB90_4
.LBB90_4:                               @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0]
	sub	r1, r0, #34
	cmp	r0, #34
	movne	r1, #1
	str	r1, [sp, #40]           @ 4-byte Spill
	b	.LBB90_5
.LBB90_5:                               @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB90_11
	b	.LBB90_6
.LBB90_6:                               @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0]
	cmp	r0, #92
	bne	.LBB90_10
	b	.LBB90_7
.LBB90_7:                               @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	ldr	r3, [r1, #8]
	ldr	r1, [r1, #12]
	subs	r0, r0, r2
	mov	r2, #0
	sbc	r2, r2, #0
	subs	r0, r0, r3
	sbcs	r1, r2, r1
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	blo	.LBB90_9
	b	.LBB90_8
.LBB90_8:
	b	.LBB90_38
.LBB90_9:                               @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #64]
	str	r1, [sp, #68]
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB90_10
.LBB90_10:                              @   in Loop: Header=BB90_3 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB90_3
.LBB90_11:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	ldr	r3, [r1, #8]
	ldr	r1, [r1, #12]
	subs	r0, r0, r2
	mov	r2, #0
	sbc	r2, r2, #0
	subs	r0, r0, r3
	sbcs	r1, r2, r1
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	bhs	.LBB90_13
	b	.LBB90_12
.LBB90_12:
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0]
	cmp	r0, #34
	beq	.LBB90_14
	b	.LBB90_13
.LBB90_13:
	b	.LBB90_38
.LBB90_14:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	add	r1, r2, r1
	subs	r0, r0, r1
	mov	r1, #0
	sbc	r1, r1, #0
	ldr	r2, [sp, #64]
	ldr	r3, [sp, #68]
	subs	r0, r0, r2
	sbc	r1, r1, r3
	str	r0, [r11, #-56]
	str	r1, [r11, #-52]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #32]
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-52]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #20]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-48]
	cmp	r0, #0
	bne	.LBB90_16
	b	.LBB90_15
.LBB90_15:
	b	.LBB90_38
.LBB90_16:
	ldr	r0, [r11, #-48]
	str	r0, [r11, #-40]
	b	.LBB90_17
.LBB90_17:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-32]
	cmp	r0, r1
	bhs	.LBB90_37
	b	.LBB90_18
.LBB90_18:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #92
	beq	.LBB90_20
	b	.LBB90_19
.LBB90_19:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	ldrb	r0, [r0]
	ldr	r1, [r11, #-40]
	add	r2, r1, #1
	str	r2, [r11, #-40]
	strb	r0, [r1]
	b	.LBB90_36
.LBB90_20:                              @   in Loop: Header=BB90_17 Depth=1
	mov	r0, #2
	strb	r0, [sp, #63]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-24]
	subs	r0, r0, r1
	mov	r1, #0
	sbc	r1, r1, #0
	rsbs	r0, r0, #0
	rscs	r1, r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	blt	.LBB90_22
	b	.LBB90_21
.LBB90_21:
	b	.LBB90_38
.LBB90_22:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #1]
	sub	r0, r0, #34
	cmp	r0, #83
	str	r0, [sp, #8]            @ 4-byte Spill
	bhi	.LBB90_34
@ %bb.23:                               @   in Loop: Header=BB90_17 Depth=1
	adr	r0, .LJTI90_0
	ldr	r1, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.24:
	.p2align	2
.LJTI90_0:
	.long	.LBB90_30
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_30
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_30
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_25
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_26
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_27
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_34
	.long	.LBB90_28
	.long	.LBB90_34
	.long	.LBB90_29
	.long	.LBB90_31
.LBB90_25:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #8
	strb	r1, [r0]
	b	.LBB90_35
.LBB90_26:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #12
	strb	r1, [r0]
	b	.LBB90_35
.LBB90_27:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #10
	strb	r1, [r0]
	b	.LBB90_35
.LBB90_28:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #13
	strb	r1, [r0]
	b	.LBB90_35
.LBB90_29:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #9
	strb	r1, [r0]
	b	.LBB90_35
.LBB90_30:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #1]
	ldr	r1, [r11, #-40]
	add	r2, r1, #1
	str	r2, [r11, #-40]
	strb	r0, [r1]
	b	.LBB90_35
.LBB90_31:                              @   in Loop: Header=BB90_17 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-32]
	sub	r2, r11, #40
	bl	utf16_literal_to_utf8
	strb	r0, [sp, #63]
	ldrb	r0, [sp, #63]
	cmp	r0, #0
	bne	.LBB90_33
	b	.LBB90_32
.LBB90_32:
	b	.LBB90_38
.LBB90_33:                              @   in Loop: Header=BB90_17 Depth=1
	b	.LBB90_35
.LBB90_34:
	b	.LBB90_38
.LBB90_35:                              @   in Loop: Header=BB90_17 Depth=1
	ldrb	r0, [sp, #63]
	ldr	r1, [r11, #-24]
	add	r0, r1, r0
	str	r0, [r11, #-24]
	b	.LBB90_36
.LBB90_36:                              @   in Loop: Header=BB90_17 Depth=1
	b	.LBB90_17
.LBB90_37:
	ldr	r0, [r11, #-40]
	mov	r1, #0
	strb	r1, [r0]
	ldr	r0, [r11, #-8]
	mov	r2, #16
	str	r2, [r0, #12]
	ldr	r0, [r11, #-48]
	ldr	r2, [r11, #-8]
	str	r0, [r2, #16]
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2]
	subs	r0, r0, r3
	sbc	r1, r1, #0
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB90_43
.LBB90_38:
	ldr	r0, [r11, #-48]
	cmp	r0, #0
	beq	.LBB90_40
	b	.LBB90_39
.LBB90_39:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	ldr	r1, [r11, #-48]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB90_40
.LBB90_40:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB90_42
	b	.LBB90_41
.LBB90_41:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	subs	r0, r0, r2
	mov	r2, #0
	sbc	r2, r2, #0
	str	r0, [r1, #16]
	str	r2, [r1, #20]
	b	.LBB90_42
.LBB90_42:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB90_43
.LBB90_43:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end90:
	.size	parse_string, .Lfunc_end90-parse_string
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_number
	.type	parse_number,%function
	.code	32                      @ @parse_number
parse_number:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #168
	bic	sp, sp, #15
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #160]
	str	r1, [sp, #152]
	mov	r0, #0
	str	r0, [sp, #148]
	str	r0, [sp, #144]
	str	r0, [sp, #136]
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	bl	get_decimal_point
	strb	r0, [sp, #63]
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #52]
	str	r0, [sp, #48]
	ldr	r1, [sp, #152]
	cmp	r1, #0
	beq	.LBB91_2
	b	.LBB91_1
.LBB91_1:
	ldr	r0, [sp, #152]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB91_3
	b	.LBB91_2
.LBB91_2:
	mov	r0, #0
	str	r0, [sp, #164]
	b	.LBB91_27
.LBB91_3:
	mov	r0, #0
	str	r0, [sp, #52]
	str	r0, [sp, #48]
	b	.LBB91_4
.LBB91_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #52]
	mov	r2, #0
	rsbs	r0, r0, #62
	rscs	r1, r1, #0
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	blo	.LBB91_8
	b	.LBB91_5
.LBB91_5:                               @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #152]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #20]           @ 4-byte Spill
	beq	.LBB91_7
	b	.LBB91_6
.LBB91_6:                               @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #152]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	ldr	r12, [sp, #48]
	ldr	lr, [sp, #52]
	adds	r3, r3, r12
	adc	r0, r0, lr
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	mov	r2, #0
	movlo	r2, #1
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	b	.LBB91_7
.LBB91_7:                               @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB91_8
.LBB91_8:                               @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB91_17
	b	.LBB91_9
.LBB91_9:                               @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #152]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, [sp, #48]
	ldrb	r0, [r0, r1]
	sub	r0, r0, #43
	cmp	r0, #58
	str	r0, [sp, #8]            @ 4-byte Spill
	bhi	.LBB91_14
@ %bb.10:                               @   in Loop: Header=BB91_4 Depth=1
	adr	r0, .LJTI91_0
	ldr	r1, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.11:
	.p2align	2
.LJTI91_0:
	.long	.LBB91_12
	.long	.LBB91_14
	.long	.LBB91_12
	.long	.LBB91_13
	.long	.LBB91_14
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
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_12
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_14
	.long	.LBB91_12
.LBB91_12:                              @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #152]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	ldr	r1, [sp, #48]
	ldrb	r0, [r0, r1]
	add	r2, sp, #64
	strb	r0, [r2, r1]
	b	.LBB91_15
.LBB91_13:                              @   in Loop: Header=BB91_4 Depth=1
	ldrb	r0, [sp, #63]
	ldr	r1, [sp, #48]
	add	r2, sp, #64
	strb	r0, [r2, r1]
	b	.LBB91_15
.LBB91_14:
	b	.LBB91_18
.LBB91_15:                              @   in Loop: Header=BB91_4 Depth=1
	b	.LBB91_16
.LBB91_16:                              @   in Loop: Header=BB91_4 Depth=1
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #52]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	b	.LBB91_4
.LBB91_17:
	b	.LBB91_18
.LBB91_18:
	ldr	r0, [sp, #48]
	add	r1, sp, #64
	mov	r2, #0
	strb	r2, [r1, r0]
	add	r0, sp, #136
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r2, [sp, #4]            @ 4-byte Reload
	str	r1, [sp]                @ 4-byte Spill
	mov	r1, r2
	bl	strtod
	str	r1, [sp, #148]
	str	r0, [sp, #144]
	ldr	r0, [sp, #136]
	ldr	r1, [sp]                @ 4-byte Reload
	cmp	r1, r0
	bne	.LBB91_20
	b	.LBB91_19
.LBB91_19:
	mov	r0, #0
	str	r0, [sp, #164]
	b	.LBB91_27
.LBB91_20:
	ldr	r0, [sp, #144]
	ldr	r1, [sp, #148]
	ldr	r2, [sp, #160]
	str	r1, [r2, #28]
	str	r0, [r2, #24]
	ldr	r0, [sp, #144]
	ldr	r1, [sp, #148]
	mov	r2, #1069547520
	orr	r2, r2, #-1073741824
	ldr	r3, .LCPI91_0
	bl	__gedf2
	cmp	r0, #0
	blt	.LBB91_22
	b	.LBB91_21
.LBB91_21:
	ldr	r0, [sp, #160]
	mvn	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB91_26
.LBB91_22:
	ldr	r0, [sp, #144]
	ldr	r1, [sp, #148]
	mov	r2, #0
	mov	r3, #31457280
	orr	r3, r3, #-1073741824
	bl	__ledf2
	cmp	r0, #0
	bgt	.LBB91_24
	b	.LBB91_23
.LBB91_23:
	ldr	r0, [sp, #160]
	mov	r1, #-2147483648
	str	r1, [r0, #20]
	b	.LBB91_25
.LBB91_24:
	ldr	r0, [sp, #144]
	ldr	r1, [sp, #148]
	bl	__fixdfsi
	ldr	r1, [sp, #160]
	str	r0, [r1, #20]
	b	.LBB91_25
.LBB91_25:
	b	.LBB91_26
.LBB91_26:
	ldr	r0, [sp, #160]
	mov	r1, #8
	str	r1, [r0, #12]
	ldr	r0, [sp, #136]
	add	r1, sp, #64
	subs	r0, r0, r1
	mov	r1, #0
	sbc	r1, r1, #0
	ldr	r2, [sp, #152]
	ldr	r3, [r2, #16]
	ldr	r12, [r2, #20]
	adds	r0, r3, r0
	adc	r1, r12, r1
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	mov	r0, #1
	str	r0, [sp, #164]
	b	.LBB91_27
.LBB91_27:
	ldr	r0, [sp, #164]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.28:
.LCPI91_0:
	.long	1105199103              @ 0x41dfffff
.Lfunc_end91:
	.size	parse_number, .Lfunc_end91-parse_number
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_array
	.type	parse_array,%function
	.code	32                      @ @parse_array
parse_array:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #104
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [r11, #-24]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	subs	r1, r1, #1000
	sbcs	r0, r0, #0
	str	r2, [r11, #-44]         @ 4-byte Spill
	str	r3, [r11, #-48]         @ 4-byte Spill
	str	r1, [sp, #52]           @ 4-byte Spill
	str	r0, [sp, #48]           @ 4-byte Spill
	blo	.LBB92_2
	b	.LBB92_1
.LBB92_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB92_33
.LBB92_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #91
	beq	.LBB92_4
	b	.LBB92_3
.LBB92_3:
	b	.LBB92_30
.LBB92_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	r1, [r11, #-16]
	cmp	r1, #0
	str	r0, [sp, #44]           @ 4-byte Spill
	beq	.LBB92_8
	b	.LBB92_5
.LBB92_5:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	bhs	.LBB92_8
	b	.LBB92_6
.LBB92_6:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #93
	bne	.LBB92_8
	b	.LBB92_7
.LBB92_7:
	b	.LBB92_29
.LBB92_8:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB92_10
	b	.LBB92_9
.LBB92_9:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	blo	.LBB92_11
	b	.LBB92_10
.LBB92_10:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB92_30
.LBB92_11:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB92_12
.LBB92_12:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-16]
	add	r0, r0, #32
	bl	cJSON_New_Item
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	bne	.LBB92_14
	b	.LBB92_13
.LBB92_13:
	b	.LBB92_30
.LBB92_14:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB92_16
	b	.LBB92_15
.LBB92_15:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-24]
	str	r0, [r11, #-32]
	b	.LBB92_17
.LBB92_16:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-32]
	str	r0, [r1]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-40]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-32]
	b	.LBB92_17
.LBB92_17:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-16]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	parse_value
	cmp	r0, #0
	bne	.LBB92_19
	b	.LBB92_18
.LBB92_18:
	b	.LBB92_30
.LBB92_19:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB92_20
.LBB92_20:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-16]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #16]           @ 4-byte Spill
	beq	.LBB92_23
	b	.LBB92_21
.LBB92_21:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	mov	r12, #0
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
	bhs	.LBB92_23
	b	.LBB92_22
.LBB92_22:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	sub	r0, r0, #44
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB92_23
.LBB92_23:                              @   in Loop: Header=BB92_12 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	tst	r0, #1
	bne	.LBB92_12
	b	.LBB92_24
.LBB92_24:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB92_27
	b	.LBB92_25
.LBB92_25:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	bhs	.LBB92_27
	b	.LBB92_26
.LBB92_26:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #93
	beq	.LBB92_28
	b	.LBB92_27
.LBB92_27:
	b	.LBB92_30
.LBB92_28:
	b	.LBB92_29
.LBB92_29:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	ldr	r0, [r11, #-8]
	mov	r1, #32
	str	r1, [r0, #12]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-8]
	str	r0, [r1, #8]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB92_33
.LBB92_30:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB92_32
	b	.LBB92_31
.LBB92_31:
	ldr	r0, [r11, #-24]
	bl	cJSON_Delete
	b	.LBB92_32
.LBB92_32:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB92_33
.LBB92_33:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end92:
	.size	parse_array, .Lfunc_end92-parse_array
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_object
	.type	parse_object,%function
	.code	32                      @ @parse_object
parse_object:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #128
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [r11, #-24]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	subs	r1, r1, #1000
	sbcs	r0, r0, #0
	str	r2, [r11, #-44]         @ 4-byte Spill
	str	r3, [r11, #-48]         @ 4-byte Spill
	str	r1, [r11, #-52]         @ 4-byte Spill
	str	r0, [r11, #-56]         @ 4-byte Spill
	blo	.LBB93_2
	b	.LBB93_1
.LBB93_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB93_41
.LBB93_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB93_5
	b	.LBB93_3
.LBB93_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [r11, #-60]         @ 4-byte Spill
	str	r0, [sp, #64]           @ 4-byte Spill
	bhs	.LBB93_5
	b	.LBB93_4
.LBB93_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #123
	beq	.LBB93_6
	b	.LBB93_5
.LBB93_5:
	b	.LBB93_38
.LBB93_6:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	r1, [r11, #-16]
	cmp	r1, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	beq	.LBB93_10
	b	.LBB93_7
.LBB93_7:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #56]           @ 4-byte Spill
	str	r0, [sp, #52]           @ 4-byte Spill
	bhs	.LBB93_10
	b	.LBB93_8
.LBB93_8:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #125
	bne	.LBB93_10
	b	.LBB93_9
.LBB93_9:
	b	.LBB93_37
.LBB93_10:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB93_12
	b	.LBB93_11
.LBB93_11:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #48]           @ 4-byte Spill
	str	r0, [sp, #44]           @ 4-byte Spill
	blo	.LBB93_13
	b	.LBB93_12
.LBB93_12:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB93_38
.LBB93_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB93_14
.LBB93_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-16]
	add	r0, r0, #32
	bl	cJSON_New_Item
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	bne	.LBB93_16
	b	.LBB93_15
.LBB93_15:
	b	.LBB93_38
.LBB93_16:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB93_18
	b	.LBB93_17
.LBB93_17:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-24]
	str	r0, [r11, #-32]
	b	.LBB93_19
.LBB93_18:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-32]
	str	r0, [r1]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-40]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-32]
	b	.LBB93_19
.LBB93_19:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-16]
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	parse_string
	cmp	r0, #0
	bne	.LBB93_21
	b	.LBB93_20
.LBB93_20:
	b	.LBB93_38
.LBB93_21:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	lr, [r11, #-32]
	ldr	r1, [lr, #16]
	str	r1, [lr, #32]
	ldr	r1, [r11, #-32]
	mov	lr, #0
	str	lr, [r1, #16]
	ldr	r1, [r11, #-16]
	cmp	r1, #0
	str	r0, [sp, #36]           @ 4-byte Spill
	beq	.LBB93_24
	b	.LBB93_22
.LBB93_22:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	bhs	.LBB93_24
	b	.LBB93_23
.LBB93_23:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #58
	beq	.LBB93_25
	b	.LBB93_24
.LBB93_24:
	b	.LBB93_38
.LBB93_25:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-16]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	parse_value
	cmp	r0, #0
	bne	.LBB93_27
	b	.LBB93_26
.LBB93_26:
	b	.LBB93_38
.LBB93_27:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	bl	buffer_skip_whitespace
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB93_28
.LBB93_28:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	mov	r1, #0
	cmp	r0, #0
	str	r1, [sp, #16]           @ 4-byte Spill
	beq	.LBB93_31
	b	.LBB93_29
.LBB93_29:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	mov	r12, #0
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
	bhs	.LBB93_31
	b	.LBB93_30
.LBB93_30:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	sub	r0, r0, #44
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB93_31
.LBB93_31:                              @   in Loop: Header=BB93_14 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	tst	r0, #1
	bne	.LBB93_14
	b	.LBB93_32
.LBB93_32:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB93_35
	b	.LBB93_33
.LBB93_33:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	bhs	.LBB93_35
	b	.LBB93_34
.LBB93_34:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	ldrb	r0, [r1, r0]
	cmp	r0, #125
	beq	.LBB93_36
	b	.LBB93_35
.LBB93_35:
	b	.LBB93_38
.LBB93_36:
	b	.LBB93_37
.LBB93_37:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	ldr	r0, [r11, #-8]
	mov	r1, #64
	str	r1, [r0, #12]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-8]
	str	r0, [r1, #8]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB93_41
.LBB93_38:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB93_40
	b	.LBB93_39
.LBB93_39:
	ldr	r0, [r11, #-24]
	bl	cJSON_Delete
	b	.LBB93_40
.LBB93_40:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB93_41
.LBB93_41:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end93:
	.size	parse_object, .Lfunc_end93-parse_object
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function utf16_literal_to_utf8
	.type	utf16_literal_to_utf8,%function
	.code	32                      @ @utf16_literal_to_utf8
utf16_literal_to_utf8:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #96
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [r11, #-24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [r11, #-36]
	ldr	r1, [r11, #-8]
	str	r1, [r11, #-40]
	strb	r0, [r11, #-41]
	strb	r0, [r11, #-42]
	strb	r0, [r11, #-43]
	strb	r0, [r11, #-44]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-40]
	subs	r1, r1, r2
	sbc	r0, r0, #0
	rsbs	r1, r1, #5
	rscs	r0, r0, #0
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r12, [sp, #36]          @ 4-byte Spill
	str	lr, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #24]           @ 4-byte Spill
	blt	.LBB94_2
	b	.LBB94_1
.LBB94_1:
	b	.LBB94_37
.LBB94_2:
	ldr	r0, [r11, #-40]
	add	r0, r0, #2
	bl	parse_hex4
	str	r0, [r11, #-36]
	ldr	r0, [r11, #-36]
	cmp	r0, #56320
	blo	.LBB94_5
	b	.LBB94_3
.LBB94_3:
	ldr	r0, [r11, #-36]
	lsr	r0, r0, #13
	cmp	r0, #6
	bhi	.LBB94_5
	b	.LBB94_4
.LBB94_4:
	b	.LBB94_37
.LBB94_5:
	ldr	r0, [r11, #-36]
	cmp	r0, #55296
	blo	.LBB94_16
	b	.LBB94_6
.LBB94_6:
	ldr	r0, [r11, #-36]
	lsr	r0, r0, #10
	cmp	r0, #54
	bhi	.LBB94_16
	b	.LBB94_7
.LBB94_7:
	ldr	r0, [r11, #-40]
	add	r0, r0, #6
	str	r0, [sp, #48]
	mov	r0, #0
	str	r0, [sp, #44]
	mov	r1, #12
	strb	r1, [r11, #-43]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #48]
	subs	r1, r1, r2
	sbc	r0, r0, #0
	rsbs	r1, r1, #5
	rscs	r0, r0, #0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	blt	.LBB94_9
	b	.LBB94_8
.LBB94_8:
	b	.LBB94_37
.LBB94_9:
	ldr	r0, [sp, #48]
	ldrb	r0, [r0]
	cmp	r0, #92
	bne	.LBB94_11
	b	.LBB94_10
.LBB94_10:
	ldr	r0, [sp, #48]
	ldrb	r0, [r0, #1]
	cmp	r0, #117
	beq	.LBB94_12
	b	.LBB94_11
.LBB94_11:
	b	.LBB94_37
.LBB94_12:
	ldr	r0, [sp, #48]
	add	r0, r0, #2
	bl	parse_hex4
	str	r0, [sp, #44]
	ldr	r0, [sp, #44]
	cmp	r0, #56320
	blo	.LBB94_14
	b	.LBB94_13
.LBB94_13:
	ldr	r0, [sp, #44]
	cmp	r0, #57344
	blo	.LBB94_15
	b	.LBB94_14
.LBB94_14:
	b	.LBB94_37
.LBB94_15:
	ldr	r0, [r11, #-36]
	mov	r1, #255
	orr	r1, r1, #768
	and	r0, r0, r1
	ldr	r2, [sp, #44]
	and	r1, r2, r1
	orr	r0, r1, r0, lsl #10
	add	r0, r0, #65536
	mov	r1, #0
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB94_17
.LBB94_16:
	mov	r0, #6
	strb	r0, [r11, #-43]
	ldr	r0, [r11, #-36]
	mov	r1, #0
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB94_17
.LBB94_17:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	rsbs	r0, r0, #127
	rscs	r1, r1, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	blo	.LBB94_19
	b	.LBB94_18
.LBB94_18:
	mov	r0, #1
	strb	r0, [r11, #-41]
	b	.LBB94_29
.LBB94_19:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	lsr	r0, r0, #11
	orr	r0, r0, r1, lsl #21
	orr	r0, r0, r1, lsr #11
	cmp	r0, #0
	bne	.LBB94_21
	b	.LBB94_20
.LBB94_20:
	mov	r0, #2
	strb	r0, [r11, #-41]
	mov	r0, #192
	strb	r0, [r11, #-44]
	b	.LBB94_28
.LBB94_21:
	ldr	r0, [r11, #-28]
	ldrh	r1, [r11, #-30]
	orr	r1, r1, r0, lsl #16
	orr	r0, r1, r0, lsr #16
	cmp	r0, #0
	bne	.LBB94_23
	b	.LBB94_22
.LBB94_22:
	mov	r0, #3
	strb	r0, [r11, #-41]
	mov	r0, #224
	strb	r0, [r11, #-44]
	b	.LBB94_27
.LBB94_23:
	ldr	r0, [r11, #-28]
	ldrh	r1, [r11, #-30]
	orr	r1, r1, r0, lsl #16
	rsbs	r1, r1, #16
	mov	r2, #0
	sbcs	r0, r2, r0, lsr #16
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	blo	.LBB94_25
	b	.LBB94_24
.LBB94_24:
	mov	r0, #4
	strb	r0, [r11, #-41]
	mov	r0, #240
	strb	r0, [r11, #-44]
	b	.LBB94_26
.LBB94_25:
	b	.LBB94_37
.LBB94_26:
	b	.LBB94_27
.LBB94_27:
	b	.LBB94_28
.LBB94_28:
	b	.LBB94_29
.LBB94_29:
	ldrb	r0, [r11, #-41]
	sub	r0, r0, #1
	strb	r0, [r11, #-42]
	b	.LBB94_30
.LBB94_30:                              @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r11, #-42]
	cmp	r0, #1
	blt	.LBB94_33
	b	.LBB94_31
.LBB94_31:                              @   in Loop: Header=BB94_30 Depth=1
	ldr	r0, [r11, #-32]
	orr	r0, r0, #128
	and	r0, r0, #191
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	ldrb	r2, [r11, #-42]
	strb	r0, [r1, r2]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	lsr	r0, r0, #6
	orr	r0, r0, r1, lsl #26
	lsr	r1, r1, #6
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	b	.LBB94_32
.LBB94_32:                              @   in Loop: Header=BB94_30 Depth=1
	ldrb	r0, [r11, #-42]
	sub	r0, r0, #1
	strb	r0, [r11, #-42]
	b	.LBB94_30
.LBB94_33:
	ldrb	r0, [r11, #-41]
	cmp	r0, #2
	blt	.LBB94_35
	b	.LBB94_34
.LBB94_34:
	ldr	r0, [r11, #-32]
	ldrb	r1, [r11, #-44]
	orr	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	strb	r0, [r1]
	b	.LBB94_36
.LBB94_35:
	ldr	r0, [r11, #-32]
	and	r0, r0, #127
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	strb	r0, [r1]
	b	.LBB94_36
.LBB94_36:
	ldrb	r0, [r11, #-41]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	ldrb	r0, [r11, #-43]
	strb	r0, [r11, #-1]
	b	.LBB94_38
.LBB94_37:
	mov	r0, #0
	strb	r0, [r11, #-1]
	b	.LBB94_38
.LBB94_38:
	ldrb	r0, [r11, #-1]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end94:
	.size	utf16_literal_to_utf8, .Lfunc_end94-utf16_literal_to_utf8
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function parse_hex4
	.type	parse_hex4,%function
	.code	32                      @ @parse_hex4
parse_hex4:
	.fnstart
@ %bb.0:
	sub	sp, sp, #48
	mov	r1, r0
	str	r0, [sp, #40]
	mov	r0, #0
	str	r0, [sp, #36]
	str	r0, [sp, #28]
	str	r0, [sp, #24]
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB95_1
.LBB95_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	rsbs	r0, r0, #3
	rscs	r1, r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	blo	.LBB95_18
	b	.LBB95_2
.LBB95_2:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #48
	blt	.LBB95_5
	b	.LBB95_3
.LBB95_3:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #57
	bgt	.LBB95_5
	b	.LBB95_4
.LBB95_4:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #36]
	add	r0, r1, r0
	sub	r0, r0, #48
	str	r0, [sp, #36]
	b	.LBB95_14
.LBB95_5:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #65
	blt	.LBB95_8
	b	.LBB95_6
.LBB95_6:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #70
	bgt	.LBB95_8
	b	.LBB95_7
.LBB95_7:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #36]
	add	r0, r1, r0
	sub	r0, r0, #55
	str	r0, [sp, #36]
	b	.LBB95_13
.LBB95_8:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #97
	blt	.LBB95_11
	b	.LBB95_9
.LBB95_9:                               @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	cmp	r0, #102
	bgt	.LBB95_11
	b	.LBB95_10
.LBB95_10:                              @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #36]
	add	r0, r1, r0
	sub	r0, r0, #87
	str	r0, [sp, #36]
	b	.LBB95_12
.LBB95_11:
	mov	r0, #0
	str	r0, [sp, #44]
	b	.LBB95_19
.LBB95_12:                              @   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_13
.LBB95_13:                              @   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_14
.LBB95_14:                              @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	rsbs	r0, r0, #2
	rscs	r1, r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	blo	.LBB95_16
	b	.LBB95_15
.LBB95_15:                              @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #36]
	lsl	r0, r0, #4
	str	r0, [sp, #36]
	b	.LBB95_16
.LBB95_16:                              @   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_17
.LBB95_17:                              @   in Loop: Header=BB95_1 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	b	.LBB95_1
.LBB95_18:
	ldr	r0, [sp, #36]
	str	r0, [sp, #44]
	b	.LBB95_19
.LBB95_19:
	ldr	r0, [sp, #44]
	add	sp, sp, #48
	mov	pc, lr
.Lfunc_end95:
	.size	parse_hex4, .Lfunc_end95-parse_hex4
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function get_decimal_point
	.type	get_decimal_point,%function
	.code	32                      @ @get_decimal_point
get_decimal_point:
	.fnstart
@ %bb.0:
	mov	r0, #46
	mov	pc, lr
.Lfunc_end96:
	.size	get_decimal_point, .Lfunc_end96-get_decimal_point
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function ensure
	.type	ensure,%function
	.code	32                      @ @ensure
ensure:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #120
	mov	r1, r3
	mov	r12, r2
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r3, [r11, #-20]
	str	r2, [r11, #-24]
	mov	r0, #0
	str	r0, [r11, #-32]
	str	r0, [r11, #-36]
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r12, [r11, #-44]        @ 4-byte Spill
	str	r1, [r11, #-48]         @ 4-byte Spill
	str	lr, [r11, #-52]         @ 4-byte Spill
	beq	.LBB97_2
	b	.LBB97_1
.LBB97_1:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB97_3
	b	.LBB97_2
.LBB97_2:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	orr	r0, r1, r0
	cmp	r0, #0
	beq	.LBB97_6
	b	.LBB97_4
.LBB97_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
	subs	r1, r3, r1
	sbcs	r0, r0, r2
	str	r1, [r11, #-56]         @ 4-byte Spill
	str	r0, [sp, #60]           @ 4-byte Spill
	blo	.LBB97_6
	b	.LBB97_5
.LBB97_5:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_6:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	subs	r0, r0, #-2147483648
	sbcs	r1, r1, #0
	str	r0, [sp, #56]           @ 4-byte Spill
	str	r1, [sp, #52]           @ 4-byte Spill
	blo	.LBB97_8
	b	.LBB97_7
.LBB97_7:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_8:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r0, [r0, #20]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-20]
	adds	r1, r2, r1
	adc	r0, r3, r0
	adds	r1, r1, #1
	adc	r0, r0, #0
	str	r1, [r11, #-24]
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #12]
	subs	r0, r3, r0
	sbcs	r1, r2, r1
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	blo	.LBB97_10
	b	.LBB97_9
.LBB97_9:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #16]
	add	r0, r1, r0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_10:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #32]
	cmp	r0, #0
	beq	.LBB97_12
	b	.LBB97_11
.LBB97_11:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_12:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	subs	r0, r0, #1073741824
	sbcs	r1, r1, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	blo	.LBB97_17
	b	.LBB97_13
.LBB97_13:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	mvn	r2, #-2147483648
	subs	r0, r2, r0
	rscs	r1, r1, #0
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
	blo	.LBB97_15
	b	.LBB97_14
.LBB97_14:
	mov	r0, #0
	str	r0, [r11, #-36]
	mvn	r0, #-2147483648
	str	r0, [r11, #-40]
	b	.LBB97_16
.LBB97_15:
	mov	r0, #0
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_16:
	b	.LBB97_18
.LBB97_17:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	lsl	r1, r1, #1
	orr	r1, r1, r0, lsr #31
	lsl	r0, r0, #1
	str	r0, [r11, #-40]
	str	r1, [r11, #-36]
	b	.LBB97_18
.LBB97_18:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	cmp	r0, #0
	beq	.LBB97_22
	b	.LBB97_19
.LBB97_19:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #48]
	ldr	r2, [r11, #-40]
	ldr	r3, [r11, #-36]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	bne	.LBB97_21
	b	.LBB97_20
.LBB97_20:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #44]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	ldr	r0, [r11, #-16]
	mov	r1, #0
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	ldr	r0, [r11, #-16]
	str	r1, [r0]
	str	r1, [r11, #-8]
	b	.LBB97_28
.LBB97_21:
	b	.LBB97_27
.LBB97_22:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #40]
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-36]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #16]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r2
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	bne	.LBB97_24
	b	.LBB97_23
.LBB97_23:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #44]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	ldr	r0, [r11, #-16]
	mov	r1, #0
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	ldr	r0, [r11, #-16]
	str	r1, [r0]
	str	r1, [r11, #-8]
	b	.LBB97_28
.LBB97_24:
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	beq	.LBB97_26
	b	.LBB97_25
.LBB97_25:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	add	r1, r1, #1
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r2
	ldr	r2, [sp, #8]            @ 4-byte Reload
	bl	memcpy
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB97_26
.LBB97_26:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	ldr	r0, [r0, #44]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp]                @ 4-byte Reload
	mov	lr, pc
	mov	pc, r1
	b	.LBB97_27
.LBB97_27:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-16]
	str	r1, [r2, #12]
	str	r0, [r2, #8]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	str	r0, [r1]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #16]
	add	r0, r0, r1
	str	r0, [r11, #-8]
	b	.LBB97_28
.LBB97_28:
	ldr	r0, [r11, #-8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end97:
	.size	ensure, .Lfunc_end97-ensure
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_number
	.type	print_number,%function
	.code	32                      @ @print_number
print_number:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #136
	bic	sp, sp, #15
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #128]
	str	r1, [sp, #120]
	mov	r0, #0
	str	r0, [sp, #112]
	ldr	r1, [sp, #128]
	ldr	r12, [r1, #24]
	ldr	r1, [r1, #28]
	str	r1, [sp, #108]
	str	r12, [sp, #104]
	str	r0, [sp, #100]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	bl	get_decimal_point
	strb	r0, [sp, #47]
	ldr	r0, [sp, #120]
	cmp	r0, #0
	bne	.LBB98_2
	b	.LBB98_1
.LBB98_1:
	mov	r0, #0
	str	r0, [sp, #132]
	b	.LBB98_20
.LBB98_2:
	ldr	r0, [sp, #104]
	ldr	r1, [sp, #108]
	mov	r2, #0
	str	r2, [sp, #20]           @ 4-byte Spill
	ldr	r3, [sp, #20]           @ 4-byte Reload
	bl	__muldf3
	ldr	r2, [sp, #20]           @ 4-byte Reload
	ldr	r3, [sp, #20]           @ 4-byte Reload
	bl	__eqdf2
	cmp	r0, #0
	beq	.LBB98_4
	b	.LBB98_3
.LBB98_3:
	ldr	r1, .LCPI98_3
	add	r0, sp, #48
	bl	sprintf
	str	r0, [sp, #100]
	b	.LBB98_8
.LBB98_4:
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #108]
	ldr	r1, .LCPI98_0
	add	r0, sp, #48
	str	r0, [sp, #16]           @ 4-byte Spill
	bl	sprintf
	str	r0, [sp, #100]
	ldr	r1, .LCPI98_1
	add	r2, sp, #32
	ldr	r0, [sp, #16]           @ 4-byte Reload
	bl	__isoc99_sscanf
	cmp	r0, #1
	bne	.LBB98_6
	b	.LBB98_5
.LBB98_5:
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #108]
	bl	__eqdf2
	cmp	r0, #0
	beq	.LBB98_7
	b	.LBB98_6
.LBB98_6:
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #108]
	ldr	r1, .LCPI98_2
	add	r0, sp, #48
	bl	sprintf
	str	r0, [sp, #100]
	b	.LBB98_7
.LBB98_7:
	b	.LBB98_8
.LBB98_8:
	ldr	r0, [sp, #100]
	cmp	r0, #0
	blt	.LBB98_10
	b	.LBB98_9
.LBB98_9:
	ldr	r0, [sp, #100]
	cmp	r0, #26
	blt	.LBB98_11
	b	.LBB98_10
.LBB98_10:
	mov	r0, #0
	str	r0, [sp, #132]
	b	.LBB98_20
.LBB98_11:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #100]
	asr	r2, r1, #31
	adds	r1, r1, #1
	adc	r3, r2, #0
	mov	r2, r1
	bl	ensure
	str	r0, [sp, #112]
	ldr	r0, [sp, #112]
	cmp	r0, #0
	bne	.LBB98_13
	b	.LBB98_12
.LBB98_12:
	mov	r0, #0
	str	r0, [sp, #132]
	b	.LBB98_20
.LBB98_13:
	mov	r0, #0
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	b	.LBB98_14
.LBB98_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #88]
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #100]
	subs	r0, r0, r2
	sbcs	r1, r1, r2, asr #31
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	bhs	.LBB98_19
	b	.LBB98_15
.LBB98_15:                              @   in Loop: Header=BB98_14 Depth=1
	ldr	r0, [sp, #88]
	add	r1, sp, #48
	ldrb	r0, [r1, r0]
	ldrb	r1, [sp, #47]
	cmp	r0, r1
	bne	.LBB98_17
	b	.LBB98_16
.LBB98_16:                              @   in Loop: Header=BB98_14 Depth=1
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #88]
	mov	r2, #46
	strb	r2, [r0, r1]
	b	.LBB98_18
.LBB98_17:                              @   in Loop: Header=BB98_14 Depth=1
	ldr	r0, [sp, #88]
	add	r1, sp, #48
	ldrb	r1, [r1, r0]
	ldr	r2, [sp, #112]
	strb	r1, [r2, r0]
	b	.LBB98_18
.LBB98_18:                              @   in Loop: Header=BB98_14 Depth=1
	ldr	r0, [sp, #88]
	ldr	r1, [sp, #92]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #88]
	str	r1, [sp, #92]
	b	.LBB98_14
.LBB98_19:
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #88]
	mov	r2, #0
	strb	r2, [r0, r1]
	ldr	r0, [sp, #100]
	ldr	r1, [sp, #120]
	ldr	r2, [r1, #16]
	ldr	r3, [r1, #20]
	adds	r2, r2, r0
	adc	r0, r3, r0, asr #31
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	mov	r0, #1
	str	r0, [sp, #132]
	b	.LBB98_20
.LBB98_20:
	ldr	r0, [sp, #132]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.21:
.LCPI98_0:
	.long	.L.str.5
.LCPI98_1:
	.long	.L.str.6
.LCPI98_2:
	.long	.L.str.7
.LCPI98_3:
	.long	.L.str.2
.Lfunc_end98:
	.size	print_number, .Lfunc_end98-print_number
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_string
	.type	print_string,%function
	.code	32                      @ @print_string
print_string:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	ldr	r1, [sp, #8]
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bl	print_string_ptr
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end99:
	.size	print_string, .Lfunc_end99-print_string
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_array
	.type	print_array,%function
	.code	32                      @ @print_array
print_array:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [sp, #24]
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	bne	.LBB100_2
	b	.LBB100_1
.LBB100_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_2:
	ldr	r0, [r11, #-16]
	mov	r2, #1
	mov	r3, #0
	bl	ensure
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB100_4
	b	.LBB100_3
.LBB100_3:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_4:
	ldr	r0, [sp, #24]
	mov	r1, #91
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	b	.LBB100_5
.LBB100_5:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB100_15
	b	.LBB100_6
.LBB100_6:                              @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-16]
	bl	print_value
	cmp	r0, #0
	bne	.LBB100_8
	b	.LBB100_7
.LBB100_7:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_8:                              @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [r11, #-16]
	bl	update_offset
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB100_14
	b	.LBB100_9
.LBB100_9:                              @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	mov	r1, #1
	cmp	r0, #0
	movne	r1, #2
	mov	r0, #0
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	adds	r1, r1, #1
	adc	r3, r2, #0
	mov	r2, r1
	bl	ensure
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB100_11
	b	.LBB100_10
.LBB100_10:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_11:                             @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [sp, #24]
	add	r1, r0, #1
	str	r1, [sp, #24]
	mov	r1, #44
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB100_13
	b	.LBB100_12
.LBB100_12:                             @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [sp, #24]
	add	r1, r0, #1
	str	r1, [sp, #24]
	mov	r1, #32
	strb	r1, [r0]
	b	.LBB100_13
.LBB100_13:                             @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [sp, #24]
	mov	r1, #0
	strb	r1, [r0]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #16]
	ldr	r12, [r2, #20]
	adds	r0, r3, r0
	adc	r1, r12, r1
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	b	.LBB100_14
.LBB100_14:                             @   in Loop: Header=BB100_5 Depth=1
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	str	r0, [sp, #8]
	b	.LBB100_5
.LBB100_15:
	ldr	r0, [r11, #-16]
	mov	r2, #2
	mov	r3, #0
	bl	ensure
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB100_17
	b	.LBB100_16
.LBB100_16:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_17:
	ldr	r0, [sp, #24]
	add	r1, r0, #1
	str	r1, [sp, #24]
	mov	r1, #93
	strb	r1, [r0]
	ldr	r0, [sp, #24]
	mov	r1, #0
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB100_18
.LBB100_18:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end100:
	.size	print_array, .Lfunc_end100-print_array
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_object
	.type	print_object,%function
	.code	32                      @ @print_object
print_object:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #96
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [r11, #-24]
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #8]
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	bne	.LBB101_2
	b	.LBB101_1
.LBB101_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_2:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	mov	r1, #1
	cmp	r0, #0
	movne	r1, #2
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r1, [r11, #-32]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-28]
	adds	r1, r1, #1
	adc	r3, r2, #0
	mov	r2, r1
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB101_4
	b	.LBB101_3
.LBB101_3:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_4:
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #123
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	adds	r1, r1, #1
	adc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB101_6
	b	.LBB101_5
.LBB101_5:
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #10
	strb	r1, [r0]
	b	.LBB101_6
.LBB101_6:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #16]
	ldr	r12, [r2, #20]
	adds	r0, r3, r0
	adc	r1, r12, r1
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	b	.LBB101_7
.LBB101_7:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB101_12 Depth 2
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB101_31
	b	.LBB101_8
.LBB101_8:                              @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB101_16
	b	.LBB101_9
.LBB101_9:                              @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r2, [r0, #24]
	ldr	r3, [r0, #28]
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB101_11
	b	.LBB101_10
.LBB101_10:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_11:                             @   in Loop: Header=BB101_7 Depth=1
	mov	r0, #0
	str	r0, [sp, #52]
	str	r0, [sp, #48]
	b	.LBB101_12
.LBB101_12:                             @   Parent Loop BB101_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #52]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #24]
	ldr	r2, [r2, #28]
	subs	r0, r0, r3
	sbcs	r1, r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	bhs	.LBB101_15
	b	.LBB101_13
.LBB101_13:                             @   in Loop: Header=BB101_12 Depth=2
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #9
	strb	r1, [r0]
	b	.LBB101_14
.LBB101_14:                             @   in Loop: Header=BB101_12 Depth=2
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #52]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	b	.LBB101_12
.LBB101_15:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #24]
	ldr	r12, [r0, #28]
	adds	r1, r1, r3
	adc	r2, r2, r12
	str	r1, [r0, #16]
	str	r2, [r0, #20]
	b	.LBB101_16
.LBB101_16:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #32]
	ldr	r1, [r11, #-16]
	bl	print_string_ptr
	cmp	r0, #0
	bne	.LBB101_18
	b	.LBB101_17
.LBB101_17:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_18:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	bl	update_offset
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	mov	lr, #1
	cmp	r0, #0
	movne	lr, #2
	mov	r0, #0
	str	r0, [r11, #-28]
	str	lr, [r11, #-32]
	ldr	r0, [r11, #-16]
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-28]
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB101_20
	b	.LBB101_19
.LBB101_19:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_20:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #58
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB101_22
	b	.LBB101_21
.LBB101_21:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #9
	strb	r1, [r0]
	b	.LBB101_22
.LBB101_22:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #16]
	ldr	r12, [r2, #20]
	adds	r0, r3, r0
	adc	r1, r12, r1
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-16]
	bl	print_value
	cmp	r0, #0
	bne	.LBB101_24
	b	.LBB101_23
.LBB101_23:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_24:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	bl	update_offset
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	ldr	lr, [r11, #-40]
	ldr	lr, [lr]
	cmp	lr, #0
	movne	lr, #1
	add	r1, lr, #1
	cmp	r0, #0
	movne	lr, r1
	mov	r0, #0
	str	r0, [r11, #-28]
	str	lr, [r11, #-32]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-32]
	ldr	lr, [r11, #-28]
	adds	r2, r1, #1
	adc	r3, lr, #0
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB101_26
	b	.LBB101_25
.LBB101_25:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_26:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB101_28
	b	.LBB101_27
.LBB101_27:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #44
	strb	r1, [r0]
	b	.LBB101_28
.LBB101_28:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB101_30
	b	.LBB101_29
.LBB101_29:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #10
	strb	r1, [r0]
	b	.LBB101_30
.LBB101_30:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-24]
	mov	r1, #0
	strb	r1, [r0]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #16]
	ldr	r12, [r2, #20]
	adds	r0, r3, r0
	adc	r1, r12, r1
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	ldr	r0, [r11, #-40]
	ldr	r0, [r0]
	str	r0, [r11, #-40]
	b	.LBB101_7
.LBB101_31:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #36]
	cmp	r1, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	beq	.LBB101_33
	b	.LBB101_32
.LBB101_32:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	adds	r1, r1, #1
	adc	r0, r0, #0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB101_34
.LBB101_33:
	mov	r0, #0
	mov	r1, #2
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB101_34
.LBB101_34:
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r2
	mov	r2, r1
	ldr	r3, [sp, #8]            @ 4-byte Reload
	bl	ensure
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	bne	.LBB101_36
	b	.LBB101_35
.LBB101_35:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_36:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB101_42
	b	.LBB101_37
.LBB101_37:
	mov	r0, #0
	str	r0, [sp, #44]
	str	r0, [sp, #40]
	b	.LBB101_38
.LBB101_38:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #24]
	ldr	r2, [r2, #28]
	subs	r3, r3, #1
	sbc	r2, r2, #0
	subs	r0, r0, r3
	sbcs	r1, r1, r2
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	bhs	.LBB101_41
	b	.LBB101_39
.LBB101_39:                             @   in Loop: Header=BB101_38 Depth=1
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #9
	strb	r1, [r0]
	b	.LBB101_40
.LBB101_40:                             @   in Loop: Header=BB101_38 Depth=1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	b	.LBB101_38
.LBB101_41:
	b	.LBB101_42
.LBB101_42:
	ldr	r0, [r11, #-24]
	add	r1, r0, #1
	str	r1, [r11, #-24]
	mov	r1, #125
	strb	r1, [r0]
	ldr	r0, [r11, #-24]
	mov	r1, #0
	strb	r1, [r0]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0, #24]
	ldr	r2, [r0, #28]
	subs	r1, r1, #1
	sbc	r2, r2, #0
	str	r1, [r0, #24]
	str	r2, [r0, #28]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB101_43
.LBB101_43:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end101:
	.size	print_object, .Lfunc_end101-print_object
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function print_string_ptr
	.type	print_string_ptr,%function
	.code	32                      @ @print_string_ptr
print_string_ptr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #88
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #0
	str	r0, [r11, #-24]
	str	r0, [r11, #-32]
	str	r0, [r11, #-40]
	str	r0, [sp, #44]
	str	r0, [sp, #40]
	str	r0, [sp, #36]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	bne	.LBB102_2
	b	.LBB102_1
.LBB102_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB102_47
.LBB102_2:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	bne	.LBB102_6
	b	.LBB102_3
.LBB102_3:
	ldr	r0, [r11, #-16]
	mov	r2, #3
	mov	r3, #0
	bl	ensure
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	bne	.LBB102_5
	b	.LBB102_4
.LBB102_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB102_47
.LBB102_5:
	ldr	r0, [r11, #-32]
	ldr	r1, .LCPI102_1
	bl	strcpy
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB102_47
.LBB102_6:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-24]
	b	.LBB102_7
.LBB102_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB102_18
	b	.LBB102_8
.LBB102_8:                              @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	sub	r1, r0, #8
	cmp	r1, #3
	str	r0, [sp, #16]           @ 4-byte Spill
	blo	.LBB102_12
	b	.LBB102_9
.LBB102_9:                              @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	sub	r1, r0, #12
	cmp	r1, #2
	blo	.LBB102_12
	b	.LBB102_10
.LBB102_10:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #34
	beq	.LBB102_12
	b	.LBB102_11
.LBB102_11:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #92
	bne	.LBB102_13
	b	.LBB102_12
.LBB102_12:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	b	.LBB102_16
.LBB102_13:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #31
	bgt	.LBB102_15
	b	.LBB102_14
.LBB102_14:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	adds	r0, r0, #5
	adc	r1, r1, #0
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	b	.LBB102_15
.LBB102_15:                             @   in Loop: Header=BB102_7 Depth=1
	b	.LBB102_16
.LBB102_16:                             @   in Loop: Header=BB102_7 Depth=1
	b	.LBB102_17
.LBB102_17:                             @   in Loop: Header=BB102_7 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB102_7
.LBB102_18:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-8]
	subs	r0, r0, r1
	mov	r1, #0
	sbc	r1, r1, #0
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
	adds	r0, r0, r2
	adc	r1, r1, r3
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	adds	r1, r1, #3
	adc	r3, r2, #0
	mov	r2, r1
	bl	ensure
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	cmp	r0, #0
	bne	.LBB102_20
	b	.LBB102_19
.LBB102_19:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB102_47
.LBB102_20:
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB102_22
	b	.LBB102_21
.LBB102_21:
	ldr	r0, [r11, #-32]
	mov	r1, #34
	strb	r1, [r0]
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	ldr	r2, [r11, #-8]
	ldr	r3, [sp, #40]
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	ldr	r1, [r11, #-32]
	ldr	r2, [sp, #40]
	add	r1, r1, r2
	ldr	r2, [sp, #12]           @ 4-byte Reload
	strb	r2, [r1, #1]
	ldr	r1, [r11, #-32]
	ldr	r3, [sp, #40]
	add	r1, r1, r3
	mov	r3, #0
	strb	r3, [r1, #2]
	mov	r1, #1
	str	r1, [r11, #-4]
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB102_47
.LBB102_22:
	ldr	r0, [r11, #-32]
	mov	r1, #34
	strb	r1, [r0]
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-24]
	b	.LBB102_23
.LBB102_23:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB102_46
	b	.LBB102_24
.LBB102_24:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #32
	blt	.LBB102_28
	b	.LBB102_25
.LBB102_25:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #34
	beq	.LBB102_28
	b	.LBB102_26
.LBB102_26:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	cmp	r0, #92
	beq	.LBB102_28
	b	.LBB102_27
.LBB102_27:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	ldr	r1, [r11, #-40]
	strb	r0, [r1]
	b	.LBB102_44
.LBB102_28:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	add	r1, r0, #1
	str	r1, [r11, #-40]
	mov	r1, #92
	strb	r1, [r0]
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0]
	mov	r1, r0
	cmp	r0, #8
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB102_37
	b	.LBB102_29
.LBB102_29:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #9
	beq	.LBB102_41
	b	.LBB102_30
.LBB102_30:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #10
	beq	.LBB102_39
	b	.LBB102_31
.LBB102_31:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #12
	beq	.LBB102_38
	b	.LBB102_32
.LBB102_32:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #13
	beq	.LBB102_40
	b	.LBB102_33
.LBB102_33:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #34
	beq	.LBB102_36
	b	.LBB102_34
.LBB102_34:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #92
	bne	.LBB102_42
	b	.LBB102_35
.LBB102_35:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #92
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_36:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #34
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_37:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #98
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_38:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #102
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_39:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #110
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_40:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #114
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_41:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	mov	r1, #116
	strb	r1, [r0]
	b	.LBB102_43
.LBB102_42:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-24]
	ldrb	r2, [r1]
	ldr	r1, .LCPI102_0
	bl	sprintf
	ldr	r1, [r11, #-40]
	add	r1, r1, #4
	str	r1, [r11, #-40]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB102_43
.LBB102_43:                             @   in Loop: Header=BB102_23 Depth=1
	b	.LBB102_44
.LBB102_44:                             @   in Loop: Header=BB102_23 Depth=1
	b	.LBB102_45
.LBB102_45:                             @   in Loop: Header=BB102_23 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-40]
	add	r0, r0, #1
	str	r0, [r11, #-40]
	b	.LBB102_23
.LBB102_46:
	ldr	r0, [r11, #-32]
	ldr	r1, [sp, #40]
	add	r0, r0, r1
	mov	r1, #34
	strb	r1, [r0, #1]
	ldr	r0, [r11, #-32]
	ldr	r1, [sp, #40]
	add	r0, r0, r1
	mov	r1, #0
	strb	r1, [r0, #2]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB102_47
.LBB102_47:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.48:
.LCPI102_0:
	.long	.L.str.9
.LCPI102_1:
	.long	.L.str.8
.Lfunc_end102:
	.size	print_string_ptr, .Lfunc_end102-print_string_ptr
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function case_insensitive_strcmp
	.type	case_insensitive_strcmp,%function
	.code	32                      @ @case_insensitive_strcmp
case_insensitive_strcmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	beq	.LBB103_2
	b	.LBB103_1
.LBB103_1:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB103_3
	b	.LBB103_2
.LBB103_2:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB103_12
.LBB103_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bne	.LBB103_5
	b	.LBB103_4
.LBB103_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB103_12
.LBB103_5:
	b	.LBB103_6
.LBB103_6:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	tolower
	ldr	lr, [sp, #16]
	ldrb	lr, [lr]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, lr
	bl	tolower
	ldr	lr, [sp, #4]            @ 4-byte Reload
	cmp	lr, r0
	bne	.LBB103_11
	b	.LBB103_7
.LBB103_7:                              @   in Loop: Header=BB103_6 Depth=1
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB103_9
	b	.LBB103_8
.LBB103_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB103_12
.LBB103_9:                              @   in Loop: Header=BB103_6 Depth=1
	b	.LBB103_10
.LBB103_10:                             @   in Loop: Header=BB103_6 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB103_6
.LBB103_11:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	tolower
	ldr	lr, [sp, #16]
	ldrb	lr, [lr]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, lr
	bl	tolower
	ldr	lr, [sp]                @ 4-byte Reload
	sub	r0, lr, r0
	str	r0, [r11, #-4]
	b	.LBB103_12
.LBB103_12:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end103:
	.size	case_insensitive_strcmp, .Lfunc_end103-case_insensitive_strcmp
	.fnend
                                        @ -- End function
	.type	global_error,%object    @ @global_error
	.local	global_error
	.comm	global_error,16,8
	.type	cJSON_Version.version,%object @ @cJSON_Version.version
	.local	cJSON_Version.version
	.comm	cJSON_Version.version,15,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%i.%i.%i"
	.size	.L.str, 9

	.type	global_hooks,%object    @ @global_hooks
	.data
	.p2align	3
global_hooks:
	.long	malloc
	.long	free
	.long	realloc
	.size	global_hooks, 12

	.type	.L.str.1,%object        @ @.str.1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.1:
	.asciz	"\357\273\277"
	.size	.L.str.1, 4

	.type	print.default_buffer_size,%object @ @print.default_buffer_size
	.section	.rodata,"a",%progbits
	.p2align	3
print.default_buffer_size:
	.long	256                     @ 0x100
	.long	0
	.size	print.default_buffer_size, 8

	.type	.L.str.2,%object        @ @.str.2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.2:
	.asciz	"null"
	.size	.L.str.2, 5

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"false"
	.size	.L.str.3, 6

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"true"
	.size	.L.str.4, 5

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"%1.15g"
	.size	.L.str.5, 7

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"%lg"
	.size	.L.str.6, 4

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"%1.17g"
	.size	.L.str.7, 7

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"\"\""
	.size	.L.str.8, 3

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"u%04x"
	.size	.L.str.9, 6


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",%progbits
