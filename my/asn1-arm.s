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
	.file	"asn1.c"
	.globl	get_asn1_length         @ -- Begin function get_asn1_length
	.p2align	2
	.type	get_asn1_length,%function
	.code	32                      @ @get_asn1_length
get_asn1_length:
	.fnstart
@ %bb.0:
	sub	sp, sp, #40
	mov	r2, r1
	mov	r3, r0
	str	r0, [sp, #32]
	str	r1, [sp, #24]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	tst	r0, #128
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	str	r0, [sp, #20]
	b	.LBB0_7
.LBB0_2:
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	and	r0, r0, #127
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #20]
	lsl	r0, r0, #8
	str	r0, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #20]
	add	r0, r1, r0
	str	r0, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB0_3
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldr	r0, [sp, #20]
	add	sp, sp, #40
	mov	pc, lr
.Lfunc_end0:
	.size	get_asn1_length, .Lfunc_end0-get_asn1_length
	.fnend
                                        @ -- End function
	.globl	asn1_next_obj           @ -- Begin function asn1_next_obj
	.p2align	2
	.type	asn1_next_obj,%function
	.code	32                      @ @asn1_next_obj
asn1_next_obj:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	str	lr, [sp]                @ 4-byte Spill
	beq	.LBB1_2
	b	.LBB1_1
.LBB1_1:
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_3
.LBB1_2:
	ldr	r0, [sp, #16]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	bl	get_asn1_length
	str	r0, [r11, #-4]
	b	.LBB1_3
.LBB1_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end1:
	.size	asn1_next_obj, .Lfunc_end1-asn1_next_obj
	.fnend
                                        @ -- End function
	.globl	asn1_skip_obj           @ -- Begin function asn1_skip_obj
	.p2align	2
	.type	asn1_skip_obj,%function
	.code	32                      @ @asn1_skip_obj
asn1_skip_obj:
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
	str	r2, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #20]
	cmp	r0, r1
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	beq	.LBB2_2
	b	.LBB2_1
.LBB2_1:
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_3
.LBB2_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	get_asn1_length
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-16]
	ldr	lr, [r1]
	add	r0, lr, r0
	str	r0, [r1]
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_3
.LBB2_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end2:
	.size	asn1_skip_obj, .Lfunc_end2-asn1_skip_obj
	.fnend
                                        @ -- End function
	.globl	asn1_get_int            @ -- Begin function asn1_get_int
	.p2align	2
	.type	asn1_get_int,%function
	.code	32                      @ @asn1_get_int
asn1_get_int:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #2
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	bl	asn1_next_obj
	str	r0, [sp, #20]
	cmn	r0, #1
	bgt	.LBB3_2
	b	.LBB3_1
.LBB3_1:
	b	.LBB3_6
.LBB3_2:
	ldr	r0, [sp, #20]
	cmp	r0, #2
	blt	.LBB3_5
	b	.LBB3_3
.LBB3_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #0
	bne	.LBB3_5
	b	.LBB3_4
.LBB3_4:
	ldr	r0, [sp, #20]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	b	.LBB3_5
.LBB3_5:
	ldr	r0, [sp, #20]
	asr	r1, r0, #31
	bl	ax_malloc
	ldr	r1, [sp, #24]
	str	r0, [r1]
	ldr	r0, [sp, #24]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	lr, [r11, #-16]
	ldr	lr, [lr]
	add	r1, r1, lr
	ldr	r2, [sp, #20]
	bl	memcpy
	ldr	r1, [sp, #20]
	ldr	r2, [r11, #-16]
	ldr	lr, [r2]
	add	r1, lr, r1
	str	r1, [r2]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB3_6
.LBB3_6:
	ldr	r0, [sp, #20]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end3:
	.size	asn1_get_int, .Lfunc_end3-asn1_get_int
	.fnend
                                        @ -- End function
	.globl	asn1_get_private_key    @ -- Begin function asn1_get_private_key
	.p2align	2
	.type	asn1_get_private_key,%function
	.code	32                      @ @asn1_get_private_key
asn1_get_private_key:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #212
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-40]
	str	r1, [r11, #-44]
	str	r2, [r11, #-48]
	mov	r0, #7
	str	r0, [r11, #-52]
	mov	r0, #0
	str	r0, [r11, #-56]
	str	r0, [r11, #-64]
	str	r0, [r11, #-72]
	str	r0, [r11, #-88]
	str	r0, [r11, #-96]
	str	r0, [r11, #-104]
	str	r0, [r11, #-112]
	str	r0, [sp, #120]
	ldr	r0, [r11, #-40]
	ldrb	r0, [r0]
	cmp	r0, #48
	str	r3, [sp, #96]           @ 4-byte Spill
	str	r12, [sp, #92]          @ 4-byte Spill
	str	lr, [sp, #88]           @ 4-byte Spill
	beq	.LBB4_2
	b	.LBB4_1
.LBB4_1:
	ldr	r0, .LCPI4_0
	bl	printf
	mvn	lr, #8
	str	lr, [r11, #-36]
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB4_13
.LBB4_2:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-44]
	bl	RNG_initialize
	ldr	r0, [r11, #-40]
	sub	r1, r11, #52
	sub	r2, r11, #56
	str	r1, [sp, #80]           @ 4-byte Spill
	bl	asn1_get_int
	str	r0, [r11, #-76]
	ldr	r0, [r11, #-40]
	sub	r2, r11, #72
	ldr	r1, [sp, #80]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [r11, #-84]
	ldr	r0, [r11, #-40]
	sub	r2, r11, #64
	ldr	r1, [sp, #80]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-76]
	cmp	r0, #1
	blt	.LBB4_5
	b	.LBB4_3
.LBB4_3:
	ldr	r0, [r11, #-84]
	cmp	r0, #1
	blt	.LBB4_5
	b	.LBB4_4
.LBB4_4:
	ldr	r0, [r11, #-80]
	cmp	r0, #0
	bgt	.LBB4_6
	b	.LBB4_5
.LBB4_5:
	mvn	r0, #8
	str	r0, [r11, #-36]
	b	.LBB4_13
.LBB4_6:
	ldr	r0, [r11, #-40]
	sub	r1, r11, #52
	sub	r2, r11, #88
	str	r1, [sp, #76]           @ 4-byte Spill
	bl	asn1_get_int
	str	r0, [sp, #116]
	ldr	r0, [r11, #-40]
	sub	r2, r11, #96
	ldr	r1, [sp, #76]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [sp, #112]
	ldr	r0, [r11, #-40]
	sub	r2, r11, #104
	ldr	r1, [sp, #76]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [sp, #108]
	ldr	r0, [r11, #-40]
	sub	r2, r11, #112
	ldr	r1, [sp, #76]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [sp, #104]
	ldr	r0, [r11, #-40]
	add	r2, sp, #120
	ldr	r1, [sp, #76]           @ 4-byte Reload
	bl	asn1_get_int
	str	r0, [sp, #100]
	ldr	r0, [sp, #116]
	cmp	r0, #1
	blt	.LBB4_11
	b	.LBB4_7
.LBB4_7:
	ldr	r0, [sp, #112]
	cmp	r0, #1
	blt	.LBB4_11
	b	.LBB4_8
.LBB4_8:
	ldr	r0, [sp, #108]
	cmp	r0, #1
	blt	.LBB4_11
	b	.LBB4_9
.LBB4_9:
	ldr	r0, [sp, #104]
	cmp	r0, #1
	blt	.LBB4_11
	b	.LBB4_10
.LBB4_10:
	ldr	r0, [sp, #100]
	cmp	r0, #0
	bgt	.LBB4_12
	b	.LBB4_11
.LBB4_11:
	mvn	r0, #8
	str	r0, [r11, #-36]
	b	.LBB4_13
.LBB4_12:
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-76]
	ldr	r3, [r11, #-72]
	ldr	r12, [r11, #-84]
	ldr	lr, [r11, #-64]
	ldr	r4, [r11, #-80]
	ldr	r5, [r11, #-88]
	ldr	r6, [sp, #116]
	ldr	r7, [r11, #-96]
	ldr	r8, [r11, #-104]
	ldr	r9, [sp, #108]
	ldr	r10, [r11, #-112]
	str	r0, [sp, #72]           @ 4-byte Spill
	ldr	r0, [sp, #104]
	str	r0, [sp, #68]           @ 4-byte Spill
	ldr	r0, [sp, #120]
	str	r0, [sp, #64]           @ 4-byte Spill
	ldr	r0, [sp, #100]
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, sp
	str	r0, [sp, #56]           @ 4-byte Spill
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r1, [sp, #52]           @ 4-byte Spill
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r0, [r1, #48]
	ldr	r0, [sp, #64]           @ 4-byte Reload
	str	r0, [r1, #44]
	ldr	r0, [sp, #68]           @ 4-byte Reload
	str	r0, [r1, #40]
	str	r10, [r1, #36]
	str	r9, [r1, #32]
	str	r8, [r1, #28]
	str	r6, [r1, #24]
	str	r7, [r1, #20]
	str	r6, [r1, #16]
	str	r5, [r1, #12]
	str	r4, [r1, #8]
	str	lr, [r1, #4]
	str	r12, [r1]
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r1, [sp, #52]           @ 4-byte Reload
	bl	RSA_priv_key_new
	ldr	r0, [r11, #-88]
	bl	free
	ldr	r0, [r11, #-96]
	bl	free
	ldr	r0, [r11, #-104]
	bl	free
	ldr	r0, [r11, #-112]
	bl	free
	ldr	r0, [sp, #120]
	bl	free
	ldr	r0, [r11, #-56]
	bl	free
	ldr	r0, [r11, #-64]
	bl	free
	ldr	r0, [r11, #-72]
	bl	free
	mov	r0, #0
	str	r0, [r11, #-36]
	b	.LBB4_13
.LBB4_13:
	ldr	r0, [r11, #-36]
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI4_0:
	.long	.L.str
.Lfunc_end4:
	.size	asn1_get_private_key, .Lfunc_end4-asn1_get_private_key
	.fnend
                                        @ -- End function
	.globl	asn1_version            @ -- Begin function asn1_version
	.p2align	2
	.type	asn1_version,%function
	.code	32                      @ @asn1_version
asn1_version:
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
	mvn	r0, #0
	str	r0, [sp, #12]
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	add	r1, r1, #2
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #2
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	str	lr, [sp]                @ 4-byte Spill
	bl	asn1_skip_obj
	cmp	r0, #0
	beq	.LBB5_2
	b	.LBB5_1
.LBB5_1:
	b	.LBB5_3
.LBB5_2:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB5_3
.LBB5_3:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end5:
	.size	asn1_version, .Lfunc_end5-asn1_version
	.fnend
                                        @ -- End function
	.globl	asn1_validity           @ -- Begin function asn1_validity
	.p2align	2
	.type	asn1_validity,%function
	.code	32                      @ @asn1_validity
asn1_validity:
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
	ldr	r1, [r11, #-16]
	mov	r2, #48
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	asn1_next_obj
	mov	r1, #1
	cmp	r0, #0
	str	r1, [sp]                @ 4-byte Spill
	blt	.LBB6_3
	b	.LBB6_1
.LBB6_1:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #16]
	add	r2, r2, #32
	bl	asn1_get_utc_time
	mov	r1, #1
	cmp	r0, #0
	str	r1, [sp]                @ 4-byte Spill
	bne	.LBB6_3
	b	.LBB6_2
.LBB6_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #16]
	add	r2, r2, #40
	bl	asn1_get_utc_time
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB6_3
.LBB6_3:
	ldr	r0, [sp]                @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end6:
	.size	asn1_validity, .Lfunc_end6-asn1_validity
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function asn1_get_utc_time
	.type	asn1_get_utc_time,%function
	.code	32                      @ @asn1_get_utc_time
asn1_get_utc_time:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #112
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [r11, #-32]
	mvn	r0, #0
	str	r0, [r11, #-36]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r4, r2, #1
	str	r4, [r1]
	ldrb	r0, [r0, r2]
	cmp	r0, #23
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	beq	.LBB7_2
	b	.LBB7_1
.LBB7_1:
	b	.LBB7_5
.LBB7_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	bl	get_asn1_length
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	str	r0, [r11, #-44]
	add	r0, sp, #16
	mov	r1, #0
	mov	r2, #56
	bl	memset
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-44]
	add	lr, r1, r2
	ldrb	r1, [r1, r2]
	add	r1, r1, r1, lsl #2
	ldrb	r2, [lr, #1]
	add	r1, r2, r1, lsl #1
	sub	r1, r1, #528
	str	r1, [sp, #36]
	ldr	r1, [sp, #36]
	cmp	r1, #50
	str	r0, [sp]                @ 4-byte Spill
	bgt	.LBB7_4
	b	.LBB7_3
.LBB7_3:
	ldr	r0, [sp, #36]
	add	r0, r0, #100
	str	r0, [sp, #36]
	b	.LBB7_4
.LBB7_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-44]
	add	r0, r0, r1
	ldrb	r1, [r0, #2]
	ldrb	r0, [r0, #3]
	add	r1, r1, r1, lsl #2
	add	r0, r0, r1, lsl #1
	mvn	r1, #528
	add	r0, r0, r1
	str	r0, [sp, #32]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-44]
	add	r0, r0, r1
	ldrb	r1, [r0, #4]
	ldrb	r0, [r0, #5]
	add	r1, r1, r1, lsl #2
	add	r0, r0, r1, lsl #1
	sub	r0, r0, #528
	str	r0, [sp, #28]
	add	r0, sp, #16
	bl	mktime
	ldr	lr, [r11, #-32]
	str	r1, [lr, #4]
	str	r0, [lr]
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-24]
	ldr	lr, [r1]
	add	r0, lr, r0
	str	r0, [r1]
	mov	r0, #0
	str	r0, [r11, #-36]
	b	.LBB7_5
.LBB7_5:
	ldr	r0, [r11, #-36]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end7:
	.size	asn1_get_utc_time, .Lfunc_end7-asn1_get_utc_time
	.fnend
                                        @ -- End function
	.globl	asn1_name               @ -- Begin function asn1_name
	.p2align	2
	.type	asn1_name,%function
	.code	32                      @ @asn1_name
asn1_name:
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
	mvn	r0, #0
	str	r0, [r11, #-28]
	mov	r0, #0
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #48
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB8_2
	b	.LBB8_1
.LBB8_1:
	b	.LBB8_21
.LBB8_2:
	b	.LBB8_3
.LBB8_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB8_10 Depth 2
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #49
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB8_20
	b	.LBB8_4
.LBB8_4:                                @   in Loop: Header=BB8_3 Depth=1
	mov	r0, #0
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #48
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB8_6
	b	.LBB8_5
.LBB8_5:                                @   in Loop: Header=BB8_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	asn1_get_oid_x520
	str	r0, [sp, #32]
	cmn	r0, #1
	bgt	.LBB8_7
	b	.LBB8_6
.LBB8_6:
	b	.LBB8_21
.LBB8_7:                                @   in Loop: Header=BB8_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, sp, #24
	bl	asn1_get_printable_str
	cmn	r0, #1
	bgt	.LBB8_9
	b	.LBB8_8
.LBB8_8:
	ldr	r0, [sp, #24]
	bl	free
	b	.LBB8_21
.LBB8_9:                                @   in Loop: Header=BB8_3 Depth=1
	mov	r0, #0
	str	r0, [sp, #20]
	b	.LBB8_10
.LBB8_10:                               @   Parent Loop BB8_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #20]
	cmp	r0, #2
	bgt	.LBB8_17
	b	.LBB8_11
.LBB8_11:                               @   in Loop: Header=BB8_10 Depth=2
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #20]
	ldr	r2, .LCPI8_0
	ldrb	r1, [r2, r1]
	cmp	r0, r1
	bne	.LBB8_15
	b	.LBB8_12
.LBB8_12:                               @   in Loop: Header=BB8_10 Depth=2
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #20]
	ldr	r0, [r0, r1, lsl #2]
	cmp	r0, #0
	bne	.LBB8_14
	b	.LBB8_13
.LBB8_13:                               @   in Loop: Header=BB8_3 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #20]
	str	r0, [r1, r2, lsl #2]
	mov	r0, #1
	str	r0, [sp, #16]
	b	.LBB8_17
.LBB8_14:                               @   in Loop: Header=BB8_10 Depth=2
	b	.LBB8_15
.LBB8_15:                               @   in Loop: Header=BB8_10 Depth=2
	b	.LBB8_16
.LBB8_16:                               @   in Loop: Header=BB8_10 Depth=2
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB8_10
.LBB8_17:                               @   in Loop: Header=BB8_3 Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB8_19
	b	.LBB8_18
.LBB8_18:                               @   in Loop: Header=BB8_3 Depth=1
	ldr	r0, [sp, #24]
	bl	free
	b	.LBB8_19
.LBB8_19:                               @   in Loop: Header=BB8_3 Depth=1
	b	.LBB8_3
.LBB8_20:
	mov	r0, #0
	str	r0, [r11, #-28]
	b	.LBB8_21
.LBB8_21:
	ldr	r0, [r11, #-28]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.22:
.LCPI8_0:
	.long	g_dn_types
.Lfunc_end8:
	.size	asn1_name, .Lfunc_end8-asn1_name
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function asn1_get_oid_x520
	.type	asn1_get_oid_x520,%function
	.code	32                      @ @asn1_get_oid_x520
asn1_get_oid_x520:
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
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	mov	r12, #6
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp]                @ 4-byte Spill
	bl	asn1_next_obj
	str	r0, [sp, #8]
	cmn	r0, #1
	bgt	.LBB9_2
	b	.LBB9_1
.LBB9_1:
	b	.LBB9_8
.LBB9_2:
	ldr	r0, [sp, #8]
	cmp	r0, #3
	bne	.LBB9_6
	b	.LBB9_3
.LBB9_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	cmp	r0, #85
	bne	.LBB9_6
	b	.LBB9_4
.LBB9_4:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	cmp	r0, #4
	bne	.LBB9_6
	b	.LBB9_5
.LBB9_5:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	str	r0, [sp, #12]
	b	.LBB9_7
.LBB9_6:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	b	.LBB9_7
.LBB9_7:
	b	.LBB9_8
.LBB9_8:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end9:
	.size	asn1_get_oid_x520, .Lfunc_end9-asn1_get_oid_x520
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function asn1_get_printable_str
	.type	asn1_get_printable_str,%function
	.code	32                      @ @asn1_get_printable_str
asn1_get_printable_str:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [sp, #24]
	mvn	r0, #0
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #19
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	beq	.LBB10_6
	b	.LBB10_1
.LBB10_1:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #12
	beq	.LBB10_6
	b	.LBB10_2
.LBB10_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #20
	beq	.LBB10_6
	b	.LBB10_3
.LBB10_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #22
	beq	.LBB10_6
	b	.LBB10_4
.LBB10_4:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldrb	r0, [r0, r1]
	cmp	r0, #30
	beq	.LBB10_6
	b	.LBB10_5
.LBB10_5:
	b	.LBB10_14
.LBB10_6:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	get_asn1_length
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0, #-1]
	cmp	r0, #30
	bne	.LBB10_12
	b	.LBB10_7
.LBB10_7:
	ldr	r0, [sp, #20]
	add	r0, r0, r0, lsr #31
	mov	r1, #1
	add	r0, r1, r0, asr #1
	asr	r1, r0, #31
	bl	ax_malloc
	ldr	r1, [sp, #24]
	str	r0, [r1]
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB10_8
.LBB10_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	cmp	r0, r1
	bge	.LBB10_11
	b	.LBB10_9
.LBB10_9:                               @   in Loop: Header=BB10_8 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	ldr	r2, [sp, #16]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0, #1]
	ldr	r1, [sp, #24]
	ldr	r1, [r1]
	add	r2, r2, r2, lsr #31
	strb	r0, [r1, r2, asr #1]
	b	.LBB10_10
.LBB10_10:                              @   in Loop: Header=BB10_8 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #2
	str	r0, [sp, #16]
	b	.LBB10_8
.LBB10_11:
	ldr	r0, [sp, #24]
	ldr	r0, [r0]
	ldr	r1, [sp, #20]
	add	r1, r1, r1, lsr #31
	mov	r2, #0
	strb	r2, [r0, r1, asr #1]
	b	.LBB10_13
.LBB10_12:
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	asr	r1, r0, #31
	bl	ax_malloc
	ldr	r1, [sp, #24]
	str	r0, [r1]
	ldr	r0, [sp, #24]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	lr, [r11, #-16]
	ldr	lr, [lr]
	add	r1, r1, lr
	ldr	r2, [sp, #20]
	bl	memcpy
	ldr	r1, [sp, #24]
	ldr	r1, [r1]
	ldr	r2, [sp, #20]
	mov	lr, #0
	strb	lr, [r1, r2]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB10_13
.LBB10_13:
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	b	.LBB10_14
.LBB10_14:
	ldr	r0, [sp, #20]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end10:
	.size	asn1_get_printable_str, .Lfunc_end10-asn1_get_printable_str
	.fnend
                                        @ -- End function
	.globl	asn1_public_key         @ -- Begin function asn1_public_key
	.p2align	2
	.type	asn1_public_key,%function
	.code	32                      @ @asn1_public_key
asn1_public_key:
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
	mvn	r0, #0
	str	r0, [r11, #-28]
	mov	r0, #0
	str	r0, [sp, #24]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #48
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB11_3
	b	.LBB11_1
.LBB11_1:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #48
	bl	asn1_skip_obj
	cmp	r0, #0
	bne	.LBB11_3
	b	.LBB11_2
.LBB11_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #3
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB11_4
	b	.LBB11_3
.LBB11_3:
	b	.LBB11_7
.LBB11_4:
	ldr	r0, [r11, #-16]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	mov	r2, #48
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB11_6
	b	.LBB11_5
.LBB11_5:
	b	.LBB11_7
.LBB11_6:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, sp, #24
	bl	asn1_get_int
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, sp, #16
	bl	asn1_get_int
	str	r0, [sp, #28]
	ldr	r0, [r11, #-24]
	add	r0, r0, #56
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #16]
	ldr	lr, [sp, #28]
	mov	r12, sp
	str	lr, [r12]
	bl	RSA_pub_key_new
	ldr	r0, [sp, #24]
	bl	free
	ldr	r0, [sp, #16]
	bl	free
	mov	r0, #0
	str	r0, [r11, #-28]
	b	.LBB11_7
.LBB11_7:
	ldr	r0, [r11, #-28]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end11:
	.size	asn1_public_key, .Lfunc_end11-asn1_public_key
	.fnend
                                        @ -- End function
	.globl	asn1_signature          @ -- Begin function asn1_signature
	.p2align	2
	.type	asn1_signature,%function
	.code	32                      @ @asn1_signature
asn1_signature:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #56
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #32]
	mvn	r0, #0
	str	r0, [sp, #28]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r4, r2, #1
	str	r4, [r1]
	ldrb	r0, [r0, r2]
	cmp	r0, #3
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	str	lr, [sp, #16]           @ 4-byte Spill
	beq	.LBB12_2
	b	.LBB12_1
.LBB12_1:
	b	.LBB12_3
.LBB12_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	bl	get_asn1_length
	sub	r0, r0, #1
	ldr	r1, [sp, #32]
	strh	r0, [r1, #52]
	ldr	r0, [r11, #-24]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [sp, #32]
	ldrh	r0, [r0, #52]
	mov	r1, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	bl	ax_malloc
	ldr	r1, [sp, #32]
	str	r0, [r1, #48]
	ldr	r0, [sp, #32]
	ldr	r1, [r0, #48]
	ldr	lr, [r11, #-16]
	ldr	r2, [r11, #-24]
	ldr	r2, [r2]
	add	r2, lr, r2
	ldrh	r0, [r0, #52]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #8]            @ 4-byte Reload
	bl	memcpy
	ldr	r1, [sp, #32]
	ldrh	r1, [r1, #52]
	ldr	r2, [r11, #-24]
	ldr	lr, [r2]
	add	r1, lr, r1
	str	r1, [r2]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	r1, [sp, #28]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB12_3
.LBB12_3:
	ldr	r0, [sp, #28]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end12:
	.size	asn1_signature, .Lfunc_end12-asn1_signature
	.fnend
                                        @ -- End function
	.globl	remove_ca_certs         @ -- Begin function remove_ca_certs
	.p2align	2
	.type	remove_ca_certs,%function
	.code	32                      @ @remove_ca_certs
remove_ca_certs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [r11, #-8]
	mov	r0, #0
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	bne	.LBB13_2
	b	.LBB13_1
.LBB13_1:
	b	.LBB13_8
.LBB13_2:
	b	.LBB13_3
.LBB13_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	mov	r1, #0
	cmp	r0, #149
	str	r1, [sp, #4]            @ 4-byte Spill
	bgt	.LBB13_5
	b	.LBB13_4
.LBB13_4:                               @   in Loop: Header=BB13_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB13_5
.LBB13_5:                               @   in Loop: Header=BB13_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB13_7
	b	.LBB13_6
.LBB13_6:                               @   in Loop: Header=BB13_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	bl	x509_free
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	add	lr, r1, #1
	str	lr, [sp, #12]
	mov	lr, #0
	str	lr, [r0, r1, lsl #2]
	b	.LBB13_3
.LBB13_7:
	ldr	r0, [r11, #-8]
	bl	free
	b	.LBB13_8
.LBB13_8:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end13:
	.size	remove_ca_certs, .Lfunc_end13-remove_ca_certs
	.fnend
                                        @ -- End function
	.globl	asn1_compare_dn         @ -- Begin function asn1_compare_dn
	.p2align	2
	.type	asn1_compare_dn,%function
	.code	32                      @ @asn1_compare_dn
asn1_compare_dn:
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
	str	r0, [sp, #12]
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	b	.LBB14_1
.LBB14_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #2
	bgt	.LBB14_6
	b	.LBB14_2
.LBB14_2:                               @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	ldr	r2, [sp, #16]
	ldr	r1, [r2, r1, lsl #2]
	bl	asn1_compare_dn_comp
	cmp	r0, #0
	beq	.LBB14_4
	b	.LBB14_3
.LBB14_3:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB14_7
.LBB14_4:                               @   in Loop: Header=BB14_1 Depth=1
	b	.LBB14_5
.LBB14_5:                               @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB14_1
.LBB14_6:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB14_7
.LBB14_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end14:
	.size	asn1_compare_dn, .Lfunc_end14-asn1_compare_dn
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function asn1_compare_dn_comp
	.type	asn1_compare_dn_comp,%function
	.code	32                      @ @asn1_compare_dn_comp
asn1_compare_dn_comp:
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
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bne	.LBB15_3
	b	.LBB15_1
.LBB15_1:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	bne	.LBB15_3
	b	.LBB15_2
.LBB15_2:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB15_8
.LBB15_3:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB15_6
	b	.LBB15_4
.LBB15_4:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB15_6
	b	.LBB15_5
.LBB15_5:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #16]
	bl	strcmp
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB15_7
.LBB15_6:
	mov	r0, #1
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB15_7
.LBB15_7:
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #12]
	b	.LBB15_8
.LBB15_8:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end15:
	.size	asn1_compare_dn_comp, .Lfunc_end15-asn1_compare_dn_comp
	.fnend
                                        @ -- End function
	.globl	asn1_find_oid           @ -- Begin function asn1_find_oid
	.p2align	2
	.type	asn1_find_oid,%function
	.code	32                      @ @asn1_find_oid
asn1_find_oid:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #64
	mov	r12, r3
	mov	lr, r2
	mov	r4, r1
	mov	r5, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [r11, #-32]
	str	r3, [sp, #36]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	mov	r2, #48
	str	r12, [sp, #12]          @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	str	r4, [sp, #4]            @ 4-byte Spill
	str	r5, [sp]                @ 4-byte Spill
	bl	asn1_next_obj
	str	r0, [sp, #32]
	cmp	r0, #1
	blt	.LBB16_11
	b	.LBB16_1
.LBB16_1:
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	ldr	r1, [sp, #32]
	add	r0, r0, r1
	str	r0, [sp, #28]
	b	.LBB16_2
.LBB16_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	ldr	r1, [sp, #28]
	cmp	r0, r1
	bge	.LBB16_10
	b	.LBB16_3
.LBB16_3:                               @   in Loop: Header=BB16_2 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	bl	get_asn1_length
	str	r0, [sp, #20]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0]
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	cmp	r0, #48
	bne	.LBB16_9
	b	.LBB16_4
.LBB16_4:                               @   in Loop: Header=BB16_2 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r3, r2, #1
	str	r3, [r1]
	ldrb	r0, [r0, r2]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	bl	get_asn1_length
	str	r0, [sp, #20]
	ldr	r0, [sp, #24]
	cmp	r0, #6
	bne	.LBB16_8
	b	.LBB16_5
.LBB16_5:                               @   in Loop: Header=BB16_2 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #36]
	cmp	r0, r1
	bne	.LBB16_8
	b	.LBB16_6
.LBB16_6:                               @   in Loop: Header=BB16_2 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-32]
	ldr	r2, [sp, #36]
	asr	r3, r2, #31
	bl	memcmp
	cmp	r0, #0
	bne	.LBB16_8
	b	.LBB16_7
.LBB16_7:
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	mov	r0, #1
	str	r0, [r11, #-12]
	b	.LBB16_12
.LBB16_8:                               @   in Loop: Header=BB16_2 Depth=1
	b	.LBB16_9
.LBB16_9:                               @   in Loop: Header=BB16_2 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-24]
	str	r0, [r1]
	b	.LBB16_2
.LBB16_10:
	b	.LBB16_11
.LBB16_11:
	mov	r0, #0
	str	r0, [r11, #-12]
	b	.LBB16_12
.LBB16_12:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Lfunc_end16:
	.size	asn1_find_oid, .Lfunc_end16-asn1_find_oid
	.fnend
                                        @ -- End function
	.globl	asn1_find_subjectaltname @ -- Begin function asn1_find_subjectaltname
	.p2align	2
	.type	asn1_find_subjectaltname,%function
	.code	32                      @ @asn1_find_subjectaltname
asn1_find_subjectaltname:
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
	ldr	r1, .LCPI17_0
	add	r12, sp, #12
	mov	lr, #3
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r12
	ldr	r12, [sp, #8]           @ 4-byte Reload
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp]                @ 4-byte Spill
	mov	r3, lr
	bl	asn1_find_oid
	cmp	r0, #0
	beq	.LBB17_2
	b	.LBB17_1
.LBB17_1:
	ldr	r0, [sp, #12]
	str	r0, [r11, #-4]
	b	.LBB17_3
.LBB17_2:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB17_3
.LBB17_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI17_0:
	.long	sig_subject_alt_name
.Lfunc_end17:
	.size	asn1_find_subjectaltname, .Lfunc_end17-asn1_find_subjectaltname
	.fnend
                                        @ -- End function
	.globl	asn1_signature_type     @ -- Begin function asn1_signature_type
	.p2align	2
	.type	asn1_signature_type,%function
	.code	32                      @ @asn1_signature_type
asn1_signature_type:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #48
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	str	r2, [sp, #24]
	mvn	r0, #0
	str	r0, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r4, r2, #1
	str	r4, [r1]
	ldrb	r0, [r0, r2]
	cmp	r0, #6
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	beq	.LBB18_2
	b	.LBB18_1
.LBB18_1:
	b	.LBB18_9
.LBB18_2:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	bl	get_asn1_length
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #5
	bne	.LBB18_5
	b	.LBB18_3
.LBB18_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	add	r1, r0, r1
	ldr	r0, .LCPI18_0
	mov	r2, #5
	mov	r3, #0
	bl	memcmp
	cmp	r0, #0
	bne	.LBB18_5
	b	.LBB18_4
.LBB18_4:
	ldr	r0, [sp, #24]
	mov	r1, #5
	strb	r1, [r0, #54]
	b	.LBB18_8
.LBB18_5:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	add	r1, r0, r1
	ldr	r0, .LCPI18_1
	mov	r2, #8
	mov	r3, #0
	bl	memcmp
	cmp	r0, #0
	beq	.LBB18_7
	b	.LBB18_6
.LBB18_6:
	b	.LBB18_9
.LBB18_7:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0, #8]
	ldr	r1, [sp, #24]
	strb	r0, [r1, #54]
	b	.LBB18_8
.LBB18_8:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-24]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-24]
	mov	r2, #5
	bl	asn1_skip_obj
	mov	r1, #0
	str	r1, [sp, #20]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB18_9
.LBB18_9:
	ldr	r0, [sp, #20]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI18_0:
	.long	sig_sha1WithRSAEncrypt
.LCPI18_1:
	.long	sig_oid_prefix
.Lfunc_end18:
	.size	asn1_signature_type, .Lfunc_end18-asn1_signature_type
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Error: This is not a valid ASN.1 file\n"
	.size	.L.str, 39

	.type	g_dn_types,%object      @ @g_dn_types
	.section	.rodata,"a",%progbits
g_dn_types:
	.ascii	"\003\n\013"
	.size	g_dn_types, 3

	.type	sig_subject_alt_name,%object @ @sig_subject_alt_name
sig_subject_alt_name:
	.ascii	"U\035\021"
	.size	sig_subject_alt_name, 3

	.type	sig_sha1WithRSAEncrypt,%object @ @sig_sha1WithRSAEncrypt
sig_sha1WithRSAEncrypt:
	.ascii	"+\016\003\002\035"
	.size	sig_sha1WithRSAEncrypt, 5

	.type	sig_oid_prefix,%object  @ @sig_oid_prefix
sig_oid_prefix:
	.ascii	"*\206H\206\367\r\001\001"
	.size	sig_oid_prefix, 8


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",%progbits
