	.arch armv8-a
	.file	"bench_reist_arm.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1808:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE1808:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.align	2
	.p2align 4,,11
	.type	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm, %function
_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm:
.LFB8116:
	.cfi_startproc
	mov	x9, x0
	dup	v2.4s, w3
	ldp	x0, x11, [x0]
	mov	x16, 0
	movi	v4.4s, 0
	sub	x11, x11, x0
	mov	w0, 0
	asr	x11, x11, 2
	and	x10, x11, -4
	cbz	x4, .L3
	.p2align 3,,7
.L4:
	mov	x5, 0
	cbz	x10, .L15
	.p2align 3,,7
.L6:
	ldr	x7, [x1]
	lsl	x6, x5, 2
	ldr	x8, [x9]
	add	x5, x5, 4
	ldr	q1, [x7, x6]
	ldr	q0, [x8, x6]
	ldr	x7, [x2]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v2.4s
	and	v1.16b, v1.16b, v2.16b
	sub	v0.4s, v0.4s, v1.4s
	str	q0, [x7, x6]
	fmov	w6, s0
	eor	w0, w0, w6
	cmp	x10, x5
	bhi	.L6
.L15:
	cmp	x11, x5
	bls	.L7
	sub	x17, x11, x5
	sub	x6, x17, #1
	ldr	x12, [x1]
	ldr	x13, [x2]
	ldr	x8, [x9]
	cmp	x6, 3
	bls	.L10
	lsl	x6, x5, 2
	add	x7, x6, 4
	add	x14, x13, x6
	add	x15, x8, x7
	add	x7, x12, x7
	sub	x15, x14, x15
	sub	x7, x14, x7
	cmp	x15, 8
	ccmp	x7, 8, 0, hi
	bhi	.L26
	.p2align 3,,7
.L10:
	ldr	w7, [x8, x5, lsl 2]
	ldr	w6, [x12, x5, lsl 2]
	add	w6, w6, w7
	cmp	w3, w6
	csel	w7, w3, wzr, ls
	sub	w6, w6, w7
	str	w6, [x13, x5, lsl 2]
	add	x5, x5, 1
	eor	w0, w0, w6
	cmp	x11, x5
	bne	.L10
.L7:
	add	x16, x16, 1
	cmp	x4, x16
	bne	.L4
.L3:
	ret
	.p2align 2,,3
.L26:
	lsr	x15, x17, 2
	add	x18, x8, x6
	movi	v3.4s, 0
	add	x7, x12, x6
	lsl	x15, x15, 4
	mov	x6, 0
	.p2align 3,,7
.L11:
	ldr	q1, [x7, x6]
	ldr	q0, [x18, x6]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v2.4s
	and	v1.16b, v2.16b, v1.16b
	sub	v0.4s, v0.4s, v1.4s
	eor	v3.16b, v3.16b, v0.16b
	str	q0, [x14, x6]
	add	x6, x6, 16
	cmp	x15, x6
	bne	.L11
	ext	v0.16b, v3.16b, v4.16b, #8
	and	x6, x17, -4
	add	x5, x6, x5
	eor	v0.16b, v0.16b, v3.16b
	ext	v1.16b, v0.16b, v4.16b, #4
	eor	v0.16b, v1.16b, v0.16b
	fmov	w6, s0
	eor	w0, w0, w6
	tst	x17, 3
	beq	.L7
	ldr	w15, [x8, x5, lsl 2]
	add	x14, x5, 1
	ldr	w6, [x12, x5, lsl 2]
	lsl	x7, x5, 2
	add	w6, w6, w15
	cmp	w6, w3
	csel	w15, w3, wzr, cs
	sub	w6, w6, w15
	str	w6, [x13, x5, lsl 2]
	eor	w0, w0, w6
	cmp	x14, x11
	bcs	.L7
	add	x14, x7, 4
	add	x5, x5, 2
	ldr	w15, [x8, x14]
	ldr	w6, [x12, x14]
	add	w6, w6, w15
	cmp	w3, w6
	csel	w15, w3, wzr, ls
	sub	w6, w6, w15
	str	w6, [x13, x14]
	eor	w0, w0, w6
	cmp	x11, x5
	bls	.L7
	add	x6, x7, 8
	add	x16, x16, 1
	ldr	w7, [x8, x6]
	ldr	w5, [x12, x6]
	add	w5, w5, w7
	cmp	w3, w5
	csel	w7, w3, wzr, ls
	sub	w5, w5, w7
	str	w5, [x13, x6]
	eor	w0, w0, w5
	cmp	x4, x16
	bne	.L4
	b	.L3
	.cfi_endproc
.LFE8116:
	.size	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm, .-_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm
	.align	2
	.p2align 4,,11
	.type	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0, %function
_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0:
.LFB9063:
	.cfi_startproc
	mov	x8, x0
	dup	v2.4s, w3
	movi	v4.4s, 0
	mov	x15, 10
	mov	w0, 0
	ldp	x4, x10, [x8]
	sub	x10, x10, x4
	asr	x10, x10, 2
	and	x9, x10, -4
	.p2align 3,,7
.L28:
	mov	x4, 0
	cbz	x9, .L39
	.p2align 3,,7
.L29:
	ldr	x6, [x1]
	lsl	x5, x4, 2
	ldr	x7, [x8]
	add	x4, x4, 4
	ldr	q1, [x6, x5]
	ldr	q0, [x7, x5]
	ldr	x6, [x2]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v2.4s
	and	v1.16b, v1.16b, v2.16b
	sub	v0.4s, v0.4s, v1.4s
	str	q0, [x6, x5]
	fmov	w5, s0
	eor	w0, w0, w5
	cmp	x9, x4
	bhi	.L29
.L39:
	cmp	x10, x4
	bls	.L30
	sub	x16, x10, x4
	sub	x5, x16, #1
	ldr	x11, [x1]
	ldr	x12, [x2]
	ldr	x7, [x8]
	cmp	x5, 3
	bls	.L33
	lsl	x5, x4, 2
	add	x6, x5, 4
	add	x13, x12, x5
	add	x14, x11, x6
	add	x6, x7, x6
	sub	x14, x13, x14
	sub	x6, x13, x6
	cmp	x14, 8
	ccmp	x6, 8, 0, hi
	bhi	.L48
	.p2align 3,,7
.L33:
	ldr	w6, [x7, x4, lsl 2]
	ldr	w5, [x11, x4, lsl 2]
	add	w5, w5, w6
	cmp	w3, w5
	csel	w6, w3, wzr, ls
	sub	w5, w5, w6
	str	w5, [x12, x4, lsl 2]
	add	x4, x4, 1
	eor	w0, w0, w5
	cmp	x10, x4
	bne	.L33
.L30:
	subs	x15, x15, #1
	bne	.L28
.L27:
	ret
	.p2align 2,,3
.L48:
	lsr	x14, x16, 2
	add	x17, x7, x5
	movi	v3.4s, 0
	add	x6, x11, x5
	lsl	x14, x14, 4
	mov	x5, 0
	.p2align 3,,7
.L34:
	ldr	q1, [x6, x5]
	ldr	q0, [x17, x5]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v2.4s
	and	v1.16b, v2.16b, v1.16b
	sub	v0.4s, v0.4s, v1.4s
	eor	v3.16b, v3.16b, v0.16b
	str	q0, [x13, x5]
	add	x5, x5, 16
	cmp	x14, x5
	bne	.L34
	ext	v0.16b, v3.16b, v4.16b, #8
	and	x5, x16, -4
	add	x4, x5, x4
	eor	v0.16b, v0.16b, v3.16b
	ext	v1.16b, v0.16b, v4.16b, #4
	eor	v0.16b, v1.16b, v0.16b
	fmov	w5, s0
	eor	w0, w0, w5
	tst	x16, 3
	beq	.L30
	ldr	w14, [x11, x4, lsl 2]
	add	x13, x4, 1
	ldr	w5, [x7, x4, lsl 2]
	lsl	x6, x4, 2
	add	w5, w5, w14
	cmp	w3, w5
	csel	w14, w3, wzr, ls
	sub	w5, w5, w14
	str	w5, [x12, x4, lsl 2]
	eor	w0, w0, w5
	cmp	x10, x13
	bls	.L30
	add	x13, x6, 4
	add	x4, x4, 2
	ldr	w14, [x11, x13]
	ldr	w5, [x7, x13]
	add	w5, w5, w14
	cmp	w3, w5
	csel	w14, w3, wzr, ls
	sub	w5, w5, w14
	str	w5, [x12, x13]
	eor	w0, w0, w5
	cmp	x10, x4
	bls	.L30
	add	x5, x6, 8
	ldr	w6, [x7, x5]
	ldr	w4, [x11, x5]
	add	w4, w4, w6
	cmp	w3, w4
	csel	w6, w3, wzr, ls
	subs	x15, x15, #1
	sub	w4, w4, w6
	str	w4, [x12, x5]
	eor	w0, w0, w4
	bne	.L28
	b	.L27
	.cfi_endproc
.LFE9063:
	.size	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0, .-_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0
	.global	__umodti3
	.global	__modti3
	.align	2
	.p2align 4,,11
	.type	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0, %function
_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0:
.LFB9065:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	uxtw	x4, w4
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	sub	x22, x1, x0
	mov	x21, x0
	asr	x22, x22, 2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x2
	mov	x23, x3
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x1
	mov	x25, 10
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	w20, 0
	str	x4, [sp, 88]
	.p2align 3,,7
.L50:
	mov	x19, 0
	cmp	x26, x21
	beq	.L53
	.p2align 3,,7
.L51:
	ldr	x2, [sp, 88]
	mov	x3, 0
	ldr	w4, [x21, x19, lsl 2]
	mov	x1, 0
	ldr	w0, [x24, x19, lsl 2]
	add	x0, x4, x0
	bl	__umodti3
	str	w0, [x23, x19, lsl 2]
	add	x19, x19, 1
	eor	w20, w20, w0
	cmp	x22, x19
	bhi	.L51
.L53:
	subs	x25, x25, #1
	bne	.L50
	ldp	x21, x22, [sp, 32]
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9065:
	.size	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0, .-_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0, %function
_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0:
.LFB9067:
	.cfi_startproc
	sub	x6, x1, x0
	mov	x8, x0
	asr	x9, x6, 2
	cmp	x6, 16
	bls	.L70
	add	x5, x2, 4
	add	x0, x0, 4
	sub	x5, x3, x5
	sub	x0, x3, x0
	cmp	x5, 8
	ccmp	x0, 8, 0, hi
	bhi	.L60
.L70:
	mov	x10, 10
	mov	w0, 0
	.p2align 3,,7
.L67:
	cmp	x1, x8
	beq	.L65
	mov	x6, 0
	.p2align 3,,7
.L66:
	ldr	w7, [x2, x6, lsl 2]
	ldr	w5, [x8, x6, lsl 2]
	add	w5, w5, w7
	cmp	w4, w5
	csel	w7, w4, wzr, ls
	sub	w5, w5, w7
	str	w5, [x3, x6, lsl 2]
	add	x6, x6, 1
	eor	w0, w0, w5
	cmp	x9, x6
	bhi	.L66
.L65:
	subs	x10, x10, #1
	bne	.L67
	ret
.L60:
	cmp	x6, 0
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	csinc	x5, x9, xzr, ne
	and	x12, x5, -4
	and	x14, x5, 3
	lsr	x5, x5, 2
	mov	x29, sp
	lsl	x10, x12, 2
	add	x11, x10, 4
	add	x13, x10, 8
	dup	v3.4s, w4
	add	x17, x12, 1
	movi	v4.4s, 0
	add	x30, x8, x11
	add	x18, x2, x11
	add	x16, x8, x10
	add	x15, x2, x10
	add	x12, x12, 2
	add	x11, x3, x11
	add	x10, x3, x10
	lsl	x6, x5, 4
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	add	x20, x8, x13
	add	x19, x2, x13
	add	x13, x3, x13
	mov	x7, 10
	mov	w0, 0
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	.p2align 3,,7
.L63:
	movi	v2.4s, 0
	mov	x5, 0
	cmp	x1, x8
	beq	.L69
	.p2align 3,,7
.L61:
	ldr	q1, [x2, x5]
	ldr	q0, [x8, x5]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v3.4s
	and	v1.16b, v3.16b, v1.16b
	sub	v0.4s, v0.4s, v1.4s
	eor	v2.16b, v2.16b, v0.16b
	str	q0, [x3, x5]
	add	x5, x5, 16
	cmp	x6, x5
	bne	.L61
	ext	v0.16b, v2.16b, v4.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	ext	v1.16b, v0.16b, v4.16b, #4
	eor	v0.16b, v1.16b, v0.16b
	fmov	w5, s0
	eor	w0, w0, w5
	cbz	x14, .L69
	ldr	w21, [x16]
	ldr	w5, [x15]
	add	w5, w5, w21
	cmp	w5, w4
	csel	w21, w4, wzr, cs
	sub	w5, w5, w21
	str	w5, [x10]
	eor	w0, w0, w5
	cmp	x9, x17
	bls	.L69
	ldr	w21, [x18]
	ldr	w5, [x30]
	add	w5, w5, w21
	cmp	w4, w5
	csel	w21, w4, wzr, ls
	sub	w5, w5, w21
	str	w5, [x11]
	eor	w0, w0, w5
	cmp	x9, x12
	bls	.L69
	ldr	w21, [x19]
	ldr	w5, [x20]
	add	w5, w5, w21
	cmp	w4, w5
	csel	w21, w4, wzr, ls
	sub	w5, w5, w21
	str	w5, [x13]
	eor	w0, w0, w5
.L69:
	subs	x7, x7, #1
	bne	.L63
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9067:
	.size	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0, .-_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, %function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB9068:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	cbz	x1, .L84
	mov	x19, x1
	mov	x0, x1
	bl	strlen
	mov	x2, x0
	mov	x1, x19
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L84:
	.cfi_restore_state
	ldr	x0, [x0]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ldr	w1, [x0, 32]
	orr	w1, w1, 1
	b	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	.cfi_endproc
.LFE9068:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB9070:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x3, x0
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x1
	mov	x20, x0
	ldr	x0, [x3], 16
	ldr	x2, [x19, 8]
	cmp	x0, x3
	add	x3, x1, 16
	ldr	x1, [x1]
	beq	.L101
	cmp	x3, x1
	beq	.L87
	stp	x1, x2, [x20]
	ldr	x1, [x19, 16]
	ldr	x2, [x20, 16]
	str	x1, [x20, 16]
	cbz	x0, .L95
	str	x0, [x19]
	str	x2, [x19, 16]
.L90:
	str	xzr, [x19, 8]
	strb	wzr, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L101:
	.cfi_restore_state
	cmp	x3, x1
	beq	.L87
	stp	x1, x2, [x20]
	mov	x0, x3
	ldr	x1, [x19, 16]
	str	x1, [x20, 16]
	str	x0, [x19]
.L103:
	str	xzr, [x19, 8]
	strb	wzr, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L87:
	.cfi_restore_state
	cmp	x20, x19
	beq	.L94
	cbz	x2, .L91
	cmp	x2, 1
	beq	.L102
	bl	memcpy
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
.L91:
	str	x2, [x20, 8]
	strb	wzr, [x0, x2]
	str	xzr, [x19, 8]
	ldr	x0, [x19]
	strb	wzr, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L95:
	.cfi_restore_state
	mov	x0, x3
	str	x0, [x19]
	b	.L103
	.p2align 2,,3
.L102:
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
	b	.L91
	.p2align 2,,3
.L94:
	mov	x0, x1
	b	.L90
	.cfi_endproc
.LFE9070:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0, %function
_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0:
.LFB9072:
	.cfi_startproc
	sub	x7, x1, x0
	cbz	x5, .L117
	mov	x9, x0
	asr	x10, x7, 2
	cmp	x7, 16
	bls	.L118
	add	x6, x2, 4
	add	x0, x0, 4
	sub	x6, x3, x6
	sub	x0, x3, x0
	cmp	x6, 8
	ccmp	x0, 8, 0, hi
	bhi	.L107
.L118:
	mov	w0, 0
	mov	x11, 0
	.p2align 3,,7
.L113:
	cmp	x1, x9
	beq	.L111
	mov	x7, 0
	.p2align 3,,7
.L112:
	ldr	w8, [x2, x7, lsl 2]
	ldr	w6, [x9, x7, lsl 2]
	add	w6, w6, w8
	cmp	w4, w6
	csel	w8, w4, wzr, ls
	sub	w6, w6, w8
	str	w6, [x3, x7, lsl 2]
	add	x7, x7, 1
	eor	w0, w0, w6
	cmp	x10, x7
	bhi	.L112
.L111:
	add	x11, x11, 1
	cmp	x5, x11
	bne	.L113
	ret
.L107:
	cmp	x7, 0
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	csinc	x6, x10, xzr, ne
	and	x13, x6, -4
	and	x15, x6, 3
	lsr	x6, x6, 2
	mov	x29, sp
	lsl	x11, x13, 2
	add	x12, x11, 4
	add	x14, x11, 8
	dup	v3.4s, w4
	add	x18, x13, 1
	movi	v4.4s, 0
	add	x30, x2, x12
	add	x17, x9, x11
	add	x16, x2, x11
	add	x13, x13, 2
	add	x11, x3, x11
	lsl	x7, x6, 4
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	add	x19, x9, x12
	add	x20, x2, x14
	add	x12, x3, x12
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	add	x21, x9, x14
	add	x14, x3, x14
	mov	w0, 0
	mov	x8, 0
	.p2align 3,,7
.L110:
	movi	v2.4s, 0
	mov	x6, 0
	cmp	x1, x9
	beq	.L116
	.p2align 3,,7
.L108:
	ldr	q1, [x2, x6]
	ldr	q0, [x9, x6]
	add	v0.4s, v0.4s, v1.4s
	cmhs	v1.4s, v0.4s, v3.4s
	and	v1.16b, v3.16b, v1.16b
	sub	v0.4s, v0.4s, v1.4s
	eor	v2.16b, v2.16b, v0.16b
	str	q0, [x3, x6]
	add	x6, x6, 16
	cmp	x7, x6
	bne	.L108
	ext	v0.16b, v2.16b, v4.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	ext	v1.16b, v0.16b, v4.16b, #4
	eor	v0.16b, v1.16b, v0.16b
	fmov	w6, s0
	eor	w0, w0, w6
	cbz	x15, .L116
	ldr	w22, [x16]
	ldr	w6, [x17]
	add	w6, w6, w22
	cmp	w4, w6
	csel	w22, w4, wzr, ls
	sub	w6, w6, w22
	str	w6, [x11]
	eor	w0, w0, w6
	cmp	x10, x18
	bls	.L116
	ldr	w22, [x19]
	ldr	w6, [x30]
	add	w6, w6, w22
	cmp	w4, w6
	csel	w22, w4, wzr, ls
	sub	w6, w6, w22
	str	w6, [x12]
	eor	w0, w0, w6
	cmp	x10, x13
	bls	.L116
	ldr	w22, [x20]
	ldr	w6, [x21]
	add	w6, w6, w22
	cmp	w4, w6
	csel	w22, w4, wzr, ls
	sub	w6, w6, w22
	str	w6, [x14]
	eor	w0, w0, w6
.L116:
	add	x8, x8, 1
	cmp	x8, x5
	bne	.L110
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L117:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE9072:
	.size	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0, .-_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0, %function
_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0:
.LFB9073:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	sub	x21, x1, x0
	uxtw	x0, w4
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	mov	w27, 0
	str	x0, [sp, 104]
	cbz	x5, .L129
	mov	x22, x3
	asr	x21, x21, 2
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -56
	.cfi_offset 23, -64
	mov	x23, x2
	mov	x24, 0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	mov	x26, x1
	mov	x25, x5
	.p2align 3,,7
.L130:
	mov	x19, 0
	cmp	x26, x20
	beq	.L133
	.p2align 3,,7
.L132:
	ldr	x2, [sp, 104]
	mov	x3, 0
	ldr	w4, [x20, x19, lsl 2]
	mov	x1, 0
	ldr	w0, [x23, x19, lsl 2]
	add	x0, x4, x0
	bl	__umodti3
	str	w0, [x22, x19, lsl 2]
	add	x19, x19, 1
	eor	w27, w27, w0
	cmp	x21, x19
	bhi	.L132
.L133:
	add	x24, x24, 1
	cmp	x24, x25
	bne	.L130
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L129:
	mov	w0, w27
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9073:
	.size	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0, .-_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB8461:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 16
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	add	x22, x0, 16
	ldr	x0, [x2]
	str	x0, [sp, 8]
	mov	x0, 0
	str	x22, [x20]
	cbz	x1, .L155
	mov	x21, x1
	mov	x0, x1
	bl	strlen
	str	x0, [sp]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L156
	cmp	x0, 1
	bne	.L147
	ldrb	w0, [x21]
	strb	w0, [x20, 16]
.L148:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x19, [x20, 8]
	strb	wzr, [x22, x19]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L154
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	add	sp, sp, 64
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L147:
	.cfi_restore_state
	cbz	x0, .L148
	b	.L146
	.p2align 2,,3
.L156:
	mov	x1, sp
	mov	x0, x20
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	ldr	x1, [sp]
	mov	x22, x0
	str	x0, [x20]
	str	x1, [x20, 16]
.L146:
	mov	x2, x19
	mov	x0, x22
	mov	x1, x21
	bl	memcpy
	ldr	x22, [x20]
	ldr	x19, [sp]
	b	.L148
.L154:
	bl	__stack_chk_fail
.L155:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L154
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE8461:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEED2Ev
	.type	_ZNSt6vectorIjSaIjEED2Ev, %function
_ZNSt6vectorIjSaIjEED2Ev:
.LFB8473:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L157
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L157:
	ret
	.cfi_endproc
.LFE8473:
	.size	_ZNSt6vectorIjSaIjEED2Ev, .-_ZNSt6vectorIjSaIjEED2Ev
	.weak	_ZNSt6vectorIjSaIjEED1Ev
	.set	_ZNSt6vectorIjSaIjEED1Ev,_ZNSt6vectorIjSaIjEED2Ev
	.section	.rodata._ZNSt6vectorIjSaIjEEC2EmRKS0_.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIjSaIjEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEEC5EmRKS0_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.type	_ZNSt6vectorIjSaIjEEC2EmRKS0_, %function
_ZNSt6vectorIjSaIjEEC2EmRKS0_:
.LFB8529:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bhi	.L169
	stp	xzr, xzr, [x19]
	mov	x20, x1
	str	xzr, [x19, 16]
	cbz	x1, .L170
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -8
	.cfi_offset 21, -16
	lsl	x22, x1, 2
	mov	x0, x22
	bl	_Znwm
	mov	x1, x0
	add	x21, x0, x22
	str	x1, [x19]
	str	wzr, [x0], 4
	str	x21, [x19, 16]
	cmp	x20, 1
	beq	.L168
	cmp	x21, x0
	beq	.L163
	sub	x2, x22, #4
	mov	w1, 0
	bl	memset
.L163:
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	str	x0, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L170:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x0, 0
	str	xzr, [x19]
	str	x0, [x19, 8]
	str	xzr, [x19, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L168:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	str	x0, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L169:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -8
	.cfi_offset 21, -16
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE8529:
	.size	_ZNSt6vectorIjSaIjEEC2EmRKS0_, .-_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.weak	_ZNSt6vectorIjSaIjEEC1EmRKS0_
	.set	_ZNSt6vectorIjSaIjEEC1EmRKS0_,_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB8778:
	.cfi_startproc
	adrp	x2, .LC3
	adrp	x1, .LC2
	add	x5, x0, 1816
	ldr	q5, [x2, #:lo12:.LC3]
	adrp	x2, .LC4
	ldr	q6, [x1, #:lo12:.LC2]
	add	x1, x0, 8
	ldr	q4, [x2, #:lo12:.LC4]
	adrp	x2, .LC5
	ldr	q3, [x2, #:lo12:.LC5]
	.p2align 3,,7
.L172:
	add	x1, x1, 16
	ldr	q0, [x1, -24]
	ldr	q2, [x1, -16]
	and	v0.16b, v0.16b, v6.16b
	ldr	q1, [x1, 3152]
	and	v2.16b, v2.16b, v5.16b
	orr	v0.16b, v0.16b, v2.16b
	and	v2.16b, v0.16b, v4.16b
	ushr	v0.2d, v0.2d, 1
	neg	v2.2d, v2.2d
	eor	v0.16b, v1.16b, v0.16b
	and	v1.16b, v2.16b, v3.16b
	eor	v0.16b, v0.16b, v1.16b
	str	q0, [x1, -24]
	cmp	x5, x1
	bne	.L172
	ldr	x2, [x0, 1808]
	adrp	x7, .LC2
	ldr	x1, [x0, 1816]
	add	x6, x0, 1824
	ldr	x4, [x0, 4984]
	mov	x3, 0
	ldr	q6, [x7, #:lo12:.LC2]
	fmov	x7, d3
	bfi	x2, x1, 0, 31
	sbfx	x1, x1, 0, 1
	eor	x2, x4, x2, lsr 1
	adrp	x4, .LC4
	and	x1, x1, x7
	adrp	x7, .LC3
	eor	x1, x1, x2
	adrp	x2, .LC5
	ldr	q5, [x7, #:lo12:.LC3]
	str	x1, [x0, 1808]
	ldr	q4, [x4, #:lo12:.LC4]
	ldr	q3, [x2, #:lo12:.LC5]
.L173:
	ldr	q0, [x5, x3]
	ldr	q2, [x6, x3]
	and	v0.16b, v0.16b, v6.16b
	ldr	q1, [x0, x3]
	and	v2.16b, v2.16b, v5.16b
	orr	v0.16b, v0.16b, v2.16b
	and	v2.16b, v0.16b, v4.16b
	ushr	v0.2d, v0.2d, 1
	neg	v2.2d, v2.2d
	eor	v0.16b, v1.16b, v0.16b
	and	v1.16b, v2.16b, v3.16b
	eor	v0.16b, v0.16b, v1.16b
	str	q0, [x5, x3]
	add	x3, x3, 16
	cmp	x3, 3168
	bne	.L173
	ldr	x2, [x0]
	str	xzr, [x0, 4992]
	ldr	x1, [x0, 4984]
	ldr	x3, [x0, 3168]
	bfi	x1, x2, 0, 31
	sbfx	x2, x1, 0, 1
	eor	x1, x3, x1, lsr 1
	fmov	x3, d3
	and	x2, x2, x3
	eor	x1, x1, x2
	str	x1, [x0, 4984]
	ret
	.cfi_endproc
.LFE8778:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC6:
	.string	"stoi"
	.align	3
.LC8:
	.string	"/proc/cpuinfo"
	.align	3
.LC9:
	.string	"model name"
	.align	3
.LC10:
	.string	":"
	.align	3
.LC11:
	.string	"basic_string::substr"
	.align	3
.LC12:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC13:
	.string	"cpu MHz"
	.align	3
.LC14:
	.string	"/proc/meminfo"
	.align	3
.LC15:
	.string	"MemTotal"
	.align	3
.LC16:
	.string	"r"
	.align	3
.LC17:
	.string	"uname -o"
	.align	3
.LC18:
	.string	"========================================\n"
	.align	3
.LC19:
	.string	"ARM REIST Benchmark: scalar vs NEON\n"
	.align	3
.LC20:
	.string	"System Information:\n"
	.align	3
.LC21:
	.string	"  Hostname: "
	.align	3
.LC22:
	.string	"\n"
	.align	3
.LC23:
	.string	"  OS: "
	.align	3
.LC24:
	.string	"  CPU Model: "
	.align	3
.LC25:
	.string	"  CPU MHz: "
	.align	3
.LC26:
	.string	"  Memory: "
	.align	3
.LC27:
	.string	"========================================\n\n"
	.align	3
.LC28:
	.string	"N = "
	.align	3
.LC29:
	.string	" coefficients\n\n"
	.align	3
.LC30:
	.string	"q = "
	.align	3
.LC31:
	.string	"  classic scalar : "
	.align	3
.LC32:
	.string	" s  (reps="
	.align	3
.LC33:
	.string	")\n"
	.align	3
.LC34:
	.string	"  REIST  scalar  : "
	.align	3
.LC35:
	.string	"  REIST  NEON    : "
	.align	3
.LC36:
	.string	"  speedup REIST scalar vs classic : "
	.align	3
.LC37:
	.string	"x\n"
	.align	3
.LC38:
	.string	"  speedup REIST NEON   vs classic : "
	.align	3
.LC39:
	.string	"  speedup NEON vs REIST scalar    : "
	.align	3
.LC40:
	.string	"x\n\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB8119:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8119
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x13, 6368
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	d8, d9, [sp, 96]
	stp	d10, d11, [sp, 112]
	stp	d12, d13, [sp, 128]
	stp	d14, d15, [sp, 144]
	sub	sp, sp, x13
	.cfi_def_cfa_offset 6528
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	.cfi_offset 27, -80
	.cfi_offset 28, -72
	.cfi_offset 72, -64
	.cfi_offset 73, -56
	.cfi_offset 74, -48
	.cfi_offset 75, -40
	.cfi_offset 76, -32
	.cfi_offset 77, -24
	.cfi_offset 78, -16
	.cfi_offset 79, -8
	str	xzr, [sp, 1024]
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 6360]
	mov	x3, 0
	cmp	w0, 1
	ble	.L246
	ldr	x1, [x1, 8]
	add	x23, sp, 976
	add	x2, sp, 176
	mov	x0, x23
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	bl	__errno_location
	mov	x19, x0
	ldr	x21, [sp, 976]
	add	x1, sp, 200
	ldr	w20, [x0]
	mov	w2, 10
	str	wzr, [x19]
	mov	x0, x21
	bl	__isoc23_strtol
	ldr	x1, [sp, 200]
	cmp	x21, x1
	beq	.L294
	ldr	w2, [x19]
	cmp	w2, 34
	beq	.L180
	mov	x1, 2147483648
	add	x1, x0, x1
	mov	x3, 4294967295
	cmp	x1, x3
	bhi	.L180
	str	w0, [sp, 52]
	cbz	w2, .L295
.L183:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L177:
	mov	x0, 16
	bl	_Znwm
.LEHE0:
	adrp	x2, .LC7
	add	x2, x2, :lo12:.LC7
	mov	x8, x0
	mov	x6, 12345
	add	x1, x23, 8
	mov	x0, x6
	ldp	x4, x5, [x2]
	mov	x2, 35173
	add	x7, x8, 16
	mov	x3, 1
	movk	x2, 0x6c07, lsl 16
	stp	x4, x5, [x8]
	str	x8, [sp, 56]
	stp	x8, x7, [sp, 128]
	str	x7, [sp, 144]
	str	x6, [sp, 976]
	.p2align 3,,7
.L187:
	eor	x0, x0, x0, lsr 30
	madd	w0, w0, w2, w3
	add	x3, x3, 1
	str	x0, [x1], 8
	cmp	x3, 624
	bne	.L187
	add	x4, sp, 320
	add	x2, sp, 288
	add	x9, sp, 352
	add	x8, sp, 240
	add	x7, sp, 272
	add	x6, sp, 304
	add	x5, sp, 336
	stp	x4, x2, [sp, 96]
	add	x4, sp, 368
	add	x0, sp, 224
	add	x1, sp, 256
	add	x22, sp, 448
	mov	w2, 8
	str	x0, [sp, 40]
	mov	x0, x22
	stp	x1, x9, [sp, 80]
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	stp	x8, xzr, [sp, 224]
	strb	wzr, [sp, 240]
	stp	x7, xzr, [sp, 256]
	strb	wzr, [sp, 272]
	stp	x6, xzr, [sp, 288]
	strb	wzr, [sp, 304]
	stp	x5, xzr, [sp, 320]
	strb	wzr, [sp, 336]
	str	x4, [sp, 352]
	str	xzr, [sp, 360]
	strb	wzr, [sp, 368]
	str	x3, [sp, 5968]
.LEHB1:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE1:
	add	x27, sp, 416
	add	x20, sp, 384
	add	x21, x27, 16
	add	x28, sp, 200
	add	x0, x20, 16
	stp	x0, xzr, [sp, 384]
	strb	wzr, [sp, 400]
.L188:
	adrp	x26, _ZNKSt5ctypeIcE8do_widenEc
	add	x26, x26, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	.p2align 3,,7
.L206:
	ldr	x0, [sp, 448]
	ldr	x0, [x0, -24]
	add	x0, x22, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L296
	ldrb	w0, [x19, 56]
	cbz	w0, .L209
	ldrb	w2, [x19, 67]
.L210:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x1, x20
	mov	x0, x22
.LEHB2:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L297
	adrp	x1, .LC9
	mov	x0, x20
	add	x1, x1, :lo12:.LC9
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L189
	mov	x0, x20
	adrp	x1, .LC10
	mov	x3, 1
	add	x1, x1, :lo12:.LC10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x19, [sp, 392]
	add	x0, x0, 2
	cmp	x0, x19
	bhi	.L298
	ldr	x1, [sp, 384]
	sub	x19, x19, x0
	str	x19, [sp, 200]
	str	x21, [sp, 416]
	add	x25, x1, x0
	cmp	x19, 15
	bhi	.L299
	cmp	x19, 1
	bne	.L194
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 432]
.L196:
	mov	x0, x21
	str	x19, [sp, 424]
	strb	wzr, [x0, x19]
	ldr	x2, [sp, 416]
	ldr	x0, [sp, 224]
	cmp	x2, x21
	beq	.L300
.L197:
	ldr	x1, [sp, 40]
	add	x3, sp, 624
	add	x1, x1, 16
	ldr	q0, [x3, -200]
	cmp	x0, x1
	beq	.L301
	str	x2, [sp, 224]
	ldr	x1, [sp, 240]
	str	q0, [sp, 232]
	cbz	x0, .L204
	str	x0, [sp, 416]
	str	x1, [sp, 432]
.L203:
	str	xzr, [sp, 424]
	strb	wzr, [x0]
	ldr	x0, [sp, 416]
	cmp	x0, x21
	beq	.L189
	ldr	x1, [sp, 432]
	add	x1, x1, 1
	bl	_ZdlPvm
.L189:
	adrp	x1, .LC13
	mov	x0, x20
	add	x1, x1, :lo12:.LC13
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L206
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 416
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x8, x19
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	ldr	x0, [sp, 80]
	mov	x1, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L188
	.p2align 2,,3
.L209:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	cmp	x3, x26
	beq	.L210
	mov	w1, w2
	mov	x0, x19
	blr	x3
	and	w2, w0, 255
	b	.L210
	.p2align 2,,3
.L194:
	cbz	x19, .L196
	mov	x0, x21
	b	.L193
	.p2align 2,,3
.L299:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x1, x28
	mov	x0, x27
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE2:
	ldr	x1, [sp, 200]
	str	x0, [sp, 416]
	str	x1, [sp, 432]
.L193:
	mov	x2, x19
	mov	x1, x25
	bl	memcpy
	ldr	x19, [sp, 200]
	str	x19, [sp, 424]
	ldr	x0, [sp, 416]
	strb	wzr, [x0, x19]
	ldr	x2, [sp, 416]
	ldr	x0, [sp, 224]
	cmp	x2, x21
	bne	.L197
.L300:
	ldr	x2, [sp, 424]
	cbz	x2, .L199
	cmp	x2, 1
	beq	.L302
	mov	x1, x21
	bl	memcpy
	ldr	x0, [sp, 224]
	ldr	x2, [sp, 424]
.L199:
	str	x2, [sp, 232]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 416]
	b	.L203
	.p2align 2,,3
.L301:
	str	x2, [sp, 224]
	str	q0, [sp, 232]
.L204:
	mov	x0, x21
	str	x21, [sp, 416]
	b	.L203
.L297:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x1, .LC14
	mov	x0, x22
	add	x1, x1, :lo12:.LC14
	mov	w2, 8
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	add	x2, x20, 16
	mov	x1, x20
	mov	x0, x22
	stp	x2, xzr, [sp, 384]
	strb	wzr, [sp, 400]
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L213
	adrp	x1, .LC15
	mov	x0, x20
	add	x1, x1, :lo12:.LC15
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L213
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 416
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x19
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE4:
	ldr	x0, [sp, 104]
	mov	x1, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L213:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x1, 6104
	add	x19, sp, x1
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L303
.L215:
	adrp	x1, .LC16
	adrp	x0, .LC17
	add	x1, x1, :lo12:.LC16
	add	x0, x0, :lo12:.LC17
.LEHB5:
	bl	popen
	mov	x19, x0
	cbz	x0, .L216
	mov	x0, 5976
	add	x20, sp, x0
	mov	x2, x19
	mov	x0, x20
	mov	w1, 128
	bl	fgets
	cbz	x0, .L218
	mov	x1, x20
	add	x2, sp, 200
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	ldr	x0, [sp, 88]
	mov	x1, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 360]
	cbnz	x0, .L304
.L218:
	mov	x0, x19
	bl	pclose
.L216:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x19, .LC18
	add	x1, x19, :lo12:.LC18
	ldr	x2, [x0]
	ldr	x2, [x2, -24]
	add	x2, x2, x0
	ldr	w3, [x2, 24]
	str	x5, [x2, 8]
	and	w3, w3, w4
	orr	w3, w3, 4
	str	w3, [x2, 24]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC19
	add	x1, x1, :lo12:.LC19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC21
	mov	x2, 12
	add	x1, x1, :lo12:.LC21
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 320]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC23
	mov	x2, 6
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 352]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC24
	mov	x2, 13
	add	x1, x1, :lo12:.LC24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 224]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	mov	x2, 11
	add	x1, x1, :lo12:.LC25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 256]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 10
	add	x1, x1, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 288]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC28
	mov	x2, 4
	add	x1, x1, :lo12:.LC28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	ldr	w19, [sp, 52]
	mov	w1, w19
	bl	_ZNSolsEi
	adrp	x1, .LC29
	add	x1, x1, :lo12:.LC29
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	sxtw	x19, w19
	add	x28, sp, 200
	add	x0, sp, 152
	mov	x1, x19
	mov	x2, x28
	str	x0, [sp, 8]
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE5:
	add	x0, sp, 176
	mov	x2, x28
	mov	x1, x19
	str	x0, [sp, 16]
.LEHB6:
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE6:
	add	x2, sp, 120
	mov	x1, x19
	mov	x0, x28
.LEHB7:
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE7:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	str	x0, [sp, 64]
	lsl	x0, x19, 2
	str	x0, [sp, 72]
	mov	x0, 225833675390976
	str	xzr, [sp, 24]
	movk	x0, 0x41cd, lsl 48
	fmov	d11, x0
	adrp	x0, .LC41
	ldr	d12, [x0, #:lo12:.LC41]
	.p2align 3,,7
.L237:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	ldr	w19, [x0, x1]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	ble	.L225
	ldr	x0, [sp, 72]
	mov	x26, 22144
	ldr	x22, [sp, 152]
	movk	x26, 0x9d2c, lsl 16
	ldr	x25, [sp, 176]
	add	x20, x0, x22
	ldr	x1, [sp, 5968]
	mov	x24, 4022730752
	b	.L224
	.p2align 2,,3
.L222:
	ldr	x21, [x23, x1, lsl 3]
	add	x2, x1, 1
	str	x2, [sp, 5968]
	ubfx	x0, x21, 11, 32
	eor	x21, x21, x0
	and	x0, x26, x21, lsl 7
	eor	x21, x21, x0
	and	x0, x24, x21, lsl 15
	eor	x21, x21, x0
	eor	x21, x21, x21, lsr 18
	cmp	x2, 623
	bhi	.L305
.L223:
	udiv	w3, w21, w19
	add	x1, x2, 1
	ldr	x2, [x23, x2, lsl 3]
	str	x1, [sp, 5968]
	msub	w3, w3, w19, w21
	ubfx	x0, x2, 11, 32
	str	w3, [x22], 4
	eor	x2, x2, x0
	and	x0, x26, x2, lsl 7
	eor	x2, x2, x0
	and	x0, x24, x2, lsl 15
	eor	x2, x2, x0
	eor	x2, x2, x2, lsr 18
	udiv	w3, w2, w19
	msub	w2, w3, w19, w2
	str	w2, [x25], 4
	cmp	x20, x22
	beq	.L225
.L224:
	cmp	x1, 623
	bls	.L222
	mov	x0, x23
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x1, [sp, 5968]
	b	.L222
	.p2align 2,,3
.L305:
	mov	x0, x23
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x2, [sp, 5968]
	b	.L223
	.p2align 2,,3
.L225:
	str	wzr, [sp, 120]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	ldp	x22, x24, [sp, 152]
	mov	w4, w19
	ldr	x25, [sp, 176]
	mov	w20, 29
	ldr	x26, [sp, 200]
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	mov	x3, x26
	bl	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0
	ldr	w1, [sp, 120]
	mov	x21, 10
	eor	w0, w0, w1
	str	w0, [sp, 120]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	.p2align 3,,7
.L221:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x27, x0
	mov	x5, x21
	mov	w4, w19
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	bl	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	ldr	w1, [sp, 120]
	eor	w0, w0, w1
	str	w0, [sp, 120]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x27
	scvtf	d10, x0
	fdiv	d10, d10, d11
	fcmpe	d10, d12
	bge	.L226
	lsl	x21, x21, 1
	subs	w20, w20, #1
	bne	.L221
.L226:
	mov	w27, 2
.L228:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x20, x0
	mov	x5, x21
	mov	w4, w19
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	bl	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	ldr	w1, [sp, 120]
	eor	w0, w0, w1
	str	w0, [sp, 120]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x20
	scvtf	d0, x0
	fdiv	d0, d0, d11
	fcmpe	d10, d0
	bgt	.L248
	cmp	w27, 1
	beq	.L306
.L249:
	mov	w27, 1
	b	.L228
	.p2align 2,,3
.L248:
	fmov	d10, d0
	cmp	w27, 1
	bne	.L249
.L306:
	ldr	w0, [sp, 120]
	str	wzr, [sp, 116]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	ldp	x24, x25, [sp, 152]
	mov	w4, w19
	ldr	x26, [sp, 176]
	mov	w22, 29
	ldr	x27, [sp, 200]
	mov	x2, x26
	mov	x1, x25
	mov	x0, x24
	mov	x3, x27
	bl	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0.isra.0
	ldr	w1, [sp, 116]
	mov	x20, 10
	eor	w0, w0, w1
	str	w0, [sp, 116]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x21, [sp, 32]
	.p2align 3,,7
.L230:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x21, x0
	mov	x1, x25
	mov	x5, x20
	mov	w4, w19
	mov	x3, x27
	mov	x2, x26
	mov	x0, x24
	bl	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	ldr	w1, [sp, 116]
	eor	w0, w0, w1
	str	w0, [sp, 116]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x21
	scvtf	d9, x0
	fdiv	d9, d9, d11
	fcmpe	d9, d12
	bge	.L229
	lsl	x20, x20, 1
	subs	w22, w22, #1
	bne	.L230
.L229:
	mov	w6, 2
	mov	w21, w6
.L232:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x22, x0
	mov	x1, x25
	mov	x5, x20
	mov	w4, w19
	mov	x3, x27
	mov	x2, x26
	mov	x0, x24
	bl	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm.isra.0
	ldr	w1, [sp, 116]
	eor	w0, w0, w1
	str	w0, [sp, 116]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x22
	scvtf	d0, x0
	fdiv	d0, d0, d11
	fcmpe	d0, d9
	bmi	.L250
	cmp	w21, 1
	beq	.L307
.L251:
	mov	w21, 1
	b	.L232
	.p2align 2,,3
.L250:
	fmov	d9, d0
	cmp	w21, 1
	bne	.L251
.L307:
	ldr	x21, [sp, 32]
	ldr	w0, [sp, 116]
	str	wzr, [sp, 112]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	ldp	x25, x26, [sp, 8]
	mov	w3, w19
	mov	x2, x28
	mov	w24, 29
	mov	x22, 10
	mov	x1, x26
	mov	x0, x25
	bl	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm.constprop.0
	ldr	w1, [sp, 112]
	eor	w0, w0, w1
	str	w0, [sp, 112]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	.p2align 3,,7
.L234:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x27, x0
	mov	x1, x26
	mov	x4, x22
	mov	w3, w19
	mov	x2, x28
	mov	x0, x25
	bl	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm
	ldr	w1, [sp, 112]
	eor	w0, w0, w1
	str	w0, [sp, 112]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x27
	scvtf	d8, x0
	fdiv	d8, d8, d11
	fcmpe	d8, d12
	bge	.L233
	lsl	x22, x22, 1
	subs	w24, w24, #1
	bne	.L234
.L233:
	mov	w25, 2
.L236:
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	x24, x0
	ldp	x0, x1, [sp, 8]
	mov	x4, x22
	mov	w3, w19
	mov	x2, x28
	bl	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm
	ldr	w1, [sp, 112]
	eor	w0, w0, w1
	str	w0, [sp, 112]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	x0, x0, x24
	scvtf	d0, x0
	fdiv	d0, d0, d11
	fcmpe	d0, d8
	bmi	.L252
	cmp	w25, 1
	beq	.L308
.L253:
	mov	w25, 1
	b	.L236
	.p2align 2,,3
.L252:
	fmov	d8, d0
	cmp	w25, 1
	bne	.L253
.L308:
	ldr	w0, [sp, 112]
	fdiv	d15, d10, d9
	adrp	x0, .LC30
	fdiv	d14, d10, d8
	add	x1, x0, :lo12:.LC30
	ldr	x25, [sp, 64]
	mov	x2, 4
	fdiv	d13, d9, d8
	mov	x0, x25
.LEHB8:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	uxtw	x1, w19
	mov	x0, x25
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC22
	mov	x2, 1
	add	x1, x1, :lo12:.LC22
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC31
	mov	x0, x25
	add	x1, x1, :lo12:.LC31
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d10
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x24, .LC32
	mov	x19, x0
	add	x1, x24, :lo12:.LC32
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x21
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x19, .LC33
	mov	x2, 2
	add	x1, x19, :lo12:.LC33
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC34
	mov	x0, x25
	add	x1, x1, :lo12:.LC34
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x21, x0
	add	x1, x24, :lo12:.LC32
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x20
	mov	x0, x21
	bl	_ZNSo9_M_insertImEERSoT_
	add	x1, x19, :lo12:.LC33
	mov	x2, 2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC35
	mov	x0, x25
	add	x1, x1, :lo12:.LC35
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x24, :lo12:.LC32
	mov	x20, x0
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x22
	mov	x0, x20
	bl	_ZNSo9_M_insertImEERSoT_
	add	x1, x19, :lo12:.LC33
	mov	x2, 2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC36
	mov	x0, x25
	add	x1, x1, :lo12:.LC36
	mov	x2, 36
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d15
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC37
	mov	x2, 2
	add	x1, x19, :lo12:.LC37
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC38
	mov	x0, x25
	add	x1, x1, :lo12:.LC38
	mov	x2, 36
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d14
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x19, :lo12:.LC37
	mov	x2, 2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC39
	mov	x0, x25
	add	x1, x1, :lo12:.LC39
	mov	x2, 36
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d13
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC40
	mov	x2, 3
	add	x1, x1, :lo12:.LC40
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE8:
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	cmp	x0, 16
	bne	.L237
	mov	x0, x28
	bl	_ZNSt6vectorIjSaIjEED1Ev
	ldr	x0, [sp, 16]
	bl	_ZNSt6vectorIjSaIjEED1Ev
	ldr	x0, [sp, 8]
	bl	_ZNSt6vectorIjSaIjEED1Ev
	ldr	x0, [sp, 88]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 96]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 104]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 80]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt6vectorIjSaIjEED1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 6360]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L291
	mov	x13, 6368
	add	sp, sp, x13
	.cfi_remember_state
	.cfi_def_cfa_offset 160
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldp	d10, d11, [sp, 112]
	ldp	d12, d13, [sp, 128]
	ldp	d14, d15, [sp, 144]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 78
	.cfi_restore 79
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L303:
	.cfi_restore_state
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 328]
	mov	x4, x0
	ldr	x0, [sp, 96]
	mov	x3, x19
	mov	x1, 0
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE9:
	b	.L215
.L304:
	ldr	x2, [sp, 352]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	bne	.L218
	ldr	x0, [sp, 88]
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L218
.L295:
	str	w20, [x19]
	b	.L183
.L246:
	mov	w0, 1024
	add	x23, sp, 976
	str	w0, [sp, 52]
	b	.L177
.L302:
	ldrb	w1, [sp, 432]
	strb	w1, [x0]
	ldr	x0, [sp, 224]
	ldr	x2, [sp, 424]
	b	.L199
.L296:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 6360]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L291
.LEHB10:
	bl	_ZSt16__throw_bad_castv
.L298:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x1, [sp, 6360]
	ldr	x2, [x24]
	subs	x1, x1, x2
	mov	x2, 0
	bne	.L291
	mov	x2, x0
	adrp	x1, .LC11
	adrp	x0, .LC12
	mov	x3, x19
	add	x1, x1, :lo12:.LC11
	add	x0, x0, :lo12:.LC12
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE10:
.L294:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 6360]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L291
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB11:
	bl	_ZSt24__throw_invalid_argumentPKc
.L259:
	mov	x19, x0
	mov	x0, x28
	bl	_ZNSt6vectorIjSaIjEED1Ev
.L242:
	ldr	x0, [sp, 16]
	bl	_ZNSt6vectorIjSaIjEED1Ev
.L243:
	ldr	x0, [sp, 8]
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	bl	_ZNSt6vectorIjSaIjEED1Ev
.L239:
	ldr	x0, [sp, 88]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 96]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 104]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 80]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt6vectorIjSaIjEED1Ev
	ldr	x0, [sp, 6360]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	beq	.L244
.L291:
	bl	__stack_chk_fail
.L180:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 6360]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L291
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE11:
.L260:
	ldr	w1, [x19]
	mov	x21, x0
	cbnz	w1, .L185
	str	w20, [x19]
.L185:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 6360]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L291
	mov	x0, x21
.LEHB12:
	bl	_Unwind_Resume
.L255:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	b	.L239
.L244:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE12:
.L257:
	mov	x19, x0
	b	.L243
.L256:
	mov	x19, x0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	b	.L239
.L258:
	mov	x19, x0
	b	.L242
.L254:
	mov	x19, x0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L239
	.cfi_endproc
.LFE8119:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8119:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8119-.LLSDACSB8119
.LLSDACSB8119:
	.uleb128 .LEHB0-.LFB8119
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8119
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L255-.LFB8119
	.uleb128 0
	.uleb128 .LEHB2-.LFB8119
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L254-.LFB8119
	.uleb128 0
	.uleb128 .LEHB3-.LFB8119
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L255-.LFB8119
	.uleb128 0
	.uleb128 .LEHB4-.LFB8119
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L256-.LFB8119
	.uleb128 0
	.uleb128 .LEHB5-.LFB8119
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L255-.LFB8119
	.uleb128 0
	.uleb128 .LEHB6-.LFB8119
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L257-.LFB8119
	.uleb128 0
	.uleb128 .LEHB7-.LFB8119
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L258-.LFB8119
	.uleb128 0
	.uleb128 .LEHB8-.LFB8119
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L259-.LFB8119
	.uleb128 0
	.uleb128 .LEHB9-.LFB8119
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L255-.LFB8119
	.uleb128 0
	.uleb128 .LEHB10-.LFB8119
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L254-.LFB8119
	.uleb128 0
	.uleb128 .LEHB11-.LFB8119
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L260-.LFB8119
	.uleb128 0
	.uleb128 .LEHB12-.LFB8119
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8119:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC2:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC3:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC4:
	.xword	1
	.xword	1
	.align	4
.LC5:
	.xword	2567483615
	.xword	2567483615
	.align	4
.LC7:
	.xword	42949754565378627
	.xword	4294967326164771079
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC41:
	.word	1202590843
	.word	1066695393
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
