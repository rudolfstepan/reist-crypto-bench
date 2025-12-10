	.arch armv8-a
	.file	"bench_modadd_suite.cpp"
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
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3977:
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
	beq	.L19
	cmp	x3, x1
	beq	.L5
	stp	x1, x2, [x20]
	ldr	x1, [x19, 16]
	ldr	x2, [x20, 16]
	str	x1, [x20, 16]
	cbz	x0, .L13
	str	x0, [x19]
	str	x2, [x19, 16]
.L8:
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
.L19:
	.cfi_restore_state
	cmp	x3, x1
	beq	.L5
	stp	x1, x2, [x20]
	mov	x0, x3
	ldr	x1, [x19, 16]
	str	x1, [x20, 16]
	str	x0, [x19]
.L21:
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
.L5:
	.cfi_restore_state
	cmp	x20, x19
	beq	.L12
	cbz	x2, .L9
	cmp	x2, 1
	beq	.L20
	bl	memcpy
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
.L9:
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
.L13:
	.cfi_restore_state
	mov	x0, x3
	str	x0, [x19]
	b	.L21
	.p2align 2,,3
.L20:
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x2, [x19, 8]
	b	.L9
	.p2align 2,,3
.L12:
	mov	x0, x1
	b	.L8
	.cfi_endproc
.LFE3977:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3174:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3174
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
	beq	.L40
	ldr	w1, [x19]
	cmp	w1, 34
	beq	.L41
	cbz	x21, .L27
	sub	x2, x2, x20
	str	x2, [x21]
.L27:
	cbz	w1, .L42
.L22:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L39
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
.L42:
	.cfi_restore_state
	str	w23, [x19]
	b	.L22
.L41:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L39
	mov	x0, x24
	bl	_ZSt20__throw_out_of_rangePKc
.L40:
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L39
	mov	x0, x24
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE0:
.L33:
	ldr	w1, [x19]
	cbz	w1, .L43
.L30:
	ldr	x1, [sp, 8]
	ldr	x2, [x25]
	subs	x1, x1, x2
	mov	x2, 0
	beq	.L31
.L39:
	bl	__stack_chk_fail
.L43:
	str	w23, [x19]
	b	.L30
.L31:
.LEHB1:
	bl	_Unwind_Resume
.LEHE1:
	.cfi_endproc
.LFE3174:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3174:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3174-.LLSDACSB3174
.LLSDACSB3174:
	.uleb128 .LEHB0-.LFB3174
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB3174
	.uleb128 0
	.uleb128 .LEHB1-.LFB3174
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3174:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3418:
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
	cbz	x1, .L57
	mov	x21, x1
	mov	x0, x1
	bl	strlen
	str	x0, [sp]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L58
	cmp	x0, 1
	bne	.L49
	ldrb	w0, [x21]
	strb	w0, [x20, 16]
.L50:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x19, [x20, 8]
	strb	wzr, [x22, x19]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L56
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
.L49:
	.cfi_restore_state
	cbz	x0, .L50
	b	.L48
	.p2align 2,,3
.L58:
	mov	x1, sp
	mov	x0, x20
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	ldr	x1, [sp]
	mov	x22, x0
	str	x0, [x20]
	str	x1, [x20, 16]
.L48:
	mov	x2, x19
	mov	x0, x22
	mov	x1, x21
	bl	memcpy
	ldr	x22, [x20]
	ldr	x19, [sp]
	b	.L50
.L56:
	bl	__stack_chk_fail
.L57:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L56
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE3418:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, %function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB3431:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L59
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L59:
	ret
	.cfi_endproc
.LFE3431:
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.text._ZNSt6vectorI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.type	_ZNSt6vectorI6ResultSaIS0_EED2Ev, %function
_ZNSt6vectorI6ResultSaIS0_EED2Ev:
.LFB3447:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L61
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L61:
	ret
	.cfi_endproc
.LFE3447:
	.size	_ZNSt6vectorI6ResultSaIS0_EED2Ev, .-_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.weak	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	.set	_ZNSt6vectorI6ResultSaIS0_EED1Ev,_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.section	.rodata._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, %function
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_:
.LFB3788:
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
	mov	x0, 1152921504606846975
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
	asr	x3, x3, 3
	cmp	x3, x0
	beq	.L85
	mov	x25, x1
	mov	x22, x2
	sub	x26, x1, x23
	cmp	x23, x21
	beq	.L86
	lsl	x1, x3, 1
	cmp	x3, x1
	bhi	.L78
	cbnz	x1, .L87
	mov	x24, 0
	sub	x21, x21, x25
	ldr	x0, [x22]
	add	x22, x26, 8
	add	x22, x24, x22
	str	x0, [x24, x26]
	add	x27, x22, x21
	mov	x19, 0
	cmp	x26, 0
	bgt	.L88
.L70:
	cmp	x21, 0
	bgt	.L74
.L73:
	cbnz	x23, .L72
.L75:
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
.L78:
	.cfi_restore_state
	mov	x19, 9223372036854775800
.L68:
	mov	x0, x19
	bl	_Znwm
	mov	x24, x0
	add	x19, x0, x19
	ldr	x0, [x22]
	add	x22, x26, 8
	sub	x21, x21, x25
	add	x22, x24, x22
	str	x0, [x24, x26]
	add	x27, x22, x21
	cmp	x26, 0
	ble	.L70
.L88:
	mov	x2, x26
	mov	x1, x23
	mov	x0, x24
	bl	memmove
	cmp	x21, 0
	bgt	.L89
.L72:
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L75
	.p2align 2,,3
.L74:
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	memcpy
	b	.L73
	.p2align 2,,3
.L86:
	adds	x3, x3, 1
	bcs	.L78
	cmp	x3, x0
	csel	x19, x3, x0, ls
	lsl	x19, x19, 3
	b	.L68
	.p2align 2,,3
.L89:
	mov	x1, x25
	mov	x2, x21
	mov	x0, x22
	bl	memcpy
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L75
.L87:
	cmp	x1, x0
	csel	x1, x1, x0, ls
	lsl	x19, x1, 3
	b	.L68
.L85:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE3788:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, %function
_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB3825:
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
	mov	x0, 288230376151711743
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
	asr	x3, x3, 5
	cmp	x3, x0
	beq	.L112
	mov	x25, x1
	mov	x22, x2
	sub	x26, x1, x23
	cmp	x23, x21
	beq	.L113
	lsl	x1, x3, 1
	cmp	x3, x1
	bhi	.L105
	cbnz	x1, .L114
	mov	x19, 0
	mov	x24, 0
.L96:
	ldp	q0, q1, [x22]
	add	x0, x24, x26
	add	x22, x26, 32
	sub	x21, x21, x25
	add	x22, x24, x22
	stp	q0, q1, [x0]
	add	x27, x22, x21
	cmp	x26, 0
	bgt	.L115
	cmp	x21, 0
	bgt	.L101
.L100:
	cbnz	x23, .L99
.L102:
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
.L105:
	.cfi_restore_state
	mov	x19, 9223372036854775776
.L95:
	mov	x0, x19
	bl	_Znwm
	mov	x24, x0
	add	x19, x0, x19
	b	.L96
	.p2align 2,,3
.L101:
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	memcpy
	b	.L100
	.p2align 2,,3
.L115:
	mov	x2, x26
	mov	x1, x23
	mov	x0, x24
	bl	memmove
	cmp	x21, 0
	bgt	.L116
.L99:
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L102
	.p2align 2,,3
.L113:
	adds	x3, x3, 1
	bcs	.L105
	cmp	x3, x0
	csel	x19, x3, x0, ls
	lsl	x19, x19, 5
	b	.L95
	.p2align 2,,3
.L116:
	mov	x1, x25
	mov	x2, x21
	mov	x0, x22
	bl	memcpy
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L102
.L114:
	cmp	x1, x0
	csel	x1, x1, x0, ls
	lsl	x19, x1, 5
	b	.L95
.L112:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE3825:
	.size	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC3:
	.string	"stoll"
	.align	3
.LC4:
	.string	"N must be > 0\n"
	.align	3
.LC5:
	.string	"vector::reserve"
	.align	3
.LC6:
	.string	"/proc/cpuinfo"
	.align	3
.LC7:
	.string	"model name"
	.align	3
.LC8:
	.string	":"
	.align	3
.LC9:
	.string	"basic_string::substr"
	.align	3
.LC10:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC11:
	.string	"cpu MHz"
	.align	3
.LC12:
	.string	"/proc/meminfo"
	.align	3
.LC13:
	.string	"MemTotal"
	.align	3
.LC14:
	.string	"r"
	.align	3
.LC15:
	.string	"uname -o"
	.align	3
.LC16:
	.string	"========================================\n"
	.align	3
.LC17:
	.string	"REIST modular-add benchmark suite\n"
	.align	3
.LC18:
	.string	"System Information:\n"
	.align	3
.LC19:
	.string	"  Hostname: "
	.align	3
.LC20:
	.string	"\n"
	.align	3
.LC21:
	.string	"  OS: "
	.align	3
.LC22:
	.string	"  CPU Model: "
	.align	3
.LC23:
	.string	"  CPU MHz: "
	.align	3
.LC24:
	.string	"  Memory: "
	.align	3
.LC25:
	.string	"========================================\n\n"
	.align	3
.LC26:
	.string	"Total iterations per modulus N = "
	.align	3
.LC27:
	.string	"step = "
	.align	3
.LC28:
	.string	"\n\n"
	.align	3
.LC29:
	.string	"Running benchmarks...\n\n"
	.align	3
.LC30:
	.string	"results_modadd_suite.csv"
	.align	3
.LC31:
	.string	"Modulus B = "
	.align	3
.LC32:
	.string	"classic_mod"
	.align	3
.LC33:
	.string	"reist_sym"
	.align	3
.LC34:
	.string	"  classic_mod: "
	.align	3
.LC35:
	.string	" s\n"
	.align	3
.LC36:
	.string	"  reist_sym  : "
	.align	3
.LC37:
	.string	"  speedup    : "
	.align	3
.LC38:
	.string	"x (classic / REIST)\n"
	.align	3
.LC39:
	.string	"  sinks: "
	.align	3
.LC40:
	.string	" / "
	.align	3
.LC41:
	.string	"modulus,N,scenario,seconds,ops_per_sec\n"
	.align	3
.LC42:
	.string	","
	.align	3
.LC43:
	.string	"CSV written to "
	.align	3
.LC44:
	.string	"WARNING: could not write CSV file "
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB3092:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3092
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
	sub	sp, sp, #1328
	.cfi_def_cfa_offset 1456
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
	str	x0, [sp, 1320]
	mov	x0, 0
	cmp	w19, 1
	bgt	.L250
	mov	x24, 61568
	add	x26, sp, 408
	movk	x24, 0x2fa, lsl 16
	stp	xzr, xzr, [sp, 80]
	str	xzr, [sp, 96]
.L121:
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	mov	x0, 48
	ldp	q1, q2, [x1]
	ldr	q0, [x1, 32]
	stp	q1, q2, [x26]
	str	q0, [x26, 32]
.LEHB2:
	bl	_Znwm
.LEHE2:
	add	x1, x0, 48
	ldp	q1, q2, [x26]
	stp	x0, x1, [sp, 80]
	ldr	q0, [x26, 32]
	str	x1, [sp, 96]
	stp	q1, q2, [x0]
	str	q0, [x0, 32]
.L122:
	mov	x2, 288230376151711743
	ldp	x0, x1, [sp, 80]
	str	x0, [sp, 8]
	str	x1, [sp, 32]
	stp	xzr, xzr, [sp, 112]
	str	xzr, [sp, 128]
	sub	x0, x1, x0
	asr	x0, x0, 3
	lsl	x1, x0, 1
	cmp	x1, x2
	bhi	.L251
	cbnz	x1, .L252
.L125:
	add	x0, sp, 240
	add	x6, sp, 224
	add	x5, sp, 256
	add	x4, sp, 288
	add	x3, sp, 320
	str	x0, [sp, 64]
	add	x0, sp, 272
	str	x0, [sp, 72]
	add	x0, sp, 304
	add	x27, sp, 192
	adrp	x1, .LC6
	add	x28, sp, 112
	add	x1, x1, :lo12:.LC6
	mov	w2, 8
	str	x0, [sp, 56]
	mov	x0, x26
	stp	x27, xzr, [sp, 176]
	strb	wzr, [sp, 192]
	stp	x6, xzr, [sp, 208]
	strb	wzr, [sp, 224]
	stp	x5, xzr, [sp, 240]
	strb	wzr, [sp, 256]
	stp	x4, xzr, [sp, 272]
	strb	wzr, [sp, 288]
	stp	x3, xzr, [sp, 304]
	strb	wzr, [sp, 320]
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	adrp	x25, .LC7
	add	x25, x25, :lo12:.LC7
	add	x1, sp, 352
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	str	x0, [sp]
	str	x1, [sp, 16]
	stp	x1, xzr, [sp, 336]
	strb	wzr, [sp, 352]
.L126:
	adrp	x23, :got:__stack_chk_guard
	ldr	x23, [x23, :got_lo12:__stack_chk_guard]
	.p2align 3,,7
.L144:
	ldr	x0, [sp, 408]
	ldr	x0, [x0, -24]
	add	x0, x26, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L253
	ldrb	w0, [x19, 56]
	cbz	w0, .L147
	ldrb	w2, [x19, 67]
.L148:
	add	x20, sp, 336
	mov	x22, x23
	mov	x1, x20
	mov	x0, x26
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L254
	mov	x1, x25
	mov	x0, x20
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L127
	mov	x2, 0
	mov	x0, x20
	adrp	x1, .LC8
	mov	x3, 1
	add	x1, x1, :lo12:.LC8
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x19, [sp, 344]
	add	x2, x0, 2
	cmp	x2, x19
	bhi	.L255
	ldr	x1, [sp, 336]
	sub	x19, x19, x2
	add	x21, sp, 384
	str	x19, [sp, 144]
	str	x21, [sp, 368]
	add	x0, sp, 368
	add	x28, x1, x2
	cmp	x19, 15
	bhi	.L256
	cmp	x19, 1
	beq	.L257
	cbnz	x19, .L258
.L134:
	mov	x0, x21
	str	x19, [sp, 376]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 368]
	ldr	x0, [sp, 176]
	cmp	x1, x21
	beq	.L259
.L135:
	add	x2, sp, 592
	ldr	q0, [x2, -216]
	cmp	x0, x27
	beq	.L260
	str	x1, [sp, 176]
	ldr	x1, [sp, 192]
	str	q0, [sp, 184]
	cbz	x0, .L142
	str	x0, [sp, 368]
	str	x1, [sp, 384]
.L141:
	str	xzr, [sp, 376]
	strb	wzr, [x0]
	ldr	x0, [sp, 368]
	cmp	x0, x21
	beq	.L127
	ldr	x1, [sp, 384]
	add	x1, x1, 1
	bl	_ZdlPvm
.L127:
	adrp	x1, .LC11
	mov	x0, x20
	add	x1, x1, :lo12:.LC11
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L144
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 368
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	x8, x19
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	x1, x19
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L126
	.p2align 2,,3
.L258:
	mov	x0, x21
.L131:
	mov	x2, x19
	mov	x1, x28
	bl	memcpy
	ldr	x19, [sp, 144]
	str	x19, [sp, 376]
	ldr	x0, [sp, 368]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 368]
	ldr	x0, [sp, 176]
	cmp	x1, x21
	bne	.L135
.L259:
	ldr	x2, [sp, 376]
	cbz	x2, .L137
	cmp	x2, 1
	beq	.L261
	mov	x1, x21
	bl	memcpy
	ldr	x0, [sp, 176]
	ldr	x2, [sp, 376]
.L137:
	str	x2, [sp, 184]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 368]
	b	.L141
	.p2align 2,,3
.L147:
	mov	x22, x23
	add	x20, sp, 336
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	ldr	x0, [sp]
	cmp	x3, x0
	beq	.L148
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	w1, w2
	mov	x0, x19
	blr	x3
	and	w2, w0, 255
	b	.L148
	.p2align 2,,3
.L257:
	ldrb	w0, [x1, x2]
	strb	w0, [sp, 384]
	b	.L134
	.p2align 2,,3
.L256:
	mov	x22, x23
	add	x1, sp, 144
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE4:
	ldr	x1, [sp, 144]
	str	x0, [sp, 368]
	str	x1, [sp, 384]
	b	.L131
	.p2align 2,,3
.L260:
	str	x1, [sp, 176]
	str	q0, [sp, 184]
.L142:
	str	x21, [sp, 368]
	add	x21, sp, 384
	mov	x0, x21
	b	.L141
	.p2align 2,,3
.L254:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 240
	str	x0, [sp, 64]
	add	x0, sp, 272
	str	x0, [sp, 72]
	add	x0, sp, 304
	adrp	x1, .LC12
	add	x28, sp, 112
	add	x1, x1, :lo12:.LC12
	mov	w2, 8
	str	x0, [sp, 56]
	mov	x0, x26
.LEHB5:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE5:
	ldr	x2, [sp, 16]
	mov	x1, x20
	mov	x0, x26
	stp	x2, xzr, [sp, 336]
	strb	wzr, [sp, 352]
.LEHB6:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L244
	adrp	x1, .LC13
	mov	x0, x20
	add	x1, x1, :lo12:.LC13
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L244
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 368
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x19
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE6:
	mov	x1, x19
	add	x0, sp, 240
	str	x0, [sp, 64]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L151
.L244:
	add	x0, sp, 240
	str	x0, [sp, 64]
.L151:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	add	x19, sp, 1064
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L238
	add	x0, sp, 272
	str	x0, [sp, 72]
.L153:
	add	x2, sp, 304
	adrp	x1, .LC14
	adrp	x0, .LC15
	add	x1, x1, :lo12:.LC14
	add	x0, x0, :lo12:.LC15
	add	x28, sp, 112
	str	x2, [sp, 56]
.LEHB7:
	bl	popen
	mov	x19, x0
	cbz	x0, .L262
	add	x1, sp, 304
	add	x20, sp, 936
	add	x28, sp, 112
	mov	x0, x20
	mov	x2, x19
	str	x1, [sp, 56]
	mov	w1, 128
	bl	fgets
	cbz	x0, .L263
	add	x0, sp, 304
	mov	x1, x20
	add	x28, sp, 112
	add	x2, sp, 144
	str	x0, [sp, 56]
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	mov	x1, x26
	add	x0, sp, 304
	str	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 312]
	cbz	x0, .L156
	ldr	x2, [sp, 304]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	beq	.L264
.L156:
	mov	x0, x19
	add	x28, sp, 112
	bl	pclose
.L154:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x19, .LC16
	add	x28, sp, 112
	add	x1, x19, :lo12:.LC16
	ldr	x2, [x0]
	ldr	x2, [x2, -24]
	add	x2, x2, x0
	ldr	w3, [x2, 24]
	str	x5, [x2, 8]
	and	w3, w3, w4
	orr	w3, w3, 4
	str	w3, [x2, 24]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x19, :lo12:.LC16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC18
	add	x1, x1, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC19
	mov	x2, 12
	add	x1, x1, :lo12:.LC19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 272]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC21
	mov	x2, 6
	add	x1, x1, :lo12:.LC21
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 304]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC22
	mov	x2, 13
	add	x1, x1, :lo12:.LC22
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 176]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC23
	mov	x2, 11
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 208]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC24
	mov	x2, 10
	add	x1, x1, :lo12:.LC24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 240]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	add	x1, x1, :lo12:.LC25
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 33
	add	x1, x1, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	x1, x24
	bl	_ZNSo9_M_insertIlEERSoT_
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC27
	mov	x2, 7
	add	x1, x1, :lo12:.LC27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	x1, 3
	bl	_ZNSo9_M_insertIlEERSoT_
	adrp	x1, .LC28
	add	x1, x1, :lo12:.LC28
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC29
	add	x1, x1, :lo12:.LC29
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x0, [sp, 8]
	ldr	x2, [sp, 32]
	mov	x1, x0
	str	x1, [sp]
	adrp	x0, .LC31
	cmp	x2, x1
	beq	.L171
	adrp	x25, :got:_ZSt4cout
	ldr	x25, [x25, :got_lo12:_ZSt4cout]
	add	x0, x0, :lo12:.LC31
	mov	x1, 225833675390976
	str	x0, [sp, 40]
	movk	x1, 0x41cd, lsl 48
	adrp	x0, .LC32
	fmov	d10, x1
	add	x0, x0, :lo12:.LC32
	str	x0, [sp, 48]
	.p2align 3,,7
.L170:
	ldr	x0, [sp]
	mov	x2, 12
	ldr	x1, [sp, 40]
	ldr	x22, [x0]
	mov	x0, x25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x22
	mov	x0, x25
	bl	_ZNSo9_M_insertIlEERSoT_
	adrp	x1, .LC20
	mov	x2, 1
	add	x1, x1, :lo12:.LC20
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x19, x0
	mov	x21, 0
	mov	x20, 0
	.p2align 3,,7
.L160:
	add	x20, x20, 3
	mov	x23, x21
	add	x21, x21, 1
	sdiv	x1, x20, x22
	msub	x20, x1, x22, x20
	cmp	x24, x21
	bne	.L160
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x19
	ldr	x1, [sp, 120]
	scvtf	d9, x0
	ldr	x0, [sp, 48]
	str	x0, [sp, 160]
	ldr	x0, [sp, 128]
	str	x0, [sp, 8]
	fdiv	d9, d9, d10
	stp	x22, x24, [sp, 144]
	add	x27, sp, 144
	str	d9, [sp, 168]
	cmp	x1, x0
	beq	.L161
	ldp	q0, q1, [x27]
	add	x3, x1, 32
	str	x3, [sp, 16]
	str	x3, [sp, 120]
	stp	q0, q1, [x1]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	add	x2, x22, x22, lsr 63
	ldr	x3, [sp, 16]
	asr	x2, x2, 1
	str	x0, [sp, 24]
.L162:
	neg	x4, x2
	mov	x0, 0
	mov	x19, 0
	b	.L165
	.p2align 2,,3
.L266:
	sub	x19, x19, x22
	add	x1, x0, 1
	cmp	x0, x23
	beq	.L265
.L194:
	mov	x0, x1
.L165:
	add	x19, x19, 3
	cmp	x19, x2
	bgt	.L266
	add	x1, x19, x22
	cmp	x19, x4
	csel	x19, x1, x19, le
	add	x1, x0, 1
	cmp	x0, x23
	bne	.L194
.L265:
	str	x3, [sp, 16]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldp	x3, x1, [sp, 16]
	stp	x22, x21, [sp, 144]
	sub	x0, x0, x1
	adrp	x1, .LC33
	add	x1, x1, :lo12:.LC33
	str	x1, [sp, 160]
	scvtf	d8, x0
	ldr	x0, [sp, 8]
	fdiv	d8, d8, d10
	str	d8, [sp, 168]
	cmp	x0, x3
	beq	.L166
	ldp	q0, q1, [x27]
	add	x0, x3, 32
	str	x0, [sp, 120]
	stp	q0, q1, [x3]
.L167:
	adrp	x1, .LC34
	mov	x0, x25
	add	x1, x1, :lo12:.LC34
	mov	x2, 15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x21, .LC35
	mov	x2, 3
	add	x1, x21, :lo12:.LC35
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC36
	mov	x0, x25
	add	x1, x1, :lo12:.LC36
	mov	x2, 15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x21, :lo12:.LC35
	mov	x2, 3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fcmpe	d8, #0.0
	bgt	.L204
.L168:
	adrp	x1, .LC39
	mov	x0, x25
	add	x1, x1, :lo12:.LC39
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x20
	mov	x0, x25
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC40
	mov	x20, x0
	add	x1, x1, :lo12:.LC40
	mov	x2, 3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x19
	mov	x0, x20
	bl	_ZNSo9_M_insertIlEERSoT_
	adrp	x1, .LC28
	mov	x2, 2
	add	x1, x1, :lo12:.LC28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [sp]
	ldr	x1, [sp, 32]
	add	x0, x0, 8
	str	x0, [sp]
	cmp	x1, x0
	bne	.L170
.L171:
	adrp	x24, .LC30
	mov	x0, x26
	add	x1, x24, :lo12:.LC30
	mov	w2, 16
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	ldr	w1, [sp, 696]
	mov	w0, 5
	tst	w1, w0
	bne	.L172
	adrp	x1, .LC41
	mov	x0, x26
	add	x1, x1, :lo12:.LC41
.LEHB8:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldp	x19, x22, [sp, 112]
	cmp	x22, x19
	beq	.L180
	adrp	x21, .LC42
	adrp	x0, .LC20
	add	x21, x21, :lo12:.LC42
	add	x23, x0, :lo12:.LC20
	b	.L179
	.p2align 2,,3
.L177:
	mov	x0, x25
	bl	strlen
	mov	x1, x25
	mov	x2, x0
	mov	x0, x20
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L178:
	mov	x1, x21
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	d0, [x19, 24]
	mov	x0, x20
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x20, x0
	mov	x1, x21
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x20
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x23
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x19, x19, 32
	cmp	x22, x19
	beq	.L180
.L179:
	ldr	d0, [x19, 24]
	fcmpe	d0, #0.0
	bgt	.L205
	movi	d8, #0
.L175:
	ldr	x1, [x19]
	mov	x0, x26
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	x20, x0
	mov	x1, x21
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x19, 8]
	mov	x0, x20
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	x20, x0
	mov	x1, x21
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x25, [x19, 16]
	cbnz	x25, .L177
	ldr	x0, [x20]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE8:
	b	.L178
.L238:
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 280]
	add	x1, sp, 272
	mov	x4, x0
	mov	x0, x1
	str	x1, [sp, 72]
	add	x1, sp, 304
	mov	x3, x19
	add	x28, sp, 112
	str	x1, [sp, 56]
	mov	x1, 0
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	b	.L153
	.p2align 2,,3
.L204:
	adrp	x1, .LC37
	mov	x0, x25
	add	x1, x1, :lo12:.LC37
	mov	x2, 15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d9, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC38
	mov	x2, 20
	add	x1, x1, :lo12:.LC38
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	b	.L168
	.p2align 2,,3
.L205:
	ldr	d8, [x19, 8]
	scvtf	d8, d8
	fdiv	d8, d8, d0
	b	.L175
	.p2align 2,,3
.L166:
	mov	x1, x0
	mov	x2, x27
	mov	x0, x28
	bl	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	b	.L167
	.p2align 2,,3
.L161:
	mov	x2, x27
	mov	x0, x28
	bl	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.LEHE9:
	ldr	x3, [sp, 120]
	str	x3, [sp, 16]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 24]
	add	x2, x22, x22, lsr 63
	ldr	x1, [sp, 128]
	asr	x2, x2, 1
	ldr	x3, [sp, 16]
	str	x1, [sp, 8]
	b	.L162
.L180:
	mov	x0, x26
.LEHB10:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC43
	mov	x2, 15
	add	x1, x1, :lo12:.LC43
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x24, :lo12:.LC30
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L246:
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x0, x26
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 72]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 64]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x28
	bl	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	add	x0, sp, 80
	bl	_ZNSt6vectorIlSaIlEED1Ev
	mov	w0, 0
.L117:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1320]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L249
	add	sp, sp, 1328
	.cfi_remember_state
	.cfi_def_cfa_offset 128
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
.L172:
	.cfi_restore_state
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	adrp	x1, .LC44
	mov	x2, 34
	add	x1, x1, :lo12:.LC44
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	add	x1, x24, :lo12:.LC30
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE10:
	b	.L246
.L250:
	mov	x20, x1
	add	x27, sp, 144
	ldr	x1, [x1, 8]
	add	x26, sp, 408
	mov	x2, x27
	mov	x0, x26
	adrp	x21, .LC3
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	ldr	x2, [sp, 408]
	add	x1, x21, :lo12:.LC3
	adrp	x0, :got:__isoc23_strtoll
	ldr	x0, [x0, :got_lo12:__isoc23_strtoll]
	mov	w4, 10
	mov	x3, 0
.LEHB12:
	bl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE12:
	mov	x24, x0
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	x24, 0
	ble	.L267
	stp	xzr, xzr, [sp, 80]
	str	xzr, [sp, 96]
	cmp	w19, 2
	beq	.L121
	ldr	x1, [x20, 16]
	add	x2, sp, 112
	mov	x0, x26
.LEHB13:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE13:
	ldr	x2, [sp, 408]
	add	x1, x21, :lo12:.LC3
	adrp	x0, :got:__isoc23_strtoll
	ldr	x0, [x0, :got_lo12:__isoc23_strtoll]
	add	x20, sp, 80
	mov	w4, 10
	mov	x3, 0
.LEHB14:
	bl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	mov	x3, x0
	mov	x2, x27
	mov	x0, x20
	mov	x1, 0
	str	x3, [sp, 144]
	bl	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
.LEHE14:
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L122
.L261:
	ldrb	w1, [sp, 384]
	strb	w1, [x0]
	ldr	x0, [sp, 176]
	ldr	x2, [sp, 376]
	b	.L137
.L252:
	lsl	x19, x0, 6
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	x0, x19
.LEHB15:
	bl	_Znwm
.LEHE15:
	add	x19, x0, x19
	stp	x0, x0, [sp, 112]
	str	x19, [sp, 128]
	b	.L125
.L263:
	add	x0, sp, 304
	str	x0, [sp, 56]
	b	.L156
.L264:
	ldr	x0, [sp, 56]
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L156
.L267:
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
.LEHB16:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE16:
	mov	w0, 1
	b	.L117
.L253:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1320]
	ldr	x1, [x22]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L249
	add	x20, sp, 336
.LEHB17:
	bl	_ZSt16__throw_bad_castv
.L255:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1320]
	ldr	x1, [x22]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L249
	adrp	x1, .LC9
	adrp	x0, .LC10
	mov	x3, x19
	add	x1, x1, :lo12:.LC9
	add	x0, x0, :lo12:.LC10
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE17:
.L251:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1320]
	ldr	x1, [x22]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L249
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
.LEHB18:
	bl	_ZSt20__throw_length_errorPKc
.LEHE18:
.L203:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	mov	x0, x26
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L187:
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 72]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 64]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L190:
	add	x20, sp, 80
	mov	x0, x28
	bl	_ZNSt6vectorI6ResultSaIS0_EED1Ev
.L185:
	mov	x0, x20
	bl	_ZNSt6vectorIlSaIlEED1Ev
	ldr	x0, [sp, 1320]
	ldr	x1, [x22]
	subs	x0, x0, x1
	mov	x1, 0
	beq	.L191
.L249:
	bl	__stack_chk_fail
.L262:
	add	x0, sp, 304
	str	x0, [sp, 56]
	b	.L154
.L202:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L247:
	add	x0, sp, 240
	str	x0, [sp, 64]
	add	x0, sp, 272
	add	x28, sp, 112
	str	x0, [sp, 72]
	add	x0, sp, 304
	str	x0, [sp, 56]
	b	.L187
.L198:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	add	x20, sp, 80
	mov	x19, x0
	b	.L185
.L196:
	mov	x19, x0
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1320]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L249
.L191:
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.LEHE19:
.L201:
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	b	.L187
.L197:
	mov	x19, x0
	mov	x0, x26
	adrp	x22, :got:__stack_chk_guard
	ldr	x22, [x22, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L185
.L199:
	add	x28, sp, 112
	mov	x19, x0
	b	.L190
.L200:
	mov	x19, x0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L247
	.cfi_endproc
.LFE3092:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3092:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3092-.LLSDACSB3092
.LLSDACSB3092:
	.uleb128 .LEHB2-.LFB3092
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L198-.LFB3092
	.uleb128 0
	.uleb128 .LEHB3-.LFB3092
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L201-.LFB3092
	.uleb128 0
	.uleb128 .LEHB4-.LFB3092
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L200-.LFB3092
	.uleb128 0
	.uleb128 .LEHB5-.LFB3092
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L201-.LFB3092
	.uleb128 0
	.uleb128 .LEHB6-.LFB3092
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L202-.LFB3092
	.uleb128 0
	.uleb128 .LEHB7-.LFB3092
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L201-.LFB3092
	.uleb128 0
	.uleb128 .LEHB8-.LFB3092
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L203-.LFB3092
	.uleb128 0
	.uleb128 .LEHB9-.LFB3092
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L201-.LFB3092
	.uleb128 0
	.uleb128 .LEHB10-.LFB3092
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L203-.LFB3092
	.uleb128 0
	.uleb128 .LEHB11-.LFB3092
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB3092
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L196-.LFB3092
	.uleb128 0
	.uleb128 .LEHB13-.LFB3092
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L198-.LFB3092
	.uleb128 0
	.uleb128 .LEHB14-.LFB3092
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L197-.LFB3092
	.uleb128 0
	.uleb128 .LEHB15-.LFB3092
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L199-.LFB3092
	.uleb128 0
	.uleb128 .LEHB16-.LFB3092
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB3092
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L200-.LFB3092
	.uleb128 0
	.uleb128 .LEHB18-.LFB3092
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L199-.LFB3092
	.uleb128 0
	.uleb128 .LEHB19-.LFB3092
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3092:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.xword	257
	.xword	997
	.xword	10007
	.xword	1000003
	.xword	10000019
	.xword	1000000007
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
