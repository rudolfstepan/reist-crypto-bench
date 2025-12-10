	.arch armv8-a
	.file	"bench_modadd_suite.cpp"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.align	2
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, %function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	mov	w0, 0
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, %function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB115:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	bl	_ZSt23__is_constant_evaluatedv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L6
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	b	.L7
.L6:
	ldr	x0, [sp, 24]
	bl	strlen
	nop
.L7:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE115:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.rodata
	.align	3
.LC1:
	.string	"stoll"
	.section	.text._ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.align	2
	.weak	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, %function
_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1172:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	ldr	w4, [sp, 28]
	ldr	x3, [sp, 32]
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:__isoc23_strtoll
	ldr	x0, [x0, :got_lo12:__isoc23_strtoll]
	bl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1172:
	.size	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.section	.text._ZStanSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStanSt13_Ios_FmtflagsS_,comdat
	.align	2
	.weak	_ZStanSt13_Ios_FmtflagsS_
	.type	_ZStanSt13_Ios_FmtflagsS_, %function
_ZStanSt13_Ios_FmtflagsS_:
.LFB1572:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	and	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1572:
	.size	_ZStanSt13_Ios_FmtflagsS_, .-_ZStanSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStorSt13_Ios_FmtflagsS_,comdat
	.align	2
	.weak	_ZStorSt13_Ios_FmtflagsS_
	.type	_ZStorSt13_Ios_FmtflagsS_, %function
_ZStorSt13_Ios_FmtflagsS_:
.LFB1573:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	orr	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1573:
	.size	_ZStorSt13_Ios_FmtflagsS_, .-_ZStorSt13_Ios_FmtflagsS_
	.section	.text._ZStcoSt13_Ios_Fmtflags,"axG",@progbits,_ZStcoSt13_Ios_Fmtflags,comdat
	.align	2
	.weak	_ZStcoSt13_Ios_Fmtflags
	.type	_ZStcoSt13_Ios_Fmtflags, %function
_ZStcoSt13_Ios_Fmtflags:
.LFB1575:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	mvn	w0, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1575:
	.size	_ZStcoSt13_Ios_Fmtflags, .-_ZStcoSt13_Ios_Fmtflags
	.section	.text._ZStoRRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStoRRSt13_Ios_FmtflagsS_,comdat
	.align	2
	.weak	_ZStoRRSt13_Ios_FmtflagsS_
	.type	_ZStoRRSt13_Ios_FmtflagsS_, %function
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1576:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	bl	_ZStorSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1576:
	.size	_ZStoRRSt13_Ios_FmtflagsS_, .-_ZStoRRSt13_Ios_FmtflagsS_
	.section	.text._ZStaNRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStaNRSt13_Ios_FmtflagsS_,comdat
	.align	2
	.weak	_ZStaNRSt13_Ios_FmtflagsS_
	.type	_ZStaNRSt13_Ios_FmtflagsS_, %function
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1577:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	bl	_ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1577:
	.size	_ZStaNRSt13_Ios_FmtflagsS_, .-_ZStaNRSt13_Ios_FmtflagsS_
	.section	.text._ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"axG",@progbits,_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,comdat
	.align	2
	.weak	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.type	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, %function
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB1606:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	bl	_ZStcoSt13_Ios_Fmtflags
	mov	w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	bl	_ZStaNRSt13_Ios_FmtflagsS_
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	bl	_ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	bl	_ZStoRRSt13_Ios_FmtflagsS_
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1606:
	.size	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, .-_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.section	.text._ZSt5fixedRSt8ios_base,"axG",@progbits,_ZSt5fixedRSt8ios_base,comdat
	.align	2
	.weak	_ZSt5fixedRSt8ios_base
	.type	_ZSt5fixedRSt8ios_base, %function
_ZSt5fixedRSt8ios_base:
.LFB1636:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w2, 260
	mov	w1, 4
	ldr	x0, [sp, 24]
	bl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1636:
	.size	_ZSt5fixedRSt8ios_base, .-_ZSt5fixedRSt8ios_base
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, %function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB2249:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, %function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB2251:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZSt12setprecisioni,"axG",@progbits,_ZSt12setprecisioni,comdat
	.align	2
	.weak	_ZSt12setprecisioni
	.type	_ZSt12setprecisioni, %function
_ZSt12setprecisioni:
.LFB2899:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2899:
	.size	_ZSt12setprecisioni, .-_ZSt12setprecisioni
	.text
	.align	2
	.type	_ZL17bench_classic_modlll, %function
_ZL17bench_classic_modlll:
.LFB3008:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 32]
	str	xzr, [sp, 40]
	b	.L30
.L31:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L30:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	blt	.L31
	ldr	x0, [sp, 32]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3008:
	.size	_ZL17bench_classic_modlll, .-_ZL17bench_classic_modlll
	.align	2
	.type	_ZL15bench_reist_symlll, %function
_ZL15bench_reist_symlll:
.LFB3009:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 56]
	str	xzr, [sp, 40]
	str	xzr, [sp, 48]
	b	.L34
.L37:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L35
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	str	x0, [sp, 40]
	b	.L36
.L35:
	ldr	x0, [sp, 56]
	neg	x0, x0
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bgt	.L36
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 40]
.L36:
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L34:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	blt	.L37
	ldr	x0, [sp, 40]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3009:
	.size	_ZL15bench_reist_symlll, .-_ZL15bench_reist_symlll
	.section	.text._ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev:
.LFB3015:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt15__new_allocatorIlED2Ev
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3015:
	.size	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIlSaIlEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEEC2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEEC2Ev, %function
_ZNSt12_Vector_baseIlSaIlEEC2Ev:
.LFB3017:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3017:
	.size	_ZNSt12_Vector_baseIlSaIlEEC2Ev, .-_ZNSt12_Vector_baseIlSaIlEEC2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEEC1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEEC1Ev,_ZNSt12_Vector_baseIlSaIlEEC2Ev
	.section	.text._ZNSt6vectorIlSaIlEEC2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEEC2Ev
	.type	_ZNSt6vectorIlSaIlEEC2Ev, %function
_ZNSt6vectorIlSaIlEEC2Ev:
.LFB3019:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3019:
	.size	_ZNSt6vectorIlSaIlEEC2Ev, .-_ZNSt6vectorIlSaIlEEC2Ev
	.weak	_ZNSt6vectorIlSaIlEEC1Ev
	.set	_ZNSt6vectorIlSaIlEEC1Ev,_ZNSt6vectorIlSaIlEEC2Ev
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev:
.LFB3025:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt15__new_allocatorI6ResultED2Ev
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3025:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev:
.LFB3027:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3027:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI6ResultSaIS0_EEC1Ev,_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI6ResultSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EEC2Ev
	.type	_ZNSt6vectorI6ResultSaIS0_EEC2Ev, %function
_ZNSt6vectorI6ResultSaIS0_EEC2Ev:
.LFB3029:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3029:
	.size	_ZNSt6vectorI6ResultSaIS0_EEC2Ev, .-_ZNSt6vectorI6ResultSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI6ResultSaIS0_EEC1Ev
	.set	_ZNSt6vectorI6ResultSaIS0_EEC1Ev,_ZNSt6vectorI6ResultSaIS0_EEC2Ev
	.text
	.align	2
	.type	_ZZ4mainENKUllE_clEl, %function
_ZZ4mainENKUllE_clEl:
.LFB3035:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	x3, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	x2, x1
	ldr	x1, [sp, 32]
	mov	x0, x3
	bl	_ZL17bench_classic_modlll
	str	x0, [x19]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3035:
	.size	_ZZ4mainENKUllE_clEl, .-_ZZ4mainENKUllE_clEl
	.align	2
	.type	_ZZ4mainENKUllE0_clEl, %function
_ZZ4mainENKUllE0_clEl:
.LFB3036:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	x3, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	x2, x1
	ldr	x1, [sp, 32]
	mov	x0, x3
	bl	_ZL15bench_reist_symlll
	str	x0, [x19]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3036:
	.size	_ZZ4mainENKUllE0_clEl, .-_ZZ4mainENKUllE0_clEl
	.section	.rodata
	.align	3
.LC2:
	.string	"N must be > 0\n"
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
	.string	"cpu MHz"
	.align	3
.LC7:
	.string	"/proc/meminfo"
	.align	3
.LC8:
	.string	"MemTotal"
	.align	3
.LC9:
	.string	"r"
	.align	3
.LC10:
	.string	"uname -o"
	.align	3
.LC11:
	.string	"========================================\n"
	.align	3
.LC12:
	.string	"REIST modular-add benchmark suite\n"
	.align	3
.LC13:
	.string	"System Information:\n"
	.align	3
.LC14:
	.string	"  Hostname: "
	.align	3
.LC15:
	.string	"\n"
	.align	3
.LC16:
	.string	"  OS: "
	.align	3
.LC17:
	.string	"  CPU Model: "
	.align	3
.LC18:
	.string	"  CPU MHz: "
	.align	3
.LC19:
	.string	"  Memory: "
	.align	3
.LC20:
	.string	"========================================\n\n"
	.align	3
.LC21:
	.string	"Total iterations per modulus N = "
	.align	3
.LC22:
	.string	"step = "
	.align	3
.LC23:
	.string	"\n\n"
	.align	3
.LC24:
	.string	"Running benchmarks...\n\n"
	.align	3
.LC25:
	.string	"Modulus B = "
	.align	3
.LC26:
	.string	"classic_mod"
	.align	3
.LC27:
	.string	"reist_sym"
	.align	3
.LC28:
	.string	"  classic_mod: "
	.align	3
.LC29:
	.string	" s\n"
	.align	3
.LC30:
	.string	"  reist_sym  : "
	.align	3
.LC31:
	.string	"  speedup    : "
	.align	3
.LC32:
	.string	"x (classic / REIST)\n"
	.align	3
.LC33:
	.string	"  sinks: "
	.align	3
.LC34:
	.string	" / "
	.align	3
.LC35:
	.string	"results_modadd_suite.csv"
	.align	3
.LC36:
	.string	"modulus,N,scenario,seconds,ops_per_sec\n"
	.align	3
.LC37:
	.string	","
	.align	3
.LC38:
	.string	"CSV written to "
	.align	3
.LC39:
	.string	"WARNING: could not write CSV file "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3010:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3010
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	sub	sp, sp, #1392
	.cfi_def_cfa_offset 1440
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1384]
	mov	x1, 0
	mov	x0, 61568
	movk	x0, 0x2fa, lsl 16
	str	x0, [sp, 72]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L48
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x1, [x0]
	add	x0, sp, 216
	str	x0, [sp, 144]
	nop
	nop
	add	x2, sp, 216
	add	x0, sp, 472
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	add	x0, sp, 472
	mov	w2, 10
	mov	x1, 0
.LEHB1:
	bl	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	str	x0, [sp, 72]
	add	x0, sp, 472
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 216
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L48:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L49
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
.LEHB2:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE2:
	mov	w19, 1
	b	.L74
.L49:
	add	x0, sp, 168
	bl	_ZNSt6vectorIlSaIlEEC1Ev
	ldr	w0, [sp, 12]
	cmp	w0, 2
	ble	.L51
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	x1, [x0]
	add	x0, sp, 192
	str	x0, [sp, 152]
	nop
	nop
	add	x2, sp, 192
	add	x0, sp, 472
.LEHB3:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	add	x0, sp, 472
	mov	w2, 10
	mov	x1, 0
.LEHB4:
	bl	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	str	x0, [sp, 216]
	add	x1, sp, 216
	add	x0, sp, 168
	bl	_ZNSt6vectorIlSaIlEE9push_backEOl
.LEHE4:
	add	x0, sp, 472
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 192
	bl	_ZNSt15__new_allocatorIcED2Ev
	b	.L52
.L51:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 472
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 472
	mov	x20, x0
	mov	x21, 6
	add	x0, sp, 168
	mov	x1, x20
	mov	x2, x21
.LEHB5:
	bl	_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE
.LEHE5:
.L52:
	mov	x0, 3
	str	x0, [sp, 24]
	add	x0, sp, 192
	bl	_ZNSt6vectorI6ResultSaIS0_EEC1Ev
	add	x0, sp, 168
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	lsl	x1, x0, 1
	add	x0, sp, 192
.LEHB6:
	bl	_ZNSt6vectorI6ResultSaIS0_EE7reserveEm
.LEHE6:
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 344
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x3, sp, 472
	mov	w2, 8
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
.LEHB7:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	b	.L55
.L56:
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L54
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 408
	add	x2, sp, 440
	mov	x8, x2
	mov	x2, -1
.LEHB8:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 440
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 440
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L54:
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L55
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 408
	add	x2, sp, 440
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 440
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 440
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L55:
	add	x1, sp, 408
	add	x0, sp, 472
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
.LEHE8:
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L56
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 472
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x3, sp, 472
	mov	w2, 8
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x3
.LEHB9:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE9:
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x1, sp, 408
	add	x0, sp, 472
.LEHB10:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L57
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L57
	add	x3, sp, 408
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 408
	add	x2, sp, 440
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE10:
	add	x1, sp, 440
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 440
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L57:
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 472
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 1128
	mov	x1, 256
	bl	gethostname
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L58
	add	x1, sp, 1128
	add	x0, sp, 344
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L58:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	popen
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	cmp	x0, 0
	beq	.L59
	add	x0, sp, 1000
	ldr	x2, [sp, 80]
	mov	w1, 128
	bl	fgets
.LEHE11:
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L60
	add	x0, sp, 216
	str	x0, [sp, 160]
	nop
	nop
	add	x2, sp, 216
	add	x1, sp, 1000
	add	x0, sp, 472
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE12:
	add	x1, sp, 472
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 472
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 216
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	add	x0, sp, 376
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L61
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L61
	mov	w0, 1
	b	.L62
.L61:
	mov	w0, 0
.L62:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L60
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv
.L60:
	ldr	x0, [sp, 80]
.LEHB13:
	bl	pclose
.L59:
	adrp	x0, _ZSt5fixedRSt8ios_base
	add	x1, x0, :lo12:_ZSt5fixedRSt8ios_base
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSolsEPFRSt8ios_baseS0_E
	mov	x19, x0
	mov	w0, 6
	bl	_ZSt12setprecisioni
	mov	w1, w0
	mov	x0, x19
	bl	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 344
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 376
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 248
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 280
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 312
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 72]
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 168
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	bl	_ZNSt6vectorIlSaIlEE5beginEv
	str	x0, [sp, 40]
	ldr	x0, [sp, 88]
	bl	_ZNSt6vectorIlSaIlEE3endEv
	str	x0, [sp, 48]
	b	.L63
.L66:
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv
	ldr	x0, [x0]
	str	x0, [sp, 32]
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	str	xzr, [sp, 56]
	add	x0, sp, 56
	str	x0, [sp, 216]
	add	x0, sp, 32
	str	x0, [sp, 224]
	add	x0, sp, 24
	str	x0, [sp, 232]
	add	x0, sp, 216
	ldr	x1, [sp, 72]
	bl	_Z9time_loopIZ4mainEUllE_EdOT_l
	str	d0, [sp, 128]
	ldr	x0, [sp, 32]
	str	x0, [sp, 216]
	ldr	x0, [sp, 72]
	str	x0, [sp, 224]
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	str	x0, [sp, 232]
	ldr	d0, [sp, 128]
	str	d0, [sp, 240]
	add	x1, sp, 216
	add	x0, sp, 192
	bl	_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_
	str	xzr, [sp, 64]
	add	x0, sp, 64
	str	x0, [sp, 216]
	add	x0, sp, 32
	str	x0, [sp, 224]
	add	x0, sp, 24
	str	x0, [sp, 232]
	add	x0, sp, 216
	ldr	x1, [sp, 72]
	bl	_Z9time_loopIZ4mainEUllE0_EdOT_l
	str	d0, [sp, 136]
	ldr	x0, [sp, 32]
	str	x0, [sp, 216]
	ldr	x0, [sp, 72]
	str	x0, [sp, 224]
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	str	x0, [sp, 232]
	ldr	d0, [sp, 136]
	str	d0, [sp, 240]
	add	x1, sp, 216
	add	x0, sp, 192
	bl	_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 128]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 136]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 136]
	fcmpe	d0, #0.0
	bgt	.L100
	b	.L64
.L100:
	adrp	x0, .LC31
	add	x1, x0, :lo12:.LC31
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 136]
	ldr	d1, [sp, 128]
	fdiv	d0, d1, d0
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC32
	add	x1, x0, :lo12:.LC32
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L64:
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 56]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC34
	add	x1, x0, :lo12:.LC34
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 64]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv
.L63:
	add	x1, sp, 48
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L66
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	str	x0, [sp, 96]
	add	x0, sp, 472
	mov	w2, 16
	ldr	x1, [sp, 96]
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE13:
	add	x0, sp, 472
	add	x0, x0, 256
.LEHB14:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L67
	add	x2, sp, 472
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 192
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	bl	_ZNSt6vectorI6ResultSaIS0_EE5beginEv
	str	x0, [sp, 64]
	ldr	x0, [sp, 104]
	bl	_ZNSt6vectorI6ResultSaIS0_EE3endEv
	str	x0, [sp, 216]
	b	.L68
.L72:
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	ldr	d0, [x0, 24]
	fcmpe	d0, #0.0
	bgt	.L101
	b	.L102
.L101:
	ldr	x0, [sp, 112]
	ldr	d0, [x0, 8]
	scvtf	d1, d0
	ldr	x0, [sp, 112]
	ldr	d0, [x0, 24]
	fdiv	d0, d1, d0
	b	.L71
.L102:
	movi	d0, #0
.L71:
	str	d0, [sp, 120]
	ldr	x0, [sp, 112]
	ldr	x1, [x0]
	add	x0, sp, 472
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 112]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 112]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [sp, 112]
	ldr	d0, [x0, 24]
	mov	x0, x1
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 120]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 64
	bl	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv
.L68:
	add	x1, sp, 216
	add	x0, sp, 64
	bl	_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L72
	add	x0, sp, 472
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 96]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L73
.L67:
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 96]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE14:
.L73:
	mov	w19, 0
	add	x0, sp, 472
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 344
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 192
	bl	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	add	x0, sp, 168
	bl	_ZNSt6vectorIlSaIlEED1Ev
.L74:
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1384]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L88
	b	.L103
.L90:
	mov	x19, x0
	add	x0, sp, 472
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L76
.L89:
	mov	x19, x0
.L76:
	add	x0, sp, 216
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1384]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L77
	bl	__stack_chk_fail
.L77:
	mov	x0, x1
.LEHB15:
	bl	_Unwind_Resume
.L92:
	mov	x19, x0
	add	x0, sp, 472
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L79
.L91:
	mov	x19, x0
.L79:
	add	x0, sp, 192
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L80
.L95:
	mov	x19, x0
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 472
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L82
.L97:
	mov	x19, x0
	add	x0, sp, 408
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 472
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L82
.L98:
	mov	x19, x0
	add	x0, sp, 216
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L82
.L99:
	mov	x19, x0
	add	x0, sp, 472
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L82
.L96:
	mov	x19, x0
.L82:
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 344
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L86
.L94:
	mov	x19, x0
.L86:
	add	x0, sp, 192
	bl	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	b	.L80
.L93:
	mov	x19, x0
.L80:
	add	x0, sp, 168
	bl	_ZNSt6vectorIlSaIlEED1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1384]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L87
	bl	__stack_chk_fail
.L87:
	mov	x0, x1
	bl	_Unwind_Resume
.LEHE15:
.L103:
	bl	__stack_chk_fail
.L88:
	mov	w0, w1
	add	sp, sp, 1392
	.cfi_def_cfa_offset 48
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
.LFE3010:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3010:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3010-.LLSDACSB3010
.LLSDACSB3010:
	.uleb128 .LEHB0-.LFB3010
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L89-.LFB3010
	.uleb128 0
	.uleb128 .LEHB1-.LFB3010
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L90-.LFB3010
	.uleb128 0
	.uleb128 .LEHB2-.LFB3010
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3010
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L91-.LFB3010
	.uleb128 0
	.uleb128 .LEHB4-.LFB3010
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L92-.LFB3010
	.uleb128 0
	.uleb128 .LEHB5-.LFB3010
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L93-.LFB3010
	.uleb128 0
	.uleb128 .LEHB6-.LFB3010
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L94-.LFB3010
	.uleb128 0
	.uleb128 .LEHB7-.LFB3010
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L96-.LFB3010
	.uleb128 0
	.uleb128 .LEHB8-.LFB3010
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L95-.LFB3010
	.uleb128 0
	.uleb128 .LEHB9-.LFB3010
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L96-.LFB3010
	.uleb128 0
	.uleb128 .LEHB10-.LFB3010
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L97-.LFB3010
	.uleb128 0
	.uleb128 .LEHB11-.LFB3010
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L96-.LFB3010
	.uleb128 0
	.uleb128 .LEHB12-.LFB3010
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L98-.LFB3010
	.uleb128 0
	.uleb128 .LEHB13-.LFB3010
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L96-.LFB3010
	.uleb128 0
	.uleb128 .LEHB14-.LFB3010
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L99-.LFB3010
	.uleb128 0
	.uleb128 .LEHB15-.LFB3010
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3010:
	.text
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.xword	257
	.xword	997
	.xword	10007
	.xword	1000003
	.xword	10000019
	.xword	1000000007
	.text
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3037:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	str	xzr, [sp, 32]
	b	.L105
.L106:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L105:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	strb	wzr, [sp, 31]
	add	x1, sp, 31
	bl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L106
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L108
	bl	__stack_chk_fail
.L108:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3037:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB3094:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	bl	__errno_location
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3094:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB3097:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L112
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L112:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3097:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE:
.LFB3099:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp]
	mov	w0, 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3099:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3092:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3092
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 96
	str	x19, [sp, 112]
	.cfi_offset 19, -16
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	w4, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	ldr	x3, [sp, 40]
	add	x0, sp, 64
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 24]
.LEHB16:
	blr	x3
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L116
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L117
	bl	__stack_chk_fail
.L117:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L116:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L118
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L119
.L118:
	mov	w0, 1
	b	.L120
.L119:
	mov	w0, 0
.L120:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L121
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L122
	bl	__stack_chk_fail
.L122:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE16:
.L121:
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L123
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L123:
	ldr	x19, [sp, 80]
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L127
	b	.L129
.L128:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L126
	bl	__stack_chk_fail
.L126:
	mov	x0, x1
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L129:
	bl	__stack_chk_fail
.L127:
	mov	x0, x1
	ldr	x19, [sp, 112]
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3092:
	.section	.gcc_except_table
.LLSDA3092:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3092-.LLSDACSB3092
.LLSDACSB3092:
	.uleb128 .LEHB16-.LFB3092
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L128-.LFB3092
	.uleb128 0
	.uleb128 .LEHB17-.LFB3092
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE3092:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3146:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3146:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align	2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, %function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB3291:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3291:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
	.align	3
.LC40:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3336:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3336
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L134
	adrp	x0, .LC40
	add	x0, x0, :lo12:.LC40
.LEHB18:
	bl	_ZSt19__throw_logic_errorPKc
.L134:
	ldr	x0, [sp, 48]
	bl	_ZNSt11char_traitsIcE6lengthEPKc
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE18:
	b	.L137
.L136:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.LEHE19:
.L137:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3336:
	.section	.gcc_except_table
.LLSDA3336:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3336-.LLSDACSB3336
.LLSDACSB3336:
	.uleb128 .LEHB18-.LFB3336
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L136-.LFB3336
	.uleb128 0
	.uleb128 .LEHB19-.LFB3336
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3336:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev:
.LFB3340:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	nop
	nop
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3340:
	.size	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIlSaIlEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEED2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEED2Ev, %function
_ZNSt12_Vector_baseIlSaIlEED2Ev:
.LFB3346:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3346
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3346:
	.section	.gcc_except_table
.LLSDA3346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3346-.LLSDACSB3346
.LLSDACSB3346:
.LLSDACSE3346:
	.section	.text._ZNSt12_Vector_baseIlSaIlEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIlSaIlEED2Ev, .-_ZNSt12_Vector_baseIlSaIlEED2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEED1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEED1Ev,_ZNSt12_Vector_baseIlSaIlEED2Ev
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, %function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB3349:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3349
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	str	x20, [sp, 56]
	str	x19, [sp, 64]
	str	x0, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIPlEvT_S1_
	nop
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIlSaIlEED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3349:
	.section	.gcc_except_table
.LLSDA3349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3349-.LLSDACSB3349
.LLSDACSB3349:
.LLSDACSE3349:
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.text._ZNSt6vectorIlSaIlEE9push_backEOl,"axG",@progbits,_ZNSt6vectorIlSaIlEE9push_backEOl,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE9push_backEOl
	.type	_ZNSt6vectorIlSaIlEE9push_backEOl, %function
_ZNSt6vectorIlSaIlEE9push_backEOl:
.LFB3351:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3351:
	.size	_ZNSt6vectorIlSaIlEE9push_backEOl, .-_ZNSt6vectorIlSaIlEE9push_backEOl
	.section	.text._ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE,"axG",@progbits,_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE
	.type	_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE, %function
_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE:
.LFB3352:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]
	stp	x1, x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	add	x0, sp, 8
	bl	_ZNKSt16initializer_listIlE5beginEv
	mov	x19, x0
	add	x0, sp, 8
	bl	_ZNKSt16initializer_listIlE3endEv
	mov	w3, w20
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L144
	bl	__stack_chk_fail
.L144:
	mov	x0, x1
	ldp	x19, x20, [sp, 64]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3352:
	.size	_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE, .-_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev:
.LFB3354:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	nop
	nop
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3354:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev:
.LFB3360:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3360
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3360:
	.section	.gcc_except_table
.LLSDA3360:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3360-.LLSDACSB3360
.LLSDACSB3360:
.LLSDACSE3360:
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI6ResultSaIS0_EED1Ev,_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.type	_ZNSt6vectorI6ResultSaIS0_EED2Ev, %function
_ZNSt6vectorI6ResultSaIS0_EED2Ev:
.LFB3363:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3363
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	str	x20, [sp, 56]
	str	x19, [sp, 64]
	str	x0, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIP6ResultEvT_S2_
	nop
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3363:
	.section	.gcc_except_table
.LLSDA3363:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3363-.LLSDACSB3363
.LLSDACSB3363:
.LLSDACSE3363:
	.section	.text._ZNSt6vectorI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI6ResultSaIS0_EED2Ev, .-_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.weak	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	.set	_ZNSt6vectorI6ResultSaIS0_EED1Ev,_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.section	.text._ZNKSt6vectorIlSaIlEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIlSaIlEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIlSaIlEE4sizeEv
	.type	_ZNKSt6vectorIlSaIlEE4sizeEv, %function
_ZNKSt6vectorIlSaIlEE4sizeEv:
.LFB3365:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3365:
	.size	_ZNKSt6vectorIlSaIlEE4sizeEv, .-_ZNKSt6vectorIlSaIlEE4sizeEv
	.section	.rodata
	.align	3
.LC41:
	.string	"vector::reserve"
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE7reserveEm,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE7reserveEm,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE7reserveEm
	.type	_ZNSt6vectorI6ResultSaIS0_EE7reserveEm, %function
_ZNSt6vectorI6ResultSaIS0_EE7reserveEm:
.LFB3366:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L151
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	_ZSt20__throw_length_errorPKc
.L151:
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L153
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 5
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 5
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
.L153:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3366:
	.size	_ZNSt6vectorI6ResultSaIS0_EE7reserveEm, .-_ZNSt6vectorI6ResultSaIS0_EE7reserveEm
	.section	.text._ZNSt6vectorIlSaIlEE5beginEv,"axG",@progbits,_ZNSt6vectorIlSaIlEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE5beginEv
	.type	_ZNSt6vectorIlSaIlEE5beginEv, %function
_ZNSt6vectorIlSaIlEE5beginEv:
.LFB3394:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x1, [sp, 8]
	add	x0, sp, 16
	bl	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L156
	bl	__stack_chk_fail
.L156:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3394:
	.size	_ZNSt6vectorIlSaIlEE5beginEv, .-_ZNSt6vectorIlSaIlEE5beginEv
	.section	.text._ZNSt6vectorIlSaIlEE3endEv,"axG",@progbits,_ZNSt6vectorIlSaIlEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE3endEv
	.type	_ZNSt6vectorIlSaIlEE3endEv, %function
_ZNSt6vectorIlSaIlEE3endEv:
.LFB3395:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x0, [sp, 8]
	add	x1, x0, 8
	add	x0, sp, 16
	bl	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L159
	bl	__stack_chk_fail
.L159:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3395:
	.size	_ZNSt6vectorIlSaIlEE3endEv, .-_ZNSt6vectorIlSaIlEE3endEv
	.section	.text._ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3396:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3396:
	.size	_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv:
.LFB3397:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 8
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3397:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv:
.LFB3398:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3398:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.align	2
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, %function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB3401:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	str	x0, [sp, 24]
	ldr	x0, [sp]
	bl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L168
	bl	__stack_chk_fail
.L168:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3401:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.text
	.align	2
	.type	_Z9time_loopIZ4mainEUllE_EdOT_l, %function
_Z9time_loopIZ4mainEUllE_EdOT_l:
.LFB3399:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 24]
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	bl	_ZZ4mainENKUllE_clEl
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 40
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 40
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L171
	bl	__stack_chk_fail
.L171:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3399:
	.size	_Z9time_loopIZ4mainEUllE_EdOT_l, .-_Z9time_loopIZ4mainEUllE_EdOT_l
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_
	.type	_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_, %function
_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_:
.LFB3402:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3402:
	.size	_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_, .-_ZNSt6vectorI6ResultSaIS0_EE9push_backEOS0_
	.text
	.align	2
	.type	_Z9time_loopIZ4mainEUllE0_EdOT_l, %function
_Z9time_loopIZ4mainEUllE0_EdOT_l:
.LFB3403:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 24]
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	bl	_ZZ4mainENKUllE0_clEl
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 40
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 40
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L175
	bl	__stack_chk_fail
.L175:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3403:
	.size	_Z9time_loopIZ4mainEUllE0_EdOT_l, .-_Z9time_loopIZ4mainEUllE0_EdOT_l
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE5beginEv
	.type	_ZNSt6vectorI6ResultSaIS0_EE5beginEv, %function
_ZNSt6vectorI6ResultSaIS0_EE5beginEv:
.LFB3413:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x1, [sp, 8]
	add	x0, sp, 16
	bl	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L178
	bl	__stack_chk_fail
.L178:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3413:
	.size	_ZNSt6vectorI6ResultSaIS0_EE5beginEv, .-_ZNSt6vectorI6ResultSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE3endEv
	.type	_ZNSt6vectorI6ResultSaIS0_EE3endEv, %function
_ZNSt6vectorI6ResultSaIS0_EE3endEv:
.LFB3414:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x0, [sp, 8]
	add	x1, x0, 8
	add	x0, sp, 16
	bl	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L181
	bl	__stack_chk_fail
.L181:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3414:
	.size	_ZNSt6vectorI6ResultSaIS0_EE3endEv, .-_ZNSt6vectorI6ResultSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, %function
_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB3415:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3415:
	.size	_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIP6ResultSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv:
.LFB3416:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 32
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3416:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv:
.LFB3417:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3417:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3419:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3419:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, %function
_ZNSt15__new_allocatorIcED2Ev:
.LFB3427:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3427:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB3457:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3457:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB3460:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3460
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L194
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L194:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3460:
	.section	.gcc_except_table
.LLSDA3460:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3460-.LLSDACSB3460
.LLSDACSB3460:
.LLSDACSE3460:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3455:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	nop
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	nop
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 15
	bls	.L199
	add	x0, sp, 40
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	b	.L200
.L199:
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	nop
.L200:
	add	x0, sp, 48
	ldr	x1, [sp, 24]
	bl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	ldr	x0, [sp, 24]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	str	xzr, [sp, 48]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	add	x0, sp, 48
	bl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L201
	bl	__stack_chk_fail
.L201:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3455:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev:
.LFB3536:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3536:
	.size	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorIlED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIlED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIlED2Ev
	.type	_ZNSt15__new_allocatorIlED2Ev, %function
_ZNSt15__new_allocatorIlED2Ev:
.LFB3539:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3539:
	.size	_ZNSt15__new_allocatorIlED2Ev, .-_ZNSt15__new_allocatorIlED2Ev
	.weak	_ZNSt15__new_allocatorIlED1Ev
	.set	_ZNSt15__new_allocatorIlED1Ev,_ZNSt15__new_allocatorIlED2Ev
	.section	.text._ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	.type	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm, %function
_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm:
.LFB3541:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L206
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZNSt15__new_allocatorIlE10deallocateEPlm
	nop
.L206:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3541:
	.size	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm, .-_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	.section	.text._ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv:
.LFB3542:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3542:
	.size	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3544:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3544:
	.size	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_
	.type	_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_, %function
_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_:
.LFB3545:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L212
	ldr	x20, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	str	x20, [sp, 48]
	str	x19, [sp, 56]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	str	x0, [sp, 80]
	str	x1, [sp, 88]
	ldr	x0, [sp, 80]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	mov	x19, x0
	ldr	x0, [sp, 88]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	str	x0, [x19]
	nop
	nop
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 8
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L213
.L212:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIlSaIlEE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
.L213:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIlSaIlEE4backEv
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3545:
	.size	_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_, .-_ZNSt6vectorIlSaIlEE12emplace_backIJlEEERlDpOT_
	.section	.text._ZNKSt16initializer_listIlE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIlE5beginEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIlE5beginEv
	.type	_ZNKSt16initializer_listIlE5beginEv, %function
_ZNKSt16initializer_listIlE5beginEv:
.LFB3546:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3546:
	.size	_ZNKSt16initializer_listIlE5beginEv, .-_ZNKSt16initializer_listIlE5beginEv
	.section	.text._ZNKSt16initializer_listIlE3endEv,"axG",@progbits,_ZNKSt16initializer_listIlE3endEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIlE3endEv
	.type	_ZNKSt16initializer_listIlE3endEv, %function
_ZNKSt16initializer_listIlE3endEv:
.LFB3547:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNKSt16initializer_listIlE5beginEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt16initializer_listIlE4sizeEv
	lsl	x0, x0, 3
	add	x0, x19, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3547:
	.size	_ZNKSt16initializer_listIlE3endEv, .-_ZNKSt16initializer_listIlE3endEv
	.section	.text._ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag, %function
_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag:
.LFB3548:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 144
	stp	x19, x20, [sp, 160]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	nop
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	asr	x0, x0, 3
	nop
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE8capacityEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L223
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_
	ldr	x3, [sp, 8]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x20, [x0]
	ldr	x0, [sp, 24]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	str	x20, [sp, 88]
	str	x19, [sp, 96]
	str	x0, [sp, 104]
	ldr	x1, [sp, 96]
	ldr	x0, [sp, 88]
	bl	_ZSt8_DestroyIPlEvT_S1_
	nop
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x4, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L228
.L223:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L225
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	bl	_ZSt4copyIPKlPlET0_T_S4_S3_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl
	b	.L228
.L225:
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	str	x0, [sp, 120]
	add	x0, sp, 32
	str	x0, [sp, 128]
	nop
	add	x0, sp, 32
	mov	w2, w19
	ldr	x1, [sp, 120]
	bl	_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag
	nop
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	_ZSt4copyIPKlPlET0_T_S4_S3_
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	sub	x0, x0, x1
	str	x0, [sp, 48]
	ldr	x19, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x20
	ldr	x1, [sp, 8]
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
.L228:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L227
	bl	__stack_chk_fail
.L227:
	ldp	x19, x20, [sp, 160]
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3548:
	.size	_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB3554:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3554:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI6ResultSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorI6ResultED2Ev,"axG",@progbits,_ZNSt15__new_allocatorI6ResultED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorI6ResultED2Ev
	.type	_ZNSt15__new_allocatorI6ResultED2Ev, %function
_ZNSt15__new_allocatorI6ResultED2Ev:
.LFB3557:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3557:
	.size	_ZNSt15__new_allocatorI6ResultED2Ev, .-_ZNSt15__new_allocatorI6ResultED2Ev
	.weak	_ZNSt15__new_allocatorI6ResultED1Ev
	.set	_ZNSt15__new_allocatorI6ResultED1Ev,_ZNSt15__new_allocatorI6ResultED2Ev
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m:
.LFB3559:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L233
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m
	nop
.L233:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3560:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3560:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv, %function
_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv:
.LFB3562:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3562:
	.size	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	.section	.text._ZNKSt6vectorI6ResultSaIS0_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv
	.type	_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv, %function
_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv:
.LFB3563:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 5
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3563:
	.size	_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv, .-_ZNKSt6vectorI6ResultSaIS0_EE8capacityEv
	.section	.text._ZNKSt6vectorI6ResultSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv, %function
_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv:
.LFB3564:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 5
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3564:
	.size	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv, .-_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	.section	.text._ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm:
.LFB3565:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L243
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	mov	x2, 0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt15__new_allocatorI6ResultE8allocateEmPKv
	nop
	b	.L245
.L243:
	mov	x0, 0
.L245:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3565:
	.size	_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, %function
_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB3566:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3566:
	.size	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_:
.LFB3603:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3603:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv:
.LFB3605:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3605:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB3607:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x0, [sp]
	bl	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	str	d0, [sp, 16]
	add	x0, sp, 16
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	ldr	x0, [sp, 8]
	str	d0, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L253
	bl	__stack_chk_fail
.L253:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3607:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.align	2
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, %function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB3609:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	mov	x19, x0
	ldr	x0, [sp]
	ldr	x0, [x0]
	str	x0, [sp, 32]
	add	x0, sp, 32
	bl	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	sub	x0, x19, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	ldr	x0, [sp, 48]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L256
	bl	__stack_chk_fail
.L256:
	mov	x0, x1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3609:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, %function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB3610:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3610:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_:
.LFB3611:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3611:
	.size	_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR6ResultEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.type	_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, %function
_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB3612:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L262
	ldr	x20, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	str	x20, [sp, 48]
	str	x19, [sp, 56]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	str	x0, [sp, 80]
	str	x1, [sp, 88]
	ldr	x0, [sp, 80]
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	mov	x19, x0
	ldr	x0, [sp, 88]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x1, x0
	mov	x0, x19
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	nop
	nop
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 32
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L263
.L262:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorI6ResultSaIS0_EE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L263:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorI6ResultSaIS0_EE4backEv
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3612:
	.size	_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, .-_ZNSt6vectorI6ResultSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_, %function
_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB3622:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3622:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB3624:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3624:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZSt8_DestroyIPlEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPlEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPlEvT_S1_
	.type	_ZSt8_DestroyIPlEvT_S1_, %function
_ZSt8_DestroyIPlEvT_S1_:
.LFB3697:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3697:
	.size	_ZSt8_DestroyIPlEvT_S1_, .-_ZSt8_DestroyIPlEvT_S1_
	.section	.text._ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3698:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3698:
	.size	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.rodata
	.align	3
.LC42:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, %function
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_:
.LFB3700:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 144
	stp	x19, x20, [sp, 160]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	adrp	x0, .LC42
	add	x2, x0, :lo12:.LC42
	mov	x1, 1
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIlSaIlEE5beginEv
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 16
	bl	_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x20, [sp, 24]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	ldr	x0, [sp, 8]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	str	x20, [sp, 88]
	str	x19, [sp, 96]
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 88]
	str	x0, [sp, 112]
	ldr	x0, [sp, 96]
	str	x0, [sp, 120]
	str	x1, [sp, 128]
	ldr	x0, [sp, 120]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	mov	x19, x0
	ldr	x0, [sp, 128]
	bl	_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	str	x0, [x19]
	nop
	nop
	str	xzr, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	mov	x1, x19
	ldr	x0, [sp, 48]
	bl	_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	str	x0, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 56]
	mov	x0, x19
	bl	_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_
	str	x0, [sp, 80]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 48]
	mov	x0, x3
	bl	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L272
	bl	__stack_chk_fail
.L272:
	ldp	x19, x20, [sp, 160]
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3700:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.section	.text._ZNSt6vectorIlSaIlEE4backEv,"axG",@progbits,_ZNSt6vectorIlSaIlEE4backEv,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE4backEv
	.type	_ZNSt6vectorIlSaIlEE4backEv, %function
_ZNSt6vectorIlSaIlEE4backEv:
.LFB3704:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	_ZNSt6vectorIlSaIlEE3endEv
	str	x0, [sp, 24]
	add	x0, sp, 24
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl
	str	x0, [sp, 32]
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L275
	bl	__stack_chk_fail
.L275:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3704:
	.size	_ZNSt6vectorIlSaIlEE4backEv, .-_ZNSt6vectorIlSaIlEE4backEv
	.section	.text._ZNKSt16initializer_listIlE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIlE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIlE4sizeEv
	.type	_ZNKSt16initializer_listIlE4sizeEv, %function
_ZNKSt16initializer_listIlE4sizeEv:
.LFB3705:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3705:
	.size	_ZNKSt16initializer_listIlE4sizeEv, .-_ZNKSt16initializer_listIlE4sizeEv
	.section	.text._ZNKSt6vectorIlSaIlEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIlSaIlEE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIlSaIlEE8capacityEv
	.type	_ZNKSt6vectorIlSaIlEE8capacityEv, %function
_ZNKSt6vectorIlSaIlEE8capacityEv:
.LFB3708:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3708:
	.size	_ZNKSt6vectorIlSaIlEE8capacityEv, .-_ZNKSt6vectorIlSaIlEE8capacityEv
	.section	.rodata
	.align	3
.LC43:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_:
.LFB3709:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp]
	str	x0, [sp, 32]
	add	x0, sp, 24
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 48]
	nop
	nop
	add	x0, sp, 24
	bl	_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 8]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 24
	bl	_ZNSt15__new_allocatorIlED2Ev
	nop
	and	w0, w19, 1
	cmp	w0, 0
	beq	.L281
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L282
	bl	__stack_chk_fail
.L282:
	adrp	x0, .LC43
	add	x0, x0, :lo12:.LC43
	bl	_ZSt20__throw_length_errorPKc
.L281:
	ldr	x0, [sp, 8]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L284
	bl	__stack_chk_fail
.L284:
	mov	x0, x1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3709:
	.size	_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_,"axG",@progbits,_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_
	.type	_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_, %function
_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_:
.LFB3710:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3710
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
.LEHB20:
	bl	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
.LEHE20:
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.LEHB21:
	bl	_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E
.LEHE21:
	ldr	x0, [sp, 72]
	b	.L291
.L289:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
	bl	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
.LEHB22:
	bl	__cxa_rethrow
.LEHE22:
.L290:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB23:
	bl	_Unwind_Resume
.LEHE23:
.L291:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3710:
	.section	.gcc_except_table
	.align	2
.LLSDA3710:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3710-.LLSDATTD3710
.LLSDATTD3710:
	.byte	0x1
	.uleb128 .LLSDACSE3710-.LLSDACSB3710
.LLSDACSB3710:
	.uleb128 .LEHB20-.LFB3710
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB3710
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L289-.LFB3710
	.uleb128 0x1
	.uleb128 .LEHB22-.LFB3710
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L290-.LFB3710
	.uleb128 0
	.uleb128 .LEHB23-.LFB3710
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE3710:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT3710:
	.section	.text._ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_,"axG",@progbits,_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_,comdat
	.size	_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_, .-_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIPKlEEPlmT_S6_
	.section	.text._ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl,"axG",@progbits,_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl
	.type	_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl, %function
_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl:
.LFB3711:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L294
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	str	x19, [sp, 64]
	str	x1, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIPlEvT_S1_
	nop
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L294:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3711:
	.size	_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl, .-_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl
	.section	.text._ZSt4copyIPKlPlET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKlPlET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt4copyIPKlPlET0_T_S4_S3_
	.type	_ZSt4copyIPKlPlET0_T_S4_S3_, %function
_ZSt4copyIPKlPlET0_T_S4_S3_:
.LFB3712:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPKlET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPKlET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3712:
	.size	_ZSt4copyIPKlPlET0_T_S4_S3_, .-_ZSt4copyIPKlPlET0_T_S4_S3_
	.section	.text._ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E:
.LFB3714:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3714:
	.size	_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E
	.section	.text._ZSt8_DestroyIP6ResultEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP6ResultEvT_S2_,comdat
	.align	2
	.weak	_ZSt8_DestroyIP6ResultEvT_S2_
	.type	_ZSt8_DestroyIP6ResultEvT_S2_, %function
_ZSt8_DestroyIP6ResultEvT_S2_:
.LFB3719:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3719:
	.size	_ZSt8_DestroyIP6ResultEvT_S2_, .-_ZSt8_DestroyIP6ResultEvT_S2_
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_, %function
_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_:
.LFB3720:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	mov	x0, 288230376151711743
	str	x0, [sp, 16]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	mov	x0, 288230376151711743
	nop
	nop
	str	x0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 16
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L305
	bl	__stack_chk_fail
.L305:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3720:
	.size	_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI6ResultSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3721:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3721:
	.size	_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_, %function
_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3723:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIP6ResultET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIP6ResultET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIP6ResultET_S2_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3723:
	.size	_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP6ResultS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.align	2
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, %function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB3735:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	fmov	x0, d0
	fmov	d0, x0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3735:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE, %function
_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3736:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3736:
	.size	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, %function
_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB3738:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 144
	stp	x19, x20, [sp, 160]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	adrp	x0, .LC42
	add	x2, x0, :lo12:.LC42
	mov	x1, 1
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorI6ResultSaIS0_EE5beginEv
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 16
	bl	_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE11_M_allocateEm
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x20, [sp, 24]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 5
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	ldr	x0, [sp, 8]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	str	x20, [sp, 88]
	str	x19, [sp, 96]
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 88]
	str	x0, [sp, 112]
	ldr	x0, [sp, 96]
	str	x0, [sp, 120]
	str	x1, [sp, 128]
	ldr	x0, [sp, 120]
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	mov	x19, x0
	ldr	x0, [sp, 128]
	bl	_ZSt7forwardI6ResultEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x1, x0
	mov	x0, x19
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	nop
	nop
	str	xzr, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	mov	x1, x19
	ldr	x0, [sp, 48]
	bl	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 32
	str	x0, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 56]
	mov	x0, x19
	bl	_ZNSt6vectorI6ResultSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	str	x0, [sp, 80]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x2, x0
	ldr	x1, [sp, 48]
	mov	x0, x3
	bl	_ZNSt12_Vector_baseI6ResultSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 5
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L315
	bl	__stack_chk_fail
.L315:
	ldp	x19, x20, [sp, 160]
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3738:
	.size	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE4backEv,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE4backEv,comdat
	.align	2
	.weak	_ZNSt6vectorI6ResultSaIS0_EE4backEv
	.type	_ZNSt6vectorI6ResultSaIS0_EE4backEv, %function
_ZNSt6vectorI6ResultSaIS0_EE4backEv:
.LFB3739:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	_ZNSt6vectorI6ResultSaIS0_EE3endEv
	str	x0, [sp, 24]
	add	x0, sp, 24
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl
	str	x0, [sp, 32]
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L318
	bl	__stack_chk_fail
.L318:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3739:
	.size	_ZNSt6vectorI6ResultSaIS0_EE4backEv, .-_ZNSt6vectorI6ResultSaIS0_EE4backEv
	.section	.text._ZNSt15__new_allocatorIlE10deallocateEPlm,"axG",@progbits,_ZNSt15__new_allocatorIlE10deallocateEPlm,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIlE10deallocateEPlm
	.type	_ZNSt15__new_allocatorIlE10deallocateEPlm, %function
_ZNSt15__new_allocatorIlE10deallocateEPlm:
.LFB3791:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3791:
	.size	_ZNSt15__new_allocatorIlE10deallocateEPlm, .-_ZNSt15__new_allocatorIlE10deallocateEPlm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_:
.LFB3792:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3792:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	.section	.text._ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc, %function
_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc:
.LFB3794:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L323
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L324
	bl	__stack_chk_fail
.L324:
	ldr	x0, [sp, 8]
	bl	_ZSt20__throw_length_errorPKc
.L323:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	str	x0, [sp, 40]
	add	x1, sp, 16
	add	x0, sp, 40
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bcc	.L325
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bls	.L326
.L325:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIlSaIlEE8max_sizeEv
	b	.L327
.L326:
	ldr	x0, [sp, 48]
.L327:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L329
	bl	__stack_chk_fail
.L329:
	mov	x0, x1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3794:
	.size	_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, %function
_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3795:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x0, x0, 3
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3795:
	.size	_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPlSt6vectorIlSaIlEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm:
.LFB3796:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L333
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	mov	x2, 0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt15__new_allocatorIlE8allocateEmPKv
	nop
	b	.L335
.L333:
	mov	x0, 0
.L335:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3796:
	.size	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm, .-_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	.section	.text._ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_
	.type	_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_, %function
_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_:
.LFB3797:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3797:
	.size	_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_, .-_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl:
.LFB3799:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEC1ERKS1_
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L341
	bl	__stack_chk_fail
.L341:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3799:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl
	.section	.text._ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_:
.LFB3800:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	mov	x0, 1152921504606846975
	str	x0, [sp, 16]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	mov	x0, 1152921504606846975
	nop
	nop
	str	x0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 16
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L347
	bl	__stack_chk_fail
.L347:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3800:
	.size	_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_
	.section	.text._ZSt12__miter_baseIPKlET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKlET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPKlET_S2_
	.type	_ZSt12__miter_baseIPKlET_S2_, %function
_ZSt12__miter_baseIPKlET_S2_:
.LFB3804:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3804:
	.size	_ZSt12__miter_baseIPKlET_S2_, .-_ZSt12__miter_baseIPKlET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_, %function
_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_:
.LFB3805:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPKlET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKlET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPlET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPlET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3805:
	.size	_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKlPlET1_T0_S4_S3_
	.section	.text._ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag
	.type	_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag, %function
_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag:
.LFB3807:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3807:
	.size	_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag, .-_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag
	.section	.text._ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_, %function
_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_:
.LFB3808:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 62]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3808:
	.size	_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKlPlET0_T_S4_S3_
	.section	.text._ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m,"axG",@progbits,_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m
	.type	_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m, %function
_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m:
.LFB3810:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3810:
	.size	_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m, .-_ZNSt15__new_allocatorI6ResultE10deallocateEPS0_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_:
.LFB3811:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3811:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP6ResultEEvT_S4_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3813:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L359
	ldr	x0, [sp]
	b	.L360
.L359:
	ldr	x0, [sp, 8]
.L360:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3813:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt15__new_allocatorI6ResultE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorI6ResultE8allocateEmPKv,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorI6ResultE8allocateEmPKv
	.type	_ZNSt15__new_allocatorI6ResultE8allocateEmPKv, %function
_ZNSt15__new_allocatorI6ResultE8allocateEmPKv:
.LFB3814:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	mov	x0, 288230376151711743
	ldr	x1, [sp, 32]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L363
	ldr	x1, [sp, 32]
	mov	x0, 576460752303423487
	cmp	x1, x0
	bls	.L364
	bl	_ZSt28__throw_bad_array_new_lengthv
.L364:
	bl	_ZSt17__throw_bad_allocv
.L363:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 5
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3814:
	.size	_ZNSt15__new_allocatorI6ResultE8allocateEmPKv, .-_ZNSt15__new_allocatorI6ResultE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIP6ResultET_S2_,"axG",@progbits,_ZSt12__niter_baseIP6ResultET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIP6ResultET_S2_
	.type	_ZSt12__niter_baseIP6ResultET_S2_, %function
_ZSt12__niter_baseIP6ResultET_S2_:
.LFB3815:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3815:
	.size	_ZSt12__niter_baseIP6ResultET_S2_, .-_ZSt12__niter_baseIP6ResultET_S2_
	.section	.text._ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.type	_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, %function
_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
.LFB3816:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 5
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L369
	ldr	x0, [sp, 56]
	lsl	x0, x0, 5
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L369:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 5
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3816:
	.size	_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, .-_ZSt14__relocate_a_1I6ResultS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, %function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB3819:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	scvtf	d0, x0
	mov	x0, 225833675390976
	movk	x0, 0x41cd, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	ldr	d0, [sp, 32]
	fmov	x0, d0
	fmov	d0, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L373
	bl	__stack_chk_fail
.L373:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3819:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc, %function
_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc:
.LFB3821:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L375
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L376
	bl	__stack_chk_fail
.L376:
	ldr	x0, [sp, 8]
	bl	_ZSt20__throw_length_errorPKc
.L375:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	str	x0, [sp, 40]
	add	x1, sp, 16
	add	x0, sp, 40
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bcc	.L377
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bls	.L378
.L377:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI6ResultSaIS0_EE8max_sizeEv
	b	.L379
.L378:
	ldr	x0, [sp, 48]
.L379:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L381
	bl	__stack_chk_fail
.L381:
	mov	x0, x1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3821:
	.size	_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI6ResultSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, %function
_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB3822:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x0, x0, 5
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3822:
	.size	_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP6ResultSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl:
.LFB3824:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 5
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L386
	bl	__stack_chk_fail
.L386:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3824:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP6ResultSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZNKSt6vectorIlSaIlEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIlSaIlEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIlSaIlEE8max_sizeEv
	.type	_ZNKSt6vectorIlSaIlEE8max_sizeEv, %function
_ZNKSt6vectorIlSaIlEE8max_sizeEv:
.LFB3844:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3844:
	.size	_ZNKSt6vectorIlSaIlEE8max_sizeEv, .-_ZNKSt6vectorIlSaIlEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB3845:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L390
	ldr	x0, [sp]
	b	.L391
.L390:
	ldr	x0, [sp, 8]
.L391:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3845:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_, %function
_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_:
.LFB3847:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPlET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPlET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPlET_S1_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3847:
	.size	_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_
	.section	.text._ZSt12__niter_baseIPKlET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKlET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPKlET_S2_
	.type	_ZSt12__niter_baseIPKlET_S2_, %function
_ZSt12__niter_baseIPKlET_S2_:
.LFB3853:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3853:
	.size	_ZSt12__niter_baseIPKlET_S2_, .-_ZSt12__niter_baseIPKlET_S2_
	.section	.text._ZSt12__niter_baseIPlET_S1_,"axG",@progbits,_ZSt12__niter_baseIPlET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPlET_S1_
	.type	_ZSt12__niter_baseIPlET_S1_, %function
_ZSt12__niter_baseIPlET_S1_:
.LFB3854:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3854:
	.size	_ZSt12__niter_baseIPlET_S1_, .-_ZSt12__niter_baseIPlET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_, %function
_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_:
.LFB3855:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3855:
	.size	_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPlET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPlET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPlET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPlET_RKS1_S1_, %function
_ZSt12__niter_wrapIPlET_RKS1_S1_:
.LFB3856:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3856:
	.size	_ZSt12__niter_wrapIPlET_RKS1_S1_, .-_ZSt12__niter_wrapIPlET_RKS1_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_:
.LFB3857:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt4copyIPKlPlET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3857:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKlPlEET0_T_S6_S5_
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB3862:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	x0, [sp, 8]
	str	d0, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3862:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.text._ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv:
.LFB3873:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3873:
	.size	_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIlE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIlE8allocateEmPKv,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIlE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIlE8allocateEmPKv, %function
_ZNSt15__new_allocatorIlE8allocateEmPKv:
.LFB3874:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	mov	x0, 1152921504606846975
	ldr	x1, [sp, 32]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L409
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L410
	bl	_ZSt28__throw_bad_array_new_lengthv
.L410:
	bl	_ZSt17__throw_bad_allocv
.L409:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3874:
	.size	_ZNSt15__new_allocatorIlE8allocateEmPKv, .-_ZNSt15__new_allocatorIlE8allocateEmPKv
	.section	.text._ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, %function
_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3875:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L413
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L413:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3875:
	.size	_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_, %function
_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_:
.LFB3877:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3877:
	.size	_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_:
.LFB3885:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	.L418
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	b	.L419
.L418:
	ldr	x0, [sp, 56]
	cmp	x0, 1
	bne	.L419
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_
.L419:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3885:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKllEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_, %function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_:
.LFB3886:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3886:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIlKlEEvPT_PT0_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, %object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, %object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, %object
	.size	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE:
	.byte	1
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
