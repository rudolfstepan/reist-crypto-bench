	.arch armv8-a
	.file	"bench_modular.cpp"
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
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
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
.LFB4023:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4023:
	.size	_ZSt12setprecisioni, .-_ZSt12setprecisioni
	.section	.text._ZN5reist16signed_remainderEll,"axG",@progbits,_ZN5reist16signed_remainderEll,comdat
	.align	2
	.weak	_ZN5reist16signed_remainderEll
	.type	_ZN5reist16signed_remainderEll, %function
_ZN5reist16signed_remainderEll:
.LFB4131:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	sdiv	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L28
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L28:
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4131:
	.size	_ZN5reist16signed_remainderEll, .-_ZN5reist16signed_remainderEll
	.section	.text._ZN5reist17classic_remainderEll,"axG",@progbits,_ZN5reist17classic_remainderEll,comdat
	.align	2
	.weak	_ZN5reist17classic_remainderEll
	.type	_ZN5reist17classic_remainderEll, %function
_ZN5reist17classic_remainderEll:
.LFB4132:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4132:
	.size	_ZN5reist17classic_remainderEll, .-_ZN5reist17classic_remainderEll
	.text
	.align	2
	.type	_ZZ4mainENKUlxE_clEx, %function
_ZZ4mainENKUlxE_clEx:
.LFB4140:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 48]
	b	.L33
.L34:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZN5reist17classic_remainderEll
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L33:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	blt	.L34
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4140:
	.size	_ZZ4mainENKUlxE_clEx, .-_ZZ4mainENKUlxE_clEx
	.align	2
	.type	_ZZ4mainENKUlxE0_clEx, %function
_ZZ4mainENKUlxE0_clEx:
.LFB4141:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 48]
	b	.L36
.L37:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZN5reist16signed_remainderEll
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L36:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	blt	.L37
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4141:
	.size	_ZZ4mainENKUlxE0_clEx, .-_ZZ4mainENKUlxE0_clEx
	.section	.rodata
	.align	3
.LC1:
	.string	"Usage: "
	.align	3
.LC2:
	.string	" [B>1] [N>0]\n"
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
	.string	"Modular Benchmark\n"
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
	.string	"Benchmark with B = "
	.align	3
.LC22:
	.string	", N = "
	.align	3
.LC23:
	.string	"\n--- Modular remainder ---\n"
	.align	3
.LC24:
	.string	"classic  : "
	.align	3
.LC25:
	.string	" s\n"
	.align	3
.LC26:
	.string	"REIST    : "
	.align	3
.LC27:
	.string	"Speedup  : "
	.align	3
.LC28:
	.string	"x (classic / REIST)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4135:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4135
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #3824
	.cfi_def_cfa_offset 3856
	.cfi_offset 19, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 3816]
	mov	x1, 0
	mov	x0, 19264
	movk	x0, 0x4c, lsl 16
	str	x0, [sp, 56]
	mov	x0, 257
	str	x0, [sp, 48]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L39
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x1, [x0]
	add	x0, sp, 152
	str	x0, [sp, 88]
	nop
	nop
	add	x2, sp, 152
	add	x0, sp, 928
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	add	x0, sp, 928
	mov	w2, 10
	mov	x1, 0
.LEHB1:
	bl	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	str	x0, [sp, 48]
	add	x0, sp, 928
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L39:
	ldr	w0, [sp, 44]
	cmp	w0, 2
	ble	.L40
	ldr	x0, [sp, 32]
	add	x0, x0, 16
	ldr	x1, [x0]
	add	x0, sp, 152
	str	x0, [sp, 96]
	nop
	nop
	add	x2, sp, 152
	add	x0, sp, 928
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	add	x0, sp, 928
	mov	w2, 10
	mov	x1, 0
.LEHB3:
	bl	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE3:
	str	x0, [sp, 56]
	add	x0, sp, 928
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L40:
	ldr	x0, [sp, 48]
	cmp	x0, 1
	ble	.L41
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bgt	.L42
.L41:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
.LEHB4:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w19, 1
	b	.L56
.L42:
	add	x0, sp, 928
	mov	x1, 48879
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC1Em
	add	x0, sp, 112
	mov	x2, 4611686018427387904
	mov	x1, 0
	bl	_ZNSt24uniform_int_distributionIlEC1Ell
.LEHE4:
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 240
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 272
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x3, sp, 400
	mov	w2, 8
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
.LEHB5:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE5:
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	b	.L46
.L47:
	add	x3, sp, 336
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
	beq	.L45
	add	x3, sp, 336
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 336
	add	x2, sp, 368
	mov	x8, x2
	mov	x2, -1
.LEHB6:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 368
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 368
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L45:
	add	x3, sp, 336
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
	beq	.L46
	add	x3, sp, 336
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 336
	add	x2, sp, 368
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 368
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 368
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L46:
	add	x1, sp, 336
	add	x0, sp, 400
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
.LEHE6:
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L47
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 400
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x3, sp, 400
	mov	w2, 8
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x3
.LEHB7:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x1, sp, 336
	add	x0, sp, 400
.LEHB8:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L48
	add	x3, sp, 336
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
	beq	.L48
	add	x3, sp, 336
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 336
	add	x2, sp, 368
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE8:
	add	x1, sp, 368
	add	x0, sp, 240
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 368
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L48:
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 400
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 3560
	mov	x1, 256
	bl	gethostname
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L49
	add	x1, sp, 3560
	add	x0, sp, 272
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L49:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	popen
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L50
	add	x0, sp, 3432
	ldr	x2, [sp, 64]
	mov	w1, 128
	bl	fgets
.LEHE9:
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L51
	add	x0, sp, 152
	str	x0, [sp, 104]
	nop
	nop
	add	x2, sp, 152
	add	x1, sp, 3432
	add	x0, sp, 400
.LEHB10:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	add	x1, sp, 400
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 400
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	add	x0, sp, 304
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L52
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L52
	mov	w0, 1
	b	.L53
.L52:
	mov	w0, 0
.L53:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L51
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv
.L51:
	ldr	x0, [sp, 64]
.LEHB11:
	bl	pclose
.L50:
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
	add	x0, sp, 272
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
	add	x0, sp, 304
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
	add	x0, sp, 176
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
	add	x0, sp, 208
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
	add	x0, sp, 240
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
	mov	x2, x0
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 56]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 112
	str	x0, [sp, 128]
	add	x0, sp, 928
	str	x0, [sp, 136]
	add	x0, sp, 48
	str	x0, [sp, 144]
	mov	x2, sp
	add	x3, sp, 128
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	x0, sp
	ldr	x1, [sp, 56]
	bl	_Z5benchIZ4mainEUlxE_EdT_x
	str	d0, [sp, 72]
	add	x0, sp, 112
	str	x0, [sp, 152]
	add	x0, sp, 928
	str	x0, [sp, 160]
	add	x0, sp, 48
	str	x0, [sp, 168]
	mov	x2, sp
	add	x3, sp, 152
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	x0, sp
	ldr	x1, [sp, 56]
	bl	_Z5benchIZ4mainEUlxE0_EdT_x
	str	d0, [sp, 80]
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 72]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	fcmpe	d0, #0.0
	bgt	.L77
	b	.L54
.L77:
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 80]
	ldr	d1, [sp, 72]
	fdiv	d0, d1, d0
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE11:
.L54:
	mov	w19, 0
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 272
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 240
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L56:
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 3816]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L68
	b	.L78
.L70:
	mov	x19, x0
	add	x0, sp, 928
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L58
.L69:
	mov	x19, x0
.L58:
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 3816]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L59
	bl	__stack_chk_fail
.L59:
	mov	x0, x1
.LEHB12:
	bl	_Unwind_Resume
.L72:
	mov	x19, x0
	add	x0, sp, 928
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L61
.L71:
	mov	x19, x0
.L61:
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 3816]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L62
	bl	__stack_chk_fail
.L62:
	mov	x0, x1
	bl	_Unwind_Resume
.L73:
	mov	x19, x0
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 400
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L64
.L75:
	mov	x19, x0
	add	x0, sp, 336
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 400
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L64
.L76:
	mov	x19, x0
	add	x0, sp, 152
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L64
.L74:
	mov	x19, x0
.L64:
	add	x0, sp, 304
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 272
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 240
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 208
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 176
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 3816]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L67
	bl	__stack_chk_fail
.L67:
	mov	x0, x1
	bl	_Unwind_Resume
.LEHE12:
.L78:
	bl	__stack_chk_fail
.L68:
	mov	w0, w1
	add	sp, sp, 3824
	.cfi_def_cfa_offset 32
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4135:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4135:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4135-.LLSDACSB4135
.LLSDACSB4135:
	.uleb128 .LEHB0-.LFB4135
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L69-.LFB4135
	.uleb128 0
	.uleb128 .LEHB1-.LFB4135
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L70-.LFB4135
	.uleb128 0
	.uleb128 .LEHB2-.LFB4135
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L71-.LFB4135
	.uleb128 0
	.uleb128 .LEHB3-.LFB4135
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L72-.LFB4135
	.uleb128 0
	.uleb128 .LEHB4-.LFB4135
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB4135
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L74-.LFB4135
	.uleb128 0
	.uleb128 .LEHB6-.LFB4135
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L73-.LFB4135
	.uleb128 0
	.uleb128 .LEHB7-.LFB4135
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L74-.LFB4135
	.uleb128 0
	.uleb128 .LEHB8-.LFB4135
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L75-.LFB4135
	.uleb128 0
	.uleb128 .LEHB9-.LFB4135
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L74-.LFB4135
	.uleb128 0
	.uleb128 .LEHB10-.LFB4135
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L76-.LFB4135
	.uleb128 0
	.uleb128 .LEHB11-.LFB4135
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L74-.LFB4135
	.uleb128 0
	.uleb128 .LEHB12-.LFB4135
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE4135:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB4142:
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
	b	.L80
.L81:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L80:
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
	bne	.L81
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L83
	bl	__stack_chk_fail
.L83:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4142:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB4199:
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
.LFE4199:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB4202:
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
	bne	.L87
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L87:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4202:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, %function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE:
.LFB4204:
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
.LFE4204:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4197:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4197
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
.LEHB13:
	blr	x3
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L91
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L92
	bl	__stack_chk_fail
.L92:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L91:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L93
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L94
.L93:
	mov	w0, 1
	b	.L95
.L94:
	mov	w0, 0
.L95:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L96
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L97
	bl	__stack_chk_fail
.L97:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE13:
.L96:
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L98
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L98:
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
	beq	.L102
	b	.L104
.L103:
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
	beq	.L101
	bl	__stack_chk_fail
.L101:
	mov	x0, x1
.LEHB14:
	bl	_Unwind_Resume
.LEHE14:
.L104:
	bl	__stack_chk_fail
.L102:
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
.LFE4197:
	.section	.gcc_except_table
.LLSDA4197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4197-.LLSDACSB4197
.LLSDACSB4197:
	.uleb128 .LEHB13-.LFB4197
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L103-.LFB4197
	.uleb128 0
	.uleb128 .LEHB14-.LFB4197
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE4197:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB4251:
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
.LFE4251:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align	2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, %function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB4396:
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
.LFE4396:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
	.align	3
.LC29:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB4476:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4476
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
	bne	.L109
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
.LEHB15:
	bl	_ZSt19__throw_logic_errorPKc
.L109:
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
.LEHE15:
	b	.L112
.L111:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB16:
	bl	_Unwind_Resume
.LEHE16:
.L112:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4476:
	.section	.gcc_except_table
.LLSDA4476:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4476-.LLSDACSB4476
.LLSDACSB4476:
	.uleb128 .LEHB15-.LFB4476
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L111-.LFB4476
	.uleb128 0
	.uleb128 .LEHB16-.LFB4476
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE4476:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC5Em,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em, %function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em:
.LFB4509:
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
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4509:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC1Em,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.section	.text._ZNSt24uniform_int_distributionIlEC2Ell,"axG",@progbits,_ZNSt24uniform_int_distributionIlEC5Ell,comdat
	.align	2
	.weak	_ZNSt24uniform_int_distributionIlEC2Ell
	.type	_ZNSt24uniform_int_distributionIlEC2Ell, %function
_ZNSt24uniform_int_distributionIlEC2Ell:
.LFB4512:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt24uniform_int_distributionIlE10param_typeC1Ell
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4512:
	.size	_ZNSt24uniform_int_distributionIlEC2Ell, .-_ZNSt24uniform_int_distributionIlEC2Ell
	.weak	_ZNSt24uniform_int_distributionIlEC1Ell
	.set	_ZNSt24uniform_int_distributionIlEC1Ell,_ZNSt24uniform_int_distributionIlEC2Ell
	.section	.text._ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_,"axG",@progbits,_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_,comdat
	.align	2
	.weak	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_
	.type	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_, %function
_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_:
.LFB4537:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4537:
	.size	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_, .-_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_
	.text
	.align	2
	.type	_Z5benchIZ4mainEUlxE_EdT_x, %function
_Z5benchIZ4mainEUlxE_EdT_x:
.LFB4538:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	mov	x19, x0
	str	x1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 24]
	ldr	x1, [sp, 8]
	mov	x0, x19
	bl	_ZZ4mainENKUlxE_clEx
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 48
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L119
	bl	__stack_chk_fail
.L119:
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4538:
	.size	_Z5benchIZ4mainEUlxE_EdT_x, .-_Z5benchIZ4mainEUlxE_EdT_x
	.align	2
	.type	_Z5benchIZ4mainEUlxE0_EdT_x, %function
_Z5benchIZ4mainEUlxE0_EdT_x:
.LFB4540:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	mov	x19, x0
	str	x1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 24]
	ldr	x1, [sp, 8]
	mov	x0, x19
	bl	_ZZ4mainENKUlxE0_clEx
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	add	x0, sp, 48
	bl	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L122
	bl	__stack_chk_fail
.L122:
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4540:
	.size	_Z5benchIZ4mainEUlxE0_EdT_x, .-_Z5benchIZ4mainEUlxE0_EdT_x
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB4542:
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
.LFE4542:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, %function
_ZNSt15__new_allocatorIcED2Ev:
.LFB4550:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4550:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB4580:
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
.LFE4580:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB4583:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4583
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L129
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L129:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4583:
	.section	.gcc_except_table
.LLSDA4583:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4583-.LLSDACSB4583
.LLSDACSB4583:
.LLSDACSE4583:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB4578:
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
	bls	.L134
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
	b	.L135
.L134:
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	nop
.L135:
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
	beq	.L136
	bl	__stack_chk_fail
.L136:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4578:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm, %function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm:
.LFB4717:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	mov	x0, 1
	str	x0, [sp, 32]
	b	.L138
.L139:
	ldr	x0, [sp, 32]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 62
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, 32557
	movk	x0, 0x4c95, lsl 16
	movk	x0, 0xf42d, lsl 32
	movk	x0, 0x5851, lsl 48
	mul	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L138:
	ldr	x0, [sp, 32]
	cmp	x0, 311
	bls	.L139
	ldr	x0, [sp, 24]
	mov	x1, 312
	str	x1, [x0, 2496]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4717:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.section	.text._ZNSt24uniform_int_distributionIlE10param_typeC2Ell,"axG",@progbits,_ZNSt24uniform_int_distributionIlE10param_typeC5Ell,comdat
	.align	2
	.weak	_ZNSt24uniform_int_distributionIlE10param_typeC2Ell
	.type	_ZNSt24uniform_int_distributionIlE10param_typeC2Ell, %function
_ZNSt24uniform_int_distributionIlE10param_typeC2Ell:
.LFB4719:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	bl	_ZSt23__is_constant_evaluatedv
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L141
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	ble	.L141
	mov	w0, 1
	b	.L142
.L141:
	mov	w0, 0
.L142:
	and	w0, w0, 1
	cmp	w0, 0
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4719:
	.size	_ZNSt24uniform_int_distributionIlE10param_typeC2Ell, .-_ZNSt24uniform_int_distributionIlE10param_typeC2Ell
	.weak	_ZNSt24uniform_int_distributionIlE10param_typeC1Ell
	.set	_ZNSt24uniform_int_distributionIlE10param_typeC1Ell,_ZNSt24uniform_int_distributionIlE10param_typeC2Ell
	.section	.text._ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE,comdat
	.align	2
	.weak	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE, %function
_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE:
.LFB4756:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 112
	str	x19, [sp, 128]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	str	xzr, [sp, 32]
	mov	x0, -1
	str	x0, [sp, 48]
	mov	x0, -1
	str	x0, [sp, 56]
	ldr	x0, [sp, 8]
	bl	_ZNKSt24uniform_int_distributionIlE10param_type1bEv
	mov	x19, x0
	ldr	x0, [sp, 8]
	bl	_ZNKSt24uniform_int_distributionIlE10param_type1aEv
	sub	x0, x19, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmn	x0, #1
	beq	.L145
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 16]
	bl	_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_
	str	x0, [sp, 40]
	b	.L146
.L145:
	ldr	x0, [sp, 16]
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	str	x0, [sp, 40]
.L146:
	ldr	x0, [sp, 8]
	bl	_ZNKSt24uniform_int_distributionIlE10param_type1aEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L148
	bl	__stack_chk_fail
.L148:
	mov	x0, x1
	ldr	x19, [sp, 128]
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4756:
	.size	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEElRT_RKNS0_10param_typeE
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.align	2
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, %function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB4759:
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
	beq	.L151
	bl	__stack_chk_fail
.L151:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4759:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB4761:
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
	beq	.L153
	bl	__stack_chk_fail
.L153:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4761:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, %function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB4763:
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
.LFE4763:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,comdat
	.align	2
	.weak	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_, %function
_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_:
.LFB4867:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4867:
	.size	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,comdat
	.align	2
	.weak	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_, %function
_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_:
.LFB4868:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4868:
	.size	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.section	.text._ZNKSt24uniform_int_distributionIlE10param_type1bEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIlE10param_type1bEv,comdat
	.align	2
	.weak	_ZNKSt24uniform_int_distributionIlE10param_type1bEv
	.type	_ZNKSt24uniform_int_distributionIlE10param_type1bEv, %function
_ZNKSt24uniform_int_distributionIlE10param_type1bEv:
.LFB4880:
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
.LFE4880:
	.size	_ZNKSt24uniform_int_distributionIlE10param_type1bEv, .-_ZNKSt24uniform_int_distributionIlE10param_type1bEv
	.section	.text._ZNKSt24uniform_int_distributionIlE10param_type1aEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIlE10param_type1aEv,comdat
	.align	2
	.weak	_ZNKSt24uniform_int_distributionIlE10param_type1aEv
	.type	_ZNKSt24uniform_int_distributionIlE10param_type1aEv, %function
_ZNKSt24uniform_int_distributionIlE10param_type1aEv:
.LFB4881:
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
.LFE4881:
	.size	_ZNKSt24uniform_int_distributionIlE10param_type1aEv, .-_ZNKSt24uniform_int_distributionIlE10param_type1aEv
	.section	.text._ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_,"axG",@progbits,_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_,comdat
	.align	2
	.weak	_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_
	.type	_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_, %function
_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_:
.LFB4882:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
	.cfi_offset 20, -160
	.cfi_offset 21, -152
	.cfi_offset 22, -144
	.cfi_offset 23, -136
	.cfi_offset 24, -128
	.cfi_offset 25, -120
	.cfi_offset 26, -112
	.cfi_offset 27, -104
	str	x0, [sp, 136]
	str	x1, [sp, 128]
	ldr	x0, [sp, 136]
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	mov	x26, x0
	mov	x27, 0
	ldr	x0, [sp, 128]
	mov	x24, x0
	mov	x25, 0
	mul	x1, x26, x24
	umulh	x0, x26, x24
	madd	x0, x27, x24, x0
	madd	x0, x26, x25, x0
	str	x1, [sp, 96]
	str	x0, [sp, 104]
	ldp	x0, x1, [sp, 96]
	stp	x0, x1, [sp, 160]
	ldr	x0, [sp, 160]
	str	x0, [sp, 144]
	ldr	x1, [sp, 144]
	ldr	x0, [sp, 128]
	cmp	x1, x0
	bcs	.L165
	ldr	x0, [sp, 128]
	neg	x0, x0
	ldr	x1, [sp, 128]
	udiv	x2, x0, x1
	ldr	x1, [sp, 128]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 152]
	b	.L166
.L167:
	ldr	x0, [sp, 136]
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	mov	x20, x0
	mov	x21, 0
	ldr	x0, [sp, 128]
	mov	x22, x0
	mov	x23, 0
	mul	x1, x20, x22
	umulh	x0, x20, x22
	madd	x0, x21, x22, x0
	madd	x0, x20, x23, x0
	str	x1, [sp, 112]
	str	x0, [sp, 120]
	ldp	x0, x1, [sp, 112]
	stp	x0, x1, [sp, 160]
	ldr	x0, [sp, 160]
	str	x0, [sp, 144]
.L166:
	ldr	x1, [sp, 144]
	ldr	x0, [sp, 152]
	cmp	x1, x0
	bcc	.L167
.L165:
	ldr	x0, [sp, 168]
	str	x0, [sp, 80]
	str	xzr, [sp, 88]
	ldr	x0, [sp, 80]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4882:
	.size	_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_, .-_ZNSt24uniform_int_distributionIlE5_S_ndIoSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEmEET1_RT0_S4_
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv, %function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:
.LFB4883:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 2496]
	cmp	x0, 311
	bls	.L170
	ldr	x0, [sp, 24]
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
.L170:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 2496]
	add	x2, x0, 1
	ldr	x1, [sp, 24]
	str	x2, [x1, 2496]
	ldr	x1, [sp, 24]
	ldr	x0, [x1, x0, lsl 3]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 29
	and	x0, x0, 6148914691236517205
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 17
	mov	x0, 3987079168
	movk	x0, 0x7fff, lsl 32
	movk	x0, 0x71d6, lsl 48
	and	x0, x1, x0
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 37
	mov	x0, 262645840084992
	movk	x0, 0xfff7, lsl 48
	and	x0, x1, x0
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 43
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4883:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.align	2
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, %function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB4884:
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
	beq	.L174
	bl	__stack_chk_fail
.L174:
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
.LFE4884:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.align	2
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, %function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB4885:
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
.LFE4885:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,comdat
	.align	2
	.weak	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm, %function
_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm:
.LFB4953:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4953:
	.size	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm, .-_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.align	2
	.weak	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm, %function
_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB4954:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x2, [sp, 24]
	lsr	x1, x2, 3
	mov	x0, 3361
	movk	x0, 0x20d2, lsl 16
	movk	x0, 0xd20d, lsl 32
	movk	x0, 0xd20, lsl 48
	umulh	x0, x1, x0
	lsr	x1, x0, 1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x2, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4954:
	.size	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv:
.LFB4957:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 8]
	mov	x0, -2147483648
	str	x0, [sp, 40]
	mov	x0, 2147483647
	str	x0, [sp, 48]
	str	xzr, [sp, 24]
	b	.L182
.L185:
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	and	x1, x0, -2147483648
	ldr	x0, [sp, 24]
	add	x2, x0, 1
	ldr	x0, [sp, 8]
	ldr	x0, [x0, x2, lsl 3]
	and	x0, x0, 2147483647
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 24]
	add	x1, x0, 156
	ldr	x0, [sp, 8]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 72]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 72]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L183
	mov	x0, 6633
	movk	x0, 0xa966, lsl 16
	movk	x0, 0x6f5a, lsl 32
	movk	x0, 0xb502, lsl 48
	b	.L184
.L183:
	mov	x0, 0
.L184:
	eor	x2, x0, x1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L182:
	ldr	x0, [sp, 24]
	cmp	x0, 155
	bls	.L185
	mov	x0, 156
	str	x0, [sp, 32]
	b	.L186
.L189:
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 32]
	ldr	x0, [x0, x1, lsl 3]
	and	x1, x0, -2147483648
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	ldr	x0, [sp, 8]
	ldr	x0, [x0, x2, lsl 3]
	and	x0, x0, 2147483647
	orr	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	sub	x1, x0, #156
	ldr	x0, [sp, 8]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 64]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L187
	mov	x0, 6633
	movk	x0, 0xa966, lsl 16
	movk	x0, 0x6f5a, lsl 32
	movk	x0, 0xb502, lsl 48
	b	.L188
.L187:
	mov	x0, 0
.L188:
	eor	x2, x0, x1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L186:
	ldr	x0, [sp, 32]
	cmp	x0, 310
	bls	.L189
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 2488]
	and	x1, x0, -2147483648
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	and	x0, x0, 2147483647
	orr	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 1240]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L190
	mov	x0, 6633
	movk	x0, 0xa966, lsl 16
	movk	x0, 0x6f5a, lsl 32
	movk	x0, 0xb502, lsl 48
	b	.L191
.L190:
	mov	x0, 0
.L191:
	eor	x1, x0, x1
	ldr	x0, [sp, 8]
	str	x1, [x0, 2488]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 2496]
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4957:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, %function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB4958:
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
	beq	.L194
	bl	__stack_chk_fail
.L194:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4958:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB4984:
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
.LFE4984:
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
