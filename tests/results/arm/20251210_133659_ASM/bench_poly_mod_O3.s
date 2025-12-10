	.arch armv8-a
	.file	"bench_poly_mod.cpp"
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
.LFB5248:
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
.LFE5248:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB5250:
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
.LFE5250:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4261:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4261
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 16
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x2
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x0
	mov	x21, x3
	stp	x23, x24, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	w23, w4
	mov	x24, x1
	str	x25, [sp, 80]
	.cfi_offset 25, -16
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [x5]
	str	x0, [sp, 8]
	mov	x0, 0
	bl	__errno_location
	mov	x19, x0
	mov	w2, w23
	mov	x1, sp
	mov	x0, x20
	ldr	w23, [x19]
	str	wzr, [x19]
.LEHB0:
	blr	x22
	ldr	x2, [sp]
	cmp	x2, x20
	beq	.L48
	ldr	w3, [x19]
	cmp	w3, 34
	beq	.L29
	mov	x1, 2147483648
	add	x1, x0, x1
	mov	x4, 4294967295
	cmp	x1, x4
	bhi	.L29
	cbz	x21, .L32
	sub	x2, x2, x20
	str	x2, [x21]
.L32:
	cbz	w3, .L49
.L26:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L47
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldr	x25, [sp, 80]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L49:
	.cfi_restore_state
	str	w23, [x19]
	b	.L26
.L29:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L47
	mov	x0, x24
	bl	_ZSt20__throw_out_of_rangePKc
.L48:
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L47
	mov	x0, x24
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE0:
.L38:
	ldr	w1, [x19]
	cbz	w1, .L50
.L35:
	ldr	x1, [sp, 8]
	ldr	x2, [x25]
	subs	x1, x1, x2
	mov	x2, 0
	beq	.L36
.L47:
	bl	__stack_chk_fail
.L50:
	str	w23, [x19]
	b	.L35
.L36:
.LEHB1:
	bl	_Unwind_Resume
.LEHE1:
	.cfi_endproc
.LFE4261:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4261:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4261-.LLSDACSB4261
.LLSDACSB4261:
	.uleb128 .LEHB0-.LFB4261
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB4261
	.uleb128 0
	.uleb128 .LEHB1-.LFB4261
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4261:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
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
.LFB4567:
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
	cbz	x1, .L64
	mov	x21, x1
	mov	x0, x1
	bl	strlen
	str	x0, [sp]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L65
	cmp	x0, 1
	bne	.L56
	ldrb	w0, [x21]
	strb	w0, [x20, 16]
.L57:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x19, [x20, 8]
	strb	wzr, [x22, x19]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L63
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
.L56:
	.cfi_restore_state
	cbz	x0, .L57
	b	.L55
	.p2align 2,,3
.L65:
	mov	x1, sp
	mov	x0, x20
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	ldr	x1, [sp]
	mov	x22, x0
	str	x0, [x20]
	str	x1, [x20, 16]
.L55:
	mov	x2, x19
	mov	x0, x22
	mov	x1, x21
	bl	memcpy
	ldr	x22, [x20]
	ldr	x19, [sp]
	b	.L57
.L63:
	bl	__stack_chk_fail
.L64:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L63
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE4567:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, %function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB4611:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L66
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L66:
	ret
	.cfi_endproc
.LFE4611:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.rodata._ZNSt6vectorIiSaIiEEC2EmRKS0_.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, %function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB4655:
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
	bhi	.L78
	stp	xzr, xzr, [x19]
	mov	x20, x1
	str	xzr, [x19, 16]
	cbz	x1, .L79
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
	beq	.L77
	cmp	x21, x0
	beq	.L72
	sub	x2, x22, #4
	mov	w1, 0
	bl	memset
.L72:
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
.L79:
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
.L77:
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
.L78:
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
.LFE4655:
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.rodata._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, %function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB5040:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	mov	x0, 2305843009213693951
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x23, x21, [x20]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	sub	x3, x21, x23
	asr	x3, x3, 2
	cmp	x3, x0
	beq	.L102
	mov	x25, x1
	mov	x22, x2
	sub	x26, x1, x23
	cmp	x23, x21
	beq	.L103
	lsl	x1, x3, 1
	cmp	x3, x1
	bhi	.L95
	cbnz	x1, .L104
	mov	x24, 0
	ldr	w0, [x22]
	add	x22, x26, 4
	sub	x21, x21, x25
	add	x22, x24, x22
	str	w0, [x24, x26]
	add	x27, x22, x21
	mov	x19, 0
	cmp	x26, 0
	bgt	.L105
.L87:
	cmp	x21, 0
	bgt	.L91
.L90:
	cbnz	x23, .L89
.L92:
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	stp	x24, x27, [x20]
	str	x19, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
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
	.p2align 2,,3
.L95:
	.cfi_restore_state
	mov	x19, 9223372036854775804
.L85:
	mov	x0, x19
	bl	_Znwm
	mov	x24, x0
	add	x19, x0, x19
	ldr	w0, [x22]
	add	x22, x26, 4
	sub	x21, x21, x25
	add	x22, x24, x22
	str	w0, [x24, x26]
	add	x27, x22, x21
	cmp	x26, 0
	ble	.L87
.L105:
	mov	x2, x26
	mov	x1, x23
	mov	x0, x24
	bl	memmove
	cmp	x21, 0
	bgt	.L106
.L89:
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L92
	.p2align 2,,3
.L91:
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	memcpy
	b	.L90
	.p2align 2,,3
.L103:
	adds	x3, x3, 1
	bcs	.L95
	cmp	x3, x0
	csel	x19, x3, x0, ls
	lsl	x19, x19, 2
	b	.L85
	.p2align 2,,3
.L106:
	mov	x1, x25
	mov	x2, x21
	mov	x0, x22
	bl	memcpy
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L92
.L104:
	cmp	x1, x0
	csel	x1, x1, x0, ls
	lsl	x19, x1, 2
	b	.L85
.L102:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE5040:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5168:
	.cfi_startproc
	adrp	x2, .LC4
	adrp	x1, .LC3
	add	x5, x0, 1816
	ldr	q5, [x2, #:lo12:.LC4]
	adrp	x2, .LC5
	ldr	q6, [x1, #:lo12:.LC3]
	add	x1, x0, 8
	ldr	q4, [x2, #:lo12:.LC5]
	adrp	x2, .LC6
	ldr	q3, [x2, #:lo12:.LC6]
	.p2align 3,,7
.L108:
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
	bne	.L108
	ldr	x2, [x0, 1808]
	adrp	x7, .LC3
	ldr	x1, [x0, 1816]
	add	x6, x0, 1824
	ldr	x4, [x0, 4984]
	mov	x3, 0
	ldr	q6, [x7, #:lo12:.LC3]
	fmov	x7, d3
	bfi	x2, x1, 0, 31
	sbfx	x1, x1, 0, 1
	eor	x2, x4, x2, lsr 1
	adrp	x4, .LC5
	and	x1, x1, x7
	adrp	x7, .LC4
	eor	x1, x1, x2
	adrp	x2, .LC6
	ldr	q5, [x7, #:lo12:.LC4]
	str	x1, [x0, 1808]
	ldr	q4, [x4, #:lo12:.LC5]
	ldr	q3, [x2, #:lo12:.LC6]
.L109:
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
	bne	.L109
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
.LFE5168:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, %function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB5257:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	sxtw	x2, w2
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	w20, w1
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	sub	x24, x2, w1, sxtw
	mov	x23, x0
	mov	x1, 4294967294
	cmp	x24, x1
	bls	.L130
	mov	x1, 4294967295
	cmp	x24, x1
	beq	.L119
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x22, 22144
	movk	x22, 0x9d2c, lsl 16
	mov	x21, 4022730752
.L123:
	mov	w1, 0
	mov	x0, x23
	mov	w2, -1
	bl	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	ldr	x1, [x23, 4992]
	lsl	x19, x0, 32
	cmp	x1, 623
	bls	.L120
	mov	x0, x23
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x1, [x23, 4992]
.L120:
	add	x0, x1, 1
	ldr	x1, [x23, x1, lsl 3]
	str	x0, [x23, 4992]
	ubfx	x0, x1, 11, 32
	eor	x1, x1, x0
	and	x0, x22, x1, lsl 7
	eor	x1, x1, x0
	and	x0, x21, x1, lsl 15
	eor	x1, x1, x0
	eor	x1, x1, x1, lsr 18
	adds	x19, x19, x1
	ccmp	x24, x19, 0, cc
	bcc	.L123
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	add	w0, w20, w19
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L130:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	ldr	x1, [x0, 4992]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	add	x24, x24, 1
	cmp	x1, 623
	bhi	.L131
.L114:
	ldr	x19, [x23, x1, lsl 3]
	add	x0, x1, 1
	mov	x21, 22144
	mov	x22, 4022730752
	movk	x21, 0x9d2c, lsl 16
	str	x0, [x23, 4992]
	ubfx	x1, x19, 11, 32
	eor	x19, x19, x1
	and	x1, x21, x19, lsl 7
	eor	x19, x19, x1
	and	x1, x22, x19, lsl 15
	eor	x19, x19, x1
	eor	x19, x19, x19, lsr 18
	mul	x19, x19, x24
	cmp	w24, w19
	bls	.L115
	neg	w1, w24
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	udiv	w25, w1, w24
	msub	w25, w25, w24, w1
	cmp	w19, w25
	bcc	.L117
	b	.L129
	.p2align 2,,3
.L116:
	ldr	x19, [x23, x1, lsl 3]
	add	x0, x1, 1
	str	x0, [x23, 4992]
	ubfx	x1, x19, 11, 32
	eor	x19, x19, x1
	and	x1, x21, x19, lsl 7
	eor	x19, x19, x1
	and	x1, x22, x19, lsl 15
	eor	x19, x19, x1
	eor	x19, x19, x19, lsr 18
	mul	x19, x19, x24
	cmp	w25, w19
	bls	.L129
.L117:
	mov	x1, x0
	cmp	x0, 623
	bls	.L116
	mov	x0, x23
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x1, [x23, 4992]
	b	.L116
	.p2align 2,,3
.L129:
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L115:
	lsr	x19, x19, 32
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	add	w0, w20, w19
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L119:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	ldr	x1, [x0, 4992]
	cmp	x1, 623
	bhi	.L132
.L124:
	ldr	x19, [x23, x1, lsl 3]
	add	x1, x1, 1
	str	x1, [x23, 4992]
	mov	x2, 22144
	movk	x2, 0x9d2c, lsl 16
	mov	x0, 4022730752
	ubfx	x1, x19, 11, 32
	eor	x19, x19, x1
	ldp	x23, x24, [sp, 48]
	and	x1, x2, x19, lsl 7
	eor	x19, x19, x1
	and	x0, x0, x19, lsl 15
	eor	x19, x19, x0
	eor	x19, x19, x19, lsr 18
	add	w0, w20, w19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L131:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x1, [x23, 4992]
	b	.L114
	.p2align 2,,3
.L132:
	.cfi_restore 21
	.cfi_restore 22
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x1, [x23, 4992]
	b	.L124
	.cfi_endproc
.LFE5257:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC7:
	.string	"stoi"
	.align	3
.LC9:
	.string	"/proc/cpuinfo"
	.align	3
.LC10:
	.string	"model name"
	.align	3
.LC11:
	.string	":"
	.align	3
.LC12:
	.string	"basic_string::substr"
	.align	3
.LC13:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC14:
	.string	"cpu MHz"
	.align	3
.LC15:
	.string	"/proc/meminfo"
	.align	3
.LC16:
	.string	"MemTotal"
	.align	3
.LC17:
	.string	"r"
	.align	3
.LC18:
	.string	"uname -o"
	.align	3
.LC19:
	.string	"========================================\n"
	.align	3
.LC20:
	.string	"Polynomial Modular Add Benchmark (NTRU-style, large q)\n"
	.align	3
.LC21:
	.string	"System Information:\n"
	.align	3
.LC22:
	.string	"  Hostname: "
	.align	3
.LC23:
	.string	"\n"
	.align	3
.LC24:
	.string	"  OS: "
	.align	3
.LC25:
	.string	"  CPU Model: "
	.align	3
.LC26:
	.string	"  CPU MHz: "
	.align	3
.LC27:
	.string	"  Memory: "
	.align	3
.LC28:
	.string	"========================================\n\n"
	.align	3
.LC29:
	.string	"N = "
	.align	3
.LC30:
	.string	", reps = "
	.align	3
.LC31:
	.string	"\n\n"
	.align	3
.LC32:
	.string	"results_poly_mod.csv"
	.align	3
.LC33:
	.string	"ERROR: could not open results_poly_mod.csv for writing\n"
	.align	3
.LC34:
	.string	"q,N,reps,classic,reist,speedup\n"
	.align	3
.LC35:
	.string	"q = "
	.align	3
.LC36:
	.string	"  classic : "
	.align	3
.LC37:
	.string	" s\n"
	.align	3
.LC38:
	.string	"  REIST   : "
	.align	3
.LC39:
	.string	"  speedup : "
	.align	3
.LC40:
	.string	"x\n\n"
	.align	3
.LC41:
	.string	","
	.align	3
.LC42:
	.string	"CSV written to results_poly_mod.csv\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB4216:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4216
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x13, 6384
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	d8, d9, [sp, 96]
	stp	d10, d11, [sp, 112]
	sub	sp, sp, x13
	.cfi_def_cfa_offset 6512
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	.cfi_offset 74, -16
	.cfi_offset 75, -8
	str	xzr, [sp, 1024]
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	mov	w19, w0
	mov	w21, 50000
	ldr	x0, [x2]
	str	x0, [sp, 6376]
	mov	x0, 0
	stp	xzr, xzr, [sp, 144]
	mov	w0, 1024
	str	w0, [sp, 12]
	str	xzr, [sp, 160]
	cmp	w19, 1
	bgt	.L280
.L134:
	mov	x0, 16
.LEHB2:
	bl	_Znwm
.LEHE2:
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	add	x20, sp, 992
	str	x27, [sp, 6464]
	.cfi_offset 27, -48
	str	x28, [sp, 6472]
	.cfi_offset 28, -40
	add	x2, x0, 16
	ldp	x4, x5, [x1]
	stp	x4, x5, [x0]
	stp	x0, x2, [sp, 144]
	str	x2, [sp, 160]
.L135:
	mov	x4, 12345
	mov	x2, 35173
	add	x1, x20, 8
	mov	x0, x4
	mov	x3, 1
	movk	x2, 0x6c07, lsl 16
	str	x4, [sp, 992]
	.p2align 3,,7
.L136:
	eor	x0, x0, x0, lsr 30
	madd	w0, w0, w2, w3
	add	x3, x3, 1
	str	x0, [x1], 8
	cmp	x3, 624
	bne	.L136
	add	x4, sp, 336
	add	x9, sp, 368
	add	x2, sp, 304
	add	x8, sp, 256
	add	x7, sp, 288
	add	x6, sp, 320
	add	x5, sp, 352
	stp	x2, x4, [sp, 80]
	add	x4, x9, 16
	add	x0, sp, 240
	add	x1, sp, 272
	add	x28, sp, 464
	mov	w2, 8
	str	x0, [sp, 16]
	mov	x0, x28
	stp	x1, x9, [sp, 64]
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	stp	x8, xzr, [sp, 240]
	strb	wzr, [sp, 256]
	stp	x7, xzr, [sp, 272]
	strb	wzr, [sp, 288]
	stp	x6, xzr, [sp, 304]
	strb	wzr, [sp, 320]
	stp	x5, xzr, [sp, 336]
	strb	wzr, [sp, 352]
	str	x4, [sp, 368]
	str	xzr, [sp, 376]
	strb	wzr, [sp, 384]
	str	x3, [sp, 5984]
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	add	x27, sp, 432
	add	x22, sp, 400
	add	x23, x27, 16
	add	x0, x22, 16
	add	x1, sp, 216
	str	x1, [sp]
	stp	x0, xzr, [sp, 400]
	strb	wzr, [sp, 416]
.L137:
	adrp	x25, _ZNKSt5ctypeIcE8do_widenEc
	add	x25, x25, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	.p2align 3,,7
.L155:
	ldr	x0, [sp, 464]
	ldr	x0, [x0, -24]
	add	x0, x28, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L281
	ldrb	w0, [x19, 56]
	cbz	w0, .L158
	ldrb	w2, [x19, 67]
.L159:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x1, x22
	mov	x0, x28
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L282
	adrp	x1, .LC10
	mov	x0, x22
	add	x1, x1, :lo12:.LC10
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L138
	mov	x2, 0
	mov	x0, x22
	adrp	x1, .LC11
	mov	x3, 1
	add	x1, x1, :lo12:.LC11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x19, [sp, 408]
	add	x2, x0, 2
	cmp	x2, x19
	bhi	.L283
	ldr	x0, [sp, 400]
	sub	x19, x19, x2
	str	x19, [sp, 216]
	str	x23, [sp, 432]
	add	x26, x0, x2
	cmp	x19, 15
	bhi	.L284
	cmp	x19, 1
	beq	.L285
	cbnz	x19, .L286
.L145:
	mov	x0, x23
	str	x19, [sp, 440]
	strb	wzr, [x0, x19]
	ldr	x2, [sp, 432]
	ldr	x0, [sp, 240]
	cmp	x2, x23
	beq	.L287
.L146:
	ldr	x1, [sp, 16]
	add	x3, sp, 640
	add	x1, x1, 16
	ldr	q0, [x3, -200]
	cmp	x0, x1
	beq	.L288
	str	x2, [sp, 240]
	ldr	x1, [sp, 256]
	str	q0, [sp, 248]
	cbz	x0, .L153
	str	x0, [sp, 432]
	str	x1, [sp, 448]
.L152:
	str	xzr, [sp, 440]
	strb	wzr, [x0]
	ldr	x0, [sp, 432]
	cmp	x0, x23
	beq	.L138
	ldr	x1, [sp, 448]
	add	x1, x1, 1
	bl	_ZdlPvm
.L138:
	adrp	x1, .LC14
	mov	x0, x22
	add	x1, x1, :lo12:.LC14
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L155
	mov	x3, 1
	mov	x2, 0
	mov	x0, x22
	add	x19, sp, 432
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x8, x19
	mov	x0, x22
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	ldr	x0, [sp, 64]
	mov	x1, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L137
.L286:
	mov	x0, x23
.L142:
	mov	x2, x19
	mov	x1, x26
	bl	memcpy
	ldr	x19, [sp, 216]
	str	x19, [sp, 440]
	ldr	x0, [sp, 432]
	strb	wzr, [x0, x19]
	ldr	x2, [sp, 432]
	ldr	x0, [sp, 240]
	cmp	x2, x23
	bne	.L146
.L287:
	ldr	x2, [sp, 440]
	cbz	x2, .L148
	cmp	x2, 1
	beq	.L289
	mov	x1, x23
	bl	memcpy
	ldr	x0, [sp, 240]
	ldr	x2, [sp, 440]
.L148:
	str	x2, [sp, 248]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 432]
	b	.L152
	.p2align 2,,3
.L158:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	cmp	x3, x25
	beq	.L159
	mov	w1, w2
	mov	x0, x19
	blr	x3
	and	w2, w0, 255
	b	.L159
.L285:
	ldrb	w0, [x0, x2]
	strb	w0, [sp, 448]
	b	.L145
.L284:
	ldr	x1, [sp]
	mov	x0, x27
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE4:
	ldr	x1, [sp, 216]
	str	x0, [sp, 432]
	str	x1, [sp, 448]
	b	.L142
.L288:
	str	x2, [sp, 240]
	str	q0, [sp, 248]
.L153:
	mov	x0, x23
	str	x23, [sp, 432]
	b	.L152
.L282:
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x28
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x1, .LC15
	mov	x0, x28
	add	x1, x1, :lo12:.LC15
	mov	w2, 8
.LEHB5:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE5:
	add	x2, x22, 16
	mov	x1, x22
	mov	x0, x28
	stp	x2, xzr, [sp, 400]
	strb	wzr, [sp, 416]
.LEHB6:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L162
	adrp	x1, .LC16
	mov	x0, x22
	add	x1, x1, :lo12:.LC16
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L162
	mov	x3, 1
	mov	x2, 0
	mov	x0, x22
	add	x19, sp, 432
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x19
	mov	x0, x22
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE6:
	ldr	x0, [sp, 80]
	mov	x1, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L162:
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x28
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x1, 6120
	add	x19, sp, x1
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L290
.L164:
	adrp	x1, .LC17
	adrp	x0, .LC18
	add	x1, x1, :lo12:.LC17
	add	x0, x0, :lo12:.LC18
.LEHB7:
	bl	popen
	mov	x19, x0
	cbz	x0, .L165
	mov	x0, 5992
	add	x22, sp, x0
	mov	x2, x19
	mov	x0, x22
	mov	w1, 128
	bl	fgets
	cbz	x0, .L167
	mov	x1, x22
	add	x2, sp, 216
	mov	x0, x28
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	ldr	x0, [sp, 72]
	mov	x1, x28
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x28
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x1, [sp, 376]
	cbnz	x1, .L291
.L167:
	mov	x0, x19
	bl	pclose
.L165:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x19, .LC19
	add	x1, x19, :lo12:.LC19
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
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x19, :lo12:.LC19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC21
	add	x1, x1, :lo12:.LC21
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC22
	mov	x2, 12
	add	x1, x1, :lo12:.LC22
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 336]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC24
	mov	x2, 6
	add	x1, x1, :lo12:.LC24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 368]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	mov	x2, 13
	add	x1, x1, :lo12:.LC25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 240]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 11
	add	x1, x1, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 272]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC27
	mov	x2, 10
	add	x1, x1, :lo12:.LC27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 304]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC28
	add	x1, x1, :lo12:.LC28
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC29
	mov	x2, 4
	add	x1, x1, :lo12:.LC29
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	ldr	w1, [sp, 12]
	bl	_ZNSolsEi
	adrp	x1, .LC30
	mov	x19, x0
	add	x1, x1, :lo12:.LC30
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w21
	mov	x0, x19
	bl	_ZNSolsEi
	adrp	x1, .LC31
	add	x1, x1, :lo12:.LC31
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC32
	mov	x0, x28
	add	x1, x1, :lo12:.LC32
	mov	w2, 16
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	ldr	w1, [sp, 752]
	mov	w0, 5
	ands	w0, w1, w0
	str	w0, [sp, 100]
	bne	.L292
	adrp	x1, .LC34
	mov	x0, x28
	add	x1, x1, :lo12:.LC34
.LEHB8:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	ldrsw	x26, [sp, 12]
	add	x19, sp, 216
	add	x0, sp, 168
	mov	x2, x19
	mov	x1, x26
	str	x0, [sp, 104]
	str	x19, [sp, 120]
	bl	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE8:
	add	x0, sp, 192
	mov	x2, x19
	mov	x1, x26
	str	x0, [sp, 112]
.LEHB9:
	bl	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE9:
	add	x2, sp, 136
	mov	x1, x26
	mov	x0, x19
.LEHB10:
	bl	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE10:
	ldp	x0, x1, [sp, 144]
	str	x1, [sp, 48]
	cmp	x1, x0
	beq	.L195
	adrp	x1, :got:_ZSt4cout
	ldr	x1, [x1, :got_lo12:_ZSt4cout]
	mov	w22, 41248
	mov	w23, 24288
	lsl	x26, x26, 2
	str	x0, [sp]
	mov	x0, 225833675390976
	movk	x0, 0x41cd, lsl 48
	movk	w22, 0x7, lsl 16
	movk	w23, 0xfff8, lsl 16
	fmov	d9, x0
	str	x1, [sp, 56]
	.p2align 3,,7
.L194:
	ldr	x0, [sp]
	ldr	w19, [x0]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	ble	.L177
	ldr	x25, [sp, 168]
	mov	x27, 0
	ldr	x24, [sp, 192]
	.p2align 3,,7
.L176:
	mov	w2, w22
	mov	w1, w23
	mov	x0, x20
	bl	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	str	w0, [x25, x27]
	mov	w2, w22
	mov	w1, w23
	mov	x0, x20
	bl	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	str	w0, [x24, x27]
	add	x27, x27, 4
	cmp	x27, x26
	bne	.L176
.L177:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	cmp	w21, 0
	ble	.L293
	ldp	x25, x6, [sp, 168]
	ldr	x5, [sp, 192]
	ldr	x4, [sp, 216]
	sub	x6, x6, x25
	asr	x8, x6, 2
	mov	w6, w8
	cmp	w8, 0
	ble	.L178
	mov	w3, 0
	.p2align 3,,7
.L180:
	mov	x0, 0
	.p2align 3,,7
.L179:
	ldr	w2, [x5, x0, lsl 2]
	ldr	w1, [x25, x0, lsl 2]
	add	w1, w1, w2
	sdiv	w2, w1, w19
	msub	w1, w2, w19, w1
	str	w1, [x4, x0, lsl 2]
	add	x0, x0, 1
	cmp	w6, w0
	bgt	.L179
	add	w3, w3, 1
	cmp	w21, w3
	bne	.L180
	stp	x8, x5, [sp, 24]
	str	x4, [sp, 40]
	str	w6, [sp, 96]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x24
	scvtf	d8, x0
	fdiv	d8, d8, d9
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	ldp	x8, x5, [sp, 24]
	add	w3, w19, w19, lsr 31
	ldr	x4, [sp, 40]
	asr	w7, w3, 1
	ldr	w6, [sp, 96]
	neg	w3, w3, asr 1
	mov	w2, 0
	mov	w11, w8
	cmp	w8, 1
	beq	.L186
	add	x1, x5, 4
	add	x0, x25, 4
	sub	x1, x4, x1
	sub	x0, x4, x0
	cmp	x1, 8
	mov	w2, 0
	ccmp	x0, 8, 0, hi
	bhi	.L294
	.p2align 3,,7
.L186:
	mov	x1, 0
	.p2align 3,,7
.L185:
	ldr	w8, [x25, x1, lsl 2]
	ldr	w0, [x5, x1, lsl 2]
	add	w0, w0, w8
	cmp	w0, w7
	csel	w8, w19, wzr, gt
	cmp	w0, w3
	sub	w0, w0, w8
	csel	w8, w19, wzr, le
	add	w0, w8, w0
	str	w0, [x4, x1, lsl 2]
	add	x1, x1, 1
	cmp	w6, w1
	bgt	.L185
	add	w2, w2, 1
	cmp	w21, w2
	bne	.L186
.L208:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x3, x0, x24
	ldr	x25, [sp, 56]
	scvtf	d10, x3
	adrp	x0, .LC35
	mov	x2, 4
	add	x1, x0, :lo12:.LC35
	mov	x0, x25
	fdiv	d10, d10, d9
	fdiv	d11, d8, d10
.LEHB11:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w19
	mov	x0, x25
	bl	_ZNSolsEi
	adrp	x1, .LC23
	mov	x2, 1
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC36
	mov	x0, x25
	add	x1, x1, :lo12:.LC36
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x24, .LC37
	mov	x2, 3
	add	x1, x24, :lo12:.LC37
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC38
	mov	x0, x25
	add	x1, x1, :lo12:.LC38
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d10
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x24, :lo12:.LC37
	mov	x2, 3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC39
	mov	x0, x25
	add	x1, x1, :lo12:.LC39
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d11
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC40
	mov	x2, 3
	add	x1, x1, :lo12:.LC40
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w19
	mov	x0, x28
	bl	_ZNSolsEi
	adrp	x19, .LC41
	mov	x24, x0
	add	x1, x19, :lo12:.LC41
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [sp, 12]
	mov	x0, x24
	bl	_ZNSolsEi
	mov	x24, x0
	add	x1, x19, :lo12:.LC41
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w21
	mov	x0, x24
	bl	_ZNSolsEi
	mov	x24, x0
	add	x1, x19, :lo12:.LC41
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x24
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x24, x0
	add	x1, x19, :lo12:.LC41
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d10
	mov	x0, x24
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x19, :lo12:.LC41
	mov	x2, 1
	mov	x19, x0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d11
	mov	x0, x19
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC23
	mov	x2, 1
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [sp]
	ldr	x1, [sp, 48]
	add	x0, x0, 4
	str	x0, [sp]
	cmp	x1, x0
	bne	.L194
.L195:
	mov	x0, x28
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC42
	add	x1, x1, :lo12:.LC42
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE11:
	ldr	x0, [sp, 120]
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	x0, [sp, 112]
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	x0, [sp, 104]
	bl	_ZNSt6vectorIiSaIiEED1Ev
.L170:
	mov	x0, x28
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	ldr	x0, [sp, 72]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 88]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 80]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 64]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 144
	bl	_ZNSt6vectorIiSaIiEED1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 6376]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L273
	ldr	x27, [sp, 6464]
	.cfi_remember_state
	.cfi_restore 27
	mov	x13, 6384
	ldr	x28, [sp, 6472]
	.cfi_restore 28
	ldr	w0, [sp, 100]
	add	sp, sp, x13
	.cfi_def_cfa_offset 128
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	d8, d9, [sp, 96]
	ldp	d10, d11, [sp, 112]
	ldp	x29, x30, [sp], 128
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
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L294:
	.cfi_restore_state
	lsr	w2, w8, 2
	and	w9, w8, -4
	sub	w6, w8, #1
	dup	v10.2s, w3
	dup	v6.2s, w19
	dup	v7.2s, w7
	dup	v5.4s, w7
	dup	v4.4s, w3
	dup	v3.4s, w19
	lsl	x2, x2, 4
	sub	w10, w11, w9
	and	w12, w11, 3
	mov	w8, 0
	cmp	w6, 2
	bls	.L295
	.p2align 3,,7
.L184:
	mov	x0, 0
	.p2align 3,,7
.L188:
	ldr	q1, [x5, x0]
	ldr	q0, [x25, x0]
	add	v0.4s, v0.4s, v1.4s
	cmgt	v2.4s, v0.4s, v5.4s
	cmge	v1.4s, v4.4s, v0.4s
	and	v2.16b, v3.16b, v2.16b
	and	v1.16b, v3.16b, v1.16b
	sub	v0.4s, v0.4s, v2.4s
	add	v0.4s, v1.4s, v0.4s
	str	q0, [x4, x0]
	add	x0, x0, 16
	cmp	x2, x0
	bne	.L188
	cbz	w12, .L296
	mov	w1, w10
	cmp	w10, 1
	beq	.L218
	uxtw	x0, w9
	mov	w13, w9
.L183:
	lsl	x0, x0, 2
	ldr	d1, [x25, x0]
	ldr	d0, [x5, x0]
	add	v0.2s, v0.2s, v1.2s
	cmgt	v2.2s, v0.2s, v7.2s
	cmge	v1.2s, v10.2s, v0.2s
	and	v2.8b, v6.8b, v2.8b
	and	v1.8b, v6.8b, v1.8b
	sub	v0.2s, v0.2s, v2.2s
	add	v0.2s, v0.2s, v1.2s
	str	d0, [x4, x0]
	tbz	x1, 0, .L193
	and	w1, w1, -2
	add	w1, w1, w13
.L192:
	sxtw	x1, w1
	ldr	w13, [x5, x1, lsl 2]
	ldr	w0, [x25, x1, lsl 2]
	add	w0, w0, w13
	cmp	w0, w7
	csel	w13, w19, wzr, gt
	cmp	w0, w3
	sub	w0, w0, w13
	csel	w13, w19, wzr, le
	add	w0, w0, w13
	str	w0, [x4, x1, lsl 2]
.L193:
	add	w8, w8, 1
	cmp	w21, w8
	beq	.L208
	cmp	w6, 2
	bhi	.L184
.L295:
	mov	w1, w11
	mov	w13, 0
	mov	x0, 0
	b	.L183
.L296:
	add	w8, w8, 1
	cmp	w21, w8
	bne	.L184
	b	.L208
.L218:
	mov	w1, w9
	b	.L192
.L293:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x24
	scvtf	d8, x0
	fdiv	d8, d8, d9
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	b	.L208
.L178:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x24
	mov	x1, 225833675390976
	scvtf	d8, x0
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	fdiv	d8, d8, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, x0
	b	.L208
.L290:
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 344]
	mov	x4, x0
	ldr	x0, [sp, 88]
	mov	x3, x19
	mov	x1, 0
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE12:
	b	.L164
.L291:
	ldr	x0, [sp, 368]
	sub	x1, x1, #1
	ldrb	w0, [x0, x1]
	cmp	w0, 10
	bne	.L167
	ldr	x0, [sp, 72]
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L167
.L280:
	.cfi_restore 27
	.cfi_restore 28
	mov	x22, x1
	add	x24, sp, 216
	ldr	x1, [x1, 8]
	add	x20, sp, 992
	mov	x2, x24
	mov	x0, x20
.LEHB13:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE13:
	ldr	x2, [sp, 992]
	adrp	x23, .LC7
	adrp	x0, :got:__isoc23_strtol
	ldr	x0, [x0, :got_lo12:__isoc23_strtol]
	add	x1, x23, :lo12:.LC7
	mov	w4, 10
	mov	x3, 0
.LEHB14:
	bl	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE14:
	mov	w1, w0
	mov	x0, x20
	str	w1, [sp, 12]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 2
	beq	.L213
	ldr	x1, [x22, 16]
	mov	x2, x24
	mov	x0, x20
.LEHB15:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE15:
	ldr	x2, [sp, 992]
	add	x1, x23, :lo12:.LC7
	adrp	x0, :got:__isoc23_strtol
	ldr	x0, [x0, :got_lo12:__isoc23_strtol]
	mov	w4, 10
	mov	x3, 0
.LEHB16:
	bl	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE16:
	mov	w21, w0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 3
	beq	.L134
	ldr	x1, [x22, 24]
	add	x2, sp, 192
	mov	x0, x20
.LEHB17:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE17:
	ldr	x2, [sp, 992]
	add	x1, x23, :lo12:.LC7
	adrp	x0, :got:__isoc23_strtol
	ldr	x0, [x0, :got_lo12:__isoc23_strtol]
	add	x22, sp, 144
	mov	w4, 10
	mov	x3, 0
.LEHB18:
	bl	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	mov	w3, w0
	mov	x2, x24
	mov	x0, x22
	mov	x1, 0
	str	w3, [sp, 216]
	bl	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.LEHE18:
	mov	x0, x20
	str	x27, [sp, 6464]
	.cfi_offset 27, -48
	str	x28, [sp, 6472]
	.cfi_offset 28, -40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L135
.L292:
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	adrp	x1, .LC33
	add	x1, x1, :lo12:.LC33
.LEHB19:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE19:
	mov	w0, 1
	str	w0, [sp, 100]
	b	.L170
.L289:
	ldrb	w1, [sp, 448]
	strb	w1, [x0]
	ldr	x0, [sp, 240]
	ldr	x2, [sp, 440]
	b	.L148
.L213:
	.cfi_restore 27
	.cfi_restore 28
	mov	w21, 50000
	b	.L134
.L283:
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 6376]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L273
	adrp	x1, .LC12
	adrp	x0, .LC13
	mov	x3, x19
	add	x1, x1, :lo12:.LC12
	add	x0, x0, :lo12:.LC13
.LEHB20:
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.L223:
	mov	x19, x0
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x28
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L201:
	ldr	x0, [sp, 72]
	add	x22, sp, 144
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 88]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 80]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 64]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x27, [sp, 6464]
	.cfi_restore 27
	ldr	x28, [sp, 6472]
	.cfi_restore 28
.L197:
	mov	x0, x22
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	x0, [sp, 6376]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	str	x27, [sp, 6464]
	.cfi_offset 27, -48
	str	x28, [sp, 6472]
	.cfi_offset 28, -40
	beq	.L207
.L273:
	bl	__stack_chk_fail
.L281:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 6376]
	ldr	x1, [x24]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L273
	bl	_ZSt16__throw_bad_castv
.LEHE20:
.L221:
	.cfi_restore 27
	.cfi_restore 28
.L277:
	mov	x19, x0
	add	x22, sp, 144
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	b	.L197
.L222:
	mov	x19, x0
	mov	x0, x20
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L197
.L207:
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	mov	x0, x19
.LEHB21:
	bl	_Unwind_Resume
.LEHE21:
.L225:
	mov	x19, x0
	mov	x0, x22
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x28
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	b	.L201
.L224:
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	b	.L201
.L220:
	.cfi_restore 27
	.cfi_restore 28
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	add	x22, sp, 144
	mov	x19, x0
	b	.L197
.L229:
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	mov	x19, x0
	ldr	x0, [sp, 120]
	bl	_ZNSt6vectorIiSaIiEED1Ev
.L204:
	ldr	x0, [sp, 112]
	bl	_ZNSt6vectorIiSaIiEED1Ev
.L205:
	ldr	x0, [sp, 104]
	bl	_ZNSt6vectorIiSaIiEED1Ev
.L206:
	mov	x0, x28
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	adrp	x24, :got:__stack_chk_guard
	ldr	x24, [x24, :got_lo12:__stack_chk_guard]
	b	.L201
.L228:
	mov	x19, x0
	b	.L204
.L227:
	mov	x19, x0
	b	.L205
.L226:
	mov	x19, x0
	b	.L206
.L219:
	.cfi_restore 27
	.cfi_restore 28
	b	.L277
	.cfi_endproc
.LFE4216:
	.section	.gcc_except_table,"a",@progbits
.LLSDA4216:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4216-.LLSDACSB4216
.LLSDACSB4216:
	.uleb128 .LEHB2-.LFB4216
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L220-.LFB4216
	.uleb128 0
	.uleb128 .LEHB3-.LFB4216
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L224-.LFB4216
	.uleb128 0
	.uleb128 .LEHB4-.LFB4216
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L223-.LFB4216
	.uleb128 0
	.uleb128 .LEHB5-.LFB4216
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L224-.LFB4216
	.uleb128 0
	.uleb128 .LEHB6-.LFB4216
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L225-.LFB4216
	.uleb128 0
	.uleb128 .LEHB7-.LFB4216
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L224-.LFB4216
	.uleb128 0
	.uleb128 .LEHB8-.LFB4216
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L226-.LFB4216
	.uleb128 0
	.uleb128 .LEHB9-.LFB4216
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L227-.LFB4216
	.uleb128 0
	.uleb128 .LEHB10-.LFB4216
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L228-.LFB4216
	.uleb128 0
	.uleb128 .LEHB11-.LFB4216
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L229-.LFB4216
	.uleb128 0
	.uleb128 .LEHB12-.LFB4216
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L224-.LFB4216
	.uleb128 0
	.uleb128 .LEHB13-.LFB4216
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L220-.LFB4216
	.uleb128 0
	.uleb128 .LEHB14-.LFB4216
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L219-.LFB4216
	.uleb128 0
	.uleb128 .LEHB15-.LFB4216
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L220-.LFB4216
	.uleb128 0
	.uleb128 .LEHB16-.LFB4216
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L221-.LFB4216
	.uleb128 0
	.uleb128 .LEHB17-.LFB4216
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L220-.LFB4216
	.uleb128 0
	.uleb128 .LEHB18-.LFB4216
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L222-.LFB4216
	.uleb128 0
	.uleb128 .LEHB19-.LFB4216
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L226-.LFB4216
	.uleb128 0
	.uleb128 .LEHB20-.LFB4216
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L223-.LFB4216
	.uleb128 0
	.uleb128 .LEHB21-.LFB4216
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE4216:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC3:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC4:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC5:
	.xword	1
	.xword	1
	.align	4
.LC6:
	.xword	2567483615
	.xword	2567483615
	.align	4
.LC8:
	.xword	42949754565378627
	.xword	4294967326164771079
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
