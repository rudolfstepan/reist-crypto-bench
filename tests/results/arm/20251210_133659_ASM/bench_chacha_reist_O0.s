	.arch armv8-a
	.file	"bench_chacha_reist.cpp"
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
	beq	.L4
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	b	.L5
.L4:
	ldr	x0, [sp, 24]
	bl	strlen
	nop
.L5:
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
.LC0:
	.string	"stoi"
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.align	2
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, %function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1169:
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
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:__isoc23_strtol
	ldr	x0, [x0, :got_lo12:__isoc23_strtol]
	bl	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1169:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.section	.rodata
	.align	3
.LC1:
	.string	"stoul"
	.section	.text._ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.align	2
	.weak	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, %function
_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1171:
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
	adrp	x0, :got:__isoc23_strtoul
	ldr	x0, [x0, :got_lo12:__isoc23_strtoul]
	bl	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1171:
	.size	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
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
	.section	.text._Z7std_addjj,"axG",@progbits,_Z7std_addjj,comdat
	.align	2
	.weak	_Z7std_addjj
	.type	_Z7std_addjj, %function
_Z7std_addjj:
.LFB2644:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2644:
	.size	_Z7std_addjj, .-_Z7std_addjj
	.section	.text._Z11reist_add32jj,"axG",@progbits,_Z11reist_add32jj,comdat
	.align	2
	.weak	_Z11reist_add32jj
	.type	_Z11reist_add32jj, %function
_Z11reist_add32jj:
.LFB2645:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2645:
	.size	_Z11reist_add32jj, .-_Z11reist_add32jj
	.section	.text._Z13chacha_qr_stdPj,"axG",@progbits,_Z13chacha_qr_stdPj,comdat
	.align	2
	.weak	_Z13chacha_qr_stdPj
	.type	_Z13chacha_qr_stdPj, %function
_Z13chacha_qr_stdPj:
.LFB2646:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ror	w1, w1, 16
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ror	w1, w1, 20
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ror	w1, w1, 24
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ror	w1, w1, 25
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2646:
	.size	_Z13chacha_qr_stdPj, .-_Z13chacha_qr_stdPj
	.section	.text._Z15chacha_qr_reistPj,"axG",@progbits,_Z15chacha_qr_reistPj,comdat
	.align	2
	.weak	_Z15chacha_qr_reistPj
	.type	_Z15chacha_qr_reistPj, %function
_Z15chacha_qr_reistPj:
.LFB2647:
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
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	_Z11reist_add32jj
	mov	w1, w0
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ror	w1, w1, 16
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 32
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x19, x0, 32
	mov	w0, w2
	bl	_Z11reist_add32jj
	str	w0, [x19]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 32
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ror	w1, w1, 20
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	_Z11reist_add32jj
	mov	w1, w0
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ror	w1, w1, 24
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 32
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x19, x0, 32
	mov	w0, w2
	bl	_Z11reist_add32jj
	str	w0, [x19]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 32
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	eor	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ror	w1, w1, 25
	str	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2647:
	.size	_Z15chacha_qr_reistPj, .-_Z15chacha_qr_reistPj
	.text
	.align	2
	.global	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, %function
_Z16chacha_block_stdPjPKj:
.LFB2648:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x0, sp, 24
	mov	x2, 64
	ldr	x1, [sp]
	bl	memcpy
	str	wzr, [sp, 16]
	b	.L36
.L37:
	add	x0, sp, 24
	bl	_Z13chacha_qr_stdPj
	add	x0, sp, 24
	bl	_Z13chacha_qr_stdPj
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L36:
	ldr	w0, [sp, 16]
	cmp	w0, 9
	ble	.L37
	str	wzr, [sp, 20]
	b	.L38
.L39:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x3, [sp, 8]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L38:
	ldr	w0, [sp, 20]
	cmp	w0, 15
	ble	.L39
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L40
	bl	__stack_chk_fail
.L40:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2648:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.align	2
	.global	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, %function
_Z18chacha_block_reistPjPKj:
.LFB2649:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 96
	str	x19, [sp, 112]
	.cfi_offset 19, -16
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x0, sp, 24
	mov	x2, 64
	ldr	x1, [sp]
	bl	memcpy
	str	wzr, [sp, 16]
	b	.L42
.L43:
	add	x0, sp, 24
	bl	_Z15chacha_qr_reistPj
	add	x0, sp, 24
	bl	_Z15chacha_qr_reistPj
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L42:
	ldr	w0, [sp, 16]
	cmp	w0, 9
	ble	.L43
	str	wzr, [sp, 20]
	b	.L44
.L45:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w3, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x19, x1, x0
	mov	w1, w3
	mov	w0, w2
	bl	_Z7std_addjj
	str	w0, [x19]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L44:
	ldr	w0, [sp, 20]
	cmp	w0, 15
	ble	.L45
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L46
	bl	__stack_chk_fail
.L46:
	ldr	x19, [sp, 112]
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2649:
	.size	_Z18chacha_block_reistPjPKj, .-_Z18chacha_block_reistPjPKj
	.align	2
	.type	_ZZ4mainENKUliE_clEi, %function
_ZZ4mainENKUliE_clEi:
.LFB2656:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 60]
	b	.L48
.L49:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	w0, w2
	bl	_Z7std_addjj
	str	w0, [x19]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L48:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L49
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
.LFE2656:
	.size	_ZZ4mainENKUliE_clEi, .-_ZZ4mainENKUliE_clEi
	.align	2
	.type	_ZZ4mainENKUliE0_clEi, %function
_ZZ4mainENKUliE0_clEi:
.LFB2657:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 60]
	b	.L51
.L52:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	mov	w0, w2
	bl	_Z11reist_add32jj
	str	w0, [x19]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L51:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L52
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
.LFE2657:
	.size	_ZZ4mainENKUliE0_clEi, .-_ZZ4mainENKUliE0_clEi
	.align	2
	.type	_ZZ4mainENKUliE1_clEi, %function
_ZZ4mainENKUliE1_clEi:
.LFB2658:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L54
.L55:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	_Z16chacha_block_stdPjPKj
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L54:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L55
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2658:
	.size	_ZZ4mainENKUliE1_clEi, .-_ZZ4mainENKUliE1_clEi
	.align	2
	.type	_ZZ4mainENKUliE2_clEi, %function
_ZZ4mainENKUliE2_clEi:
.LFB2659:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L57
.L58:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	_Z18chacha_block_reistPjPKj
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L57:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L58
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2659:
	.size	_ZZ4mainENKUliE2_clEi, .-_ZZ4mainENKUliE2_clEi
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
	.string	"ChaCha20 REIST Benchmark\n"
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
	.string	"\n--- Modular Addition (32-bit) ---\n"
	.align	3
.LC20:
	.string	"std_add    : "
	.align	3
.LC21:
	.string	" s\n"
	.align	3
.LC22:
	.string	"reist_add32: "
	.align	3
.LC23:
	.string	"Speed ratio: "
	.align	3
.LC24:
	.string	"x (std / REIST)\n"
	.align	3
.LC25:
	.string	"\n--- ChaCha20-like Cipher-Speed ---\n"
	.align	3
.LC26:
	.string	"Classic : "
	.align	3
.LC27:
	.string	" s ("
	.align	3
.LC28:
	.string	" MB/s)\n"
	.align	3
.LC29:
	.string	"REIST   : "
	.align	3
.LC30:
	.string	"x (classic / REIST)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2651:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2651
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #1296
	.cfi_def_cfa_offset 1392
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1288]
	mov	x1, 0
	mov	w0, 16960
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 40]
	mov	w0, 47806
	movk	w0, 0xcafe, lsl 16
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L60
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x1, [x0]
	add	x0, sp, 32
	str	x0, [sp, 96]
	nop
	nop
	add	x2, sp, 32
	add	x0, sp, 376
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	add	x0, sp, 376
	mov	w2, 10
	mov	x1, 0
.LEHB1:
	bl	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	str	w0, [sp, 40]
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L60:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	ble	.L61
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	x1, [x0]
	add	x0, sp, 32
	str	x0, [sp, 104]
	nop
	nop
	add	x2, sp, 32
	add	x0, sp, 376
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	add	x0, sp, 376
	mov	w2, 10
	mov	x1, 0
.LEHB3:
	bl	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE3:
	str	w0, [sp, 28]
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L61:
	add	x0, sp, 120
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 184
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 216
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x3, sp, 376
	mov	w2, 8
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x3
.LEHB4:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE4:
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	b	.L64
.L65:
	add	x3, sp, 280
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
	beq	.L63
	add	x3, sp, 280
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 280
	add	x2, sp, 312
	mov	x8, x2
	mov	x2, -1
.LEHB5:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 312
	add	x0, sp, 120
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L63:
	add	x3, sp, 280
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
	beq	.L64
	add	x3, sp, 280
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 280
	add	x2, sp, 312
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 312
	add	x0, sp, 152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L64:
	add	x1, sp, 280
	add	x0, sp, 376
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
.LEHE5:
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L65
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 376
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x3, sp, 376
	mov	w2, 8
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x3
.LEHB6:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE6:
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x1, sp, 280
	add	x0, sp, 376
.LEHB7:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L66
	add	x3, sp, 280
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
	beq	.L66
	add	x3, sp, 280
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 280
	add	x2, sp, 312
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE7:
	add	x1, sp, 312
	add	x0, sp, 184
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 312
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L66:
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 376
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 1032
	mov	x1, 256
	bl	gethostname
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L67
	add	x1, sp, 1032
	add	x0, sp, 216
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L67:
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	popen
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L68
	add	x0, sp, 904
	ldr	x2, [sp, 48]
	mov	w1, 128
	bl	fgets
.LEHE8:
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L69
	add	x0, sp, 32
	str	x0, [sp, 112]
	nop
	nop
	add	x2, sp, 32
	add	x1, sp, 904
	add	x0, sp, 376
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	add	x1, sp, 376
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	add	x0, sp, 248
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L70
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L70
	mov	w0, 1
	b	.L71
.L70:
	mov	w0, 0
.L71:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L69
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv
.L69:
	ldr	x0, [sp, 48]
.LEHB10:
	bl	pclose
.L68:
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
	add	x0, sp, 216
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
	add	x0, sp, 248
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
	add	x0, sp, 120
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
	add	x0, sp, 152
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
	add	x0, sp, 184
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w0, 22136
	movk	w0, 0x1234, lsl 16
	str	w0, [sp, 32]
	add	x0, sp, 32
	mov	x26, x0
	add	x0, sp, 28
	mov	x27, x0
	ldr	w2, [sp, 40]
	mov	x0, x26
	mov	x1, x27
	bl	_Z5benchIZ4mainEUliE_EdT_i
	str	d0, [sp, 56]
	add	x0, sp, 32
	mov	x24, x0
	add	x0, sp, 28
	mov	x25, x0
	ldr	w2, [sp, 40]
	mov	x0, x24
	mov	x1, x25
	bl	_Z5benchIZ4mainEUliE0_EdT_i
	str	d0, [sp, 64]
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
	ldr	d0, [sp, 56]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 64]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 64]
	fcmpe	d0, #0.0
	bgt	.L99
	b	.L72
.L99:
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 64]
	ldr	d1, [sp, 56]
	fdiv	d0, d1, d0
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L72:
	str	wzr, [sp, 44]
	b	.L74
.L75:
	ldr	w1, [sp, 44]
	mov	w0, 31161
	movk	w0, 0x9e37, lsl 16
	mul	w2, w1, w0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	add	x1, sp, 312
	str	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L74:
	ldr	w0, [sp, 44]
	cmp	w0, 15
	ble	.L75
	add	x0, sp, 376
	mov	x22, x0
	add	x0, sp, 312
	mov	x23, x0
	ldr	w2, [sp, 40]
	mov	x0, x22
	mov	x1, x23
	bl	_Z5benchIZ4mainEUliE1_EdT_i
	str	d0, [sp, 72]
	add	x0, sp, 376
	mov	x20, x0
	add	x0, sp, 312
	mov	x21, x0
	ldr	w2, [sp, 40]
	mov	x0, x20
	mov	x1, x21
	bl	_Z5benchIZ4mainEUliE2_EdT_i
	str	d0, [sp, 80]
	ldr	w0, [sp, 40]
	scvtf	d0, w0
	mov	x0, 4634204016564240384
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 88]
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 72]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 72]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	mov	x1, 145685290680320
	movk	x1, 0x412e, lsl 48
	fmov	d1, x1
	fdiv	d0, d0, d1
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	mov	x1, 145685290680320
	movk	x1, 0x412e, lsl 48
	fmov	d1, x1
	fdiv	d0, d0, d1
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	fcmpe	d0, #0.0
	bgt	.L100
	b	.L76
.L100:
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	ldr	d1, [sp, 72]
	fdiv	d0, d1, d0
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE10:
.L76:
	mov	w19, 0
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 216
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 184
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 120
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1288]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L90
	b	.L101
.L92:
	mov	x19, x0
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L80
.L91:
	mov	x19, x0
.L80:
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1288]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L81
	bl	__stack_chk_fail
.L81:
	mov	x0, x1
.LEHB11:
	bl	_Unwind_Resume
.L94:
	mov	x19, x0
	add	x0, sp, 376
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L83
.L93:
	mov	x19, x0
.L83:
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1288]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L84
	bl	__stack_chk_fail
.L84:
	mov	x0, x1
	bl	_Unwind_Resume
.L95:
	mov	x19, x0
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 376
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L86
.L97:
	mov	x19, x0
	add	x0, sp, 280
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 376
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L86
.L98:
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L86
.L96:
	mov	x19, x0
.L86:
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 216
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 184
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 120
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1288]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L89
	bl	__stack_chk_fail
.L89:
	mov	x0, x1
	bl	_Unwind_Resume
.LEHE11:
.L101:
	bl	__stack_chk_fail
.L90:
	mov	w0, w1
	add	sp, sp, 1296
	.cfi_def_cfa_offset 96
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
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
	.cfi_endproc
.LFE2651:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2651:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2651-.LLSDACSB2651
.LLSDACSB2651:
	.uleb128 .LEHB0-.LFB2651
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L91-.LFB2651
	.uleb128 0
	.uleb128 .LEHB1-.LFB2651
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L92-.LFB2651
	.uleb128 0
	.uleb128 .LEHB2-.LFB2651
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L93-.LFB2651
	.uleb128 0
	.uleb128 .LEHB3-.LFB2651
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L94-.LFB2651
	.uleb128 0
	.uleb128 .LEHB4-.LFB2651
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L96-.LFB2651
	.uleb128 0
	.uleb128 .LEHB5-.LFB2651
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L95-.LFB2651
	.uleb128 0
	.uleb128 .LEHB6-.LFB2651
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L96-.LFB2651
	.uleb128 0
	.uleb128 .LEHB7-.LFB2651
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L97-.LFB2651
	.uleb128 0
	.uleb128 .LEHB8-.LFB2651
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L96-.LFB2651
	.uleb128 0
	.uleb128 .LEHB9-.LFB2651
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L98-.LFB2651
	.uleb128 0
	.uleb128 .LEHB10-.LFB2651
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L96-.LFB2651
	.uleb128 0
	.uleb128 .LEHB11-.LFB2651
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2651:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB2660:
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
	b	.L103
.L104:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L103:
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
	bne	.L104
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L106
	bl	__stack_chk_fail
.L106:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2660:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB2690:
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
.LFE2690:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB2693:
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
	bne	.L110
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L110:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2693:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:
.LFB2696:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp]
	ldr	x1, [sp, 8]
	mov	x0, -2147483648
	cmp	x1, x0
	blt	.L112
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L113
.L112:
	mov	w0, 1
	b	.L114
.L113:
	mov	w0, 0
.L114:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2696:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB2688:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2688
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
	add	x0, sp, 64
	bl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	ldr	x3, [sp, 40]
	add	x0, sp, 72
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 24]
.LEHB12:
	blr	x3
	str	x0, [sp, 80]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L117
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L118
	bl	__stack_chk_fail
.L118:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L117:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L119
	mov	w1, w19
	ldr	x0, [sp, 80]
	bl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L120
.L119:
	mov	w0, 1
	b	.L121
.L120:
	mov	w0, 0
.L121:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L122
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L123
	bl	__stack_chk_fail
.L123:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE12:
.L122:
	ldr	x0, [sp, 80]
	str	w0, [sp, 68]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L124
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L124:
	ldr	w19, [sp, 68]
	add	x0, sp, 64
	bl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L128
	b	.L130
.L129:
	mov	x19, x0
	add	x0, sp, 64
	bl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L127
	bl	__stack_chk_fail
.L127:
	mov	x0, x1
.LEHB13:
	bl	_Unwind_Resume
.LEHE13:
.L130:
	bl	__stack_chk_fail
.L128:
	mov	w0, w1
	ldr	x19, [sp, 112]
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2688:
	.section	.gcc_except_table
.LLSDA2688:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2688-.LLSDACSB2688
.LLSDACSB2688:
	.uleb128 .LEHB12-.LFB2688
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L129-.LFB2688
	.uleb128 0
	.uleb128 .LEHB13-.LFB2688
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE2688:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB2708:
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
.LFE2708:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB2711:
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
	bne	.L134
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L134:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2711:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE, %function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE:
.LFB2713:
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
.LFE2713:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB2706:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2706
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
	bl	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	ldr	x3, [sp, 40]
	add	x0, sp, 64
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 24]
.LEHB14:
	blr	x3
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L138
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L139
	bl	__stack_chk_fail
.L139:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L138:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L140
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L141
.L140:
	mov	w0, 1
	b	.L142
.L141:
	mov	w0, 0
.L142:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L143
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L144
	bl	__stack_chk_fail
.L144:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE14:
.L143:
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L145
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L145:
	ldr	x19, [sp, 80]
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L149
	b	.L151
.L150:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L148
	bl	__stack_chk_fail
.L148:
	mov	x0, x1
.LEHB15:
	bl	_Unwind_Resume
.LEHE15:
.L151:
	bl	__stack_chk_fail
.L149:
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
.LFE2706:
	.section	.gcc_except_table
.LLSDA2706:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2706-.LLSDACSB2706
.LLSDACSB2706:
	.uleb128 .LEHB14-.LFB2706
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L150-.LFB2706
	.uleb128 0
	.uleb128 .LEHB15-.LFB2706
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2706:
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB2769:
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
.LFE2769:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align	2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, %function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB2914:
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
.LFE2914:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
	.align	3
.LC31:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB2959:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2959
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
	bne	.L156
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
.LEHB16:
	bl	_ZSt19__throw_logic_errorPKc
.L156:
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
.LEHE16:
	b	.L159
.L158:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L159:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2959:
	.section	.gcc_except_table
.LLSDA2959:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2959-.LLSDACSB2959
.LLSDACSB2959:
	.uleb128 .LEHB16-.LFB2959
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L158-.LFB2959
	.uleb128 0
	.uleb128 .LEHB17-.LFB2959
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2959:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.text
	.align	2
	.type	_Z5benchIZ4mainEUliE_EdT_i, %function
_Z5benchIZ4mainEUliE_EdT_i:
.LFB2984:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	w1, [sp, 12]
	bl	_ZZ4mainENKUliE_clEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 64
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 64
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L162
	bl	__stack_chk_fail
.L162:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2984:
	.size	_Z5benchIZ4mainEUliE_EdT_i, .-_Z5benchIZ4mainEUliE_EdT_i
	.align	2
	.type	_Z5benchIZ4mainEUliE0_EdT_i, %function
_Z5benchIZ4mainEUliE0_EdT_i:
.LFB2986:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	w1, [sp, 12]
	bl	_ZZ4mainENKUliE0_clEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 64
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 64
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L165
	bl	__stack_chk_fail
.L165:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2986:
	.size	_Z5benchIZ4mainEUliE0_EdT_i, .-_Z5benchIZ4mainEUliE0_EdT_i
	.align	2
	.type	_Z5benchIZ4mainEUliE1_EdT_i, %function
_Z5benchIZ4mainEUliE1_EdT_i:
.LFB2988:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	w1, [sp, 12]
	bl	_ZZ4mainENKUliE1_clEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 64
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 64
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L168
	bl	__stack_chk_fail
.L168:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2988:
	.size	_Z5benchIZ4mainEUliE1_EdT_i, .-_Z5benchIZ4mainEUliE1_EdT_i
	.align	2
	.type	_Z5benchIZ4mainEUliE2_EdT_i, %function
_Z5benchIZ4mainEUliE2_EdT_i:
.LFB2989:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	stp	x0, x1, [sp, 16]
	str	w2, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	w1, [sp, 12]
	bl	_ZZ4mainENKUliE2_clEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 64
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 64
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L171
	bl	__stack_chk_fail
.L171:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2989:
	.size	_Z5benchIZ4mainEUliE2_EdT_i, .-_Z5benchIZ4mainEUliE2_EdT_i
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2990:
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
.LFE2990:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, %function
_ZNSt15__new_allocatorIcED2Ev:
.LFB2998:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2998:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB3028:
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
.LFE3028:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB3031:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3031
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L178
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L178:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3031:
	.section	.gcc_except_table
.LLSDA3031:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3031-.LLSDACSB3031
.LLSDACSB3031:
.LLSDACSE3031:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3026:
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
	bls	.L183
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
	b	.L184
.L183:
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	nop
.L184:
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
	beq	.L185
	bl	__stack_chk_fail
.L185:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3026:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.align	2
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, %function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB3138:
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
	beq	.L188
	bl	__stack_chk_fail
.L188:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3138:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB3140:
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
	beq	.L190
	bl	__stack_chk_fail
.L190:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3140:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, %function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB3142:
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
.LFE3142:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.align	2
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, %function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB3222:
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
	beq	.L195
	bl	__stack_chk_fail
.L195:
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
.LFE3222:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.align	2
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, %function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB3223:
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
.LFE3223:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, %function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB3277:
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
	beq	.L200
	bl	__stack_chk_fail
.L200:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3277:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB3299:
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
.LFE3299:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
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
