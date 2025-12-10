	.arch armv8-a
	.file	"bench_chacha_stream.cpp"
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
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, %function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB3864:
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
	cbz	x1, .L6
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
.L6:
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
.LFE3864:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3866:
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
	beq	.L23
	cmp	x3, x1
	beq	.L9
	stp	x1, x2, [x20]
	ldr	x1, [x19, 16]
	ldr	x2, [x20, 16]
	str	x1, [x20, 16]
	cbz	x0, .L17
	str	x0, [x19]
	str	x2, [x19, 16]
.L12:
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
.L23:
	.cfi_restore_state
	cmp	x3, x1
	beq	.L9
	stp	x1, x2, [x20]
	mov	x0, x3
	ldr	x1, [x19, 16]
	str	x1, [x20, 16]
	str	x0, [x19]
.L25:
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
.L9:
	.cfi_restore_state
	cmp	x20, x19
	beq	.L16
	cbz	x2, .L13
	cmp	x2, 1
	beq	.L24
	bl	memcpy
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
.L13:
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
.L17:
	.cfi_restore_state
	mov	x0, x3
	str	x0, [x19]
	b	.L25
	.p2align 2,,3
.L24:
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
	b	.L13
	.p2align 2,,3
.L16:
	mov	x0, x1
	b	.L12
	.cfi_endproc
.LFE3866:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.align	2
	.p2align 4,,11
	.global	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, %function
_Z16chacha_block_stdPjPKj:
.LFB3122:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	mov	x2, sp
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	ldp	q0, q3, [x1]
	ldr	x4, [x3]
	str	x4, [sp, 72]
	mov	x4, 0
	ldp	q1, q2, [x1, 32]
	add	x4, x1, 4
	stp	q0, q3, [x2]
	sub	x4, x0, x4
	ldr	w3, [sp, 16]
	ldr	w6, [sp]
	stp	q1, q2, [x2, 32]
	ldr	w2, [sp, 48]
	add	w6, w3, w6
	ldr	w5, [sp, 32]
	eor	w2, w6, w2
	ror	w2, w2, 16
	add	w5, w2, w5
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 16
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w6, w2
	ror	w2, w2, 16
	add	w5, w2, w5
	eor	w3, w5, w3
	ror	w3, w3, 20
	add	w6, w6, w3
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	eor	w3, w3, w5
	ror	w3, w3, 25
	add	w6, w6, w3
	eor	w2, w6, w2
	ror	w2, w2, 16
	add	w5, w2, w5
	eor	w3, w5, w3
	ror	w3, w3, 20
	add	w6, w6, w3
	str	w6, [sp]
	eor	w2, w2, w6
	ror	w2, w2, 24
	add	w5, w5, w2
	str	w5, [sp, 32]
	eor	w3, w3, w5
	str	w2, [sp, 48]
	ror	w3, w3, 25
	str	w3, [sp, 16]
	cmp	x4, 8
	bls	.L27
	ldp	q1, q3, [sp]
	ldr	q2, [sp, 32]
	add	v0.4s, v0.4s, v1.4s
	ldr	q1, [sp, 48]
	str	q0, [x0]
	ldr	q0, [x1, 16]
	add	v0.4s, v0.4s, v3.4s
	str	q0, [x0, 16]
	ldr	q0, [x1, 32]
	add	v0.4s, v0.4s, v2.4s
	str	q0, [x0, 32]
	ldr	q0, [x1, 48]
	add	v0.4s, v0.4s, v1.4s
	str	q0, [x0, 48]
.L26:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L31
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L27:
	.cfi_restore_state
	ldr	w4, [x1]
	ldr	w7, [sp, 4]
	add	w4, w4, w6
	str	w4, [x0]
	ldr	w4, [sp, 8]
	ldr	w6, [x1, 4]
	ldr	w11, [sp, 12]
	add	w6, w7, w6
	str	w6, [x0, 4]
	ldp	w10, w9, [sp, 20]
	ldr	w6, [x1, 8]
	ldr	w8, [sp, 28]
	add	w4, w4, w6
	str	w4, [x0, 8]
	ldr	w7, [sp, 36]
	ldr	w4, [x1, 12]
	ldr	w6, [sp, 40]
	add	w4, w4, w11
	str	w4, [x0, 12]
	ldr	w4, [sp, 44]
	ldr	w11, [x1, 16]
	add	w3, w11, w3
	str	w3, [x0, 16]
	ldr	w3, [x1, 20]
	add	w3, w10, w3
	str	w3, [x0, 20]
	ldr	w3, [x1, 24]
	add	w3, w9, w3
	str	w3, [x0, 24]
	ldr	w3, [x1, 28]
	add	w3, w8, w3
	str	w3, [x0, 28]
	ldr	w3, [x1, 32]
	add	w3, w3, w5
	str	w3, [x0, 32]
	ldr	w3, [x1, 36]
	add	w3, w7, w3
	str	w3, [x0, 36]
	ldr	w3, [x1, 40]
	add	w3, w6, w3
	str	w3, [x0, 40]
	ldr	w3, [x1, 44]
	add	w3, w4, w3
	str	w3, [x0, 44]
	ldr	w4, [x1, 48]
	ldr	w3, [sp, 52]
	add	w2, w4, w2
	str	w2, [x0, 48]
	ldr	w2, [sp, 56]
	ldr	w5, [x1, 52]
	ldr	w4, [sp, 60]
	add	w3, w3, w5
	str	w3, [x0, 52]
	ldr	w3, [x1, 56]
	add	w2, w2, w3
	str	w2, [x0, 56]
	ldr	w1, [x1, 60]
	add	w1, w1, w4
	str	w1, [x0, 60]
	b	.L26
.L31:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE3122:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.align	2
	.p2align 4,,11
	.global	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, %function
_Z18chacha_block_reistPjPKj:
.LFB3862:
	.cfi_startproc
	b	_Z16chacha_block_stdPjPKj
	.cfi_endproc
.LFE3862:
	.size	_Z18chacha_block_reistPjPKj, .-_Z18chacha_block_reistPjPKj
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
.LFB3431:
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
	cbz	x1, .L46
	mov	x21, x1
	mov	x0, x1
	bl	strlen
	str	x0, [sp]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L47
	cmp	x0, 1
	bne	.L38
	ldrb	w0, [x21]
	strb	w0, [x20, 16]
.L39:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x19, [x20, 8]
	strb	wzr, [x22, x19]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L45
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
.L38:
	.cfi_restore_state
	cbz	x0, .L39
	b	.L37
	.p2align 2,,3
.L47:
	mov	x1, sp
	mov	x0, x20
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	ldr	x1, [sp]
	mov	x22, x0
	str	x0, [x20]
	str	x1, [x20, 16]
.L37:
	mov	x2, x19
	mov	x0, x22
	mov	x1, x21
	bl	memcpy
	ldr	x22, [x20]
	ldr	x19, [sp]
	b	.L39
.L45:
	bl	__stack_chk_fail
.L46:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L45
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE3431:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEED2Ev
	.type	_ZNSt6vectorIjSaIjEED2Ev, %function
_ZNSt6vectorIjSaIjEED2Ev:
.LFB3462:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L48
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L48:
	ret
	.cfi_endproc
.LFE3462:
	.size	_ZNSt6vectorIjSaIjEED2Ev, .-_ZNSt6vectorIjSaIjEED2Ev
	.weak	_ZNSt6vectorIjSaIjEED1Ev
	.set	_ZNSt6vectorIjSaIjEED1Ev,_ZNSt6vectorIjSaIjEED2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"stoull"
	.align	3
.LC2:
	.string	"stoul"
	.align	3
.LC3:
	.string	"/proc/cpuinfo"
	.align	3
.LC4:
	.string	"model name"
	.align	3
.LC5:
	.string	":"
	.align	3
.LC6:
	.string	"basic_string::substr"
	.align	3
.LC7:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC8:
	.string	"cpu MHz"
	.align	3
.LC9:
	.string	"/proc/meminfo"
	.align	3
.LC10:
	.string	"MemTotal"
	.align	3
.LC11:
	.string	"r"
	.align	3
.LC12:
	.string	"uname -o"
	.align	3
.LC13:
	.string	"========================================\n"
	.align	3
.LC14:
	.string	"ChaCha20 Stream Benchmark\n"
	.align	3
.LC15:
	.string	"System Information:\n"
	.align	3
.LC16:
	.string	"  Hostname: "
	.align	3
.LC17:
	.string	"\n"
	.align	3
.LC18:
	.string	"  OS: "
	.align	3
.LC19:
	.string	"  CPU Model: "
	.align	3
.LC20:
	.string	"  CPU MHz: "
	.align	3
.LC21:
	.string	"  Memory: "
	.align	3
.LC22:
	.string	"========================================\n\n"
	.align	3
.LC23:
	.string	"ChaCha20-like keystream benchmark ("
	.align	3
.LC24:
	.string	" MB total)\n\n"
	.align	3
.LC25:
	.string	"Classic : "
	.align	3
.LC26:
	.string	" s ("
	.align	3
.LC27:
	.string	" MB/s)\n"
	.align	3
.LC28:
	.string	"REIST   : "
	.align	3
.LC29:
	.string	"Speed ratio (classic / REIST): "
	.align	3
.LC30:
	.string	"x\n"
	.align	3
.LC31:
	.string	"\nSink XOR: "
	.align	3
.LC32:
	.string	" "
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB3125:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3125
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	d8, d9, [sp, 96]
	str	d10, [sp, 112]
	sub	sp, sp, #1280
	.cfi_def_cfa_offset 1408
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	str	xzr, [sp, 1024]
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	mov	w19, w0
	ldr	x0, [x2]
	str	x0, [sp, 1272]
	mov	x0, 0
	cmp	w19, 1
	ble	.L114
	mov	x22, x1
	add	x26, sp, 56
	ldr	x1, [x1, 8]
	add	x21, sp, 352
	mov	x2, x26
	mov	x0, x21
	add	x24, sp, 64
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	bl	__errno_location
	mov	x20, x0
	ldr	x23, [sp, 352]
	mov	x1, x24
	ldr	w25, [x0]
	mov	w2, 10
	str	wzr, [x20]
	mov	x0, x23
	bl	__isoc23_strtoull
	str	x0, [sp, 8]
	ldr	x1, [sp, 64]
	cmp	x23, x1
	beq	.L155
	ldr	w0, [x20]
	cmp	w0, 34
	beq	.L156
	cbnz	w0, .L56
	str	w25, [x20]
.L56:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 2
	bne	.L57
.L151:
	mov	w0, 47806
	movk	w0, 0xcafe, lsl 16
	fmov	s8, w0
.L51:
	add	x0, sp, 160
	add	x6, sp, 144
	add	x5, sp, 176
	add	x4, sp, 208
	add	x3, sp, 240
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 24]
	add	x0, sp, 224
	add	x28, sp, 112
	adrp	x1, .LC3
	mov	w2, 8
	add	x1, x1, :lo12:.LC3
	str	x0, [sp, 16]
	mov	x0, x21
	stp	x28, xzr, [sp, 96]
	strb	wzr, [sp, 112]
	stp	x6, xzr, [sp, 128]
	strb	wzr, [sp, 144]
	stp	x5, xzr, [sp, 160]
	strb	wzr, [sp, 176]
	stp	x4, xzr, [sp, 192]
	strb	wzr, [sp, 208]
	stp	x3, xzr, [sp, 224]
	strb	wzr, [sp, 240]
.LEHB1:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE1:
	adrp	x26, .LC4
	add	x26, x26, :lo12:.LC4
	add	x1, sp, 272
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	str	x0, [sp, 16]
	str	x1, [sp, 40]
	stp	x1, xzr, [sp, 256]
	strb	wzr, [sp, 272]
.L69:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	.p2align 3,,7
.L87:
	ldr	x0, [sp, 352]
	ldr	x0, [x0, -24]
	add	x0, x21, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L157
	ldrb	w0, [x19, 56]
	cbz	w0, .L90
	ldrb	w2, [x19, 67]
.L91:
	add	x20, sp, 256
	mov	x23, x25
	mov	x1, x20
	mov	x0, x21
.LEHB2:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L158
	mov	x1, x26
	mov	x0, x20
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L70
	mov	x0, x20
	adrp	x1, .LC5
	mov	x3, 1
	add	x1, x1, :lo12:.LC5
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x19, [sp, 264]
	add	x0, x0, 2
	cmp	x0, x19
	bhi	.L159
	ldr	x1, [sp, 256]
	sub	x19, x19, x0
	add	x22, sp, 304
	str	x19, [sp, 64]
	str	x22, [sp, 288]
	add	x24, sp, 288
	add	x27, x1, x0
	cmp	x19, 15
	bhi	.L160
	cmp	x19, 1
	bne	.L75
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 304]
.L77:
	mov	x0, x22
	str	x19, [sp, 296]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 288]
	ldr	x0, [sp, 96]
	cmp	x1, x22
	beq	.L161
.L78:
	add	x2, sp, 512
	ldr	q0, [x2, -216]
	cmp	x0, x28
	beq	.L162
	str	x1, [sp, 96]
	ldr	x1, [sp, 112]
	str	q0, [sp, 104]
	cbz	x0, .L85
	str	x0, [sp, 288]
	str	x1, [sp, 304]
.L84:
	str	xzr, [sp, 296]
	strb	wzr, [x0]
	ldr	x0, [sp, 288]
	cmp	x0, x22
	beq	.L70
	ldr	x1, [sp, 304]
	add	x1, x1, 1
	bl	_ZdlPvm
.L70:
	adrp	x1, .LC8
	mov	x0, x20
	add	x1, x1, :lo12:.LC8
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L87
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x24, sp, 288
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	mov	x8, x24
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	x1, x24
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L69
	.p2align 2,,3
.L90:
	mov	x23, x25
	add	x20, sp, 256
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	ldr	x0, [sp, 16]
	cmp	x3, x0
	beq	.L91
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	mov	w1, w2
	mov	x0, x19
	blr	x3
	and	w2, w0, 255
	b	.L91
	.p2align 2,,3
.L75:
	cbz	x19, .L77
	mov	x0, x22
	b	.L74
	.p2align 2,,3
.L160:
	mov	x0, x24
	mov	x23, x25
	add	x1, sp, 64
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE2:
	ldr	x1, [sp, 64]
	str	x0, [sp, 288]
	str	x1, [sp, 304]
.L74:
	mov	x2, x19
	mov	x1, x27
	bl	memcpy
	ldr	x19, [sp, 64]
	str	x19, [sp, 296]
	ldr	x0, [sp, 288]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 288]
	ldr	x0, [sp, 96]
	cmp	x1, x22
	bne	.L78
.L161:
	ldr	x2, [sp, 296]
	cbz	x2, .L80
	cmp	x2, 1
	beq	.L163
	mov	x1, x22
	bl	memcpy
	ldr	x0, [sp, 96]
	ldr	x2, [sp, 296]
.L80:
	str	x2, [sp, 104]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 288]
	b	.L84
	.p2align 2,,3
.L162:
	str	x1, [sp, 96]
	str	q0, [sp, 104]
.L85:
	str	x22, [sp, 288]
	add	x22, sp, 304
	mov	x0, x22
	b	.L84
.L158:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 160
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 24]
	add	x0, sp, 224
	adrp	x1, .LC9
	mov	w2, 8
	add	x1, x1, :lo12:.LC9
	str	x0, [sp, 16]
	mov	x0, x21
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	ldr	x2, [sp, 40]
	mov	x1, x20
	mov	x0, x21
	stp	x2, xzr, [sp, 256]
	strb	wzr, [sp, 272]
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L152
	adrp	x1, .LC10
	mov	x0, x20
	add	x1, x1, :lo12:.LC10
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L152
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x24, sp, 288
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x24
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE4:
	mov	x1, x24
	add	x0, sp, 160
	str	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L94
.L152:
	add	x0, sp, 160
	str	x0, [sp, 32]
.L94:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	add	x19, sp, 1016
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L147
	add	x0, sp, 192
	str	x0, [sp, 24]
.L96:
	add	x2, sp, 224
	adrp	x1, .LC11
	adrp	x0, .LC12
	add	x1, x1, :lo12:.LC11
	add	x0, x0, :lo12:.LC12
	str	x2, [sp, 16]
.LEHB5:
	bl	popen
	mov	x20, x0
	cbz	x0, .L164
	add	x0, sp, 224
	add	x23, sp, 888
	mov	x2, x20
	mov	w1, 128
	str	x0, [sp, 16]
	mov	x0, x23
	bl	fgets
	cbz	x0, .L165
	add	x0, sp, 224
	mov	x1, x23
	add	x2, sp, 64
	str	x0, [sp, 16]
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	mov	x1, x21
	add	x0, sp, 224
	str	x0, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 232]
	cbz	x0, .L99
	ldr	x2, [sp, 224]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	beq	.L166
.L99:
	mov	x0, x20
	bl	pclose
.L97:
	adrp	x1, .LC34
	adrp	x0, .LC33
	stp	xzr, xzr, [sp, 72]
	ldr	q2, [x1, #:lo12:.LC34]
	adrp	x1, .LC35
	ldr	q3, [x0, #:lo12:.LC33]
	mov	x0, 64
	ldr	q1, [x1, #:lo12:.LC35]
	adrp	x1, .LC36
	mul	v3.4s, v3.4s, v8.s[0]
	ldr	q0, [x1, #:lo12:.LC36]
	mul	v2.4s, v2.4s, v8.s[0]
	mul	v1.4s, v1.4s, v8.s[0]
	mul	v0.4s, v0.4s, v8.s[0]
	stp	q3, q2, [sp, 288]
	stp	q1, q0, [sp, 320]
	bl	_Znwm
.LEHE5:
	mov	x2, x0
	adrp	x23, :got:_ZSt4cout
	ldr	x23, [x23, :got_lo12:_ZSt4cout]
	mov	w4, -261
	movi	v0.4s, 0
	str	wzr, [x2], 4
	mov	x5, 6
	add	x26, x0, 64
	ldr	x3, [x23]
	mov	x20, x0
	str	q0, [x2, 32]
	adrp	x24, .LC13
	mov	x0, x23
	stp	q0, q0, [x2]
	add	x1, x24, :lo12:.LC13
	str	q0, [x2, 44]
	ldr	x2, [x3, -24]
	stp	x20, x26, [sp, 64]
	add	x2, x23, x2
	str	x26, [sp, 80]
	ldr	w3, [x2, 24]
	str	x5, [x2, 8]
	and	w3, w3, w4
	orr	w3, w3, 4
	str	w3, [x2, 24]
.LEHB6:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC14
	mov	x0, x23
	add	x1, x1, :lo12:.LC14
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	mov	x0, x23
	add	x1, x24, :lo12:.LC13
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC15
	mov	x0, x23
	add	x1, x1, :lo12:.LC15
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC16
	mov	x0, x23
	add	x1, x1, :lo12:.LC16
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 192]
	mov	x0, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC18
	mov	x0, x23
	add	x1, x1, :lo12:.LC18
	mov	x2, 6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 224]
	mov	x0, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC19
	mov	x0, x23
	add	x1, x1, :lo12:.LC19
	mov	x2, 13
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 96]
	mov	x0, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC20
	mov	x0, x23
	add	x1, x1, :lo12:.LC20
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 128]
	mov	x0, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC21
	mov	x0, x23
	add	x1, x1, :lo12:.LC21
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 160]
	mov	x0, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC22
	mov	x0, x23
	add	x1, x1, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x28, x0
	ldr	x0, [sp, 8]
	cbz	x0, .L101
	add	x24, sp, 288
	mov	x22, 0
	.p2align 3,,7
.L102:
	mov	x0, x21
	mov	x1, x24
	bl	_Z16chacha_block_stdPjPKj
	mov	x19, x22
	ldp	q3, q2, [x20]
	add	x22, x22, 1
	ldp	q1, q0, [x20, 32]
	ldp	q7, q6, [sp, 352]
	ldp	q5, q4, [sp, 384]
	eor	v3.16b, v3.16b, v7.16b
	eor	v2.16b, v2.16b, v6.16b
	eor	v1.16b, v1.16b, v5.16b
	eor	v0.16b, v0.16b, v4.16b
	ldr	x0, [sp, 8]
	stp	q3, q2, [x20]
	stp	q1, q0, [x20, 32]
	cmp	x0, x22
	bne	.L102
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x28
	mov	x1, 225833675390976
	add	x27, x20, 16
	scvtf	d8, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	add	x22, x20, 32
	add	x25, x20, 48
	mov	x28, 0
	fdiv	d8, d8, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	.p2align 3,,7
.L103:
	mov	x1, x24
	mov	x0, x21
	bl	_Z16chacha_block_stdPjPKj
	ldr	q3, [x20]
	cmp	x19, x28
	ldp	q7, q6, [sp, 352]
	add	x28, x28, 1
	ldr	q2, [x27]
	ldr	q1, [x22]
	ldp	q5, q4, [sp, 384]
	ldr	q0, [x25]
	eor	v3.16b, v3.16b, v7.16b
	eor	v2.16b, v2.16b, v6.16b
	eor	v1.16b, v1.16b, v5.16b
	eor	v0.16b, v0.16b, v4.16b
	str	q3, [x20]
	str	q2, [x27]
	str	q1, [x22]
	str	q0, [x25]
	bne	.L103
.L112:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldr	x1, [sp, 40]
	mov	x2, 225833675390976
	ldr	d0, [sp, 8]
	sub	x1, x0, x1
	movk	x2, 0x41cd, lsl 48
	scvtf	d9, x1
	mov	x1, 4634204016564240384
	ucvtf	d10, d0
	fmov	d0, x2
	fmov	d1, x1
	mov	x2, 35
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC23
	fdiv	d9, d9, d0
	fmul	d10, d10, d1
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, 4517110426252607488
	fmov	d0, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	fmul	d0, d10, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC24
	add	x1, x1, :lo12:.LC24
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	mov	x2, 10
	add	x1, x1, :lo12:.LC25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x21, .LC26
	mov	x24, x0
	add	x1, x21, :lo12:.LC26
	mov	x2, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d10, d8
	mov	x0, 145685290680320
	movk	x0, 0x412e, lsl 48
	fmov	d1, x0
	mov	x0, x24
	fdiv	d0, d0, d1
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x24, .LC27
	add	x1, x24, :lo12:.LC27
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC28
	mov	x2, 10
	add	x1, x1, :lo12:.LC28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x21, :lo12:.LC26
	mov	x2, 4
	mov	x21, x0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d10, d10, d9
	mov	x0, 145685290680320
	movk	x0, 0x412e, lsl 48
	fmov	d0, x0
	mov	x0, x21
	fdiv	d0, d10, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x24, :lo12:.LC27
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	fcmpe	d9, #0.0
	bgt	.L122
.L104:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC31
	add	x1, x1, :lo12:.LC31
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x24, :got:_ZSt4cout
	ldr	x24, [x24, :got_lo12:_ZSt4cout]
	adrp	x21, .LC32
	add	x21, x21, :lo12:.LC32
	mov	w28, -75
	.p2align 3,,7
.L106:
	ldr	x2, [x23]
	mov	x0, x24
	ldr	w1, [x20]
	ldr	x3, [x2, -24]
	add	x3, x23, x3
	ldr	w2, [x3, 24]
	and	w2, w2, w28
	orr	w2, w2, 8
	str	w2, [x3, 24]
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x21
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x20, x20, 4
	cmp	x20, x26
	bne	.L106
	ldr	x2, [x23]
	mov	w4, -75
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC17
	ldr	x3, [x2, -24]
	add	x1, x1, :lo12:.LC17
	add	x3, x23, x3
	ldr	w2, [x3, 24]
	and	w2, w2, w4
	orr	w2, w2, 2
	str	w2, [x3, 24]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE6:
	add	x0, sp, 64
	bl	_ZNSt6vectorIjSaIjEED1Ev
	ldr	x0, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1272]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L149
	add	sp, sp, 1280
	.cfi_remember_state
	.cfi_def_cfa_offset 128
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldr	d10, [sp, 112]
	ldp	x29, x30, [sp], 128
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
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L147:
	.cfi_restore_state
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 200]
	add	x1, sp, 192
	mov	x4, x0
	mov	x0, x1
	str	x1, [sp, 24]
	add	x1, sp, 224
	mov	x3, x19
	str	x1, [sp, 16]
	mov	x1, 0
.LEHB7:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE7:
	b	.L96
.L57:
	ldr	x1, [x22, 16]
	mov	x2, x26
	mov	x0, x21
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE8:
	ldr	w22, [x20]
	ldr	x19, [sp, 352]
	str	wzr, [x20]
	mov	x1, x24
	mov	w2, 10
	mov	x0, x19
	bl	__isoc23_strtoul
	ldr	x1, [sp, 64]
	cmp	x19, x1
	beq	.L167
	ldr	w1, [x20]
	cmp	w1, 34
	beq	.L168
	cbnz	w1, .L65
	str	w22, [x20]
.L65:
	fmov	s8, w0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L51
.L122:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC29
	mov	x2, 31
	add	x1, x1, :lo12:.LC29
.LEHB9:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d8, d9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC30
	add	x1, x1, :lo12:.LC30
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE9:
	b	.L104
.L114:
	mov	x0, 16960
	add	x21, sp, 352
	movk	x0, 0xf, lsl 16
	str	x0, [sp, 8]
	b	.L151
.L163:
	ldrb	w1, [sp, 304]
	strb	w1, [x0]
	ldr	x0, [sp, 96]
	ldr	x2, [sp, 296]
	b	.L80
.L165:
	add	x0, sp, 224
	str	x0, [sp, 16]
	b	.L99
.L101:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x28
	mov	x1, 225833675390976
	scvtf	d8, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	fdiv	d8, d8, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	b	.L112
.L166:
	ldr	x0, [sp, 16]
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L99
.L157:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	add	x20, sp, 256
.LEHB10:
	bl	_ZSt16__throw_bad_castv
.LEHE10:
.L156:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.LEHB11:
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE11:
.L159:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x1, [sp, 1272]
	ldr	x2, [x23]
	subs	x1, x1, x2
	mov	x2, 0
	bne	.L149
	mov	x2, x0
	adrp	x1, .LC6
	adrp	x0, .LC7
	mov	x3, x19
	add	x1, x1, :lo12:.LC6
	add	x0, x0, :lo12:.LC7
.LEHB12:
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE12:
.L155:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.LEHB13:
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE13:
.L164:
	add	x0, sp, 224
	str	x0, [sp, 16]
	b	.L97
.L168:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.LEHB14:
	bl	_ZSt20__throw_out_of_rangePKc
.L116:
	mov	x1, x0
	mov	x0, x20
	mov	x20, x1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L153:
	add	x0, sp, 160
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 24]
	add	x0, sp, 224
	str	x0, [sp, 16]
.L108:
	ldr	x0, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	beq	.L111
.L149:
	bl	__stack_chk_fail
.L167:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE14:
.L120:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L67
	str	w25, [x20]
.L67:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 1272]
	ldr	x1, [x23]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L149
	mov	x0, x19
.LEHB15:
	bl	_Unwind_Resume
.L121:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L67
	str	w22, [x20]
	b	.L67
.L118:
	mov	x1, x0
	mov	x0, x20
	mov	x20, x1
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L153
.L117:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	mov	x20, x0
	b	.L108
.L119:
	mov	x20, x0
	add	x0, sp, 64
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	bl	_ZNSt6vectorIjSaIjEED1Ev
	b	.L108
.L111:
	mov	x0, x20
	bl	_Unwind_Resume
.LEHE15:
	.cfi_endproc
.LFE3125:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3125:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3125-.LLSDACSB3125
.LLSDACSB3125:
	.uleb128 .LEHB0-.LFB3125
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3125
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L117-.LFB3125
	.uleb128 0
	.uleb128 .LEHB2-.LFB3125
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L116-.LFB3125
	.uleb128 0
	.uleb128 .LEHB3-.LFB3125
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L117-.LFB3125
	.uleb128 0
	.uleb128 .LEHB4-.LFB3125
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L118-.LFB3125
	.uleb128 0
	.uleb128 .LEHB5-.LFB3125
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L117-.LFB3125
	.uleb128 0
	.uleb128 .LEHB6-.LFB3125
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L119-.LFB3125
	.uleb128 0
	.uleb128 .LEHB7-.LFB3125
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L117-.LFB3125
	.uleb128 0
	.uleb128 .LEHB8-.LFB3125
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3125
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L119-.LFB3125
	.uleb128 0
	.uleb128 .LEHB10-.LFB3125
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L116-.LFB3125
	.uleb128 0
	.uleb128 .LEHB11-.LFB3125
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L120-.LFB3125
	.uleb128 0
	.uleb128 .LEHB12-.LFB3125
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L116-.LFB3125
	.uleb128 0
	.uleb128 .LEHB13-.LFB3125
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L120-.LFB3125
	.uleb128 0
	.uleb128 .LEHB14-.LFB3125
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L121-.LFB3125
	.uleb128 0
	.uleb128 .LEHB15-.LFB3125
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3125:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC33:
	.word	0
	.word	1
	.word	2
	.word	3
	.align	4
.LC34:
	.word	4
	.word	5
	.word	6
	.word	7
	.align	4
.LC35:
	.word	8
	.word	9
	.word	10
	.word	11
	.align	4
.LC36:
	.word	12
	.word	13
	.word	14
	.word	15
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
