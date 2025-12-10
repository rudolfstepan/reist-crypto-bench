	.arch armv8-a
	.file	"bench_chacha_reist.cpp"
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
.LFB3434:
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
.LFE3434:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3435:
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
.LFE3435:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.align	2
	.p2align 4,,11
	.global	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, %function
_Z16chacha_block_stdPjPKj:
.LFB2759:
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
.LFE2759:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.align	2
	.p2align 4,,11
	.global	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, %function
_Z18chacha_block_reistPjPKj:
.LFB3432:
	.cfi_startproc
	b	_Z16chacha_block_stdPjPKj
	.cfi_endproc
.LFE3432:
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
.LFB3070:
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
.LFE3070:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"stoi"
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
	.string	"ChaCha20 REIST Benchmark\n"
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
	.string	"\n--- Modular Addition (32-bit) ---\n"
	.align	3
.LC23:
	.string	"std_add    : "
	.align	3
.LC24:
	.string	" s\n"
	.align	3
.LC25:
	.string	"reist_add32: "
	.align	3
.LC26:
	.string	"Speed ratio: "
	.align	3
.LC27:
	.string	"x (std / REIST)\n"
	.align	3
.LC28:
	.string	"\n--- ChaCha20-like Cipher-Speed ---\n"
	.align	3
.LC29:
	.string	"Classic : "
	.align	3
.LC30:
	.string	" s ("
	.align	3
.LC31:
	.string	" MB/s)\n"
	.align	3
.LC32:
	.string	"REIST   : "
	.align	3
.LC33:
	.string	"x (classic / REIST)\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB2762:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2762
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
	sub	sp, sp, #1232
	.cfi_def_cfa_offset 1360
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
	str	x0, [sp, 1224]
	mov	x0, 0
	cmp	w19, 1
	ble	.L116
	mov	x22, x1
	add	x24, sp, 32
	ldr	x1, [x1, 8]
	add	x21, sp, 312
	mov	x2, x24
	mov	x0, x21
	add	x23, sp, 40
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	bl	__errno_location
	mov	x20, x0
	ldr	x26, [sp, 312]
	mov	x1, x23
	ldr	w25, [x0]
	mov	w2, 10
	str	wzr, [x20]
	mov	x0, x26
	bl	__isoc23_strtol
	mov	x28, x0
	ldr	x1, [sp, 40]
	cmp	x26, x1
	beq	.L157
	ldr	w0, [x20]
	cmp	w0, 34
	beq	.L52
	mov	x2, 2147483648
	add	x2, x28, x2
	mov	x1, 4294967295
	cmp	x2, x1
	bhi	.L52
	cbnz	w0, .L55
	str	w25, [x20]
.L55:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 2
	bne	.L158
.L49:
	add	x7, sp, 64
	add	x6, sp, 96
	add	x5, sp, 128
	add	x4, sp, 160
	add	x3, sp, 192
	adrp	x1, .LC3
	add	x25, sp, 112
	add	x1, x1, :lo12:.LC3
	add	x22, sp, 144
	add	x19, sp, 176
	mov	x0, x21
	mov	w2, 8
	str	x7, [sp, 8]
	stp	x7, xzr, [sp, 48]
	strb	wzr, [sp, 64]
	stp	x6, xzr, [sp, 80]
	strb	wzr, [sp, 96]
	stp	x5, xzr, [sp, 112]
	strb	wzr, [sp, 128]
	stp	x4, xzr, [sp, 144]
	strb	wzr, [sp, 160]
	stp	x3, xzr, [sp, 176]
	strb	wzr, [sp, 192]
.LEHB1:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE1:
	adrp	x26, .LC4
	add	x26, x26, :lo12:.LC4
	add	x1, sp, 224
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	stp	x0, x1, [sp, 16]
	stp	x1, xzr, [sp, 208]
	strb	wzr, [sp, 224]
.L69:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	.p2align 3,,7
.L87:
	ldr	x0, [sp, 312]
	ldr	x0, [x0, -24]
	add	x0, x21, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L159
	ldrb	w0, [x19, 56]
	cbz	w0, .L90
	ldrb	w2, [x19, 67]
.L91:
	add	x20, sp, 208
	mov	x24, x25
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
	bne	.L160
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
	ldr	x19, [sp, 216]
	add	x0, x0, 2
	cmp	x0, x19
	bhi	.L161
	ldr	x1, [sp, 208]
	sub	x19, x19, x0
	add	x22, sp, 256
	str	x19, [sp, 40]
	str	x22, [sp, 240]
	add	x23, sp, 240
	add	x27, x1, x0
	cmp	x19, 15
	bhi	.L162
	cmp	x19, 1
	bne	.L75
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 256]
.L77:
	mov	x0, x22
	str	x19, [sp, 248]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 240]
	ldr	x0, [sp, 48]
	cmp	x1, x22
	beq	.L163
.L78:
	ldr	x2, [sp, 8]
	ldr	q0, [sp, 248]
	cmp	x0, x2
	beq	.L164
	str	x1, [sp, 48]
	ldr	x1, [sp, 64]
	str	q0, [sp, 56]
	cbz	x0, .L85
	str	x0, [sp, 240]
	str	x1, [sp, 256]
.L84:
	str	xzr, [sp, 248]
	strb	wzr, [x0]
	ldr	x0, [sp, 240]
	cmp	x0, x22
	beq	.L70
	ldr	x1, [sp, 256]
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
	add	x23, sp, 240
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x8, x23
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	x1, x23
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L69
	.p2align 2,,3
.L90:
	mov	x24, x25
	add	x20, sp, 208
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	ldr	x0, [sp, 16]
	cmp	x3, x0
	beq	.L91
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
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
.L162:
	mov	x0, x23
	mov	x24, x25
	add	x1, sp, 40
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE2:
	ldr	x1, [sp, 40]
	str	x0, [sp, 240]
	str	x1, [sp, 256]
.L74:
	mov	x2, x19
	mov	x1, x27
	bl	memcpy
	ldr	x19, [sp, 40]
	str	x19, [sp, 248]
	ldr	x0, [sp, 240]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 240]
	ldr	x0, [sp, 48]
	cmp	x1, x22
	bne	.L78
.L163:
	ldr	x2, [sp, 248]
	cbz	x2, .L80
	cmp	x2, 1
	beq	.L165
	mov	x1, x22
	bl	memcpy
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 248]
.L80:
	str	x2, [sp, 56]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 240]
	b	.L84
	.p2align 2,,3
.L164:
	str	x1, [sp, 48]
	str	q0, [sp, 56]
.L85:
	str	x22, [sp, 240]
	add	x22, sp, 256
	mov	x0, x22
	b	.L84
	.p2align 2,,3
.L160:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x1, .LC9
	add	x25, sp, 112
	add	x22, sp, 144
	add	x19, sp, 176
	mov	x0, x21
	add	x1, x1, :lo12:.LC9
	mov	w2, 8
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	ldr	x2, [sp, 24]
	mov	x1, x20
	mov	x0, x21
	stp	x2, xzr, [sp, 208]
	strb	wzr, [sp, 224]
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE4:
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L94
	adrp	x1, .LC10
	mov	x0, x20
	add	x1, x1, :lo12:.LC10
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	bne	.L150
	add	x25, sp, 112
.L94:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	add	x19, sp, 968
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x22, sp, 144
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L166
.L96:
	adrp	x1, .LC11
	adrp	x0, .LC12
	add	x1, x1, :lo12:.LC11
	add	x0, x0, :lo12:.LC12
	add	x19, sp, 176
.LEHB5:
	bl	popen
	mov	x20, x0
	cbz	x0, .L97
	add	x23, sp, 840
	add	x19, sp, 176
	mov	x0, x23
	mov	x2, x20
	mov	w1, 128
	bl	fgets
	cbz	x0, .L99
	mov	x1, x23
	add	x19, sp, 176
	add	x2, sp, 40
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	mov	x1, x21
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 184]
	cbnz	x0, .L167
.L99:
	mov	x0, x20
	bl	pclose
.L97:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x23, .LC13
	add	x1, x23, :lo12:.LC13
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
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x23, :lo12:.LC13
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC15
	add	x1, x1, :lo12:.LC15
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC16
	mov	x2, 12
	add	x1, x1, :lo12:.LC16
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 144]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x20, .LC17
	add	x1, x20, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC18
	mov	x2, 6
	add	x1, x1, :lo12:.LC18
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 176]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x20, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC19
	mov	x2, 13
	add	x1, x1, :lo12:.LC19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x20, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC20
	mov	x2, 11
	add	x1, x1, :lo12:.LC20
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 80]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x20, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC21
	mov	x2, 10
	add	x1, x1, :lo12:.LC21
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 112]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x20, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x23, :lo12:.LC13
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x20, x0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x20
	mov	x1, 225833675390976
	scvtf	d9, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	fdiv	d9, d9, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x20, x0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x1, x0, x20
	mov	x2, 225833675390976
	scvtf	d8, x1
	movk	x2, 0x41cd, lsl 48
	fmov	d0, x2
	adrp	x1, .LC22
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x1, :lo12:.LC22
	fdiv	d8, d8, d0
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC23
	mov	x2, 13
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x20, .LC24
	add	x1, x20, :lo12:.LC24
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	mov	x2, 13
	add	x1, x1, :lo12:.LC25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x20, :lo12:.LC24
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	fcmpe	d8, #0.0
	bgt	.L123
.L102:
	adrp	x0, .LC34
	ldr	q0, [x0, #:lo12:.LC34]
	adrp	x0, .LC35
	ldr	q2, [x0, #:lo12:.LC35]
	adrp	x0, .LC36
	ldr	q1, [x0, #:lo12:.LC36]
	adrp	x0, .LC37
	stp	q0, q2, [sp, 240]
	ldr	q0, [x0, #:lo12:.LC37]
	str	q1, [sp, 272]
	str	q0, [sp, 288]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	cmp	w28, 0
	ble	.L104
	add	x23, sp, 240
	mov	w20, 0
	.p2align 3,,7
.L105:
	mov	x1, x23
	mov	x0, x21
	mov	w26, w20
	bl	_Z16chacha_block_stdPjPKj
	add	w20, w20, 1
	cmp	w28, w20
	bne	.L105
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x24
	mov	x1, 225833675390976
	mov	w20, 0
	scvtf	d9, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	fdiv	d9, d9, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	.p2align 3,,7
.L106:
	mov	x1, x23
	mov	x0, x21
	bl	_Z16chacha_block_stdPjPKj
	cmp	w20, w26
	add	w20, w20, 1
	bne	.L106
.L113:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x1, x0, x24
	mov	x2, 225833675390976
	scvtf	d10, w28
	scvtf	d8, x1
	movk	x2, 0x41cd, lsl 48
	fmov	d0, x2
	mov	x1, 4634204016564240384
	fmov	d1, x1
	adrp	x1, .LC28
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	fmul	d10, d10, d1
	fdiv	d8, d8, d0
	add	x1, x1, :lo12:.LC28
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC29
	mov	x2, 10
	add	x1, x1, :lo12:.LC29
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x23, .LC30
	mov	x20, x0
	add	x1, x23, :lo12:.LC30
	mov	x2, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d10, d9
	mov	x1, 145685290680320
	movk	x1, 0x412e, lsl 48
	fmov	d1, x1
	mov	x0, x20
	fdiv	d0, d0, d1
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x21, .LC31
	add	x1, x21, :lo12:.LC31
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC32
	mov	x2, 10
	add	x1, x1, :lo12:.LC32
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x23, :lo12:.LC30
	mov	x20, x0
	mov	x2, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d10, d10, d8
	mov	x1, 145685290680320
	movk	x1, 0x412e, lsl 48
	fmov	d0, x1
	mov	x0, x20
	fdiv	d0, d10, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x21, :lo12:.LC31
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	fcmpe	d8, #0.0
	bgt	.L124
	b	.L107
.L124:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 13
	add	x1, x1, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d9, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC33
	add	x1, x1, :lo12:.LC33
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.L107:
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x25
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1224]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L153
	add	sp, sp, 1232
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
.L166:
	.cfi_restore_state
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 152]
	add	x22, sp, 144
	mov	x3, x19
	mov	x4, x0
	add	x19, sp, 176
	mov	x0, x22
	mov	x1, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE5:
	b	.L96
.L167:
	ldr	x2, [sp, 176]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	bne	.L99
	mov	x0, x19
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L99
.L158:
	ldr	x1, [x22, 16]
	mov	x2, x24
	mov	x0, x21
.LEHB6:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE6:
	ldr	w22, [x20]
	ldr	x19, [sp, 312]
	str	wzr, [x20]
	mov	x1, x23
	mov	w2, 10
	mov	x0, x19
	bl	__isoc23_strtoul
	ldr	x0, [sp, 40]
	cmp	x19, x0
	beq	.L168
	ldr	w0, [x20]
	cmp	w0, 34
	beq	.L169
	cbnz	w0, .L65
	str	w22, [x20]
.L65:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L49
.L116:
	mov	w28, 16960
	add	x21, sp, 312
	movk	w28, 0xf, lsl 16
	b	.L49
.L123:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 13
	add	x1, x1, :lo12:.LC26
.LEHB7:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d9, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE7:
	b	.L102
.L165:
	ldrb	w1, [sp, 256]
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 248]
	b	.L80
.L150:
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x23, sp, 240
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x23
	mov	x0, x20
	mov	x2, -1
.LEHB8:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE8:
	mov	x1, x23
	add	x25, sp, 112
	mov	x0, x25
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L94
.L104:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x24
	mov	x1, 225833675390976
	scvtf	d9, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	fdiv	d9, d9, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	b	.L113
.L159:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	add	x20, sp, 208
.LEHB9:
	bl	_ZSt16__throw_bad_castv
.L161:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x1, [sp, 1224]
	ldr	x2, [x24]
	subs	x1, x1, x2
	mov	x2, 0
	bne	.L153
	mov	x2, x0
	adrp	x1, .LC6
	adrp	x0, .LC7
	mov	x3, x19
	add	x1, x1, :lo12:.LC6
	add	x0, x0, :lo12:.LC7
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE9:
.L168:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.LEHB10:
	bl	_ZSt24__throw_invalid_argumentPKc
.L169:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE10:
.L157:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.LEHB11:
	bl	_ZSt24__throw_invalid_argumentPKc
.L118:
	mov	x1, x0
	add	x25, sp, 112
	add	x22, sp, 144
	add	x19, sp, 176
	mov	x0, x20
	mov	x20, x1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L110:
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x25
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	beq	.L112
.L153:
	bl	__stack_chk_fail
.L52:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE11:
.L121:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L67
	str	w25, [x20]
.L67:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 1224]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L153
	mov	x0, x19
.LEHB12:
	bl	_Unwind_Resume
.L120:
	mov	x1, x0
	mov	x0, x20
	mov	x20, x1
	add	x25, sp, 112
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	add	x22, sp, 144
	add	x19, sp, 176
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L110
.L122:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L67
	str	w22, [x20]
	b	.L67
.L119:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x20, x0
	b	.L110
.L112:
	mov	x0, x20
	bl	_Unwind_Resume
.LEHE12:
	.cfi_endproc
.LFE2762:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2762:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2762-.LLSDACSB2762
.LLSDACSB2762:
	.uleb128 .LEHB0-.LFB2762
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2762
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L119-.LFB2762
	.uleb128 0
	.uleb128 .LEHB2-.LFB2762
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L118-.LFB2762
	.uleb128 0
	.uleb128 .LEHB3-.LFB2762
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L119-.LFB2762
	.uleb128 0
	.uleb128 .LEHB4-.LFB2762
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L120-.LFB2762
	.uleb128 0
	.uleb128 .LEHB5-.LFB2762
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L119-.LFB2762
	.uleb128 0
	.uleb128 .LEHB6-.LFB2762
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2762
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L119-.LFB2762
	.uleb128 0
	.uleb128 .LEHB8-.LFB2762
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L120-.LFB2762
	.uleb128 0
	.uleb128 .LEHB9-.LFB2762
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L118-.LFB2762
	.uleb128 0
	.uleb128 .LEHB10-.LFB2762
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L122-.LFB2762
	.uleb128 0
	.uleb128 .LEHB11-.LFB2762
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L121-.LFB2762
	.uleb128 0
	.uleb128 .LEHB12-.LFB2762
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE2762:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC34:
	.word	0
	.word	-1640531527
	.word	1013904242
	.word	-626627285
	.align	4
.LC35:
	.word	2027808484
	.word	387276957
	.word	-1253254570
	.word	1401181199
	.align	4
.LC36:
	.word	-239350328
	.word	-1879881855
	.word	774553914
	.word	-865977613
	.align	4
.LC37:
	.word	1788458156
	.word	147926629
	.word	-1492604898
	.word	1161830871
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
