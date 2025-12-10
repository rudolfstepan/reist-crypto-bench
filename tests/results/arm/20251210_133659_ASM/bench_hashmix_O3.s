	.arch armv8-a
	.file	"bench_hashmix.cpp"
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
.LFB3876:
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
.LFE3876:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3878:
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
.LFE3878:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3173
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
	beq	.L44
	ldr	w1, [x19]
	cmp	w1, 34
	beq	.L45
	cbz	x21, .L31
	sub	x2, x2, x20
	str	x2, [x21]
.L31:
	cbz	w1, .L46
.L26:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L43
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
.L46:
	.cfi_restore_state
	str	w23, [x19]
	b	.L26
.L45:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L43
	mov	x0, x24
	bl	_ZSt20__throw_out_of_rangePKc
.L44:
	ldr	x0, [sp, 8]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L43
	mov	x0, x24
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE0:
.L37:
	ldr	w1, [x19]
	cbz	w1, .L47
.L34:
	ldr	x1, [sp, 8]
	ldr	x2, [x25]
	subs	x1, x1, x2
	mov	x2, 0
	beq	.L35
.L43:
	bl	__stack_chk_fail
.L47:
	str	w23, [x19]
	b	.L34
.L35:
.LEHB1:
	bl	_Unwind_Resume
.LEHE1:
	.cfi_endproc
.LFE3173:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3173-.LLSDACSB3173
.LLSDACSB3173:
	.uleb128 .LEHB0-.LFB3173
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L37-.LFB3173
	.uleb128 0
	.uleb128 .LEHB1-.LFB3173
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3173:
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorImSaImEED2Ev
	.type	_ZNSt6vectorImSaImEED2Ev, %function
_ZNSt6vectorImSaImEED2Ev:
.LFB3417:
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
.LFE3417:
	.size	_ZNSt6vectorImSaImEED2Ev, .-_ZNSt6vectorImSaImEED2Ev
	.weak	_ZNSt6vectorImSaImEED1Ev
	.set	_ZNSt6vectorImSaImEED1Ev,_ZNSt6vectorImSaImEED2Ev
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
.LFB3420:
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
	cbz	x1, .L63
	mov	x21, x1
	mov	x0, x1
	bl	strlen
	str	x0, [sp]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L64
	cmp	x0, 1
	bne	.L55
	ldrb	w0, [x21]
	strb	w0, [x20, 16]
.L56:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x19, [x20, 8]
	strb	wzr, [x22, x19]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L62
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
.L55:
	.cfi_restore_state
	cbz	x0, .L56
	b	.L54
	.p2align 2,,3
.L64:
	mov	x1, sp
	mov	x0, x20
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	ldr	x1, [sp]
	mov	x22, x0
	str	x0, [x20]
	str	x1, [x20, 16]
.L54:
	mov	x2, x19
	mov	x0, x22
	mov	x1, x21
	bl	memcpy
	ldr	x22, [x20]
	ldr	x19, [sp]
	b	.L56
.L62:
	bl	__stack_chk_fail
.L63:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L62
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE3420:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata._ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.type	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, %function
_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_:
.LFB3714:
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
	beq	.L87
	mov	x25, x1
	mov	x22, x2
	sub	x26, x1, x23
	cmp	x23, x21
	beq	.L88
	lsl	x1, x3, 1
	cmp	x3, x1
	bhi	.L80
	cbnz	x1, .L89
	mov	x24, 0
	sub	x21, x21, x25
	ldr	x0, [x22]
	add	x22, x26, 8
	add	x22, x24, x22
	str	x0, [x24, x26]
	add	x27, x22, x21
	mov	x19, 0
	cmp	x26, 0
	bgt	.L90
.L72:
	cmp	x21, 0
	bgt	.L76
.L75:
	cbnz	x23, .L74
.L77:
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
.L80:
	.cfi_restore_state
	mov	x19, 9223372036854775800
.L70:
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
	ble	.L72
.L90:
	mov	x2, x26
	mov	x1, x23
	mov	x0, x24
	bl	memmove
	cmp	x21, 0
	bgt	.L91
.L74:
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L77
	.p2align 2,,3
.L76:
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	memcpy
	b	.L75
	.p2align 2,,3
.L88:
	adds	x3, x3, 1
	bcs	.L80
	cmp	x3, x0
	csel	x19, x3, x0, ls
	lsl	x19, x19, 3
	b	.L70
	.p2align 2,,3
.L91:
	mov	x1, x25
	mov	x2, x21
	mov	x0, x22
	bl	memcpy
	ldr	x1, [x20, 16]
	mov	x0, x23
	sub	x1, x1, x23
	bl	_ZdlPvm
	b	.L77
.L89:
	cmp	x1, x0
	csel	x1, x1, x0, ls
	lsl	x19, x1, 3
	b	.L70
.L87:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE3714:
	.size	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, .-_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC3:
	.string	"stoull"
	.align	3
.LC4:
	.string	"/proc/cpuinfo"
	.align	3
.LC5:
	.string	"model name"
	.align	3
.LC6:
	.string	":"
	.align	3
.LC7:
	.string	"basic_string::substr"
	.align	3
.LC8:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC9:
	.string	"cpu MHz"
	.align	3
.LC10:
	.string	"/proc/meminfo"
	.align	3
.LC11:
	.string	"MemTotal"
	.align	3
.LC12:
	.string	"r"
	.align	3
.LC13:
	.string	"uname -o"
	.align	3
.LC14:
	.string	"========================================\n"
	.align	3
.LC15:
	.string	"Hashmix benchmark (classic % vs REIST reduction)\n"
	.align	3
.LC16:
	.string	"System Information:\n"
	.align	3
.LC17:
	.string	"  Hostname: "
	.align	3
.LC18:
	.string	"\n"
	.align	3
.LC19:
	.string	"  OS: "
	.align	3
.LC20:
	.string	"  CPU Model: "
	.align	3
.LC21:
	.string	"  CPU MHz: "
	.align	3
.LC22:
	.string	"  Memory: "
	.align	3
.LC23:
	.string	"========================================\n\n"
	.align	3
.LC24:
	.string	"Iterations N = "
	.align	3
.LC25:
	.string	"M = "
	.align	3
.LC26:
	.string	""
	.align	3
.LC27:
	.string	"  classic : "
	.align	3
.LC28:
	.string	"  REIST   : "
	.align	3
.LC29:
	.string	"  speedup : "
	.align	3
.LC30:
	.string	"x (classic / REIST)"
	.align	3
.LC31:
	.string	"  sink values: "
	.align	3
.LC32:
	.string	" / "
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
	sub	sp, sp, #1248
	.cfi_def_cfa_offset 1376
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
	str	x0, [sp, 1240]
	mov	x0, 0
	stp	xzr, xzr, [sp, 64]
	str	xzr, [sp, 80]
	cmp	w19, 1
	bgt	.L192
	mov	x22, 33103
	mov	x24, 57600
	movk	x22, 0xf767, lsl 16
	add	x23, sp, 328
	movk	x22, 0x7b7e, lsl 32
	movk	x24, 0x5f5, lsl 16
	movk	x22, 0x1405, lsl 48
.L93:
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	mov	x0, 32
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x23]
.LEHB2:
	bl	_Znwm
.LEHE2:
	add	x1, x0, 32
	ldp	q0, q1, [x23]
	stp	x0, x1, [sp, 64]
	str	x1, [sp, 80]
	stp	q0, q1, [x0]
.L94:
	add	x7, sp, 112
	add	x0, sp, 160
	add	x6, sp, 144
	add	x5, sp, 176
	add	x4, sp, 208
	add	x3, sp, 240
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 40]
	add	x0, sp, 224
	adrp	x1, .LC4
	mov	w2, 8
	add	x1, x1, :lo12:.LC4
	str	x7, [sp]
	str	x0, [sp, 24]
	mov	x0, x23
	stp	x7, xzr, [sp, 96]
	strb	wzr, [sp, 112]
	stp	x6, xzr, [sp, 128]
	strb	wzr, [sp, 144]
	stp	x5, xzr, [sp, 160]
	strb	wzr, [sp, 176]
	stp	x4, xzr, [sp, 192]
	strb	wzr, [sp, 208]
	stp	x3, xzr, [sp, 224]
	strb	wzr, [sp, 240]
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE3:
	adrp	x27, .LC5
	add	x27, x27, :lo12:.LC5
	add	x1, sp, 272
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	stp	x0, x1, [sp, 8]
	stp	x1, xzr, [sp, 256]
	strb	wzr, [sp, 272]
.L95:
	add	x20, sp, 256
	.p2align 3,,7
.L113:
	ldr	x0, [sp, 328]
	ldr	x0, [x0, -24]
	add	x0, x23, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L193
	ldrb	w0, [x19, 56]
	cbz	w0, .L116
	ldrb	w2, [x19, 67]
.L117:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x26, x20
	mov	x1, x20
	mov	x0, x23
.LEHB4:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L194
	mov	x1, x27
	mov	x0, x20
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L96
	mov	x2, 0
	mov	x0, x20
	adrp	x1, .LC6
	mov	x3, 1
	add	x1, x1, :lo12:.LC6
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x19, [sp, 264]
	add	x2, x0, 2
	cmp	x2, x19
	bhi	.L195
	ldr	x1, [sp, 256]
	sub	x19, x19, x2
	add	x21, sp, 304
	str	x19, [sp, 56]
	str	x21, [sp, 288]
	add	x0, sp, 288
	add	x28, x1, x2
	cmp	x19, 15
	bhi	.L196
	cmp	x19, 1
	beq	.L197
	cbnz	x19, .L198
.L103:
	mov	x0, x21
	str	x19, [sp, 296]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 288]
	ldr	x0, [sp, 96]
	cmp	x1, x21
	beq	.L199
.L104:
	add	x2, sp, 512
	ldr	q0, [x2, -216]
	ldr	x2, [sp]
	cmp	x0, x2
	beq	.L200
	str	x1, [sp, 96]
	ldr	x1, [sp, 112]
	str	q0, [sp, 104]
	cbz	x0, .L111
	str	x0, [sp, 288]
	str	x1, [sp, 304]
.L110:
	str	xzr, [sp, 296]
	strb	wzr, [x0]
	ldr	x0, [sp, 288]
	cmp	x0, x21
	beq	.L96
	ldr	x1, [sp, 304]
	add	x1, x1, 1
	bl	_ZdlPvm
.L96:
	adrp	x1, .LC9
	mov	x0, x20
	add	x1, x1, :lo12:.LC9
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L113
	adrp	x1, .LC6
	mov	x3, 1
	add	x1, x1, :lo12:.LC6
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 288
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	mov	x1, x0
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x0, x20
	add	x1, x1, 2
	mov	x8, x19
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	x1, x19
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L95
	.p2align 2,,3
.L198:
	mov	x0, x21
.L100:
	mov	x2, x19
	mov	x1, x28
	bl	memcpy
	ldr	x19, [sp, 56]
	str	x19, [sp, 296]
	ldr	x0, [sp, 288]
	strb	wzr, [x0, x19]
	ldr	x1, [sp, 288]
	ldr	x0, [sp, 96]
	cmp	x1, x21
	bne	.L104
.L199:
	ldr	x2, [sp, 296]
	cbz	x2, .L106
	cmp	x2, 1
	beq	.L201
	mov	x1, x21
	bl	memcpy
	ldr	x0, [sp, 96]
	ldr	x2, [sp, 296]
.L106:
	str	x2, [sp, 104]
	strb	wzr, [x0, x2]
	ldr	x0, [sp, 288]
	b	.L110
	.p2align 2,,3
.L116:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x26, x20
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x19]
	mov	w2, 10
	ldr	x3, [x0, 48]
	ldr	x0, [sp, 8]
	cmp	x3, x0
	beq	.L117
	mov	w1, w2
	mov	x0, x19
	add	x26, sp, 256
	blr	x3
	and	w2, w0, 255
	b	.L117
	.p2align 2,,3
.L197:
	ldrb	w0, [x1, x2]
	strb	w0, [sp, 304]
	b	.L103
	.p2align 2,,3
.L196:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	add	x1, sp, 56
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE4:
	ldr	x1, [sp, 56]
	str	x0, [sp, 288]
	str	x1, [sp, 304]
	b	.L100
	.p2align 2,,3
.L200:
	str	x1, [sp, 96]
	str	q0, [sp, 104]
.L111:
	str	x21, [sp, 288]
	add	x21, sp, 304
	mov	x0, x21
	b	.L110
	.p2align 2,,3
.L194:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 160
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 40]
	add	x0, sp, 224
	adrp	x1, .LC10
	mov	w2, 8
	add	x1, x1, :lo12:.LC10
	str	x0, [sp, 24]
	mov	x0, x23
.LEHB5:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE5:
	ldr	x2, [sp, 16]
	mov	x1, x20
	mov	x0, x23
	stp	x2, xzr, [sp, 256]
	strb	wzr, [sp, 272]
.LEHB6:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L188
	adrp	x1, .LC11
	mov	x0, x20
	add	x1, x1, :lo12:.LC11
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L188
	mov	x3, 1
	mov	x2, 0
	mov	x0, x20
	add	x19, sp, 288
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x19
	mov	x0, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE6:
	mov	x1, x19
	add	x0, sp, 160
	str	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L120
	.p2align 2,,3
.L188:
	add	x0, sp, 160
	str	x0, [sp, 32]
.L120:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	add	x19, sp, 984
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L184
	add	x0, sp, 192
	str	x0, [sp, 40]
.L122:
	add	x2, sp, 224
	adrp	x1, .LC12
	adrp	x0, .LC13
	add	x1, x1, :lo12:.LC12
	add	x0, x0, :lo12:.LC13
	str	x2, [sp, 24]
.LEHB7:
	bl	popen
	mov	x19, x0
	cbz	x0, .L202
	add	x0, sp, 224
	add	x20, sp, 856
	mov	x2, x19
	mov	w1, 128
	str	x0, [sp, 24]
	mov	x0, x20
	bl	fgets
	cbz	x0, .L203
	add	x0, sp, 224
	mov	x1, x20
	add	x2, sp, 56
	str	x0, [sp, 24]
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	mov	x1, x23
	add	x0, sp, 224
	str	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 232]
	cbz	x0, .L125
	ldr	x2, [sp, 224]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	beq	.L204
.L125:
	mov	x0, x19
	bl	pclose
.L123:
	adrp	x27, :got:_ZSt4cout
	ldr	x27, [x27, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x19, .LC14
	mov	x0, x27
	add	x1, x19, :lo12:.LC14
	ldr	x2, [x27]
	ldr	x2, [x2, -24]
	add	x2, x27, x2
	ldr	w3, [x2, 24]
	str	x5, [x2, 8]
	and	w3, w3, w4
	orr	w3, w3, 4
	str	w3, [x2, 24]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC15
	mov	x0, x27
	add	x1, x1, :lo12:.LC15
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	mov	x0, x27
	add	x1, x19, :lo12:.LC14
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC16
	mov	x0, x27
	add	x1, x1, :lo12:.LC16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC17
	mov	x0, x27
	add	x1, x1, :lo12:.LC17
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 192]
	mov	x0, x27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x19, .LC18
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC19
	mov	x0, x27
	add	x1, x1, :lo12:.LC19
	mov	x2, 6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 224]
	mov	x0, x27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC20
	mov	x0, x27
	add	x1, x1, :lo12:.LC20
	mov	x2, 13
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 96]
	mov	x0, x27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC21
	mov	x0, x27
	add	x1, x1, :lo12:.LC21
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 128]
	mov	x0, x27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC22
	mov	x0, x27
	add	x1, x1, :lo12:.LC22
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 160]
	mov	x0, x27
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC23
	mov	x0, x27
	add	x1, x1, :lo12:.LC23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	adrp	x1, .LC24
	mov	x0, x27
	add	x1, x1, :lo12:.LC24
	mov	x2, 15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x24
	mov	x0, x27
	bl	_ZNSo9_M_insertImEERSoT_
	add	x1, x19, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	ldp	x26, x0, [sp, 64]
	str	x0, [sp, 16]
	cmp	x0, x26
	beq	.L134
	mov	x28, 52719
	mov	x23, 32557
	movk	x28, 0x90ab, lsl 16
	movk	x23, 0x4c95, lsl 16
	mov	x0, 225833675390976
	movk	x28, 0x5678, lsl 32
	movk	x23, 0xf42d, lsl 32
	mov	x25, x27
	movk	x0, 0x41cd, lsl 48
	movk	x28, 0x1234, lsl 48
	fmov	d10, x0
	movk	x23, 0x5851, lsl 48
	.p2align 3,,7
.L133:
	ldr	x20, [x26]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x19, x0
	cbz	x24, .L128
	mov	x21, x28
	mov	x1, 0
	.p2align 3,,7
.L129:
	madd	x21, x21, x23, x22
	mov	x3, x1
	add	x1, x1, 1
	udiv	x2, x21, x20
	msub	x21, x2, x20, x21
	cmp	x24, x1
	bne	.L129
	str	x3, [sp, 8]
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x19
	mov	x19, x28
	scvtf	d9, x0
	fdiv	d9, d9, d10
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp]
	add	x4, x20, x20, lsr 63
	mov	x2, 0
	ldr	x3, [sp, 8]
	asr	x5, x4, 1
	neg	x4, x4, asr 1
	.p2align 3,,7
.L130:
	madd	x19, x19, x23, x22
	sdiv	x0, x19, x20
	msub	x19, x0, x20, x19
	cmp	x5, x19
	csel	x0, x20, xzr, lt
	cmp	x4, x19
	sub	x0, x19, x0
	csel	x19, x20, xzr, ge
	add	x19, x0, x19
	cmp	x3, x2
	add	x2, x2, 1
	bne	.L130
.L143:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldr	x1, [sp]
	mov	x2, 4
	sub	x3, x0, x1
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x25
	scvtf	d8, x3
	fdiv	d8, d8, d10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x20
	mov	x0, x25
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x20, .LC26
	mov	x2, 0
	add	x1, x20, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC27
	mov	x0, x25
	add	x1, x1, :lo12:.LC27
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x20, :lo12:.LC26
	mov	x2, 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC28
	mov	x0, x25
	add	x1, x1, :lo12:.LC28
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x20, :lo12:.LC26
	mov	x2, 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fcmpe	d8, #0.0
	bgt	.L155
.L131:
	adrp	x1, .LC31
	mov	x0, x25
	add	x1, x1, :lo12:.LC31
	mov	x2, 15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x2, [x27]
	mov	w4, -75
	mov	x1, x21
	mov	x0, x25
	ldr	x3, [x2, -24]
	add	x3, x27, x3
	ldr	w2, [x3, 24]
	and	w2, w2, w4
	orr	w2, w2, 8
	str	w2, [x3, 24]
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC32
	mov	x21, x0
	add	x1, x1, :lo12:.LC32
	mov	x2, 3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x19
	mov	x0, x21
	bl	_ZNSo9_M_insertIlEERSoT_
	ldr	x4, [x0]
	mov	w5, -75
	add	x1, x20, :lo12:.LC26
	mov	x2, 0
	ldr	x4, [x4, -24]
	add	x3, x0, x4
	ldr	w4, [x3, 24]
	and	w4, w4, w5
	orr	w4, w4, 2
	str	w4, [x3, 24]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [sp, 16]
	add	x26, x26, 8
	cmp	x0, x26
	bne	.L133
.L134:
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 64
	bl	_ZNSt6vectorImSaImEED1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1240]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L186
	add	sp, sp, 1248
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
.L184:
	.cfi_restore_state
	mov	x0, x19
	bl	strlen
	ldr	x2, [sp, 200]
	add	x1, sp, 192
	mov	x4, x0
	mov	x0, x1
	str	x1, [sp, 40]
	add	x1, sp, 224
	mov	x3, x19
	str	x1, [sp, 24]
	mov	x1, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	b	.L122
	.p2align 2,,3
.L155:
	adrp	x1, .LC29
	mov	x0, x25
	add	x1, x1, :lo12:.LC29
	mov	x2, 12
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d9, d8
	mov	x0, x25
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC30
	mov	x2, 19
	add	x1, x1, :lo12:.LC30
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE7:
	b	.L131
	.p2align 2,,3
.L128:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x19
	mov	x21, x28
	mov	x19, x28
	scvtf	d9, x0
	fdiv	d9, d9, d10
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp]
	b	.L143
.L192:
	mov	x20, x1
	add	x21, sp, 56
	ldr	x1, [x1, 8]
	add	x23, sp, 328
	mov	x2, x21
	mov	x0, x23
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE8:
	ldr	x2, [sp, 328]
	adrp	x25, .LC3
	adrp	x0, :got:__isoc23_strtoull
	ldr	x0, [x0, :got_lo12:__isoc23_strtoull]
	add	x1, x25, :lo12:.LC3
	mov	w4, 10
	mov	x3, 0
.LEHB9:
	bl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE9:
	mov	x24, x0
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 2
	beq	.L146
	ldr	x1, [x20, 16]
	mov	x2, x21
	mov	x0, x23
.LEHB10:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	ldr	x2, [sp, 328]
	add	x1, x25, :lo12:.LC3
	adrp	x0, :got:__isoc23_strtoull
	ldr	x0, [x0, :got_lo12:__isoc23_strtoull]
	mov	w4, 10
	mov	x3, 0
.LEHB11:
	bl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE11:
	mov	x22, x0
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 3
	beq	.L93
	ldr	x1, [x20, 24]
	add	x2, sp, 48
	mov	x0, x23
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE12:
	ldr	x2, [sp, 328]
	add	x1, x25, :lo12:.LC3
	adrp	x0, :got:__isoc23_strtoull
	ldr	x0, [x0, :got_lo12:__isoc23_strtoull]
	add	x20, sp, 64
	mov	w4, 10
	mov	x3, 0
.LEHB13:
	bl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	mov	x3, x0
	mov	x2, x21
	mov	x0, x20
	mov	x1, 0
	str	x3, [sp, 56]
	bl	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
.LEHE13:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L94
.L201:
	ldrb	w1, [sp, 304]
	strb	w1, [x0]
	ldr	x0, [sp, 96]
	ldr	x2, [sp, 296]
	b	.L106
.L203:
	add	x0, sp, 224
	str	x0, [sp, 24]
	b	.L125
.L146:
	mov	x22, 33103
	movk	x22, 0xf767, lsl 16
	movk	x22, 0x7b7e, lsl 32
	movk	x22, 0x1405, lsl 48
	b	.L93
.L204:
	ldr	x0, [sp, 24]
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L125
.L195:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1240]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L186
	adrp	x1, .LC7
	adrp	x0, .LC8
	mov	x3, x19
	add	x1, x1, :lo12:.LC7
	add	x0, x0, :lo12:.LC8
.LEHB14:
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.L193:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 1240]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L186
	add	x26, sp, 256
	bl	_ZSt16__throw_bad_castv
.LEHE14:
.L202:
	add	x0, sp, 224
	str	x0, [sp, 24]
	b	.L123
.L152:
	mov	x19, x0
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L189:
	add	x0, sp, 160
	str	x0, [sp, 32]
	add	x0, sp, 192
	str	x0, [sp, 40]
	add	x0, sp, 224
	str	x0, [sp, 24]
.L140:
	ldr	x0, [sp, 24]
	add	x20, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 32]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L136:
	mov	x0, x20
	bl	_ZNSt6vectorImSaImEED1Ev
	ldr	x0, [sp, 1240]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	beq	.L142
.L186:
	bl	__stack_chk_fail
.L148:
.L190:
	mov	x19, x0
	add	x20, sp, 64
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	b	.L136
.L153:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	b	.L140
.L149:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	add	x20, sp, 64
	mov	x19, x0
	b	.L136
.L150:
	b	.L190
.L151:
	mov	x19, x0
	mov	x0, x23
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L136
.L154:
	mov	x19, x0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	b	.L189
.L142:
	mov	x0, x19
.LEHB15:
	bl	_Unwind_Resume
.LEHE15:
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
	.uleb128 .L149-.LFB3092
	.uleb128 0
	.uleb128 .LEHB3-.LFB3092
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L153-.LFB3092
	.uleb128 0
	.uleb128 .LEHB4-.LFB3092
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L152-.LFB3092
	.uleb128 0
	.uleb128 .LEHB5-.LFB3092
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L153-.LFB3092
	.uleb128 0
	.uleb128 .LEHB6-.LFB3092
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L154-.LFB3092
	.uleb128 0
	.uleb128 .LEHB7-.LFB3092
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L153-.LFB3092
	.uleb128 0
	.uleb128 .LEHB8-.LFB3092
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L149-.LFB3092
	.uleb128 0
	.uleb128 .LEHB9-.LFB3092
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L148-.LFB3092
	.uleb128 0
	.uleb128 .LEHB10-.LFB3092
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L149-.LFB3092
	.uleb128 0
	.uleb128 .LEHB11-.LFB3092
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L150-.LFB3092
	.uleb128 0
	.uleb128 .LEHB12-.LFB3092
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L149-.LFB3092
	.uleb128 0
	.uleb128 .LEHB13-.LFB3092
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L151-.LFB3092
	.uleb128 0
	.uleb128 .LEHB14-.LFB3092
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L152-.LFB3092
	.uleb128 0
	.uleb128 .LEHB15-.LFB3092
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3092:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.xword	1000003
	.xword	10000019
	.xword	100000007
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
