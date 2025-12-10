	.arch armv8-a
	.file	"bench_hashmix.cpp"
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
	.string	"stoull"
	.section	.text._ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.align	2
	.weak	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, %function
_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1173:
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
	adrp	x0, :got:__isoc23_strtoull
	ldr	x0, [x0, :got_lo12:__isoc23_strtoull]
	bl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1173:
	.size	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
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
	.section	.text._ZSt3decRSt8ios_base,"axG",@progbits,_ZSt3decRSt8ios_base,comdat
	.align	2
	.weak	_ZSt3decRSt8ios_base
	.type	_ZSt3decRSt8ios_base, %function
_ZSt3decRSt8ios_base:
.LFB1633:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w2, 74
	mov	w1, 2
	ldr	x0, [sp, 24]
	bl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1633:
	.size	_ZSt3decRSt8ios_base, .-_ZSt3decRSt8ios_base
	.section	.text._ZSt3hexRSt8ios_base,"axG",@progbits,_ZSt3hexRSt8ios_base,comdat
	.align	2
	.weak	_ZSt3hexRSt8ios_base
	.type	_ZSt3hexRSt8ios_base, %function
_ZSt3hexRSt8ios_base:
.LFB1634:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w2, 74
	mov	w1, 8
	ldr	x0, [sp, 24]
	bl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1634:
	.size	_ZSt3hexRSt8ios_base, .-_ZSt3hexRSt8ios_base
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
.LFB2536:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2536:
	.size	_ZSt12setprecisioni, .-_ZSt12setprecisioni
	.text
	.align	2
	.type	_ZL15hashmix_classicmmmm, %function
_ZL15hashmix_classicmmmm:
.LFB3007:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	mul	x1, x1, x0
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3007:
	.size	_ZL15hashmix_classicmmmm, .-_ZL15hashmix_classicmmmm
	.align	2
	.type	_ZL13hashmix_reistllll, %function
_ZL13hashmix_reistllll:
.LFB3008:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	neg	x0, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 32]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 32]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	cset	w0, gt
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [sp, 64]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, le
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3008:
	.size	_ZL13hashmix_reistllll, .-_ZL13hashmix_reistllll
	.section	.text._ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev:
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
	bl	_ZNSt15__new_allocatorImED2Ev
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3015:
	.size	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev,_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEEC2Ev
	.type	_ZNSt12_Vector_baseImSaImEEC2Ev, %function
_ZNSt12_Vector_baseImSaImEEC2Ev:
.LFB3017:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3017:
	.size	_ZNSt12_Vector_baseImSaImEEC2Ev, .-_ZNSt12_Vector_baseImSaImEEC2Ev
	.weak	_ZNSt12_Vector_baseImSaImEEC1Ev
	.set	_ZNSt12_Vector_baseImSaImEEC1Ev,_ZNSt12_Vector_baseImSaImEEC2Ev
	.section	.text._ZNSt6vectorImSaImEEC2Ev,"axG",@progbits,_ZNSt6vectorImSaImEEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEEC2Ev
	.type	_ZNSt6vectorImSaImEEC2Ev, %function
_ZNSt6vectorImSaImEEC2Ev:
.LFB3019:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3019:
	.size	_ZNSt6vectorImSaImEEC2Ev, .-_ZNSt6vectorImSaImEEC2Ev
	.weak	_ZNSt6vectorImSaImEEC1Ev
	.set	_ZNSt6vectorImSaImEEC1Ev,_ZNSt6vectorImSaImEEC2Ev
	.text
	.align	2
	.type	_ZZ4mainENKUlmE_clEm, %function
_ZZ4mainENKUlmE_clEm:
.LFB3025:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	xzr, [sp, 56]
	b	.L41
.L42:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	ldr	x2, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	x0, x4
	bl	_ZL15hashmix_classicmmmm
	str	x0, [x19]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L41:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L42
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3025:
	.size	_ZZ4mainENKUlmE_clEm, .-_ZZ4mainENKUlmE_clEm
	.align	2
	.type	_ZZ4mainENKUlmE0_clEm, %function
_ZZ4mainENKUlmE0_clEm:
.LFB3026:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	xzr, [sp, 56]
	b	.L44
.L45:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	ldr	x0, [x0]
	mov	x3, x0
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	x0, x4
	bl	_ZL13hashmix_reistllll
	str	x0, [x19]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L44:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L45
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3026:
	.size	_ZZ4mainENKUlmE0_clEm, .-_ZZ4mainENKUlmE0_clEm
	.section	.rodata
	.align	3
.LC2:
	.string	"/proc/cpuinfo"
	.align	3
.LC3:
	.string	"model name"
	.align	3
.LC4:
	.string	":"
	.align	3
.LC5:
	.string	"cpu MHz"
	.align	3
.LC6:
	.string	"/proc/meminfo"
	.align	3
.LC7:
	.string	"MemTotal"
	.align	3
.LC8:
	.string	"r"
	.align	3
.LC9:
	.string	"uname -o"
	.align	3
.LC10:
	.string	"========================================\n"
	.align	3
.LC11:
	.string	"Hashmix benchmark (classic % vs REIST reduction)\n"
	.align	3
.LC12:
	.string	"System Information:\n"
	.align	3
.LC13:
	.string	"  Hostname: "
	.align	3
.LC14:
	.string	"\n"
	.align	3
.LC15:
	.string	"  OS: "
	.align	3
.LC16:
	.string	"  CPU Model: "
	.align	3
.LC17:
	.string	"  CPU MHz: "
	.align	3
.LC18:
	.string	"  Memory: "
	.align	3
.LC19:
	.string	"========================================\n\n"
	.align	3
.LC20:
	.string	"Iterations N = "
	.align	3
.LC21:
	.string	"M = "
	.align	3
.LC22:
	.string	""
	.align	3
.LC23:
	.string	"  classic : "
	.align	3
.LC24:
	.string	"  REIST   : "
	.align	3
.LC25:
	.string	"  speedup : "
	.align	3
.LC26:
	.string	"x (classic / REIST)"
	.align	3
.LC27:
	.string	"  sink values: "
	.align	3
.LC28:
	.string	" / "
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
	sub	sp, sp, #1344
	.cfi_def_cfa_offset 1392
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1336]
	mov	x1, 0
	mov	x0, 57600
	movk	x0, 0x5f5, lsl 16
	str	x0, [sp, 72]
	add	x0, sp, 144
	bl	_ZNSt6vectorImSaImEEC1Ev
	mov	x0, 32557
	movk	x0, 0x4c95, lsl 16
	movk	x0, 0xf42d, lsl 32
	movk	x0, 0x5851, lsl 48
	str	x0, [sp, 16]
	mov	x0, 33103
	movk	x0, 0xf767, lsl 16
	movk	x0, 0x7b7e, lsl 32
	movk	x0, 0x1405, lsl 48
	str	x0, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L47
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x1, [x0]
	add	x0, sp, 168
	str	x0, [sp, 112]
	nop
	nop
	add	x2, sp, 168
	add	x0, sp, 424
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	add	x0, sp, 424
	mov	w2, 10
	mov	x1, 0
.LEHB1:
	bl	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	str	x0, [sp, 72]
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L47:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	ble	.L48
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	x1, [x0]
	add	x0, sp, 168
	str	x0, [sp, 120]
	nop
	nop
	add	x2, sp, 168
	add	x0, sp, 424
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	add	x0, sp, 424
	mov	w2, 10
	mov	x1, 0
.LEHB3:
	bl	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE3:
	str	x0, [sp, 24]
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L48:
	ldr	w0, [sp, 12]
	cmp	w0, 3
	ble	.L49
	ldr	x0, [sp]
	add	x0, x0, 24
	ldr	x1, [x0]
	add	x0, sp, 64
	str	x0, [sp, 128]
	nop
	nop
	add	x2, sp, 64
	add	x0, sp, 424
.LEHB4:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE4:
	add	x0, sp, 424
	mov	w2, 10
	mov	x1, 0
.LEHB5:
	bl	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	str	x0, [sp, 168]
	add	x1, sp, 168
	add	x0, sp, 144
	bl	_ZNSt6vectorImSaImEE9push_backEOm
.LEHE5:
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 64
	bl	_ZNSt15__new_allocatorIcED2Ev
	b	.L50
.L49:
	add	x0, sp, 1352
	sub	x0, x0, #928
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 424
	mov	x20, x0
	mov	x21, 4
	add	x0, sp, 144
	mov	x1, x20
	mov	x2, x21
.LEHB6:
	bl	_ZNSt6vectorImSaImEEaSESt16initializer_listImE
.LEHE6:
.L50:
	add	x0, sp, 200
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 232
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 264
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 296
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x3, sp, 424
	mov	w2, 8
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x3
.LEHB7:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	b	.L53
.L54:
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L52
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 360
	add	x2, sp, 392
	mov	x8, x2
	mov	x2, -1
.LEHB8:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 392
	add	x0, sp, 200
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 392
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L52:
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L53
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 360
	add	x2, sp, 392
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 392
	add	x0, sp, 232
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 392
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L53:
	add	x1, sp, 360
	add	x0, sp, 424
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
	bne	.L54
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 424
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x3, sp, 424
	mov	w2, 8
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x3
.LEHB9:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE9:
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x1, sp, 360
	add	x0, sp, 424
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
	beq	.L55
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L55
	add	x3, sp, 360
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 360
	add	x2, sp, 392
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE10:
	add	x1, sp, 392
	add	x0, sp, 264
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 392
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L55:
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 424
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 1080
	mov	x1, 256
	bl	gethostname
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L56
	add	x1, sp, 1080
	add	x0, sp, 296
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L56:
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	popen
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	cmp	x0, 0
	beq	.L57
	add	x0, sp, 952
	ldr	x2, [sp, 80]
	mov	w1, 128
	bl	fgets
.LEHE11:
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L58
	add	x0, sp, 168
	str	x0, [sp, 136]
	nop
	nop
	add	x2, sp, 168
	add	x1, sp, 952
	add	x0, sp, 424
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE12:
	add	x1, sp, 424
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	add	x0, sp, 328
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L59
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L59
	mov	w0, 1
	b	.L60
.L59:
	mov	w0, 0
.L60:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L58
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv
.L58:
	ldr	x0, [sp, 80]
.LEHB13:
	bl	pclose
.L57:
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
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 296
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 328
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 200
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 232
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 264
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 72]
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 144
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	bl	_ZNSt6vectorImSaImEE5beginEv
	str	x0, [sp, 40]
	ldr	x0, [sp, 88]
	bl	_ZNSt6vectorImSaImEE3endEv
	str	x0, [sp, 48]
	b	.L61
.L64:
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv
	ldr	x0, [x0]
	str	x0, [sp, 32]
	mov	x0, 52719
	movk	x0, 0x90ab, lsl 16
	movk	x0, 0x5678, lsl 32
	movk	x0, 0x1234, lsl 48
	str	x0, [sp, 56]
	mov	x0, 52719
	movk	x0, 0x90ab, lsl 16
	movk	x0, 0x5678, lsl 32
	movk	x0, 0x1234, lsl 48
	str	x0, [sp, 64]
	add	x0, sp, 56
	str	x0, [sp, 168]
	add	x0, sp, 16
	str	x0, [sp, 176]
	add	x0, sp, 24
	str	x0, [sp, 184]
	add	x0, sp, 32
	str	x0, [sp, 192]
	add	x0, sp, 168
	ldr	x1, [sp, 72]
	bl	_Z9time_loopIZ4mainEUlmE_EdOT_m
	str	d0, [sp, 96]
	add	x0, sp, 64
	str	x0, [sp, 168]
	add	x0, sp, 16
	str	x0, [sp, 176]
	add	x0, sp, 24
	str	x0, [sp, 184]
	add	x0, sp, 32
	str	x0, [sp, 192]
	add	x0, sp, 168
	ldr	x1, [sp, 72]
	bl	_Z9time_loopIZ4mainEUlmE0_EdOT_m
	str	d0, [sp, 104]
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 96]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 104]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 104]
	fcmpe	d0, #0.0
	bgt	.L90
	b	.L62
.L90:
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 104]
	ldr	d1, [sp, 96]
	fdiv	d0, d1, d0
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L62:
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, _ZSt3hexRSt8ios_base
	add	x1, x0, :lo12:_ZSt3hexRSt8ios_base
	mov	x0, x2
	bl	_ZNSolsEPFRSt8ios_baseS0_E
	mov	x2, x0
	ldr	x0, [sp, 56]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 64]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEl
	mov	x2, x0
	adrp	x0, _ZSt3decRSt8ios_base
	add	x1, x0, :lo12:_ZSt3decRSt8ios_base
	mov	x0, x2
	bl	_ZNSolsEPFRSt8ios_baseS0_E
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE13:
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv
.L61:
	add	x1, sp, 48
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L64
	mov	w19, 0
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 296
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 264
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 232
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 200
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 144
	bl	_ZNSt6vectorImSaImEED1Ev
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1336]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L78
	b	.L91
.L80:
	mov	x19, x0
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L67
.L79:
	mov	x19, x0
.L67:
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L68
.L83:
	mov	x19, x0
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L70
.L82:
	mov	x19, x0
.L70:
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L68
.L85:
	mov	x19, x0
	add	x0, sp, 424
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L72
.L84:
	mov	x19, x0
.L72:
	add	x0, sp, 64
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L68
.L86:
	mov	x19, x0
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 424
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L74
.L88:
	mov	x19, x0
	add	x0, sp, 360
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 424
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L74
.L89:
	mov	x19, x0
	add	x0, sp, 168
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L74
.L87:
	mov	x19, x0
.L74:
	add	x0, sp, 328
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 296
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 264
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 232
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 200
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L68
.L81:
	mov	x19, x0
.L68:
	add	x0, sp, 144
	bl	_ZNSt6vectorImSaImEED1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1336]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L77
	bl	__stack_chk_fail
.L77:
	mov	x0, x1
.LEHB14:
	bl	_Unwind_Resume
.LEHE14:
.L91:
	bl	__stack_chk_fail
.L78:
	mov	w0, w1
	add	sp, sp, 1344
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
	.uleb128 .L79-.LFB3010
	.uleb128 0
	.uleb128 .LEHB1-.LFB3010
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L80-.LFB3010
	.uleb128 0
	.uleb128 .LEHB2-.LFB3010
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L82-.LFB3010
	.uleb128 0
	.uleb128 .LEHB3-.LFB3010
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L83-.LFB3010
	.uleb128 0
	.uleb128 .LEHB4-.LFB3010
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L84-.LFB3010
	.uleb128 0
	.uleb128 .LEHB5-.LFB3010
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L85-.LFB3010
	.uleb128 0
	.uleb128 .LEHB6-.LFB3010
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L81-.LFB3010
	.uleb128 0
	.uleb128 .LEHB7-.LFB3010
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L87-.LFB3010
	.uleb128 0
	.uleb128 .LEHB8-.LFB3010
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L86-.LFB3010
	.uleb128 0
	.uleb128 .LEHB9-.LFB3010
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L87-.LFB3010
	.uleb128 0
	.uleb128 .LEHB10-.LFB3010
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L88-.LFB3010
	.uleb128 0
	.uleb128 .LEHB11-.LFB3010
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L87-.LFB3010
	.uleb128 0
	.uleb128 .LEHB12-.LFB3010
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L89-.LFB3010
	.uleb128 0
	.uleb128 .LEHB13-.LFB3010
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L87-.LFB3010
	.uleb128 0
	.uleb128 .LEHB14-.LFB3010
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE3010:
	.text
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.xword	1000003
	.xword	10000019
	.xword	100000007
	.xword	1000000007
	.text
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3027:
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
	b	.L93
.L94:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L93:
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
	bne	.L94
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L96
	bl	__stack_chk_fail
.L96:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3027:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB3093:
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
.LFE3093:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB3096:
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
	bne	.L100
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L100:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3096:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE, %function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE:
.LFB3098:
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
.LFE3098:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3091:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3091
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
	bl	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	ldr	x3, [sp, 40]
	add	x0, sp, 64
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 24]
.LEHB15:
	blr	x3
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L104
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L105
	bl	__stack_chk_fail
.L105:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L104:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L106
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L107
.L106:
	mov	w0, 1
	b	.L108
.L107:
	mov	w0, 0
.L108:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L109
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L110
	bl	__stack_chk_fail
.L110:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE15:
.L109:
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L111
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L111:
	ldr	x19, [sp, 80]
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L115
	b	.L117
.L116:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L114
	bl	__stack_chk_fail
.L114:
	mov	x0, x1
.LEHB16:
	bl	_Unwind_Resume
.LEHE16:
.L117:
	bl	__stack_chk_fail
.L115:
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
.LFE3091:
	.section	.gcc_except_table
.LLSDA3091:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3091-.LLSDACSB3091
.LLSDACSB3091:
	.uleb128 .LEHB15-.LFB3091
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L116-.LFB3091
	.uleb128 0
	.uleb128 .LEHB16-.LFB3091
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE3091:
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3136:
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
.LFE3136:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align	2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, %function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB3281:
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
.LFE3281:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev:
.LFB3326:
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
	bl	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3326:
	.size	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev,_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEED2Ev
	.type	_ZNSt12_Vector_baseImSaImEED2Ev, %function
_ZNSt12_Vector_baseImSaImEED2Ev:
.LFB3332:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3332
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
	bl	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3332:
	.section	.gcc_except_table
.LLSDA3332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3332-.LLSDACSB3332
.LLSDACSB3332:
.LLSDACSE3332:
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.size	_ZNSt12_Vector_baseImSaImEED2Ev, .-_ZNSt12_Vector_baseImSaImEED2Ev
	.weak	_ZNSt12_Vector_baseImSaImEED1Ev
	.set	_ZNSt12_Vector_baseImSaImEED1Ev,_ZNSt12_Vector_baseImSaImEED2Ev
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEED2Ev
	.type	_ZNSt6vectorImSaImEED2Ev, %function
_ZNSt6vectorImSaImEED2Ev:
.LFB3335:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3335
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
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	str	x20, [sp, 56]
	str	x19, [sp, 64]
	str	x0, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIPmEvT_S1_
	nop
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseImSaImEED2Ev
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
.LFE3335:
	.section	.gcc_except_table
.LLSDA3335:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3335-.LLSDACSB3335
.LLSDACSB3335:
.LLSDACSE3335:
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.size	_ZNSt6vectorImSaImEED2Ev, .-_ZNSt6vectorImSaImEED2Ev
	.weak	_ZNSt6vectorImSaImEED1Ev
	.set	_ZNSt6vectorImSaImEED1Ev,_ZNSt6vectorImSaImEED2Ev
	.section	.rodata
	.align	3
.LC29:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3338:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3338
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
	bne	.L125
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
.LEHB17:
	bl	_ZSt19__throw_logic_errorPKc
.L125:
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
.LEHE17:
	b	.L128
.L127:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB18:
	bl	_Unwind_Resume
.LEHE18:
.L128:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3338:
	.section	.gcc_except_table
.LLSDA3338:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3338-.LLSDACSB3338
.LLSDACSB3338:
	.uleb128 .LEHB17-.LFB3338
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L127-.LFB3338
	.uleb128 0
	.uleb128 .LEHB18-.LFB3338
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE3338:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorImSaImEE9push_backEOm,"axG",@progbits,_ZNSt6vectorImSaImEE9push_backEOm,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE9push_backEOm
	.type	_ZNSt6vectorImSaImEE9push_backEOm, %function
_ZNSt6vectorImSaImEE9push_backEOm:
.LFB3340:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3340:
	.size	_ZNSt6vectorImSaImEE9push_backEOm, .-_ZNSt6vectorImSaImEE9push_backEOm
	.section	.text._ZNSt6vectorImSaImEEaSESt16initializer_listImE,"axG",@progbits,_ZNSt6vectorImSaImEEaSESt16initializer_listImE,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEEaSESt16initializer_listImE
	.type	_ZNSt6vectorImSaImEEaSESt16initializer_listImE, %function
_ZNSt6vectorImSaImEEaSESt16initializer_listImE:
.LFB3341:
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
	bl	_ZNKSt16initializer_listImE5beginEv
	mov	x19, x0
	add	x0, sp, 8
	bl	_ZNKSt16initializer_listImE3endEv
	mov	w3, w20
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L132
	bl	__stack_chk_fail
.L132:
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
.LFE3341:
	.size	_ZNSt6vectorImSaImEEaSESt16initializer_listImE, .-_ZNSt6vectorImSaImEEaSESt16initializer_listImE
	.section	.text._ZNSt6vectorImSaImEE5beginEv,"axG",@progbits,_ZNSt6vectorImSaImEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE5beginEv
	.type	_ZNSt6vectorImSaImEE5beginEv, %function
_ZNSt6vectorImSaImEE5beginEv:
.LFB3366:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L135
	bl	__stack_chk_fail
.L135:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3366:
	.size	_ZNSt6vectorImSaImEE5beginEv, .-_ZNSt6vectorImSaImEE5beginEv
	.section	.text._ZNSt6vectorImSaImEE3endEv,"axG",@progbits,_ZNSt6vectorImSaImEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE3endEv
	.type	_ZNSt6vectorImSaImEE3endEv, %function
_ZNSt6vectorImSaImEE3endEv:
.LFB3367:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L138
	bl	__stack_chk_fail
.L138:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3367:
	.size	_ZNSt6vectorImSaImEE3endEv, .-_ZNSt6vectorImSaImEE3endEv
	.section	.text._ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3368:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
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
.LFE3368:
	.size	_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv:
.LFB3369:
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
.LFE3369:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv:
.LFB3370:
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
.LFE3370:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.align	2
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, %function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB3373:
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
	beq	.L147
	bl	__stack_chk_fail
.L147:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3373:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.text
	.align	2
	.type	_Z9time_loopIZ4mainEUlmE_EdOT_m, %function
_Z9time_loopIZ4mainEUlmE_EdOT_m:
.LFB3371:
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
	bl	_ZZ4mainENKUlmE_clEm
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
	beq	.L150
	bl	__stack_chk_fail
.L150:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3371:
	.size	_Z9time_loopIZ4mainEUlmE_EdOT_m, .-_Z9time_loopIZ4mainEUlmE_EdOT_m
	.align	2
	.type	_Z9time_loopIZ4mainEUlmE0_EdOT_m, %function
_Z9time_loopIZ4mainEUlmE0_EdOT_m:
.LFB3374:
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
	bl	_ZZ4mainENKUlmE0_clEm
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
	beq	.L153
	bl	__stack_chk_fail
.L153:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3374:
	.size	_Z9time_loopIZ4mainEUlmE0_EdOT_m, .-_Z9time_loopIZ4mainEUlmE0_EdOT_m
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3377:
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
.LFE3377:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, %function
_ZNSt15__new_allocatorIcED2Ev:
.LFB3385:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3385:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB3415:
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
.LFE3415:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB3418:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3418
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L160
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L160:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3418:
	.section	.gcc_except_table
.LLSDA3418:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3418-.LLSDACSB3418
.LLSDACSB3418:
.LLSDACSE3418:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3413:
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
	bls	.L165
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
	b	.L166
.L165:
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	nop
.L166:
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
	beq	.L167
	bl	__stack_chk_fail
.L167:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3413:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev:
.LFB3493:
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
.LFE3493:
	.size	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorImED2Ev,"axG",@progbits,_ZNSt15__new_allocatorImED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorImED2Ev
	.type	_ZNSt15__new_allocatorImED2Ev, %function
_ZNSt15__new_allocatorImED2Ev:
.LFB3496:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3496:
	.size	_ZNSt15__new_allocatorImED2Ev, .-_ZNSt15__new_allocatorImED2Ev
	.weak	_ZNSt15__new_allocatorImED1Ev
	.set	_ZNSt15__new_allocatorImED1Ev,_ZNSt15__new_allocatorImED2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	.type	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm, %function
_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm:
.LFB3498:
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
	beq	.L172
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZNSt15__new_allocatorImE10deallocateEPmm
	nop
.L172:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3498:
	.size	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm, .-_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	.section	.text._ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv:
.LFB3499:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3499:
	.size	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3501:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3501:
	.size	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_,"axG",@progbits,_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_
	.type	_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_, %function
_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_:
.LFB3502:
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
	beq	.L178
	ldr	x20, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	str	x20, [sp, 48]
	str	x19, [sp, 56]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
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
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	str	x0, [x19]
	nop
	nop
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 8
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L179
.L178:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorImSaImEE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
.L179:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorImSaImEE4backEv
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3502:
	.size	_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_, .-_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_
	.section	.text._ZNKSt16initializer_listImE5beginEv,"axG",@progbits,_ZNKSt16initializer_listImE5beginEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listImE5beginEv
	.type	_ZNKSt16initializer_listImE5beginEv, %function
_ZNKSt16initializer_listImE5beginEv:
.LFB3503:
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
.LFE3503:
	.size	_ZNKSt16initializer_listImE5beginEv, .-_ZNKSt16initializer_listImE5beginEv
	.section	.text._ZNKSt16initializer_listImE3endEv,"axG",@progbits,_ZNKSt16initializer_listImE3endEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listImE3endEv
	.type	_ZNKSt16initializer_listImE3endEv, %function
_ZNKSt16initializer_listImE3endEv:
.LFB3504:
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
	bl	_ZNKSt16initializer_listImE5beginEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt16initializer_listImE4sizeEv
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
.LFE3504:
	.size	_ZNKSt16initializer_listImE3endEv, .-_ZNKSt16initializer_listImE3endEv
	.section	.text._ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag, %function
_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag:
.LFB3505:
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
	bl	_ZNKSt6vectorImSaImEE8capacityEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L189
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	ldr	x3, [sp, 8]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x20, [x0]
	ldr	x0, [sp, 24]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	str	x20, [sp, 88]
	str	x19, [sp, 96]
	str	x0, [sp, 104]
	ldr	x1, [sp, 96]
	ldr	x0, [sp, 88]
	bl	_ZSt8_DestroyIPmEvT_S1_
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
	bl	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
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
	b	.L194
.L189:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L191
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	bl	_ZSt4copyIPKmPmET0_T_S4_S3_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorImSaImEE15_M_erase_at_endEPm
	b	.L194
.L191:
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	str	x0, [sp, 120]
	add	x0, sp, 32
	str	x0, [sp, 128]
	nop
	add	x0, sp, 32
	mov	w2, w19
	ldr	x1, [sp, 120]
	bl	_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag
	nop
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	_ZSt4copyIPKmPmET0_T_S4_S3_
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	sub	x0, x0, x1
	str	x0, [sp, 48]
	ldr	x19, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x20
	ldr	x1, [sp, 8]
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
.L194:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L193
	bl	__stack_chk_fail
.L193:
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
.LFE3505:
	.size	_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorImSaImEE13_M_assign_auxIPKmEEvT_S5_St20forward_iterator_tag
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_:
.LFB3544:
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
.LFE3544:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv:
.LFB3546:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3546:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB3548:
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
	beq	.L199
	bl	__stack_chk_fail
.L199:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3548:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.align	2
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, %function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB3550:
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
	beq	.L202
	bl	__stack_chk_fail
.L202:
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
.LFE3550:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, %function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB3551:
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
.LFE3551:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZSt8_DestroyIPmEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPmEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPmEvT_S1_
	.type	_ZSt8_DestroyIPmEvT_S1_, %function
_ZSt8_DestroyIPmEvT_S1_:
.LFB3623:
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
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3623:
	.size	_ZSt8_DestroyIPmEvT_S1_, .-_ZSt8_DestroyIPmEvT_S1_
	.section	.text._ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE:
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
	.size	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.rodata
	.align	3
.LC30:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.type	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, %function
_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_:
.LFB3626:
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
	adrp	x0, .LC30
	add	x2, x0, :lo12:.LC30
	mov	x1, 1
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorImSaImEE5beginEv
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 16
	bl	_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x20, [sp, 24]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	ldr	x0, [sp, 8]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	str	x20, [sp, 88]
	str	x19, [sp, 96]
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
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
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	str	x0, [x19]
	nop
	nop
	str	xzr, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	mov	x1, x19
	ldr	x0, [sp, 48]
	bl	_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	str	x0, [sp, 80]
	add	x0, sp, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 56]
	mov	x0, x19
	bl	_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_
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
	bl	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
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
	beq	.L209
	bl	__stack_chk_fail
.L209:
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
.LFE3626:
	.size	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, .-_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.section	.text._ZNSt6vectorImSaImEE4backEv,"axG",@progbits,_ZNSt6vectorImSaImEE4backEv,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE4backEv
	.type	_ZNSt6vectorImSaImEE4backEv, %function
_ZNSt6vectorImSaImEE4backEv:
.LFB3630:
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
	bl	_ZNSt6vectorImSaImEE3endEv
	str	x0, [sp, 24]
	add	x0, sp, 24
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl
	str	x0, [sp, 32]
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L212
	bl	__stack_chk_fail
.L212:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3630:
	.size	_ZNSt6vectorImSaImEE4backEv, .-_ZNSt6vectorImSaImEE4backEv
	.section	.text._ZNKSt16initializer_listImE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listImE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listImE4sizeEv
	.type	_ZNKSt16initializer_listImE4sizeEv, %function
_ZNKSt16initializer_listImE4sizeEv:
.LFB3631:
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
.LFE3631:
	.size	_ZNKSt16initializer_listImE4sizeEv, .-_ZNKSt16initializer_listImE4sizeEv
	.section	.text._ZNKSt6vectorImSaImEE8capacityEv,"axG",@progbits,_ZNKSt6vectorImSaImEE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorImSaImEE8capacityEv
	.type	_ZNKSt6vectorImSaImEE8capacityEv, %function
_ZNKSt6vectorImSaImEE8capacityEv:
.LFB3634:
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
.LFE3634:
	.size	_ZNKSt6vectorImSaImEE8capacityEv, .-_ZNKSt6vectorImSaImEE8capacityEv
	.section	.rodata
	.align	3
.LC31:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_:
.LFB3635:
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
	bl	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 8]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 24
	bl	_ZNSt15__new_allocatorImED2Ev
	nop
	and	w0, w19, 1
	cmp	w0, 0
	beq	.L218
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L219
	bl	__stack_chk_fail
.L219:
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	_ZSt20__throw_length_errorPKc
.L218:
	ldr	x0, [sp, 8]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L221
	bl	__stack_chk_fail
.L221:
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
.LFE3635:
	.size	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_,"axG",@progbits,_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_
	.type	_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_, %function
_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_:
.LFB3636:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3636
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
.LEHB19:
	bl	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
.LEHE19:
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.LEHB20:
	bl	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
.LEHE20:
	ldr	x0, [sp, 72]
	b	.L228
.L226:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
	bl	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
.LEHB21:
	bl	__cxa_rethrow
.LEHE21:
.L227:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB22:
	bl	_Unwind_Resume
.LEHE22:
.L228:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3636:
	.section	.gcc_except_table
	.align	2
.LLSDA3636:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3636-.LLSDATTD3636
.LLSDATTD3636:
	.byte	0x1
	.uleb128 .LLSDACSE3636-.LLSDACSB3636
.LLSDACSB3636:
	.uleb128 .LEHB19-.LFB3636
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB3636
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L226-.LFB3636
	.uleb128 0x1
	.uleb128 .LEHB21-.LFB3636
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L227-.LFB3636
	.uleb128 0
	.uleb128 .LEHB22-.LFB3636
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE3636:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT3636:
	.section	.text._ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_,"axG",@progbits,_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_,comdat
	.size	_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_, .-_ZNSt6vectorImSaImEE20_M_allocate_and_copyIPKmEEPmmT_S6_
	.section	.text._ZNKSt6vectorImSaImEE4sizeEv,"axG",@progbits,_ZNKSt6vectorImSaImEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorImSaImEE4sizeEv
	.type	_ZNKSt6vectorImSaImEE4sizeEv, %function
_ZNKSt6vectorImSaImEE4sizeEv:
.LFB3637:
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
.LFE3637:
	.size	_ZNKSt6vectorImSaImEE4sizeEv, .-_ZNKSt6vectorImSaImEE4sizeEv
	.section	.text._ZNSt6vectorImSaImEE15_M_erase_at_endEPm,"axG",@progbits,_ZNSt6vectorImSaImEE15_M_erase_at_endEPm,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE15_M_erase_at_endEPm
	.type	_ZNSt6vectorImSaImEE15_M_erase_at_endEPm, %function
_ZNSt6vectorImSaImEE15_M_erase_at_endEPm:
.LFB3638:
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
	beq	.L233
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	str	x19, [sp, 64]
	str	x1, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIPmEvT_S1_
	nop
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L233:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3638:
	.size	_ZNSt6vectorImSaImEE15_M_erase_at_endEPm, .-_ZNSt6vectorImSaImEE15_M_erase_at_endEPm
	.section	.text._ZSt4copyIPKmPmET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKmPmET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt4copyIPKmPmET0_T_S4_S3_
	.type	_ZSt4copyIPKmPmET0_T_S4_S3_, %function
_ZSt4copyIPKmPmET0_T_S4_S3_:
.LFB3639:
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
	bl	_ZSt12__miter_baseIPKmET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPKmET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3639:
	.size	_ZSt4copyIPKmPmET0_T_S4_S3_, .-_ZSt4copyIPKmPmET0_T_S4_S3_
	.section	.text._ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E:
.LFB3641:
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
	bl	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3641:
	.size	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.align	2
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, %function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB3654:
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
.LFE3654:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt15__new_allocatorImE10deallocateEPmm,"axG",@progbits,_ZNSt15__new_allocatorImE10deallocateEPmm,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorImE10deallocateEPmm
	.type	_ZNSt15__new_allocatorImE10deallocateEPmm, %function
_ZNSt15__new_allocatorImE10deallocateEPmm:
.LFB3706:
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
.LFE3706:
	.size	_ZNSt15__new_allocatorImE10deallocateEPmm, .-_ZNSt15__new_allocatorImE10deallocateEPmm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_:
.LFB3707:
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
.LFE3707:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	.section	.text._ZNKSt6vectorImSaImEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc, %function
_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc:
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L244
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L245
	bl	__stack_chk_fail
.L245:
	ldr	x0, [sp, 8]
	bl	_ZSt20__throw_length_errorPKc
.L244:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	str	x0, [sp, 40]
	add	x1, sp, 16
	add	x0, sp, 40
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bcc	.L246
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bls	.L247
.L246:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorImSaImEE8max_sizeEv
	b	.L248
.L247:
	ldr	x0, [sp, 48]
.L248:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L250
	bl	__stack_chk_fail
.L250:
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
	.size	_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc, .-_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, %function
_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3710:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv
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
.LFE3710:
	.size	_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseImSaImEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm, %function
_ZNSt12_Vector_baseImSaImEE11_M_allocateEm:
.LFB3711:
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
	beq	.L254
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	mov	x2, 0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt15__new_allocatorImE8allocateEmPKv
	nop
	b	.L256
.L254:
	mov	x0, 0
.L256:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3711:
	.size	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm, .-_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	.section	.text._ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_
	.type	_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_, %function
_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_:
.LFB3712:
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
	bl	_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3712:
	.size	_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_, .-_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl:
.LFB3714:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L262
	bl	__stack_chk_fail
.L262:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3714:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl
	.section	.text._ZNSt6vectorImSaImEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_:
.LFB3715:
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
	beq	.L268
	bl	__stack_chk_fail
.L268:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3715:
	.size	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_, .-_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	.section	.text._ZSt12__miter_baseIPKmET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKmET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPKmET_S2_
	.type	_ZSt12__miter_baseIPKmET_S2_, %function
_ZSt12__miter_baseIPKmET_S2_:
.LFB3719:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3719:
	.size	_ZSt12__miter_baseIPKmET_S2_, .-_ZSt12__miter_baseIPKmET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_, %function
_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_:
.LFB3720:
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
	bl	_ZSt12__niter_baseIPKmET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKmET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPmET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3720:
	.size	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag
	.type	_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag, %function
_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag:
.LFB3722:
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
.LFE3722:
	.size	_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag, .-_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag
	.section	.text._ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_, %function
_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_:
.LFB3723:
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
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3723:
	.size	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, %function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB3727:
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
	beq	.L278
	bl	__stack_chk_fail
.L278:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3727:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNKSt6vectorImSaImEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorImSaImEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorImSaImEE8max_sizeEv
	.type	_ZNKSt6vectorImSaImEE8max_sizeEv, %function
_ZNKSt6vectorImSaImEE8max_sizeEv:
.LFB3747:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3747:
	.size	_ZNKSt6vectorImSaImEE8max_sizeEv, .-_ZNKSt6vectorImSaImEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB3748:
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
	bcs	.L282
	ldr	x0, [sp]
	b	.L283
.L282:
	ldr	x0, [sp, 8]
.L283:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3748:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_, %function
_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_:
.LFB3750:
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
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPmET_S1_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3750:
	.size	_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3753:
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
	bcs	.L287
	ldr	x0, [sp]
	b	.L288
.L287:
	ldr	x0, [sp, 8]
.L288:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3753:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt12__niter_baseIPKmET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKmET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPKmET_S2_
	.type	_ZSt12__niter_baseIPKmET_S2_, %function
_ZSt12__niter_baseIPKmET_S2_:
.LFB3757:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3757:
	.size	_ZSt12__niter_baseIPKmET_S2_, .-_ZSt12__niter_baseIPKmET_S2_
	.section	.text._ZSt12__niter_baseIPmET_S1_,"axG",@progbits,_ZSt12__niter_baseIPmET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPmET_S1_
	.type	_ZSt12__niter_baseIPmET_S1_, %function
_ZSt12__niter_baseIPmET_S1_:
.LFB3758:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3758:
	.size	_ZSt12__niter_baseIPmET_S1_, .-_ZSt12__niter_baseIPmET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_, %function
_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_:
.LFB3759:
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
	bl	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPmET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPmET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPmET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPmET_RKS1_S1_, %function
_ZSt12__niter_wrapIPmET_RKS1_S1_:
.LFB3760:
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
.LFE3760:
	.size	_ZSt12__niter_wrapIPmET_RKS1_S1_, .-_ZSt12__niter_wrapIPmET_RKS1_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_:
.LFB3761:
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
	bl	_ZSt4copyIPKmPmET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB3764:
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
.LFE3764:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.text._ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv:
.LFB3774:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3774:
	.size	_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorImE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorImE8allocateEmPKv,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorImE8allocateEmPKv
	.type	_ZNSt15__new_allocatorImE8allocateEmPKv, %function
_ZNSt15__new_allocatorImE8allocateEmPKv:
.LFB3775:
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
	beq	.L304
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L305
	bl	_ZSt28__throw_bad_array_new_lengthv
.L305:
	bl	_ZSt17__throw_bad_allocv
.L304:
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
.LFE3775:
	.size	_ZNSt15__new_allocatorImE8allocateEmPKv, .-_ZNSt15__new_allocatorImE8allocateEmPKv
	.section	.text._ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, %function
_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3776:
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
	ble	.L308
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L308:
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
.LFE3776:
	.size	_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1ImmENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_, %function
_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_:
.LFB3778:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3778:
	.size	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_:
.LFB3786:
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
	beq	.L313
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	b	.L314
.L313:
	ldr	x0, [sp, 56]
	cmp	x0, 1
	bne	.L314
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
.L314:
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
.LFE3786:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_, %function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_:
.LFB3787:
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
.LFE3787:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
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
