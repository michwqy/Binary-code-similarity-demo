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
	.file	"myls.c"
	.globl	timesort                @ -- Begin function timesort
	.p2align	2
	.type	timesort,%function
	.code	32                      @ @timesort
timesort:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #160
	mov	r0, #0
	str	r0, [r11, #-16]
	b	.LBB0_1
.LBB0_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	mov	r0, sp
	sub	r0, r0, #8
	mov	sp, r0
	ldr	r0, [r11, #-16]
	ldr	r1, .LCPI0_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB0_15
	b	.LBB0_2
.LBB0_2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-20]
	b	.LBB0_3
.LBB0_3:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, .LCPI0_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	ldr	r0, [r1, r0, lsl #4]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	ldr	r1, [r1, r2, lsl #4]
	cmp	r0, r1
	blt	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	ldr	r0, [r1, r0, lsl #4]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	ldr	r1, [r1, r2, lsl #4]
	cmp	r0, r1
	bne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #4]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	add	r1, r1, r2, lsl #4
	ldr	r1, [r1, #4]
	cmp	r0, r1
	blt	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	ldr	r0, [r1, r0, lsl #4]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	ldr	r1, [r1, r2, lsl #4]
	cmp	r0, r1
	bne	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #4]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	add	r1, r1, r2, lsl #4
	ldr	r1, [r1, #4]
	cmp	r0, r1
	bne	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	ldr	r2, [r11, #-20]
	rsb	r2, r2, r2, lsl #3
	add	r1, r1, r2, lsl #4
	ldr	r1, [r1, #8]
	cmp	r0, r1
	bge	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	add	r0, r1, r0, lsl #4
	sub	r2, r11, #132
	mov	r3, #112
	str	r0, [r11, #-136]        @ 4-byte Spill
	mov	r0, r2
	ldr	r12, [r11, #-136]       @ 4-byte Reload
	str	r1, [r11, #-140]        @ 4-byte Spill
	mov	r1, r12
	str	r2, [r11, #-144]        @ 4-byte Spill
	mov	r2, r3
	str	r3, [r11, #-148]        @ 4-byte Spill
	bl	memcpy
	ldr	r1, [r11, #-16]
	rsb	r1, r1, r1, lsl #3
	ldr	r2, [r11, #-140]        @ 4-byte Reload
	add	r1, r2, r1, lsl #4
	ldr	r3, [r11, #-20]
	rsb	r3, r3, r3, lsl #3
	add	r3, r2, r3, lsl #4
	str	r0, [r11, #-152]        @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	ldr	r2, [r11, #-148]        @ 4-byte Reload
	bl	memcpy
	ldr	r1, [r11, #-20]
	rsb	r1, r1, r1, lsl #3
	ldr	r2, [r11, #-140]        @ 4-byte Reload
	add	r1, r2, r1, lsl #4
	str	r0, [r11, #-156]        @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [r11, #-144]        @ 4-byte Reload
	ldr	r2, [r11, #-148]        @ 4-byte Reload
	bl	memcpy
	str	r0, [r11, #-160]        @ 4-byte Spill
	b	.LBB0_11
.LBB0_11:                               @   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_12
.LBB0_12:                               @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r11, #-20]
	add	r0, r0, #1
	str	r0, [r11, #-20]
	b	.LBB0_3
.LBB0_13:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-16]
	add	r0, r0, #1
	str	r0, [r11, #-16]
	b	.LBB0_1
.LBB0_15:
	mov	r0, #0
	str	r0, [r11, #-16]
	b	.LBB0_16
.LBB0_16:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, .LCPI0_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               @   in Loop: Header=BB0_16 Depth=1
	ldr	r0, [r11, #-16]
	rsb	r0, r0, r0, lsl #3
	ldr	r1, .LCPI0_1
	add	r0, r1, r0, lsl #4
	add	r1, r0, #12
	ldr	r0, .LCPI0_2
	bl	printf
	str	r0, [r11, #-164]        @ 4-byte Spill
	b	.LBB0_18
.LBB0_18:                               @   in Loop: Header=BB0_16 Depth=1
	ldr	r0, [r11, #-16]
	add	r0, r0, #1
	str	r0, [r11, #-16]
	b	.LBB0_16
.LBB0_19:
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.20:
.LCPI0_0:
	.long	n
.LCPI0_1:
	.long	filetime
.LCPI0_2:
	.long	.L.str
.Lfunc_end0:
	.size	timesort, .Lfunc_end0-timesort
	.fnend
                                        @ -- End function
	.globl	sizesort                @ -- Begin function sizesort
	.p2align	2
	.type	sizesort,%function
	.code	32                      @ @sizesort
sizesort:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #144
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_1
.LBB1_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_3 Depth 2
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI1_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB1_10
	b	.LBB1_2
.LBB1_2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB1_3
.LBB1_3:                                @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-8]
	ldr	r1, .LCPI1_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB1_8
	b	.LBB1_4
.LBB1_4:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r0, [r11, #-4]
	mov	r1, #104
	mul	r2, r0, r1
	ldr	r0, .LCPI1_1
	ldr	r2, [r0, r2]
	ldr	r3, [r11, #-8]
	mul	r12, r3, r1
	ldr	r0, [r0, r12]
	cmp	r2, r0
	bge	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI1_1
	mov	r2, #104
	mla	r3, r0, r2, r1
	add	r0, sp, #32
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #20]           @ 4-byte Spill
	bl	memcpy
	ldr	r1, [r11, #-4]
	ldr	r3, [sp, #20]           @ 4-byte Reload
	ldr	lr, [sp, #24]           @ 4-byte Reload
	mla	r2, r1, r3, lr
	ldr	r1, [r11, #-8]
	mla	r12, r1, r3, lr
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	mov	r1, r12
	mov	r2, r3
	bl	memcpy
	ldr	r1, [r11, #-8]
	ldr	r3, [sp, #20]           @ 4-byte Reload
	ldr	r12, [sp, #24]          @ 4-byte Reload
	mla	r2, r1, r3, r12
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r2
	ldr	r1, [sp, #28]           @ 4-byte Reload
	mov	r2, r3
	bl	memcpy
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_3 Depth=2
	b	.LBB1_7
.LBB1_7:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB1_3
.LBB1_8:                                @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_9
.LBB1_9:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB1_1
.LBB1_10:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_11
.LBB1_11:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI1_0
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB1_14
	b	.LBB1_12
.LBB1_12:                               @   in Loop: Header=BB1_11 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI1_1
	mov	r2, #104
	mla	r3, r0, r2, r1
	add	r1, r3, #4
	ldr	r0, .LCPI1_2
	bl	printf
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB1_13
.LBB1_13:                               @   in Loop: Header=BB1_11 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB1_11
.LBB1_14:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI1_0:
	.long	n
.LCPI1_1:
	.long	filesize
.LCPI1_2:
	.long	.L.str
.Lfunc_end1:
	.size	sizesort, .Lfunc_end1-sizesort
	.fnend
                                        @ -- End function
	.globl	showfile                @ -- Begin function showfile
	.p2align	2
	.type	showfile,%function
	.code	32                      @ @showfile
showfile:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #504
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	mov	r0, #8
	str	r0, [r11, #-172]
	mov	r0, #0
	str	r0, [r11, #-176]
	ldr	r0, [r11, #-16]
	sub	r1, r11, #168
	str	r2, [r11, #-200]        @ 4-byte Spill
	str	r3, [r11, #-204]        @ 4-byte Spill
	bl	lstat
	cmn	r0, #1
	bgt	.LBB2_2
	b	.LBB2_1
.LBB2_1:
	ldr	r0, .LCPI2_52
	bl	perror
	b	.LBB2_121
.LBB2_2:
	ldr	r0, [r11, #-144]
	and	r0, r0, #61440
	cmp	r0, #4096
	str	r0, [r11, #-208]        @ 4-byte Spill
	beq	.LBB2_14
	b	.LBB2_3
.LBB2_3:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #8192
	beq	.LBB2_13
	b	.LBB2_4
.LBB2_4:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #16384
	beq	.LBB2_15
	b	.LBB2_5
.LBB2_5:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #24576
	beq	.LBB2_12
	b	.LBB2_6
.LBB2_6:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #32768
	beq	.LBB2_9
	b	.LBB2_7
.LBB2_7:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #40960
	beq	.LBB2_11
	b	.LBB2_8
.LBB2_8:
	ldr	r0, [r11, #-208]        @ 4-byte Reload
	cmp	r0, #49152
	beq	.LBB2_10
	b	.LBB2_16
.LBB2_9:
	mov	r0, #45
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_10:
	mov	r0, #115
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_11:
	mov	r0, #49
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_12:
	mov	r0, #98
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_13:
	mov	r0, #99
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_14:
	mov	r0, #112
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_15:
	mov	r0, #100
	strb	r0, [r11, #-195]
	b	.LBB2_16
.LBB2_16:
	b	.LBB2_17
.LBB2_17:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-172]
	cmp	r0, #0
	blt	.LBB2_28
	b	.LBB2_18
.LBB2_18:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-144]
	ldr	r1, [r11, #-172]
	mov	r2, #1
	tst	r0, r2, lsl r1
	beq	.LBB2_26
	b	.LBB2_19
.LBB2_19:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	ldr	r1, .LCPI2_51
	smull	r2, r3, r0, r1
	add	r1, r3, r3, lsr #31
	add	r1, r1, r1, lsl #1
	sub	r0, r0, r1
	cmp	r0, #0
	str	r2, [r11, #-212]        @ 4-byte Spill
	str	r0, [r11, #-216]        @ 4-byte Spill
	beq	.LBB2_24
	b	.LBB2_20
.LBB2_20:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-216]        @ 4-byte Reload
	cmp	r0, #1
	beq	.LBB2_23
	b	.LBB2_21
.LBB2_21:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-216]        @ 4-byte Reload
	cmp	r0, #2
	bne	.LBB2_25
	b	.LBB2_22
.LBB2_22:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	rsb	r0, r0, #9
	sub	r1, r11, #195
	mov	r2, #114
	strb	r2, [r1, r0]
	b	.LBB2_25
.LBB2_23:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	rsb	r0, r0, #9
	sub	r1, r11, #195
	mov	r2, #119
	strb	r2, [r1, r0]
	b	.LBB2_25
.LBB2_24:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	rsb	r0, r0, #9
	sub	r1, r11, #195
	mov	r2, #120
	strb	r2, [r1, r0]
	b	.LBB2_25
.LBB2_25:                               @   in Loop: Header=BB2_17 Depth=1
	b	.LBB2_27
.LBB2_26:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	rsb	r0, r0, #9
	sub	r1, r11, #195
	mov	r2, #45
	strb	r2, [r1, r0]
	b	.LBB2_27
.LBB2_27:                               @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-172]
	sub	r0, r0, #1
	str	r0, [r11, #-172]
	b	.LBB2_17
.LBB2_28:
	mov	r0, #0
	strb	r0, [r11, #-185]
	ldr	r0, .LCPI2_0
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_34
	b	.LBB2_29
.LBB2_29:
	ldr	r0, .LCPI2_2
	sub	r1, r11, #195
	bl	printf
	ldr	r2, [r11, #-152]
	ldr	r3, [r11, #-148]
	ldr	r1, .LCPI2_3
	str	r0, [r11, #-220]        @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-140]
	str	r0, [r11, #-224]        @ 4-byte Spill
	mov	r0, r1
	bl	getpwuid
	ldr	r1, [r0]
	ldr	r0, [r11, #-136]
	str	r1, [r11, #-228]        @ 4-byte Spill
	bl	getgrgid
	ldr	r2, [r0]
	ldr	r0, .LCPI2_12
	ldr	r1, [r11, #-228]        @ 4-byte Reload
	bl	printf
	ldrsb	r1, [r11, #-195]
	cmp	r1, #99
	str	r0, [r11, #-232]        @ 4-byte Spill
	beq	.LBB2_31
	b	.LBB2_30
.LBB2_30:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #98
	bne	.LBB2_32
	b	.LBB2_31
.LBB2_31:
	ldr	r0, [r11, #-128]
	ldr	r1, [r11, #-124]
	lsr	r0, r0, #8
	orr	r2, r0, r1, lsl #24
	lsr	r3, r1, #8
	ldr	r0, .LCPI2_6
	bl	printf
	ldrb	r2, [r11, #-128]
	ldr	r1, .LCPI2_7
	mov	r3, #0
	str	r0, [r11, #-236]        @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [r11, #-240]        @ 4-byte Spill
	b	.LBB2_33
.LBB2_32:
	ldr	r2, [r11, #-120]
	ldr	r3, [r11, #-116]
	ldr	r0, .LCPI2_5
	bl	printf
	str	r0, [r11, #-244]        @ 4-byte Spill
	b	.LBB2_33
.LBB2_33:
	sub	r0, r11, #168
	add	r0, r0, #88
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	lr, [r0, #20]
	mov	r1, #876
	orr	r1, r1, #1024
	add	r1, lr, r1
	ldr	lr, [r0, #4]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #16]
	add	r0, r0, #1
	mov	r12, sp
	str	lr, [r12, #4]
	str	r2, [r12]
	ldr	r2, .LCPI2_8
	str	r0, [r11, #-248]        @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [r11, #-248]        @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-24]
	ldr	r2, .LCPI2_13
	str	r0, [r11, #-252]        @ 4-byte Spill
	mov	r0, r2
	bl	printf
	ldr	r1, .LCPI2_11
	str	r0, [sp, #256]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #252]          @ 4-byte Spill
	b	.LBB2_41
.LBB2_34:
	ldr	r0, .LCPI2_1
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_40
	b	.LBB2_35
.LBB2_35:
	ldr	r0, .LCPI2_2
	sub	r1, r11, #195
	bl	printf
	ldr	r2, [r11, #-152]
	ldr	r3, [r11, #-148]
	ldr	r1, .LCPI2_3
	str	r0, [sp, #248]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-140]
	str	r0, [sp, #244]          @ 4-byte Spill
	mov	r0, r1
	bl	getpwuid
	ldr	r1, [r0, #8]
	ldr	r0, [r11, #-136]
	str	r1, [sp, #240]          @ 4-byte Spill
	bl	getgrgid
	ldr	r2, [r0, #8]
	ldr	r0, .LCPI2_4
	ldr	r1, [sp, #240]          @ 4-byte Reload
	bl	printf
	ldrsb	r1, [r11, #-195]
	cmp	r1, #99
	str	r0, [sp, #236]          @ 4-byte Spill
	beq	.LBB2_37
	b	.LBB2_36
.LBB2_36:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #98
	bne	.LBB2_38
	b	.LBB2_37
.LBB2_37:
	ldr	r0, [r11, #-128]
	ldr	r1, [r11, #-124]
	lsr	r0, r0, #8
	orr	r2, r0, r1, lsl #24
	lsr	r3, r1, #8
	ldr	r0, .LCPI2_6
	bl	printf
	ldrb	r2, [r11, #-128]
	ldr	r1, .LCPI2_7
	mov	r3, #0
	str	r0, [sp, #232]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #228]          @ 4-byte Spill
	b	.LBB2_39
.LBB2_38:
	ldr	r2, [r11, #-120]
	ldr	r3, [r11, #-116]
	ldr	r0, .LCPI2_5
	bl	printf
	str	r0, [sp, #224]          @ 4-byte Spill
	b	.LBB2_39
.LBB2_39:
	sub	r0, r11, #168
	add	r0, r0, #88
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	lr, [r0, #20]
	mov	r1, #876
	orr	r1, r1, #1024
	add	r1, lr, r1
	ldr	lr, [r0, #4]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #16]
	add	r0, r0, #1
	mov	r12, sp
	str	lr, [r12, #4]
	str	r2, [r12]
	ldr	r2, .LCPI2_8
	str	r0, [sp, #220]          @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #220]          @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-24]
	ldr	r2, .LCPI2_9
	str	r0, [sp, #216]          @ 4-byte Spill
	mov	r0, r2
	bl	printf
	ldr	r1, .LCPI2_10
	ldr	r2, [r1]
	ldr	r3, [r11, #-120]
	add	r2, r2, r3
	str	r2, [r1]
	ldr	r1, .LCPI2_11
	str	r0, [sp, #212]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #208]          @ 4-byte Spill
	b	.LBB2_40
.LBB2_40:
	b	.LBB2_41
.LBB2_41:
	ldr	r0, .LCPI2_14
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_47
	b	.LBB2_42
.LBB2_42:
	ldr	r0, .LCPI2_2
	sub	r1, r11, #195
	bl	printf
	ldr	r2, [r11, #-152]
	ldr	r3, [r11, #-148]
	ldr	r1, .LCPI2_3
	str	r0, [sp, #204]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-140]
	str	r0, [sp, #200]          @ 4-byte Spill
	mov	r0, r1
	bl	getpwuid
	ldr	r1, [r0]
	ldr	r0, .LCPI2_36
	bl	printf
	ldrsb	r1, [r11, #-195]
	cmp	r1, #99
	str	r0, [sp, #196]          @ 4-byte Spill
	beq	.LBB2_44
	b	.LBB2_43
.LBB2_43:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #98
	bne	.LBB2_45
	b	.LBB2_44
.LBB2_44:
	ldr	r0, [r11, #-128]
	ldr	r1, [r11, #-124]
	lsr	r0, r0, #8
	orr	r2, r0, r1, lsl #24
	lsr	r3, r1, #8
	ldr	r0, .LCPI2_6
	bl	printf
	ldrb	r2, [r11, #-128]
	ldr	r1, .LCPI2_7
	mov	r3, #0
	str	r0, [sp, #192]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #188]          @ 4-byte Spill
	b	.LBB2_46
.LBB2_45:
	ldr	r2, [r11, #-120]
	ldr	r3, [r11, #-116]
	ldr	r0, .LCPI2_5
	bl	printf
	str	r0, [sp, #184]          @ 4-byte Spill
	b	.LBB2_46
.LBB2_46:
	sub	r0, r11, #168
	add	r0, r0, #88
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	lr, [r0, #20]
	mov	r1, #876
	orr	r1, r1, #1024
	add	r1, lr, r1
	ldr	lr, [r0, #4]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #16]
	add	r0, r0, #1
	mov	r12, sp
	str	lr, [r12, #4]
	str	r2, [r12]
	ldr	r2, .LCPI2_8
	str	r0, [sp, #180]          @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #180]          @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-24]
	ldr	r2, .LCPI2_9
	str	r0, [sp, #176]          @ 4-byte Spill
	mov	r0, r2
	bl	printf
	ldr	r1, .LCPI2_11
	str	r0, [sp, #172]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #168]          @ 4-byte Spill
	b	.LBB2_121
.LBB2_47:
	ldr	r0, .LCPI2_15
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_49
	b	.LBB2_48
.LBB2_48:
	ldr	r2, [r11, #-160]
	ldr	r3, [r11, #-156]
	ldr	r0, [r11, #-24]
	mov	r1, sp
	str	r0, [r1]
	ldr	r0, .LCPI2_50
	bl	printf
	ldr	r1, .LCPI2_11
	str	r0, [sp, #164]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #160]          @ 4-byte Spill
	b	.LBB2_120
.LBB2_49:
	ldr	r0, .LCPI2_16
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_54
	b	.LBB2_50
.LBB2_50:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #100
	bne	.LBB2_52
	b	.LBB2_51
.LBB2_51:
	ldr	r1, [r11, #-16]
	ldr	r0, .LCPI2_49
	bl	printf
	ldr	r1, [r11, #-16]
	str	r0, [sp, #156]          @ 4-byte Spill
	mov	r0, r1
	bl	showdir
	b	.LBB2_53
.LBB2_52:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_48
	bl	printf
	str	r0, [sp, #152]          @ 4-byte Spill
	b	.LBB2_53
.LBB2_53:
	b	.LBB2_119
.LBB2_54:
	ldr	r0, .LCPI2_17
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_56
	b	.LBB2_55
.LBB2_55:
	ldr	r2, [r11, #-104]
	ldr	r3, [r11, #-100]
	ldr	r0, .LCPI2_47
	bl	printf
	ldr	r1, [r11, #-24]
	ldr	r2, .LCPI2_13
	str	r0, [sp, #148]          @ 4-byte Spill
	mov	r0, r2
	bl	printf
	ldr	r1, .LCPI2_11
	str	r0, [sp, #144]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, .LCPI2_10
	ldr	r2, [r1]
	ldr	r3, [r11, #-104]
	add	r2, r2, r3
	str	r2, [r1]
	str	r0, [sp, #140]          @ 4-byte Spill
	b	.LBB2_118
.LBB2_56:
	ldr	r0, .LCPI2_18
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_58
	b	.LBB2_57
.LBB2_57:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_46
	bl	printf
	str	r0, [sp, #136]          @ 4-byte Spill
	b	.LBB2_117
.LBB2_58:
	ldr	r0, .LCPI2_19
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_60
	b	.LBB2_59
.LBB2_59:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_45
	bl	printf
	str	r0, [sp, #132]          @ 4-byte Spill
	b	.LBB2_116
.LBB2_60:
	ldr	r0, .LCPI2_20
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_62
	b	.LBB2_61
.LBB2_61:
	sub	r0, r11, #168
	add	r0, r0, #88
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #20]
	ldr	lr, .LCPI2_41
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	ldr	r2, .LCPI2_44
	str	r0, [r2, r1, lsl #4]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #16]
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	add	r1, r2, r1, lsl #4
	str	r0, [r1, #4]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #12]
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	add	r1, r2, r1, lsl #4
	str	r0, [r1, #8]
	ldr	r0, [lr]
	rsb	r0, r0, r0, lsl #3
	add	r0, r2, r0, lsl #4
	add	r0, r0, #12
	ldr	r1, [r11, #-24]
	str	lr, [sp, #128]          @ 4-byte Spill
	bl	strcpy
	ldr	r1, [sp, #128]          @ 4-byte Reload
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r2, [r1]
	str	r0, [sp, #124]          @ 4-byte Spill
	b	.LBB2_115
.LBB2_62:
	ldr	r0, .LCPI2_21
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_64
	b	.LBB2_63
.LBB2_63:
	sub	r0, r11, #168
	add	r0, r0, #72
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #20]
	ldr	lr, .LCPI2_41
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	ldr	r2, .LCPI2_44
	str	r0, [r2, r1, lsl #4]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #16]
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	add	r1, r2, r1, lsl #4
	str	r0, [r1, #4]
	ldr	r0, [r11, #-184]
	ldr	r0, [r0, #12]
	ldr	r1, [lr]
	rsb	r1, r1, r1, lsl #3
	add	r1, r2, r1, lsl #4
	str	r0, [r1, #8]
	ldr	r0, [lr]
	rsb	r0, r0, r0, lsl #3
	add	r0, r2, r0, lsl #4
	add	r0, r0, #12
	ldr	r1, [r11, #-24]
	str	lr, [sp, #120]          @ 4-byte Spill
	bl	strcpy
	ldr	r1, [sp, #120]          @ 4-byte Reload
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r2, [r1]
	str	r0, [sp, #116]          @ 4-byte Spill
	b	.LBB2_114
.LBB2_64:
	ldr	r0, .LCPI2_22
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_74
	b	.LBB2_65
.LBB2_65:
	mov	r0, #0
	str	r0, [r11, #-180]
	b	.LBB2_66
.LBB2_66:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-180]
	add	r0, r0, r1
	ldrsb	r0, [r0]
	cmp	r0, #0
	beq	.LBB2_71
	b	.LBB2_67
.LBB2_67:                               @   in Loop: Header=BB2_66 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-180]
	add	r0, r0, r1
	ldrsb	r0, [r0]
	cmp	r0, #126
	bne	.LBB2_69
	b	.LBB2_68
.LBB2_68:
	b	.LBB2_71
.LBB2_69:                               @   in Loop: Header=BB2_66 Depth=1
	b	.LBB2_70
.LBB2_70:                               @   in Loop: Header=BB2_66 Depth=1
	ldr	r0, [r11, #-180]
	add	r0, r0, #1
	str	r0, [r11, #-180]
	b	.LBB2_66
.LBB2_71:
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-180]
	add	r0, r0, r1
	ldrsb	r0, [r0]
	cmp	r0, #0
	bne	.LBB2_73
	b	.LBB2_72
.LBB2_72:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_43
	bl	printf
	str	r0, [sp, #112]          @ 4-byte Spill
	b	.LBB2_73
.LBB2_73:
	b	.LBB2_113
.LBB2_74:
	ldr	r0, .LCPI2_23
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_76
	b	.LBB2_75
.LBB2_75:
	ldr	r0, .LCPI2_41
	ldr	r1, [r0]
	ldr	r2, .LCPI2_42
	mov	r3, #104
	mla	r12, r1, r3, r2
	add	r1, r12, #4
	ldr	r12, [r11, #-24]
	str	r0, [sp, #108]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r12
	str	r2, [sp, #104]          @ 4-byte Spill
	str	r3, [sp, #100]          @ 4-byte Spill
	bl	strcpy
	ldr	r1, [r11, #-120]
	ldr	r2, [sp, #108]          @ 4-byte Reload
	ldr	r3, [r2]
	add	r12, r3, #1
	str	r12, [r2]
	ldr	lr, [sp, #100]          @ 4-byte Reload
	mul	r12, r3, lr
	ldr	r3, [sp, #104]          @ 4-byte Reload
	str	r1, [r3, r12]
	str	r0, [sp, #96]           @ 4-byte Spill
	b	.LBB2_112
.LBB2_76:
	ldr	r0, .LCPI2_24
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_78
	b	.LBB2_77
.LBB2_77:
	ldr	r0, .LCPI2_39
	ldr	r1, [r0]
	add	r2, r1, #1
	str	r2, [r0]
	ldr	r0, .LCPI2_40
	mov	r2, #100
	mla	r3, r1, r2, r0
	ldr	r1, [r11, #-24]
	mov	r0, r3
	bl	strcpy
	str	r0, [sp, #92]           @ 4-byte Spill
	b	.LBB2_111
.LBB2_78:
	ldr	r0, .LCPI2_25
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_80
	b	.LBB2_79
.LBB2_79:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_38
	bl	printf
	str	r0, [sp, #88]           @ 4-byte Spill
	b	.LBB2_110
.LBB2_80:
	ldr	r0, .LCPI2_26
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_82
	b	.LBB2_81
.LBB2_81:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_37
	bl	printf
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB2_109
.LBB2_82:
	ldr	r0, .LCPI2_27
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_84
	b	.LBB2_83
.LBB2_83:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_9
	bl	printf
	str	r0, [sp, #80]           @ 4-byte Spill
	b	.LBB2_108
.LBB2_84:
	ldr	r0, .LCPI2_28
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_86
	b	.LBB2_85
.LBB2_85:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_9
	bl	printf
	str	r0, [sp, #76]           @ 4-byte Spill
	b	.LBB2_107
.LBB2_86:
	ldr	r0, .LCPI2_29
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_92
	b	.LBB2_87
.LBB2_87:
	ldr	r0, .LCPI2_2
	sub	r1, r11, #195
	bl	printf
	ldr	r2, [r11, #-152]
	ldr	r3, [r11, #-148]
	ldr	r1, .LCPI2_3
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-140]
	str	r0, [sp, #68]           @ 4-byte Spill
	mov	r0, r1
	bl	getpwuid
	ldr	r1, [r0]
	ldr	r0, .LCPI2_36
	bl	printf
	ldrsb	r1, [r11, #-195]
	cmp	r1, #99
	str	r0, [sp, #64]           @ 4-byte Spill
	beq	.LBB2_89
	b	.LBB2_88
.LBB2_88:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #98
	bne	.LBB2_90
	b	.LBB2_89
.LBB2_89:
	ldr	r0, [r11, #-128]
	ldr	r1, [r11, #-124]
	lsr	r0, r0, #8
	orr	r2, r0, r1, lsl #24
	lsr	r3, r1, #8
	ldr	r0, .LCPI2_6
	bl	printf
	ldrb	r2, [r11, #-128]
	ldr	r1, .LCPI2_7
	mov	r3, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #56]           @ 4-byte Spill
	b	.LBB2_91
.LBB2_90:
	ldr	r2, [r11, #-120]
	ldr	r3, [r11, #-116]
	ldr	r0, .LCPI2_5
	bl	printf
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB2_91
.LBB2_91:
	sub	r0, r11, #168
	add	r0, r0, #88
	bl	localtime
	str	r0, [r11, #-184]
	ldr	r0, [r11, #-184]
	ldr	lr, [r0, #20]
	mov	r1, #876
	orr	r1, r1, #1024
	add	r1, lr, r1
	ldr	lr, [r0, #4]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #16]
	add	r0, r0, #1
	mov	r12, sp
	str	lr, [r12, #4]
	str	r2, [r12]
	ldr	r2, .LCPI2_8
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #48]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-24]
	ldr	r2, .LCPI2_9
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r2
	bl	printf
	ldr	r1, .LCPI2_11
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB2_106
.LBB2_92:
	ldr	r0, .LCPI2_30
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB2_105
	b	.LBB2_93
.LBB2_93:
	ldr	r1, [r11, #-24]
	ldr	r0, .LCPI2_13
	bl	printf
	ldrsb	r1, [r11, #-195]
	cmp	r1, #100
	str	r0, [sp, #32]           @ 4-byte Spill
	bne	.LBB2_95
	b	.LBB2_94
.LBB2_94:
	ldr	r0, .LCPI2_31
	bl	printf
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB2_95
.LBB2_95:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #49
	bne	.LBB2_97
	b	.LBB2_96
.LBB2_96:
	ldr	r0, .LCPI2_32
	bl	printf
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB2_97
.LBB2_97:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #112
	bne	.LBB2_99
	b	.LBB2_98
.LBB2_98:
	ldr	r0, .LCPI2_33
	bl	printf
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB2_99
.LBB2_99:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #115
	bne	.LBB2_101
	b	.LBB2_100
.LBB2_100:
	ldr	r0, .LCPI2_34
	bl	printf
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB2_101
.LBB2_101:
	ldrsb	r0, [r11, #-195]
	cmp	r0, #45
	bne	.LBB2_104
	b	.LBB2_102
.LBB2_102:
	ldrb	r0, [r11, #-144]
	tst	r0, #64
	beq	.LBB2_104
	b	.LBB2_103
.LBB2_103:
	ldr	r0, .LCPI2_35
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB2_104
.LBB2_104:
	ldr	r0, .LCPI2_11
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB2_105
.LBB2_105:
	b	.LBB2_106
.LBB2_106:
	b	.LBB2_107
.LBB2_107:
	b	.LBB2_108
.LBB2_108:
	b	.LBB2_109
.LBB2_109:
	b	.LBB2_110
.LBB2_110:
	b	.LBB2_111
.LBB2_111:
	b	.LBB2_112
.LBB2_112:
	b	.LBB2_113
.LBB2_113:
	b	.LBB2_114
.LBB2_114:
	b	.LBB2_115
.LBB2_115:
	b	.LBB2_116
.LBB2_116:
	b	.LBB2_117
.LBB2_117:
	b	.LBB2_118
.LBB2_118:
	b	.LBB2_119
.LBB2_119:
	b	.LBB2_120
.LBB2_120:
	b	.LBB2_121
.LBB2_121:
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.122:
.LCPI2_0:
	.long	option_l
.LCPI2_1:
	.long	option_n
.LCPI2_2:
	.long	.L.str.2
.LCPI2_3:
	.long	.L.str.3
.LCPI2_4:
	.long	.L.str.11
.LCPI2_5:
	.long	.L.str.7
.LCPI2_6:
	.long	.L.str.5
.LCPI2_7:
	.long	.L.str.6
.LCPI2_8:
	.long	.L.str.8
.LCPI2_9:
	.long	.L.str.12
.LCPI2_10:
	.long	total
.LCPI2_11:
	.long	.L.str.10
.LCPI2_12:
	.long	.L.str.4
.LCPI2_13:
	.long	.L.str.9
.LCPI2_14:
	.long	option_o
.LCPI2_15:
	.long	option_i
.LCPI2_16:
	.long	option_R
.LCPI2_17:
	.long	option_s
.LCPI2_18:
	.long	option_m
.LCPI2_19:
	.long	option_A
.LCPI2_20:
	.long	option_t
.LCPI2_21:
	.long	option_u
.LCPI2_22:
	.long	option_B
.LCPI2_23:
	.long	option_S
.LCPI2_24:
	.long	option_r
.LCPI2_25:
	.long	option_N
.LCPI2_26:
	.long	option_Q
.LCPI2_27:
	.long	option_1
.LCPI2_28:
	.long	option_a
.LCPI2_29:
	.long	option_g
.LCPI2_30:
	.long	option_F
.LCPI2_31:
	.long	.L.str.22
.LCPI2_32:
	.long	.L.str.23
.LCPI2_33:
	.long	.L.str.24
.LCPI2_34:
	.long	.L.str.25
.LCPI2_35:
	.long	.L.str.26
.LCPI2_36:
	.long	.L.str.13
.LCPI2_37:
	.long	.L.str.21
.LCPI2_38:
	.long	.L.str.20
.LCPI2_39:
	.long	h
.LCPI2_40:
	.long	filenames
.LCPI2_41:
	.long	n
.LCPI2_42:
	.long	filesize
.LCPI2_43:
	.long	.L.str.19
.LCPI2_44:
	.long	filetime
.LCPI2_45:
	.long	.L.str
.LCPI2_46:
	.long	.L.str.18
.LCPI2_47:
	.long	.L.str.17
.LCPI2_48:
	.long	.L.str.16
.LCPI2_49:
	.long	.L.str.15
.LCPI2_50:
	.long	.L.str.14
.LCPI2_51:
	.long	1431655766              @ 0x55555556
.LCPI2_52:
	.long	.L.str.1
.Lfunc_end2:
	.size	showfile, .Lfunc_end2-showfile
	.fnend
                                        @ -- End function
	.globl	showdir                 @ -- Begin function showdir
	.p2align	2
	.type	showdir,%function
	.code	32                      @ @showdir
showdir:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #184
	bic	sp, sp, #15
	mov	r1, r0
	str	r0, [sp, #176]
	mov	r0, #0
	str	r0, [sp, #60]
	ldr	r2, [sp, #176]
	ldr	r3, .LCPI3_0
	add	r12, sp, #56
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #40]           @ 4-byte Spill
	mov	r1, r12
	ldr	r2, [sp, #44]           @ 4-byte Reload
	bl	scandir
	str	r0, [sp, #52]
	ldr	r0, [sp, #52]
	cmn	r0, #1
	bgt	.LBB3_2
	b	.LBB3_1
.LBB3_1:
	ldr	r0, .LCPI3_19
	bl	perror
	b	.LBB3_27
.LBB3_2:
	mvn	r0, #0
	str	r0, [sp, #48]
	b	.LBB3_3
.LBB3_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #52]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB3_13
	b	.LBB3_4
.LBB3_4:                                @   in Loop: Header=BB3_3 Depth=1
	ldr	r0, [sp, #48]
	add	r0, r0, #1
	str	r0, [sp, #48]
	ldr	r0, .LCPI3_12
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB3_8
	b	.LBB3_5
.LBB3_5:                                @   in Loop: Header=BB3_3 Depth=1
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #48]
	ldr	r0, [r0, r1, lsl #2]
	ldrsb	r0, [r0, #19]
	cmp	r0, #46
	bne	.LBB3_7
	b	.LBB3_6
.LBB3_6:                                @   in Loop: Header=BB3_3 Depth=1
	b	.LBB3_3
.LBB3_7:                                @   in Loop: Header=BB3_3 Depth=1
	b	.LBB3_8
.LBB3_8:                                @   in Loop: Header=BB3_3 Depth=1
	ldr	r0, .LCPI3_13
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_10
	b	.LBB3_9
.LBB3_9:
	ldr	r0, .LCPI3_17
	ldr	r1, .LCPI3_18
	bl	printf
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB3_27
.LBB3_10:                               @   in Loop: Header=BB3_3 Depth=1
	ldr	r2, [sp, #176]
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #48]
	ldr	r0, [r0, r1, lsl #2]
	add	r3, r0, #19
	ldr	r1, .LCPI3_14
	add	r0, sp, #64
	str	r0, [sp, #32]           @ 4-byte Spill
	bl	sprintf
	ldr	r1, [sp, #56]
	ldr	r2, [sp, #48]
	ldr	r1, [r1, r2, lsl #2]
	add	r1, r1, #19
	ldr	r2, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r2
	bl	showfile
	ldr	r0, .LCPI3_15
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_12
	b	.LBB3_11
.LBB3_11:                               @   in Loop: Header=BB3_3 Depth=1
	ldr	r0, .LCPI3_16
	bl	printf
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB3_12
.LBB3_12:                               @   in Loop: Header=BB3_3 Depth=1
	b	.LBB3_3
.LBB3_13:
	ldr	r0, .LCPI3_1
	ldr	r0, [r0]
	cmp	r0, #1
	beq	.LBB3_15
	b	.LBB3_14
.LBB3_14:
	ldr	r0, .LCPI3_2
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_16
	b	.LBB3_15
.LBB3_15:
	ldr	r0, .LCPI3_3
	ldr	r1, [r0]
	ldr	r2, .LCPI3_4
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r2
	bl	printf
	mov	r1, #0
	ldr	r2, [sp, #20]           @ 4-byte Reload
	str	r1, [r2]
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB3_16
.LBB3_16:
	ldr	r0, .LCPI3_5
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_22
	b	.LBB3_17
.LBB3_17:
	ldr	r0, .LCPI3_6
	ldr	r0, [r0]
	str	r0, [sp, #60]
	b	.LBB3_18
.LBB3_18:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	cmp	r0, #0
	blt	.LBB3_21
	b	.LBB3_19
.LBB3_19:                               @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, .LCPI3_10
	mov	r2, #100
	mla	r3, r0, r2, r1
	ldr	r0, .LCPI3_11
	mov	r1, r3
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB3_20
.LBB3_20:                               @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [sp, #60]
	sub	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB3_18
.LBB3_21:
	b	.LBB3_22
.LBB3_22:
	ldr	r0, .LCPI3_7
	ldr	r0, [r0]
	cmp	r0, #1
	beq	.LBB3_24
	b	.LBB3_23
.LBB3_23:
	ldr	r0, .LCPI3_8
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_25
	b	.LBB3_24
.LBB3_24:
	bl	timesort
	b	.LBB3_25
.LBB3_25:
	ldr	r0, .LCPI3_9
	ldr	r0, [r0]
	cmp	r0, #1
	bne	.LBB3_27
	b	.LBB3_26
.LBB3_26:
	bl	sizesort
	b	.LBB3_27
.LBB3_27:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.28:
.LCPI3_0:
	.long	alphasort
.LCPI3_1:
	.long	option_s
.LCPI3_2:
	.long	option_n
.LCPI3_3:
	.long	total
.LCPI3_4:
	.long	.L.str.29
.LCPI3_5:
	.long	option_r
.LCPI3_6:
	.long	h
.LCPI3_7:
	.long	option_t
.LCPI3_8:
	.long	option_u
.LCPI3_9:
	.long	option_S
.LCPI3_10:
	.long	filenames
.LCPI3_11:
	.long	.L.str.20
.LCPI3_12:
	.long	option_a
.LCPI3_13:
	.long	option_d
.LCPI3_14:
	.long	.L.str.28
.LCPI3_15:
	.long	option_1
.LCPI3_16:
	.long	.L.str.10
.LCPI3_17:
	.long	.L.str.16
.LCPI3_18:
	.long	filename
.LCPI3_19:
	.long	.L.str.27
.Lfunc_end3:
	.size	showdir, .Lfunc_end3-showdir
	.fnend
                                        @ -- End function
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #208
	mov	r2, r1
	mov	r3, r0
	mov	r12, #0
	str	r12, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	mov	r0, #8
	str	r0, [sp, #44]
	ldr	r0, .LCPI4_0
	mov	r1, #100
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, r12
	ldr	r12, [sp, #32]          @ 4-byte Reload
	str	r2, [sp, #28]           @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp, #24]           @ 4-byte Spill
	bl	memset
	ldr	r1, .LCPI4_1
	ldr	r2, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r2
	bl	strcpy
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB4_1
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, .LCPI4_2
	bl	getopt
	str	r0, [sp, #40]
	cmn	r0, #1
	beq	.LBB4_27
	b	.LBB4_2
.LBB4_2:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #40]
	sub	r0, r0, #49
	cmp	r0, #68
	str	r0, [sp, #12]           @ 4-byte Spill
	bhi	.LBB4_26
@ %bb.3:                                @   in Loop: Header=BB4_1 Depth=1
	adr	r0, .LJTI4_0
	ldr	r1, [sp, #12]           @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.4:
	.p2align	2
.LJTI4_0:
	.long	.LBB4_8
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_25
	.long	.LBB4_26
	.long	.LBB4_13
	.long	.LBB4_22
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_12
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_21
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_19
	.long	.LBB4_14
	.long	.LBB4_23
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_5
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_10
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_20
	.long	.LBB4_26
	.long	.LBB4_9
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_7
	.long	.LBB4_16
	.long	.LBB4_11
	.long	.LBB4_17
	.long	.LBB4_26
	.long	.LBB4_26
	.long	.LBB4_18
	.long	.LBB4_15
	.long	.LBB4_6
	.long	.LBB4_24
.LBB4_5:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_26
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_25
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_24
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_8:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_23
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_9:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_22
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_10:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_21
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_11:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_20
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_12:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_19
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_13:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_18
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_14:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_17
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_15:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_16
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_16:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_15
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_17:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_14
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_18:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_13
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_19:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_12
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_20:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_11
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_21:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_10
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_22:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_9
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_23:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_8
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_24:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_7
	mov	r1, #1
	str	r1, [r0]
	b	.LBB4_26
.LBB4_25:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, .LCPI4_5
	ldrsb	r1, [r0]
	ldr	r0, .LCPI4_6
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB4_26
.LBB4_26:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_1
.LBB4_27:
	ldr	r0, .LCPI4_0
	add	r1, sp, #48
	bl	stat
	cmn	r0, #1
	bgt	.LBB4_29
	b	.LBB4_28
.LBB4_28:
	ldr	r0, .LCPI4_4
	bl	perror
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB4_33
.LBB4_29:
	ldr	r0, [sp, #72]
	and	r0, r0, #61440
	cmp	r0, #16384
	bne	.LBB4_31
	b	.LBB4_30
.LBB4_30:
	ldr	r0, .LCPI4_0
	bl	showdir
	b	.LBB4_32
.LBB4_31:
	ldr	r0, .LCPI4_0
	str	r0, [sp, #4]            @ 4-byte Spill
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	showfile
	b	.LBB4_32
.LBB4_32:
	ldr	r0, .LCPI4_3
	bl	printf
	mov	lr, #0
	str	lr, [r11, #-4]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB4_33
.LBB4_33:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.34:
.LCPI4_0:
	.long	filename
.LCPI4_1:
	.long	.L.str.30
.LCPI4_2:
	.long	.L.str.31
.LCPI4_3:
	.long	.L.str.10
.LCPI4_4:
	.long	.L.str.1
.LCPI4_5:
	.long	optopt
.LCPI4_6:
	.long	.L.str.32
.LCPI4_7:
	.long	option_u
.LCPI4_8:
	.long	option_S
.LCPI4_9:
	.long	option_B
.LCPI4_10:
	.long	option_N
.LCPI4_11:
	.long	option_g
.LCPI4_12:
	.long	option_Q
.LCPI4_13:
	.long	option_r
.LCPI4_14:
	.long	option_o
.LCPI4_15:
	.long	option_m
.LCPI4_16:
	.long	option_s
.LCPI4_17:
	.long	option_R
.LCPI4_18:
	.long	option_A
.LCPI4_19:
	.long	option_F
.LCPI4_20:
	.long	option_n
.LCPI4_21:
	.long	option_d
.LCPI4_22:
	.long	option_i
.LCPI4_23:
	.long	option_1
.LCPI4_24:
	.long	option_l
.LCPI4_25:
	.long	option_t
.LCPI4_26:
	.long	option_a
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.fnend
                                        @ -- End function
	.type	total,%object           @ @total
	.bss
	.globl	total
	.p2align	2
total:
	.long	0                       @ 0x0
	.size	total, 4

	.type	h,%object               @ @h
	.globl	h
	.p2align	2
h:
	.long	0                       @ 0x0
	.size	h, 4

	.type	n,%object               @ @n
	.globl	n
	.p2align	2
n:
	.long	0                       @ 0x0
	.size	n, 4

	.type	filetime,%object        @ @filetime
	.comm	filetime,11200,16
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s    "
	.size	.L.str, 7

	.type	filesize,%object        @ @filesize
	.comm	filesize,10400,16
	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"stat"
	.size	.L.str.1, 5

	.type	option_l,%object        @ @option_l
	.local	option_l
	.comm	option_l,4,4
	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"%s "
	.size	.L.str.2, 4

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"%2d "
	.size	.L.str.3, 5

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	" %s\t%s\t"
	.size	.L.str.4, 8

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"%5d,"
	.size	.L.str.5, 5

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"%2d"
	.size	.L.str.6, 4

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"%8lld "
	.size	.L.str.7, 7

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"%d %d %2d %2d:%d "
	.size	.L.str.8, 18

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	option_n,%object        @ @option_n
	.local	option_n
	.comm	option_n,4,4
	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	" %d\t%d\t"
	.size	.L.str.11, 8

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"%s  "
	.size	.L.str.12, 5

	.type	option_o,%object        @ @option_o
	.local	option_o
	.comm	option_o,4,4
	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	" %s\t"
	.size	.L.str.13, 5

	.type	option_i,%object        @ @option_i
	.local	option_i
	.comm	option_i,4,4
	.type	.L.str.14,%object       @ @.str.14
.L.str.14:
	.asciz	"%8llu %s      "
	.size	.L.str.14, 15

	.type	option_R,%object        @ @option_R
	.local	option_R
	.comm	option_R,4,4
	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"%s: \n"
	.size	.L.str.15, 6

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"%s\n"
	.size	.L.str.16, 4

	.type	option_s,%object        @ @option_s
	.local	option_s
	.comm	option_s,4,4
	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"%4lld "
	.size	.L.str.17, 7

	.type	option_m,%object        @ @option_m
	.local	option_m
	.comm	option_m,4,4
	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"%s,  "
	.size	.L.str.18, 6

	.type	option_A,%object        @ @option_A
	.local	option_A
	.comm	option_A,4,4
	.type	option_t,%object        @ @option_t
	.local	option_t
	.comm	option_t,4,4
	.type	option_u,%object        @ @option_u
	.local	option_u
	.comm	option_u,4,4
	.type	option_B,%object        @ @option_B
	.local	option_B
	.comm	option_B,4,4
	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"%-15s"
	.size	.L.str.19, 6

	.type	option_S,%object        @ @option_S
	.local	option_S
	.comm	option_S,4,4
	.type	option_r,%object        @ @option_r
	.local	option_r
	.comm	option_r,4,4
	.type	filenames,%object       @ @filenames
	.comm	filenames,10000,16
	.type	option_N,%object        @ @option_N
	.local	option_N
	.comm	option_N,4,4
	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"%s     "
	.size	.L.str.20, 8

	.type	option_Q,%object        @ @option_Q
	.local	option_Q
	.comm	option_Q,4,4
	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	"\"%s\"  "
	.size	.L.str.21, 7

	.type	option_1,%object        @ @option_1
	.local	option_1
	.comm	option_1,4,4
	.type	option_a,%object        @ @option_a
	.local	option_a
	.comm	option_a,4,4
	.type	option_g,%object        @ @option_g
	.local	option_g
	.comm	option_g,4,4
	.type	option_F,%object        @ @option_F
	.local	option_F
	.comm	option_F,4,4
	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"/"
	.size	.L.str.22, 2

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	"@"
	.size	.L.str.23, 2

	.type	.L.str.24,%object       @ @.str.24
.L.str.24:
	.asciz	"|"
	.size	.L.str.24, 2

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"="
	.size	.L.str.25, 2

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"*"
	.size	.L.str.26, 2

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"opendir"
	.size	.L.str.27, 8

	.type	option_d,%object        @ @option_d
	.local	option_d
	.comm	option_d,4,4
	.type	filename,%object        @ @filename
	.comm	filename,100,16
	.type	.L.str.28,%object       @ @.str.28
.L.str.28:
	.asciz	"%s/%s"
	.size	.L.str.28, 6

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	"total = %d"
	.size	.L.str.29, 11

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"."
	.size	.L.str.30, 2

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"al1idntFRAsmorQgNBSu"
	.size	.L.str.31, 21

	.type	.L.str.32,%object       @ @.str.32
.L.str.32:
	.asciz	"Unknown option:%c\n"
	.size	.L.str.32, 19


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",%progbits
