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
	.file	"x509.c"
	.globl	x509_new                @ -- Begin function x509_new
	.p2align	2
	.type	x509_new,%function
	.code	32                      @ @x509_new
x509_new:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #2096
	bic	sp, sp, #15
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [sp, #2088]
	str	r1, [sp, #2080]
	str	r2, [sp, #2072]
	mvn	r0, #0
	str	r0, [sp, #2060]
	mov	r0, #0
	str	r0, [sp, #2056]
	str	r0, [sp, #2052]
	str	r0, [sp, #2048]
	mov	r1, #1
	mov	r2, #176
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #92]           @ 4-byte Reload
	ldr	r4, [sp, #92]           @ 4-byte Reload
	str	r3, [sp, #88]           @ 4-byte Spill
	mov	r3, r4
	str	r12, [sp, #84]          @ 4-byte Spill
	str	lr, [sp, #80]           @ 4-byte Spill
	bl	calloc
	ldr	r1, [sp, #2072]
	str	r0, [r1]
	ldr	r0, [sp, #2072]
	ldr	r0, [r0]
	str	r0, [sp, #2040]
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #4
	mov	r2, #48
	str	r2, [sp, #76]           @ 4-byte Spill
	bl	asn1_skip_obj
	ldr	r1, [sp, #2088]
	add	lr, sp, #2048
	add	r2, lr, #8
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #76]           @ 4-byte Reload
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_32
.LBB0_2:
	ldr	r0, [sp, #2056]
	str	r0, [sp, #2068]
	ldr	r0, [sp, #2068]
	str	r0, [sp, #2064]
	ldr	r0, [sp, #2088]
	add	r1, sp, #2064
	mov	r2, #48
	str	r2, [sp, #68]           @ 4-byte Spill
	bl	asn1_skip_obj
	ldr	r1, [sp, #2088]
	add	lr, sp, #2048
	add	r2, lr, #8
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #68]           @ 4-byte Reload
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_32
.LBB0_4:
	ldr	r0, [sp, #2088]
	ldr	r1, [sp, #2056]
	ldrb	r0, [r0, r1]
	cmp	r0, #160
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #8
	add	r2, sp, #2048
	bl	asn1_version
	cmn	r0, #1
	bne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_32
.LBB0_7:
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #8
	mov	r2, #2
	bl	asn1_skip_obj
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #8
	mov	r2, #48
	bl	asn1_next_obj
	cmn	r0, #1
	bgt	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_32
.LBB0_10:
	ldr	r0, [sp, #2088]
	ldr	r2, [sp, #2040]
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_signature_type
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	mvn	r0, #7
	str	r0, [sp, #2060]
	b	.LBB0_32
.LBB0_12:
	ldr	r0, [sp, #2088]
	ldr	r2, [sp, #2040]
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_name
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_13
.LBB0_13:
	ldr	r0, [sp, #2088]
	ldr	r2, [sp, #2040]
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_validity
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:
	ldr	r0, [sp, #2088]
	ldr	r1, [sp, #2040]
	add	r2, r1, #24
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_name
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	r0, [sp, #2088]
	ldr	r2, [sp, #2040]
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_public_key
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_32
.LBB0_17:
	ldr	r0, [sp, #2040]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #36]
	str	r0, [sp, #2032]
	ldr	r0, [sp, #2040]
	ldrb	r0, [r0, #86]
	sub	r0, r0, #4
	cmp	r0, #9
	str	r0, [sp, #60]           @ 4-byte Spill
	bhi	.LBB0_25
@ %bb.18:
	adr	r0, .LJTI0_0
	ldr	r1, [sp, #60]           @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.19:
	.p2align	2
.LJTI0_0:
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_25
	.long	.LBB0_25
	.long	.LBB0_25
	.long	.LBB0_25
	.long	.LBB0_25
	.long	.LBB0_22
	.long	.LBB0_23
	.long	.LBB0_24
.LBB0_20:
	add	lr, sp, #1024
	add	r0, lr, #920
	str	r0, [sp, #56]           @ 4-byte Spill
	bl	MD5_Init
	ldr	r0, [sp, #2088]
	ldr	lr, [sp, #2068]
	add	r1, r0, lr
	ldr	r0, [sp, #2064]
	sub	r2, r0, lr
	ldr	r0, [sp, #56]           @ 4-byte Reload
	bl	MD5_Update
	add	r0, sp, #1920
	str	r0, [sp, #52]           @ 4-byte Spill
	ldr	r1, [sp, #56]           @ 4-byte Reload
	bl	MD5_Final
	ldr	r0, [sp, #2032]
	mov	r2, #16
	ldr	r1, [sp, #52]           @ 4-byte Reload
	bl	bi_import
	ldr	r1, [sp, #2040]
	str	r0, [r1, #80]
	b	.LBB0_25
.LBB0_21:
	add	r0, sp, #1824
	str	r0, [sp, #48]           @ 4-byte Spill
	bl	SHA1_Init
	ldr	r0, [sp, #2088]
	ldr	lr, [sp, #2068]
	add	r1, r0, lr
	ldr	r0, [sp, #2064]
	sub	r2, r0, lr
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	SHA1_Update
	add	r0, sp, #1792
	str	r0, [sp, #44]           @ 4-byte Spill
	ldr	r1, [sp, #48]           @ 4-byte Reload
	bl	SHA1_Final
	ldr	r0, [sp, #2032]
	mov	r2, #20
	ldr	r1, [sp, #44]           @ 4-byte Reload
	bl	bi_import
	ldr	r1, [sp, #2040]
	str	r0, [r1, #80]
	b	.LBB0_25
.LBB0_22:
	add	lr, sp, #1024
	add	r0, lr, #664
	str	r0, [sp, #40]           @ 4-byte Spill
	bl	SHA256_Init
	ldr	r0, [sp, #2088]
	ldr	lr, [sp, #2068]
	add	r1, r0, lr
	ldr	r0, [sp, #2064]
	sub	r2, r0, lr
	ldr	r0, [sp, #40]           @ 4-byte Reload
	bl	SHA256_Update
	add	r0, sp, #1648
	str	r0, [sp, #36]           @ 4-byte Spill
	ldr	r1, [sp, #40]           @ 4-byte Reload
	bl	SHA256_Final
	ldr	r0, [sp, #2032]
	mov	r2, #32
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	bi_import
	ldr	r1, [sp, #2040]
	str	r0, [r1, #80]
	b	.LBB0_25
.LBB0_23:
	add	r0, sp, #928
	str	r0, [sp, #32]           @ 4-byte Spill
	bl	SHA384_Init
	ldr	r0, [sp, #2088]
	ldr	lr, [sp, #2068]
	add	r1, r0, lr
	ldr	r0, [sp, #2064]
	sub	r2, r0, lr
	ldr	r0, [sp, #32]           @ 4-byte Reload
	bl	SHA384_Update
	add	r0, sp, #880
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	SHA384_Final
	ldr	r0, [sp, #2032]
	mov	r2, #48
	ldr	r1, [sp, #28]           @ 4-byte Reload
	bl	bi_import
	ldr	r1, [sp, #2040]
	str	r0, [r1, #80]
	b	.LBB0_25
.LBB0_24:
	add	r0, sp, #160
	str	r0, [sp, #24]           @ 4-byte Spill
	bl	SHA512_Init
	ldr	r0, [sp, #2088]
	ldr	lr, [sp, #2068]
	add	r1, r0, lr
	ldr	r0, [sp, #2064]
	sub	r2, r0, lr
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bl	SHA512_Update
	add	r0, sp, #96
	str	r0, [sp, #20]           @ 4-byte Spill
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	SHA512_Final
	ldr	r0, [sp, #2032]
	mov	r2, #64
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	bi_import
	ldr	r1, [sp, #2040]
	str	r0, [r1, #80]
	b	.LBB0_25
.LBB0_25:
	ldr	r0, [sp, #2048]
	cmp	r0, #2
	bne	.LBB0_28
	b	.LBB0_26
.LBB0_26:
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #8
	mov	r2, #163
	bl	asn1_next_obj
	cmp	r0, #1
	blt	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	r0, [sp, #2088]
	ldr	r1, [sp, #2056]
	ldr	r2, [sp, #2040]
	bl	x509_v3_subject_alt_name
	ldr	r1, [sp, #2088]
	ldr	r2, [sp, #2056]
	ldr	lr, [sp, #2040]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	x509_v3_basic_constraints
	ldr	r1, [sp, #2088]
	ldr	r2, [sp, #2056]
	ldr	lr, [sp, #2040]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	x509_v3_key_usage
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_28
.LBB0_28:
	ldr	r0, [sp, #2064]
	str	r0, [sp, #2056]
	ldr	r0, [sp, #2088]
	add	lr, sp, #2048
	add	r1, lr, #8
	mov	r2, #48
	bl	asn1_skip_obj
	cmp	r0, #0
	bne	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	r0, [sp, #2088]
	ldr	r2, [sp, #2040]
	add	lr, sp, #2048
	add	r1, lr, #8
	bl	asn1_signature
	cmp	r0, #0
	beq	.LBB0_31
	b	.LBB0_30
.LBB0_30:
	b	.LBB0_32
.LBB0_31:
	mov	r0, #0
	str	r0, [sp, #2060]
	b	.LBB0_32
.LBB0_32:
	ldr	r0, [sp, #2080]
	cmp	r0, #0
	beq	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldr	r0, [sp, #2052]
	ldr	r1, [sp, #2080]
	str	r0, [r1]
	b	.LBB0_34
.LBB0_34:
	ldr	r0, [sp, #2060]
	cmp	r0, #0
	beq	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	r0, [sp, #2060]
	bl	x509_display_error
	ldr	lr, .LCPI0_0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, lr
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	printf
	ldr	r1, [sp, #2040]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	bl	x509_free
	ldr	r0, [sp, #2072]
	mov	r1, #0
	str	r1, [r0]
	b	.LBB0_36
.LBB0_36:
	ldr	r0, [sp, #2060]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.37:
.LCPI0_0:
	.long	.L.str
.Lfunc_end0:
	.size	x509_new, .Lfunc_end0-x509_new
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function x509_v3_subject_alt_name
	.type	x509_v3_subject_alt_name,%function
	.code	32                      @ @x509_v3_subject_alt_name
x509_v3_subject_alt_name:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #64
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	str	lr, [sp, #16]           @ 4-byte Spill
	bl	asn1_is_subject_alt_name
	str	r0, [r11, #-12]
	cmp	r0, #1
	blt	.LBB1_11
	b	.LBB1_1
.LBB1_1:
	ldr	r0, [r11, #-16]
	mov	r1, #1
	strb	r1, [r0, #91]
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	str	r1, [sp, #12]           @ 4-byte Spill
	bl	asn1_is_critical_ext
	ldr	r1, [r11, #-16]
	strb	r0, [r1, #92]
	ldr	r0, [r11, #-8]
	mov	r2, #4
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	asn1_next_obj
	cmp	r0, #1
	blt	.LBB1_10
	b	.LBB1_2
.LBB1_2:
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	mov	r2, #48
	bl	asn1_next_obj
	str	r0, [r11, #-20]
	cmp	r0, #1
	blt	.LBB1_9
	b	.LBB1_3
.LBB1_3:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-20]
	add	r0, r0, r1
	str	r0, [r11, #-24]
	mov	r0, #0
	str	r0, [r11, #-28]
	b	.LBB1_4
.LBB1_4:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	bge	.LBB1_8
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	add	r2, r1, #1
	str	r2, [r11, #-12]
	ldrb	r0, [r0, r1]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	bl	get_asn1_length
	str	r0, [sp, #28]
	ldr	r0, [sp, #32]
	cmp	r0, #130
	bne	.LBB1_7
	b	.LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	ldr	r1, [r11, #-28]
	add	r1, r1, #2
	asr	r2, r1, #31
	lsl	r2, r2, #3
	orr	r3, r2, r1, lsr #29
	lsl	r2, r1, #3
	bl	realloc
	ldr	r1, [r11, #-16]
	str	r0, [r1, #48]
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	asr	r1, r0, #31
	bl	malloc
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #48]
	ldr	r2, [r11, #-28]
	str	r0, [r1, r2, lsl #2]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	ldr	r1, [r11, #-28]
	add	r0, r0, r1, lsl #2
	mov	r1, #0
	str	r1, [r0, #4]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	ldr	r2, [r11, #-28]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-12]
	add	r2, r2, r3
	ldr	r3, [sp, #28]
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #48]
	ldr	r2, [r11, #-28]
	ldr	r1, [r1, r2, lsl #2]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #8]            @ 4-byte Reload
	strb	r3, [r1, r2]
	ldr	r1, [r11, #-28]
	add	r1, r1, #1
	str	r1, [r11, #-28]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB1_7
.LBB1_7:                                @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [r11, #-12]
	add	r0, r1, r0
	str	r0, [r11, #-12]
	b	.LBB1_4
.LBB1_8:
	b	.LBB1_9
.LBB1_9:
	b	.LBB1_10
.LBB1_10:
	b	.LBB1_11
.LBB1_11:
	mov	r0, #0
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end1:
	.size	x509_v3_subject_alt_name, .Lfunc_end1-x509_v3_subject_alt_name
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function x509_v3_basic_constraints
	.type	x509_v3_basic_constraints,%function
	.code	32                      @ @x509_v3_basic_constraints
x509_v3_basic_constraints:
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
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	bl	asn1_is_basic_constraints
	str	r0, [r11, #-12]
	cmp	r0, #0
	bne	.LBB2_2
	b	.LBB2_1
.LBB2_1:
	b	.LBB2_8
.LBB2_2:
	ldr	r0, [r11, #-16]
	mov	r1, #1
	strb	r1, [r0, #87]
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	asn1_is_critical_ext
	ldr	r1, [r11, #-16]
	strb	r0, [r1, #88]
	ldr	r0, [r11, #-8]
	mov	r2, #4
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB2_6
	b	.LBB2_3
.LBB2_3:
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	mov	r2, #48
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB2_6
	b	.LBB2_4
.LBB2_4:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, r1, #93
	sub	r1, r11, #12
	bl	asn1_get_bool
	cmp	r0, #0
	blt	.LBB2_6
	b	.LBB2_5
.LBB2_5:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, r1, #96
	sub	r1, r11, #12
	bl	asn1_get_int
	cmn	r0, #1
	bgt	.LBB2_7
	b	.LBB2_6
.LBB2_6:
	mvn	r0, #0
	str	r0, [sp, #20]
	b	.LBB2_7
.LBB2_7:
	b	.LBB2_8
.LBB2_8:
	ldr	r0, [sp, #20]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end2:
	.size	x509_v3_basic_constraints, .Lfunc_end2-x509_v3_basic_constraints
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function x509_v3_key_usage
	.type	x509_v3_key_usage,%function
	.code	32                      @ @x509_v3_key_usage
x509_v3_key_usage:
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
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	bl	asn1_is_key_usage
	str	r0, [r11, #-12]
	cmp	r0, #0
	bne	.LBB3_2
	b	.LBB3_1
.LBB3_1:
	b	.LBB3_6
.LBB3_2:
	ldr	r0, [r11, #-16]
	mov	r1, #1
	strb	r1, [r0, #89]
	ldr	r0, [r11, #-8]
	sub	r1, r11, #12
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	asn1_is_critical_ext
	ldr	r1, [r11, #-16]
	strb	r0, [r1, #90]
	ldr	r0, [r11, #-8]
	mov	r2, #4
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB3_4
	b	.LBB3_3
.LBB3_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r2, r1, #100
	sub	r1, r11, #12
	bl	asn1_get_bit_string_as_int
	cmp	r0, #0
	beq	.LBB3_5
	b	.LBB3_4
.LBB3_4:
	mvn	r0, #0
	str	r0, [sp, #20]
	b	.LBB3_5
.LBB3_5:
	b	.LBB3_6
.LBB3_6:
	ldr	r0, [sp, #20]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end3:
	.size	x509_v3_key_usage, .Lfunc_end3-x509_v3_key_usage
	.fnend
                                        @ -- End function
	.globl	x509_display_error      @ -- Begin function x509_display_error
	.p2align	2
	.type	x509_display_error,%function
	.code	32                      @ @x509_display_error
x509_display_error:
	.fnstart
@ %bb.0:
	sub	sp, sp, #24
	mov	r1, r0
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	add	r0, r0, #11
	cmp	r0, #11
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #4]            @ 4-byte Spill
	bhi	.LBB4_14
@ %bb.1:
	adr	r0, .LJTI4_0
	ldr	r1, [sp, #4]            @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.2:
	.p2align	2
.LJTI4_0:
	.long	.LBB4_13
	.long	.LBB4_14
	.long	.LBB4_12
	.long	.LBB4_11
	.long	.LBB4_10
	.long	.LBB4_9
	.long	.LBB4_8
	.long	.LBB4_7
	.long	.LBB4_6
	.long	.LBB4_5
	.long	.LBB4_4
	.long	.LBB4_3
.LBB4_3:
	ldr	r0, .LCPI4_10
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_4:
	ldr	r0, .LCPI4_9
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_5:
	ldr	r0, .LCPI4_8
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_6:
	ldr	r0, .LCPI4_7
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_7:
	ldr	r0, .LCPI4_6
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_8:
	ldr	r0, .LCPI4_5
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_9:
	ldr	r0, .LCPI4_4
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_10:
	ldr	r0, .LCPI4_3
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_11:
	ldr	r0, .LCPI4_2
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_12:
	ldr	r0, .LCPI4_1
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_13:
	ldr	r0, .LCPI4_0
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_14:
	ldr	r0, .LCPI4_11
	str	r0, [sp, #16]
	b	.LBB4_15
.LBB4_15:
	ldr	r0, [sp, #16]
	add	sp, sp, #24
	mov	pc, lr
	.p2align	2
@ %bb.16:
.LCPI4_0:
	.long	.L.str.50
.LCPI4_1:
	.long	.L.str.49
.LCPI4_2:
	.long	.L.str.48
.LCPI4_3:
	.long	.L.str.47
.LCPI4_4:
	.long	.L.str.46
.LCPI4_5:
	.long	.L.str.45
.LCPI4_6:
	.long	.L.str.44
.LCPI4_7:
	.long	.L.str.43
.LCPI4_8:
	.long	.L.str.42
.LCPI4_9:
	.long	.L.str.41
.LCPI4_10:
	.long	.L.str.40
.LCPI4_11:
	.long	.L.str.51
.Lfunc_end4:
	.size	x509_display_error, .Lfunc_end4-x509_display_error
	.fnend
                                        @ -- End function
	.globl	x509_free               @ -- Begin function x509_free
	.p2align	2
	.type	x509_free,%function
	.code	32                      @ @x509_free
x509_free:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r1, r0
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	str	r1, [sp, #8]            @ 4-byte Spill
	bne	.LBB5_2
	b	.LBB5_1
.LBB5_1:
	b	.LBB5_15
.LBB5_2:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB5_3
.LBB5_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #5
	bgt	.LBB5_6
	b	.LBB5_4
.LBB5_4:                                @   in Loop: Header=BB5_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	bl	free
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0, #24]
	bl	free
	b	.LBB5_5
.LBB5_5:                                @   in Loop: Header=BB5_3 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB5_3
.LBB5_6:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #72]
	bl	free
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #80]
	cmp	r0, #0
	beq	.LBB5_8
	b	.LBB5_7
.LBB5_7:
	ldr	r0, [r11, #-8]
	ldr	r1, [r0, #76]
	ldr	r0, [r0, #80]
	ldr	r1, [r1, #36]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	bi_free
	b	.LBB5_8
.LBB5_8:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	cmp	r0, #0
	beq	.LBB5_14
	b	.LBB5_9
.LBB5_9:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB5_10
.LBB5_10:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	cmp	r0, #0
	beq	.LBB5_13
	b	.LBB5_11
.LBB5_11:                               @   in Loop: Header=BB5_10 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1, lsl #2]
	bl	free
	b	.LBB5_12
.LBB5_12:                               @   in Loop: Header=BB5_10 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB5_10
.LBB5_13:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	bl	free
	b	.LBB5_14
.LBB5_14:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #76]
	bl	RSA_free
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #104]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	bl	free
	ldr	r0, [sp, #16]
	bl	x509_free
	b	.LBB5_15
.LBB5_15:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end5:
	.size	x509_free, .Lfunc_end5-x509_free
	.fnend
                                        @ -- End function
	.globl	x509_verify             @ -- Begin function x509_verify
	.p2align	2
	.type	x509_verify,%function
	.code	32                      @ @x509_verify
x509_verify:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #160
	mov	r3, r2
	mov	r12, r1
	mov	lr, r0
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [r11, #-24]
	mov	r0, #0
	str	r0, [r11, #-28]
	str	r0, [r11, #-32]
	str	r0, [r11, #-48]
	str	r0, [r11, #-56]
	str	r0, [r11, #-64]
	str	r0, [r11, #-72]
	str	r0, [r11, #-76]
	strb	r0, [sp, #63]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r3, [sp, #56]           @ 4-byte Spill
	str	r12, [sp, #52]          @ 4-byte Spill
	str	lr, [sp, #48]           @ 4-byte Spill
	bne	.LBB6_2
	b	.LBB6_1
.LBB6_1:
	mvn	r0, #1
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_2:
	ldr	r0, [r11, #-16]
	add	r1, r0, #24
	bl	asn1_compare_dn
	cmp	r0, #0
	bne	.LBB6_4
	b	.LBB6_3
.LBB6_3:
	mov	r0, #1
	strb	r0, [sp, #63]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #36]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #76]
	ldr	r0, [r0]
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-72]
	b	.LBB6_4
.LBB6_4:
	add	r0, sp, #64
	mov	r1, #0
	bl	gettimeofday
	ldr	r1, [sp, #64]
	ldr	lr, [sp, #68]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #56]
	ldr	r2, [r2, #60]
	subs	r1, r1, r3
	sbcs	r2, lr, r2
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	bge	.LBB6_6
	b	.LBB6_5
.LBB6_5:
	mvn	r0, #3
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_6:
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	ldr	r2, [r11, #-16]
	ldr	r3, [r2, #64]
	ldr	r2, [r2, #68]
	subs	r0, r3, r0
	sbcs	r1, r2, r1
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
	bge	.LBB6_8
	b	.LBB6_7
.LBB6_7:
	mvn	r0, #4
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_8:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #87]
	tst	r0, #1
	beq	.LBB6_18
	b	.LBB6_9
.LBB6_9:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #93]
	tst	r0, #1
	bne	.LBB6_12
	b	.LBB6_10
.LBB6_10:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #4
	beq	.LBB6_12
	b	.LBB6_11
.LBB6_11:
	mvn	r0, #10
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_12:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #93]
	tst	r0, #1
	beq	.LBB6_17
	b	.LBB6_13
.LBB6_13:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #89]
	tst	r0, #1
	beq	.LBB6_15
	b	.LBB6_14
.LBB6_14:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #4
	beq	.LBB6_17
	b	.LBB6_15
.LBB6_15:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #96]
	add	r0, r0, #1
	ldr	r1, [r11, #-24]
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB6_17
	b	.LBB6_16
.LBB6_16:
	mvn	r0, #10
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_17:
	b	.LBB6_18
.LBB6_18:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #104]
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-48]
	cmp	r0, #0
	bne	.LBB6_35
	b	.LBB6_19
.LBB6_19:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB6_31
	b	.LBB6_20
.LBB6_20:
	b	.LBB6_21
.LBB6_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	mov	r1, #0
	cmp	r0, #149
	str	r1, [sp, #24]           @ 4-byte Spill
	bgt	.LBB6_23
	b	.LBB6_22
.LBB6_22:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB6_23
.LBB6_23:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB6_30
	b	.LBB6_24
.LBB6_24:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #87]
	tst	r0, #1
	beq	.LBB6_27
	b	.LBB6_25
.LBB6_25:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	ldrb	r0, [r0, #93]
	tst	r0, #1
	bne	.LBB6_27
	b	.LBB6_26
.LBB6_26:                               @   in Loop: Header=BB6_21 Depth=1
	b	.LBB6_21
.LBB6_27:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-32]
	ldr	r1, [r1, r2, lsl #2]
	add	r1, r1, #24
	bl	asn1_compare_dn
	cmp	r0, #0
	bne	.LBB6_29
	b	.LBB6_28
.LBB6_28:
	mov	r0, #1
	str	r0, [r11, #-76]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #36]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	ldr	r0, [r0, #76]
	ldr	r0, [r0]
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-72]
	b	.LBB6_30
.LBB6_29:                               @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB6_21
.LBB6_30:
	b	.LBB6_31
.LBB6_31:
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	bne	.LBB6_34
	b	.LBB6_32
.LBB6_32:
	ldrb	r0, [sp, #63]
	cmp	r0, #0
	bne	.LBB6_34
	b	.LBB6_33
.LBB6_33:
	mvn	r0, #1
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_34:
	b	.LBB6_39
.LBB6_35:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-48]
	add	r1, r1, #24
	bl	asn1_compare_dn
	cmp	r0, #0
	beq	.LBB6_37
	b	.LBB6_36
.LBB6_36:
	mvn	r0, #6
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_37:
	ldr	r0, [r11, #-48]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #36]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-48]
	ldr	r0, [r0, #76]
	ldr	r0, [r0]
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-48]
	ldr	r0, [r0, #76]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-72]
	b	.LBB6_38
.LBB6_38:
	b	.LBB6_39
.LBB6_39:
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	bne	.LBB6_42
	b	.LBB6_40
.LBB6_40:
	ldrb	r0, [sp, #63]
	cmp	r0, #0
	beq	.LBB6_42
	b	.LBB6_41
.LBB6_41:
	mvn	r0, #5
	str	r0, [r11, #-28]
	b	.LBB6_53
.LBB6_42:
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-16]
	ldr	r2, [r1, #72]
	ldrh	r1, [r1, #84]
	ldr	r3, [r11, #-64]
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	bi_clone
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-72]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	bi_clone
	mov	r1, sp
	str	r0, [r1]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r3, [sp, #8]            @ 4-byte Reload
	bl	sig_verify
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB6_47
	b	.LBB6_43
.LBB6_43:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #80]
	cmp	r0, #0
	beq	.LBB6_47
	b	.LBB6_44
.LBB6_44:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #80]
	bl	bi_compare
	cmp	r0, #0
	beq	.LBB6_46
	b	.LBB6_45
.LBB6_45:
	mvn	r0, #2
	str	r0, [r11, #-28]
	b	.LBB6_46
.LBB6_46:
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-40]
	bl	bi_free
	b	.LBB6_48
.LBB6_47:
	mvn	r0, #2
	str	r0, [r11, #-28]
	b	.LBB6_48
.LBB6_48:
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB6_50
	b	.LBB6_49
.LBB6_49:
	b	.LBB6_53
.LBB6_50:
	ldr	r0, [r11, #-48]
	cmp	r0, #0
	beq	.LBB6_52
	b	.LBB6_51
.LBB6_51:
	ldr	r0, [r11, #-24]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-24]
	bl	x509_verify
	str	r0, [r11, #-28]
	b	.LBB6_52
.LBB6_52:
	b	.LBB6_53
.LBB6_53:
	ldr	r0, [r11, #-28]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end6:
	.size	x509_verify, .Lfunc_end6-x509_verify
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function sig_verify
	.type	sig_verify,%function
	.code	32                      @ @sig_verify
sig_verify:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #112
	bic	sp, sp, #15
	mov	r6, sp
	add	r12, r6, #40
	ldr	lr, [r11, #8]
	mov	r4, r3
	mov	r5, r2
	mov	r7, r1
	mov	r8, r0
	str	r0, [r12, #64]
	str	r1, [r12, #56]
	str	r2, [r12, #52]
	str	r3, [r12, #48]
	mov	r0, #0
	str	r0, [r12, #16]
	ldr	r1, [r12, #52]
	add	r1, r1, #7
	bic	r1, r1, #7
	mov	r2, sp
	sub	r1, r2, r1
	bic	r1, r1, #15
	mov	sp, r1
	str	r1, [r12, #8]
	ldr	r1, [r12, #64]
	ldr	r2, [r12, #56]
	ldr	r3, [r12, #52]
	str	r0, [r6, #28]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	str	r12, [r6, #24]          @ 4-byte Spill
	str	r4, [r6, #20]           @ 4-byte Spill
	str	r5, [r6, #16]           @ 4-byte Spill
	str	r7, [r6, #12]           @ 4-byte Spill
	str	r8, [r6, #8]            @ 4-byte Spill
	str	lr, [r6, #4]            @ 4-byte Spill
	bl	bi_import
	ldr	r1, [r6, #24]           @ 4-byte Reload
	str	r0, [r1, #24]
	ldr	r0, [r1, #64]
	ldr	r2, [r6, #28]           @ 4-byte Reload
	strb	r2, [r0, #64]
	ldr	r0, [r1, #64]
	ldr	r1, [r1, #24]
	ldr	r3, [r6, #24]           @ 4-byte Reload
	ldr	r2, [r3, #48]
	ldr	r3, [r11, #8]
	bl	bi_mod_power2
	ldr	r1, [r6, #24]           @ 4-byte Reload
	str	r0, [r1, #32]
	ldr	r0, [r1, #64]
	ldr	r1, [r1, #32]
	ldr	r2, [r6, #24]           @ 4-byte Reload
	ldr	r2, [r2, #8]
	ldr	r3, [r6, #24]           @ 4-byte Reload
	ldr	r3, [r3, #52]
	bl	bi_export
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r6, #28]           @ 4-byte Reload
	strb	r2, [r1, #64]
	mov	r1, #10
	str	r1, [r0, #44]
	b	.LBB7_1
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #44]
	add	r3, r2, #1
	str	r3, [r0, #44]
	ldrb	r1, [r1, r2]
	mov	r2, #0
	cmp	r1, #0
	str	r2, [r6]                @ 4-byte Spill
	beq	.LBB7_3
	b	.LBB7_2
.LBB7_2:                                @   in Loop: Header=BB7_1 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r0, #44]
	ldr	r2, [r0, #52]
	mov	r3, #0
	cmp	r1, r2
	movlt	r3, #1
	str	r3, [r6]                @ 4-byte Spill
	b	.LBB7_3
.LBB7_3:                                @   in Loop: Header=BB7_1 Depth=1
	ldr	r0, [r6]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB7_5
	b	.LBB7_4
.LBB7_4:                                @   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_1
.LBB7_5:
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r0, #52]
	ldr	r2, [r0, #44]
	sub	r1, r1, r2
	str	r1, [r0, #40]
	ldr	r1, [r0, #40]
	cmp	r1, #1
	blt	.LBB7_9
	b	.LBB7_6
.LBB7_6:
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #44]
	add	r0, r1, r2
	add	r1, r6, #44
	bl	get_signature
	ldr	r1, [r6, #24]           @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.LBB7_8
	b	.LBB7_7
.LBB7_7:
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r0, [r0, #64]
	ldr	r1, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r1]
	ldr	r2, [r6, #24]           @ 4-byte Reload
	ldr	r2, [r2, #4]
	bl	bi_import
	ldr	r1, [r6, #24]           @ 4-byte Reload
	str	r0, [r1, #16]
	b	.LBB7_8
.LBB7_8:
	b	.LBB7_9
.LBB7_9:
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r0, [r0, #64]
	bl	bi_clear_cache
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r0, [r0, #16]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	mov	pc, lr
.Lfunc_end7:
	.size	sig_verify, .Lfunc_end7-sig_verify
	.fnend
                                        @ -- End function
	.globl	x509_print              @ -- Begin function x509_print
	.p2align	2
	.type	x509_print,%function
	.code	32                      @ @x509_print
x509_print:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #328
	mov	r2, r1
	mov	r3, r0
	str	r0, [r11, #-16]
	str	r1, [r11, #-24]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	str	r2, [r11, #-40]         @ 4-byte Spill
	str	r3, [r11, #-44]         @ 4-byte Spill
	bne	.LBB8_2
	b	.LBB8_1
.LBB8_1:
	b	.LBB8_88
.LBB8_2:
	ldr	r0, .LCPI8_0
	bl	printf
	ldr	lr, .LCPI8_1
	str	r0, [r11, #-48]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	lr, [lr, #24]
	cmp	lr, #0
	str	r0, [r11, #-52]         @ 4-byte Spill
	beq	.LBB8_4
	b	.LBB8_3
.LBB8_3:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #24]
	str	r0, [r11, #-56]         @ 4-byte Spill
	b	.LBB8_5
.LBB8_4:
	ldr	r0, .LCPI8_2
	ldr	r0, [r0]
	str	r0, [r11, #-56]         @ 4-byte Spill
	b	.LBB8_5
.LBB8_5:
	ldr	r0, [r11, #-56]         @ 4-byte Reload
	ldr	r1, .LCPI8_3
	str	r0, [r11, #-60]         @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [r11, #-60]         @ 4-byte Reload
	bl	printf
	ldr	r1, .LCPI8_4
	str	r0, [r11, #-64]         @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #28]
	cmp	r1, #0
	str	r0, [r11, #-68]         @ 4-byte Spill
	beq	.LBB8_7
	b	.LBB8_6
.LBB8_6:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #28]
	str	r0, [r11, #-72]         @ 4-byte Spill
	b	.LBB8_8
.LBB8_7:
	ldr	r0, .LCPI8_2
	ldr	r0, [r0]
	str	r0, [r11, #-72]         @ 4-byte Spill
	b	.LBB8_8
.LBB8_8:
	ldr	r0, [r11, #-72]         @ 4-byte Reload
	ldr	r1, .LCPI8_3
	str	r0, [r11, #-76]         @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [r11, #-76]         @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #32]
	cmp	r1, #0
	str	r0, [r11, #-80]         @ 4-byte Spill
	beq	.LBB8_10
	b	.LBB8_9
.LBB8_9:
	ldr	r0, .LCPI8_5
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #32]
	ldr	lr, .LCPI8_3
	str	r0, [r11, #-84]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [r11, #-88]         @ 4-byte Spill
	b	.LBB8_10
.LBB8_10:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #36]
	cmp	r0, #0
	beq	.LBB8_12
	b	.LBB8_11
.LBB8_11:
	ldr	r0, .LCPI8_6
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #36]
	ldr	lr, .LCPI8_3
	str	r0, [r11, #-92]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [r11, #-96]         @ 4-byte Spill
	b	.LBB8_12
.LBB8_12:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #40]
	cmp	r0, #0
	beq	.LBB8_14
	b	.LBB8_13
.LBB8_13:
	ldr	r0, .LCPI8_7
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #40]
	ldr	lr, .LCPI8_3
	str	r0, [r11, #-100]        @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [r11, #-104]        @ 4-byte Spill
	b	.LBB8_14
.LBB8_14:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #44]
	cmp	r0, #0
	beq	.LBB8_16
	b	.LBB8_15
.LBB8_15:
	ldr	r0, .LCPI8_8
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #44]
	ldr	lr, .LCPI8_3
	str	r0, [r11, #-108]        @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [r11, #-112]        @ 4-byte Spill
	b	.LBB8_16
.LBB8_16:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #87]
	tst	r0, #1
	beq	.LBB8_18
	b	.LBB8_17
.LBB8_17:
	ldr	r0, [r11, #-16]
	ldr	r1, .LCPI8_9
	ldr	r2, .LCPI8_10
	ldrb	r3, [r0, #88]
	ldrb	r12, [r0, #93]
	tst	r3, #1
	movne	r2, r1
	ldr	r1, .LCPI8_11
	ldr	r3, .LCPI8_12
	tst	r12, #1
	movne	r3, r1
	ldr	r0, [r0, #96]
	ldr	r1, .LCPI8_13
	str	r0, [r11, #-116]        @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r11, #-116]        @ 4-byte Reload
	bl	printf
	str	r0, [r11, #-120]        @ 4-byte Spill
	b	.LBB8_18
.LBB8_18:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #89]
	tst	r0, #1
	beq	.LBB8_54
	b	.LBB8_19
.LBB8_19:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #90]
	ldr	r1, .LCPI8_9
	ldr	r2, .LCPI8_10
	tst	r0, #1
	movne	r2, r1
	ldr	r0, .LCPI8_14
	mov	r1, r2
	bl	printf
	mov	r1, #0
	strb	r1, [r11, #-25]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #100]
	tst	r1, #128
	str	r0, [r11, #-124]        @ 4-byte Spill
	beq	.LBB8_21
	b	.LBB8_20
.LBB8_20:
	ldr	r0, .LCPI8_15
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [r11, #-128]        @ 4-byte Spill
	b	.LBB8_21
.LBB8_21:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #64
	beq	.LBB8_25
	b	.LBB8_22
.LBB8_22:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_24
	b	.LBB8_23
.LBB8_23:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [r11, #-132]        @ 4-byte Spill
	b	.LBB8_24
.LBB8_24:
	ldr	r0, .LCPI8_17
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [r11, #-136]        @ 4-byte Spill
	b	.LBB8_25
.LBB8_25:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #32
	beq	.LBB8_29
	b	.LBB8_26
.LBB8_26:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_28
	b	.LBB8_27
.LBB8_27:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [r11, #-140]        @ 4-byte Spill
	b	.LBB8_28
.LBB8_28:
	ldr	r0, .LCPI8_18
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [r11, #-144]        @ 4-byte Spill
	b	.LBB8_29
.LBB8_29:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #16
	beq	.LBB8_33
	b	.LBB8_30
.LBB8_30:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_32
	b	.LBB8_31
.LBB8_31:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [r11, #-148]        @ 4-byte Spill
	b	.LBB8_32
.LBB8_32:
	ldr	r0, .LCPI8_19
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [r11, #-152]        @ 4-byte Spill
	b	.LBB8_33
.LBB8_33:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #8
	beq	.LBB8_37
	b	.LBB8_34
.LBB8_34:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_36
	b	.LBB8_35
.LBB8_35:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [r11, #-156]        @ 4-byte Spill
	b	.LBB8_36
.LBB8_36:
	ldr	r0, .LCPI8_20
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [r11, #-160]        @ 4-byte Spill
	b	.LBB8_37
.LBB8_37:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #4
	beq	.LBB8_41
	b	.LBB8_38
.LBB8_38:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_40
	b	.LBB8_39
.LBB8_39:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [r11, #-164]        @ 4-byte Spill
	b	.LBB8_40
.LBB8_40:
	ldr	r0, .LCPI8_21
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [sp, #168]          @ 4-byte Spill
	b	.LBB8_41
.LBB8_41:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #2
	beq	.LBB8_45
	b	.LBB8_42
.LBB8_42:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_44
	b	.LBB8_43
.LBB8_43:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [sp, #164]          @ 4-byte Spill
	b	.LBB8_44
.LBB8_44:
	ldr	r0, .LCPI8_22
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [sp, #160]          @ 4-byte Spill
	b	.LBB8_45
.LBB8_45:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #100]
	tst	r0, #1
	beq	.LBB8_49
	b	.LBB8_46
.LBB8_46:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_48
	b	.LBB8_47
.LBB8_47:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [sp, #156]          @ 4-byte Spill
	b	.LBB8_48
.LBB8_48:
	ldr	r0, .LCPI8_23
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [sp, #152]          @ 4-byte Spill
	b	.LBB8_49
.LBB8_49:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #101]
	tst	r0, #128
	beq	.LBB8_53
	b	.LBB8_50
.LBB8_50:
	ldrb	r0, [r11, #-25]
	tst	r0, #1
	beq	.LBB8_52
	b	.LBB8_51
.LBB8_51:
	ldr	r0, .LCPI8_16
	bl	printf
	str	r0, [sp, #148]          @ 4-byte Spill
	b	.LBB8_52
.LBB8_52:
	ldr	r0, .LCPI8_24
	bl	printf
	mov	lr, #1
	strb	lr, [r11, #-25]
	str	r0, [sp, #144]          @ 4-byte Spill
	b	.LBB8_53
.LBB8_53:
	ldr	r0, .LCPI8_25
	bl	printf
	str	r0, [sp, #140]          @ 4-byte Spill
	b	.LBB8_54
.LBB8_54:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #91]
	tst	r0, #1
	beq	.LBB8_61
	b	.LBB8_55
.LBB8_55:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #92]
	ldr	r1, .LCPI8_9
	ldr	r2, .LCPI8_10
	tst	r0, #1
	movne	r2, r1
	ldr	r0, .LCPI8_26
	mov	r1, r2
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #48]
	cmp	r1, #0
	str	r0, [sp, #136]          @ 4-byte Spill
	beq	.LBB8_60
	b	.LBB8_56
.LBB8_56:
	mov	r0, #0
	str	r0, [r11, #-32]
	b	.LBB8_57
.LBB8_57:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	ldr	r1, [r11, #-32]
	ldr	r0, [r0, r1, lsl #2]
	cmp	r0, #0
	beq	.LBB8_59
	b	.LBB8_58
.LBB8_58:                               @   in Loop: Header=BB8_57 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #48]
	ldr	r1, [r11, #-32]
	add	r2, r1, #1
	str	r2, [r11, #-32]
	ldr	r1, [r0, r1, lsl #2]
	ldr	r0, .LCPI8_39
	bl	printf
	str	r0, [sp, #132]          @ 4-byte Spill
	b	.LBB8_57
.LBB8_59:
	b	.LBB8_60
.LBB8_60:
	ldr	r0, .LCPI8_25
	bl	printf
	str	r0, [sp, #128]          @ 4-byte Spill
	b	.LBB8_61
.LBB8_61:
	ldr	r0, .LCPI8_27
	bl	printf
	ldr	lr, .LCPI8_1
	str	r0, [sp, #124]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	lr, [lr]
	cmp	lr, #0
	str	r0, [sp, #120]          @ 4-byte Spill
	beq	.LBB8_63
	b	.LBB8_62
.LBB8_62:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	str	r0, [sp, #116]          @ 4-byte Spill
	b	.LBB8_64
.LBB8_63:
	ldr	r0, .LCPI8_2
	ldr	r0, [r0]
	str	r0, [sp, #116]          @ 4-byte Spill
	b	.LBB8_64
.LBB8_64:
	ldr	r0, [sp, #116]          @ 4-byte Reload
	ldr	r1, .LCPI8_3
	str	r0, [sp, #112]          @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #112]          @ 4-byte Reload
	bl	printf
	ldr	r1, .LCPI8_4
	str	r0, [sp, #108]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #4]
	cmp	r1, #0
	str	r0, [sp, #104]          @ 4-byte Spill
	beq	.LBB8_66
	b	.LBB8_65
.LBB8_65:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #4]
	str	r0, [sp, #100]          @ 4-byte Spill
	b	.LBB8_67
.LBB8_66:
	ldr	r0, .LCPI8_2
	ldr	r0, [r0]
	str	r0, [sp, #100]          @ 4-byte Spill
	b	.LBB8_67
.LBB8_67:
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, .LCPI8_3
	str	r0, [sp, #96]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #96]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #8]
	cmp	r1, #0
	str	r0, [sp, #92]           @ 4-byte Spill
	beq	.LBB8_69
	b	.LBB8_68
.LBB8_68:
	ldr	r0, .LCPI8_5
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #8]
	ldr	lr, .LCPI8_3
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [sp, #84]           @ 4-byte Spill
	b	.LBB8_69
.LBB8_69:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #12]
	cmp	r0, #0
	beq	.LBB8_71
	b	.LBB8_70
.LBB8_70:
	ldr	r0, .LCPI8_6
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #12]
	ldr	lr, .LCPI8_3
	str	r0, [sp, #80]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [sp, #76]           @ 4-byte Spill
	b	.LBB8_71
.LBB8_71:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.LBB8_73
	b	.LBB8_72
.LBB8_72:
	ldr	r0, .LCPI8_7
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #16]
	ldr	lr, .LCPI8_3
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB8_73
.LBB8_73:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB8_75
	b	.LBB8_74
.LBB8_74:
	ldr	r0, .LCPI8_8
	bl	printf
	ldr	lr, [r11, #-16]
	ldr	r1, [lr, #20]
	ldr	lr, .LCPI8_3
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB8_75
.LBB8_75:
	ldr	r0, [r11, #-16]
	add	r0, r0, #56
	bl	ctime
	ldr	lr, .LCPI8_28
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, lr
	ldr	r1, [sp, #56]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-16]
	add	r1, r1, #64
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	bl	ctime
	ldr	r1, .LCPI8_29
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #48]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #76]
	ldr	r1, [r1, #32]
	lsl	r1, r1, #3
	ldr	lr, .LCPI8_30
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	ldr	r1, .LCPI8_31
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #86]
	sub	r1, r1, #4
	cmp	r1, #9
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	bhi	.LBB8_83
@ %bb.76:
	adr	r0, .LJTI8_0
	ldr	r1, [sp, #32]           @ 4-byte Reload
	ldr	r0, [r0, r1, lsl #2]
	mov	pc, r0
@ %bb.77:
	.p2align	2
.LJTI8_0:
	.long	.LBB8_78
	.long	.LBB8_79
	.long	.LBB8_83
	.long	.LBB8_83
	.long	.LBB8_83
	.long	.LBB8_83
	.long	.LBB8_83
	.long	.LBB8_80
	.long	.LBB8_81
	.long	.LBB8_82
.LBB8_78:
	ldr	r0, .LCPI8_36
	bl	printf
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB8_84
.LBB8_79:
	ldr	r0, .LCPI8_35
	bl	printf
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB8_84
.LBB8_80:
	ldr	r0, .LCPI8_34
	bl	printf
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB8_84
.LBB8_81:
	ldr	r0, .LCPI8_33
	bl	printf
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB8_84
.LBB8_82:
	ldr	r0, .LCPI8_32
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB8_84
.LBB8_83:
	ldr	r0, [r11, #-16]
	ldrb	r1, [r0, #86]
	ldr	r0, .LCPI8_37
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB8_84
.LBB8_84:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB8_86
	b	.LBB8_85
.LBB8_85:
	mov	r0, #0
	str	r0, [r11, #-36]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-16]
	sub	r2, r11, #36
	bl	x509_verify
	bl	x509_display_error
	ldr	r1, .LCPI8_38
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	printf
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB8_86
.LBB8_86:
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB8_88
	b	.LBB8_87
.LBB8_87:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #104]
	ldr	r1, [r11, #-24]
	bl	x509_print
	b	.LBB8_88
.LBB8_88:
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.89:
.LCPI8_0:
	.long	.L.str.1
.LCPI8_1:
	.long	.L.str.2
.LCPI8_2:
	.long	not_part_of_cert
.LCPI8_3:
	.long	.L.str.3
.LCPI8_4:
	.long	.L.str.4
.LCPI8_5:
	.long	.L.str.5
.LCPI8_6:
	.long	.L.str.6
.LCPI8_7:
	.long	.L.str.7
.LCPI8_8:
	.long	.L.str.8
.LCPI8_9:
	.long	.L.str.10
.LCPI8_10:
	.long	.L.str.11
.LCPI8_11:
	.long	.L.str.12
.LCPI8_12:
	.long	.L.str.13
.LCPI8_13:
	.long	.L.str.9
.LCPI8_14:
	.long	.L.str.14
.LCPI8_15:
	.long	.L.str.15
.LCPI8_16:
	.long	.L.str.16
.LCPI8_17:
	.long	.L.str.17
.LCPI8_18:
	.long	.L.str.18
.LCPI8_19:
	.long	.L.str.19
.LCPI8_20:
	.long	.L.str.20
.LCPI8_21:
	.long	.L.str.21
.LCPI8_22:
	.long	.L.str.22
.LCPI8_23:
	.long	.L.str.23
.LCPI8_24:
	.long	.L.str.24
.LCPI8_25:
	.long	.L.str.25
.LCPI8_26:
	.long	.L.str.26
.LCPI8_27:
	.long	.L.str.28
.LCPI8_28:
	.long	.L.str.29
.LCPI8_29:
	.long	.L.str.30
.LCPI8_30:
	.long	.L.str.31
.LCPI8_31:
	.long	.L.str.32
.LCPI8_32:
	.long	.L.str.37
.LCPI8_33:
	.long	.L.str.36
.LCPI8_34:
	.long	.L.str.35
.LCPI8_35:
	.long	.L.str.34
.LCPI8_36:
	.long	.L.str.33
.LCPI8_37:
	.long	.L.str.38
.LCPI8_38:
	.long	.L.str.39
.LCPI8_39:
	.long	.L.str.27
.Lfunc_end8:
	.size	x509_print, .Lfunc_end8-x509_print
	.fnend
                                        @ -- End function
	.p2align	2               @ -- Begin function get_signature
	.type	get_signature,%function
	.code	32                      @ @get_signature
get_signature:
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
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	add	r1, sp, #12
	mov	r12, #48
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp]                @ 4-byte Spill
	bl	asn1_next_obj
	cmp	r0, #0
	blt	.LBB9_2
	b	.LBB9_1
.LBB9_1:
	ldr	r0, [r11, #-8]
	add	r1, sp, #12
	mov	r2, #48
	bl	asn1_skip_obj
	cmp	r0, #0
	beq	.LBB9_3
	b	.LBB9_2
.LBB9_2:
	b	.LBB9_6
.LBB9_3:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	add	r2, r1, #1
	str	r2, [sp, #12]
	ldrb	r0, [r0, r1]
	cmp	r0, #4
	beq	.LBB9_5
	b	.LBB9_4
.LBB9_4:
	b	.LBB9_6
.LBB9_5:
	ldr	r0, [r11, #-8]
	add	r1, sp, #12
	bl	get_asn1_length
	ldr	r1, [sp, #16]
	str	r0, [r1]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB9_6
.LBB9_6:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end9:
	.size	get_signature, .Lfunc_end9-get_signature
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Error: Invalid X509 ASN.1 file (%s)\n"
	.size	.L.str, 37

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"=== CERTIFICATE ISSUED TO ===\n"
	.size	.L.str.1, 31

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Common Name (CN):\t\t"
	.size	.L.str.2, 20

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"%s\n"
	.size	.L.str.3, 4

	.type	not_part_of_cert,%object @ @not_part_of_cert
	.data
	.p2align	3
not_part_of_cert:
	.long	.L.str.52
	.size	not_part_of_cert, 4

	.type	.L.str.4,%object        @ @.str.4
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.4:
	.asciz	"Organization (O):\t\t"
	.size	.L.str.4, 20

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Organizational Unit (OU):\t"
	.size	.L.str.5, 27

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Location (L):\t\t\t"
	.size	.L.str.6, 17

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"Country (C):\t\t\t"
	.size	.L.str.7, 16

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"State (ST):\t\t\t"
	.size	.L.str.8, 15

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"Basic Constraints:\t\t%sCA:%s, pathlen:%d\n"
	.size	.L.str.9, 41

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"critical, "
	.size	.L.str.10, 11

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"TRUE"
	.size	.L.str.12, 5

	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	"FALSE"
	.size	.L.str.13, 6

	.type	.L.str.14,%object       @ @.str.14
.L.str.14:
	.asciz	"Key Usage:\t\t\t%s"
	.size	.L.str.14, 16

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"Digital Signature"
	.size	.L.str.15, 18

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	", "
	.size	.L.str.16, 3

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"Non Repudiation"
	.size	.L.str.17, 16

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"Key Encipherment"
	.size	.L.str.18, 17

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"Data Encipherment"
	.size	.L.str.19, 18

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"Key Agreement"
	.size	.L.str.20, 14

	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	"Key Cert Sign"
	.size	.L.str.21, 14

	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"CRL Sign"
	.size	.L.str.22, 9

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	"Encipher Only"
	.size	.L.str.23, 14

	.type	.L.str.24,%object       @ @.str.24
.L.str.24:
	.asciz	"Decipher Only"
	.size	.L.str.24, 14

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"\n"
	.size	.L.str.25, 2

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"Subject Alt Name:\t\t%s"
	.size	.L.str.26, 22

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"%s "
	.size	.L.str.27, 4

	.type	.L.str.28,%object       @ @.str.28
.L.str.28:
	.asciz	"=== CERTIFICATE ISSUED BY ===\n"
	.size	.L.str.28, 31

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	"Not Before:\t\t\t%s"
	.size	.L.str.29, 17

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"Not After:\t\t\t%s"
	.size	.L.str.30, 16

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"RSA bitsize:\t\t\t%d\n"
	.size	.L.str.31, 19

	.type	.L.str.32,%object       @ @.str.32
.L.str.32:
	.asciz	"Sig Type:\t\t\t"
	.size	.L.str.32, 13

	.type	.L.str.33,%object       @ @.str.33
.L.str.33:
	.asciz	"MD5\n"
	.size	.L.str.33, 5

	.type	.L.str.34,%object       @ @.str.34
.L.str.34:
	.asciz	"SHA1\n"
	.size	.L.str.34, 6

	.type	.L.str.35,%object       @ @.str.35
.L.str.35:
	.asciz	"SHA256\n"
	.size	.L.str.35, 8

	.type	.L.str.36,%object       @ @.str.36
.L.str.36:
	.asciz	"SHA384\n"
	.size	.L.str.36, 8

	.type	.L.str.37,%object       @ @.str.37
.L.str.37:
	.asciz	"SHA512\n"
	.size	.L.str.37, 8

	.type	.L.str.38,%object       @ @.str.38
.L.str.38:
	.asciz	"Unrecognized: %d\n"
	.size	.L.str.38, 18

	.type	.L.str.39,%object       @ @.str.39
.L.str.39:
	.asciz	"Verify:\t\t\t\t%s\n"
	.size	.L.str.39, 15

	.type	.L.str.40,%object       @ @.str.40
.L.str.40:
	.asciz	"Certificate verify successful"
	.size	.L.str.40, 30

	.type	.L.str.41,%object       @ @.str.41
.L.str.41:
	.asciz	"X509 not ok"
	.size	.L.str.41, 12

	.type	.L.str.42,%object       @ @.str.42
.L.str.42:
	.asciz	"No trusted cert is available"
	.size	.L.str.42, 29

	.type	.L.str.43,%object       @ @.str.43
.L.str.43:
	.asciz	"Bad signature"
	.size	.L.str.43, 14

	.type	.L.str.44,%object       @ @.str.44
.L.str.44:
	.asciz	"Cert is not yet valid"
	.size	.L.str.44, 22

	.type	.L.str.45,%object       @ @.str.45
.L.str.45:
	.asciz	"Cert has expired"
	.size	.L.str.45, 17

	.type	.L.str.46,%object       @ @.str.46
.L.str.46:
	.asciz	"Cert is self-signed"
	.size	.L.str.46, 20

	.type	.L.str.47,%object       @ @.str.47
.L.str.47:
	.asciz	"Chain is invalid (check order of certs)"
	.size	.L.str.47, 40

	.type	.L.str.48,%object       @ @.str.48
.L.str.48:
	.asciz	"Unsupported digest"
	.size	.L.str.48, 19

	.type	.L.str.49,%object       @ @.str.49
.L.str.49:
	.asciz	"Invalid private key"
	.size	.L.str.49, 20

	.type	.L.str.50,%object       @ @.str.50
.L.str.50:
	.asciz	"Basic constraint invalid"
	.size	.L.str.50, 25

	.type	.L.str.51,%object       @ @.str.51
.L.str.51:
	.asciz	"Unknown"
	.size	.L.str.51, 8

	.type	.L.str.52,%object       @ @.str.52
.L.str.52:
	.asciz	"<Not Part Of Certificate>"
	.size	.L.str.52, 26


	.ident	"clang version 4.0.0-1ubuntu1~16.04.2 (tags/RELEASE_400/rc1)"
	.section	".note.GNU-stack","",%progbits
