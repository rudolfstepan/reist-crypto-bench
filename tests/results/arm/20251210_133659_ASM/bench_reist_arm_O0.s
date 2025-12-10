	.arch armv8-a
	.file	"bench_reist_arm.cpp"
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
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	2
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, %function
_ZSt17__size_to_integerm:
.LFB658:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE658:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
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
	.section	.text._ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev:
.LFB3590:
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
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3590:
	.size	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
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
	.text
	.align	2
	.type	_ZL20do_not_optimize_awayj, %function
_ZL20do_not_optimize_awayj:
.LFB8031:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8031:
	.size	_ZL20do_not_optimize_awayj, .-_ZL20do_not_optimize_awayj
	.global	__umodti3
	.align	2
	.type	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm, %function
_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm:
.LFB8032:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	.cfi_offset 21, -128
	str	x0, [sp, 88]
	str	x1, [sp, 80]
	str	x2, [sp, 72]
	str	w3, [sp, 68]
	str	x4, [sp, 56]
	ldr	x0, [sp, 88]
	bl	_ZNKSt6vectorIjSaIjEE4sizeEv
	str	x0, [sp, 128]
	ldr	w0, [sp, 68]
	str	x0, [sp, 104]
	str	wzr, [sp, 96]
	str	xzr, [sp, 112]
	b	.L34
.L37:
	str	xzr, [sp, 120]
	b	.L35
.L36:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 88]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w0, [x0]
	uxtw	x19, w0
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 80]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w0, [x0]
	uxtw	x0, w0
	add	x0, x19, x0
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	str	x0, [sp, 144]
	str	xzr, [sp, 152]
	ldr	x0, [sp, 104]
	mov	x20, x0
	mov	x21, 0
	ldp	x0, x1, [sp, 144]
	mov	x2, x20
	mov	x3, x21
	bl	__umodti3
	str	w0, [sp, 100]
	ldr	w19, [sp, 100]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	w19, [x0]
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 100]
	eor	w0, w1, w0
	str	w0, [sp, 96]
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	str	x0, [sp, 120]
.L35:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	cmp	x1, x0
	bcc	.L36
	ldr	x0, [sp, 112]
	add	x0, x0, 1
	str	x0, [sp, 112]
.L34:
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bcc	.L37
	ldr	w0, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8032:
	.size	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm, .-_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm
	.align	2
	.type	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm, %function
_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm:
.LFB8033:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	w3, [sp, 52]
	str	x4, [sp, 40]
	ldr	x0, [sp, 72]
	bl	_ZNKSt6vectorIjSaIjEE4sizeEv
	str	x0, [sp, 120]
	str	wzr, [sp, 88]
	str	xzr, [sp, 104]
	b	.L40
.L43:
	str	xzr, [sp, 112]
	b	.L41
.L42:
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 72]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w19, [x0]
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 64]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w0, [x0]
	add	w0, w19, w0
	str	w0, [sp, 92]
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	cset	w0, cs
	and	w0, w0, 255
	str	w0, [sp, 96]
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	ldr	w1, [sp, 92]
	sub	w0, w1, w0
	str	w0, [sp, 100]
	ldr	w19, [sp, 100]
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	w19, [x0]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 100]
	eor	w0, w1, w0
	str	w0, [sp, 88]
	ldr	x0, [sp, 112]
	add	x0, x0, 1
	str	x0, [sp, 112]
.L41:
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 120]
	cmp	x1, x0
	bcc	.L42
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
.L40:
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L43
	ldr	w0, [sp, 88]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8033:
	.size	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm, .-_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm
	.align	2
	.type	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm, %function
_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm:
.LFB8034:
	.cfi_startproc
	sub	sp, sp, #432
	.cfi_def_cfa_offset 432
	stp	x29, x30, [sp, 400]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 400
	str	x19, [sp, 416]
	.cfi_offset 19, -16
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	w3, [sp, 20]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 392]
	mov	x1, 0
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorIjSaIjEE4sizeEv
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	and	x0, x0, -4
	str	x0, [sp, 96]
	str	wzr, [sp, 52]
	ldr	w0, [sp, 20]
	str	w0, [sp, 68]
	ldr	s0, [sp, 68]
	dup	v0.4s, v0.s[0]
	str	q0, [sp, 144]
	str	xzr, [sp, 72]
	b	.L47
.L59:
	str	xzr, [sp, 80]
	b	.L48
.L56:
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	ldr	q0, [x0]
	nop
	str	q0, [sp, 160]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	ldr	q0, [x0]
	nop
	str	q0, [sp, 176]
	ldr	q0, [sp, 160]
	str	q0, [sp, 352]
	ldr	q0, [sp, 176]
	str	q0, [sp, 368]
	ldr	q1, [sp, 352]
	ldr	q0, [sp, 368]
	add	v0.4s, v1.4s, v0.4s
	str	q0, [sp, 192]
	ldr	q0, [sp, 192]
	str	q0, [sp, 320]
	ldr	q0, [sp, 144]
	str	q0, [sp, 336]
	ldr	q1, [sp, 320]
	ldr	q0, [sp, 336]
	cmhs	v0.4s, v1.4s, v0.4s
	str	q0, [sp, 208]
	ldr	q0, [sp, 208]
	str	q0, [sp, 288]
	ldr	q0, [sp, 144]
	str	q0, [sp, 304]
	ldr	q1, [sp, 288]
	ldr	q0, [sp, 304]
	and	v0.16b, v1.16b, v0.16b
	str	q0, [sp, 224]
	ldr	q0, [sp, 192]
	str	q0, [sp, 256]
	ldr	q0, [sp, 224]
	str	q0, [sp, 272]
	ldr	q1, [sp, 256]
	ldr	q0, [sp, 272]
	sub	v0.4s, v1.4s, v0.4s
	str	q0, [sp, 192]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	x0, [sp, 104]
	ldr	q0, [sp, 192]
	str	q0, [sp, 240]
	ldr	q0, [sp, 240]
	ldr	x0, [sp, 104]
	str	q0, [x0]
	nop
	ldr	q0, [sp, 192]
	str	q0, [sp, 128]
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 52]
	eor	w0, w1, w0
	str	w0, [sp, 52]
	ldr	x0, [sp, 80]
	add	x0, x0, 4
	str	x0, [sp, 80]
.L48:
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 96]
	cmp	x1, x0
	bcc	.L56
	b	.L57
.L58:
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w19, [x0]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIjSaIjEEixEm
	ldr	w0, [x0]
	add	w0, w19, w0
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	cset	w0, cs
	and	w0, w0, 255
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 20]
	mul	w0, w1, w0
	ldr	w1, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 64]
	ldr	w19, [sp, 64]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	w19, [x0]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 64]
	eor	w0, w1, w0
	str	w0, [sp, 52]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L57:
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bcc	.L58
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L47:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L59
	ldr	w0, [sp, 52]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 392]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L61
	bl	__stack_chk_fail
.L61:
	mov	w0, w1
	ldr	x19, [sp, 416]
	ldp	x29, x30, [sp, 400]
	add	sp, sp, 432
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8034:
	.size	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm, .-_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm
	.align	2
	.type	_ZZ4mainENKUlmE_clEm, %function
_ZZ4mainENKUlmE_clEm:
.LFB8042:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x5, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	ldr	w0, [x0]
	ldr	x4, [sp, 16]
	mov	w3, w0
	mov	x0, x5
	bl	_ZL19classic_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8042:
	.size	_ZZ4mainENKUlmE_clEm, .-_ZZ4mainENKUlmE_clEm
	.align	2
	.type	_ZZ4mainENKUlmE0_clEm, %function
_ZZ4mainENKUlmE0_clEm:
.LFB8043:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x5, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	ldr	w0, [x0]
	ldr	x4, [sp, 16]
	mov	w3, w0
	mov	x0, x5
	bl	_ZL17reist_poly_scalarRKSt6vectorIjSaIjEES3_RS1_jm
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8043:
	.size	_ZZ4mainENKUlmE0_clEm, .-_ZZ4mainENKUlmE0_clEm
	.align	2
	.type	_ZZ4mainENKUlmE1_clEm, %function
_ZZ4mainENKUlmE1_clEm:
.LFB8044:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x5, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	ldr	w0, [x0]
	ldr	x4, [sp, 16]
	mov	w3, w0
	mov	x0, x5
	bl	_ZL15reist_poly_neonRKSt6vectorIjSaIjEES3_RS1_jm
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8044:
	.size	_ZZ4mainENKUlmE1_clEm, .-_ZZ4mainENKUlmE1_clEm
	.section	.rodata
	.align	3
.LC1:
	.string	"/proc/cpuinfo"
	.align	3
.LC2:
	.string	"model name"
	.align	3
.LC3:
	.string	":"
	.align	3
.LC4:
	.string	"cpu MHz"
	.align	3
.LC5:
	.string	"/proc/meminfo"
	.align	3
.LC6:
	.string	"MemTotal"
	.align	3
.LC7:
	.string	"r"
	.align	3
.LC8:
	.string	"uname -o"
	.align	3
.LC9:
	.string	"========================================\n"
	.align	3
.LC10:
	.string	"ARM REIST Benchmark: scalar vs NEON\n"
	.align	3
.LC11:
	.string	"System Information:\n"
	.align	3
.LC12:
	.string	"  Hostname: "
	.align	3
.LC13:
	.string	"\n"
	.align	3
.LC14:
	.string	"  OS: "
	.align	3
.LC15:
	.string	"  CPU Model: "
	.align	3
.LC16:
	.string	"  CPU MHz: "
	.align	3
.LC17:
	.string	"  Memory: "
	.align	3
.LC18:
	.string	"========================================\n\n"
	.align	3
.LC19:
	.string	"N = "
	.align	3
.LC20:
	.string	" coefficients\n\n"
	.align	3
.LC21:
	.string	"q = "
	.align	3
.LC22:
	.string	"  classic scalar : "
	.align	3
.LC23:
	.string	" s  (reps="
	.align	3
.LC24:
	.string	")\n"
	.align	3
.LC25:
	.string	"  REIST  scalar  : "
	.align	3
.LC26:
	.string	"  REIST  NEON    : "
	.align	3
.LC27:
	.string	"  speedup REIST scalar vs classic : "
	.align	3
.LC28:
	.string	"x\n"
	.align	3
.LC29:
	.string	"  speedup REIST NEON   vs classic : "
	.align	3
.LC30:
	.string	"  speedup NEON vs REIST scalar    : "
	.align	3
.LC31:
	.string	"x\n\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8037:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8037
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	mov	x13, 6560
	sub	sp, sp, x13
	.cfi_def_cfa_offset 6608
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 6552]
	mov	x1, 0
	mov	w0, 1024
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L69
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x1, [x0]
	add	x0, sp, 384
	str	x0, [sp, 176]
	nop
	nop
	add	x2, sp, 384
	add	x0, sp, 1168
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	add	x0, sp, 1168
	mov	w2, 10
	mov	x1, 0
.LEHB1:
	bl	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	str	w0, [sp, 56]
	add	x0, sp, 1168
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
.L69:
	mov	w0, 16963
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 1168]
	mov	w0, 38547
	movk	w0, 0x98, lsl 16
	str	w0, [sp, 1172]
	mov	w0, 57607
	movk	w0, 0x5f5, lsl 16
	str	w0, [sp, 1176]
	mov	w0, 51719
	movk	w0, 0x3b9a, lsl 16
	str	w0, [sp, 1180]
	add	x0, sp, 1168
	mov	x20, x0
	mov	x21, 4
	add	x0, sp, 384
	str	x0, [sp, 184]
	nop
	nop
	add	x1, sp, 384
	add	x0, sp, 224
	mov	x3, x1
	mov	x1, x20
	mov	x2, x21
.LEHB2:
	bl	_ZNSt6vectorIjSaIjEEC1ESt16initializer_listIjERKS0_
.LEHE2:
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	add	x0, sp, 1168
	mov	x1, 12345
.LEHB3:
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
.LEHE3:
	add	x0, sp, 416
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 448
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 480
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 512
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x3, sp, 640
	mov	w2, 8
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x3
.LEHB4:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE4:
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	b	.L72
.L73:
	add	x3, sp, 576
	mov	x2, 0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L71
	add	x3, sp, 576
	mov	x2, 0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 576
	add	x2, sp, 608
	mov	x8, x2
	mov	x2, -1
.LEHB5:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 608
	add	x0, sp, 416
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 608
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L71:
	add	x3, sp, 576
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
	beq	.L72
	add	x3, sp, 576
	mov	x2, 0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 576
	add	x2, sp, 608
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x1, sp, 608
	add	x0, sp, 448
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 608
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L72:
	add	x1, sp, 576
	add	x0, sp, 640
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
	bne	.L73
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 640
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x3, sp, 640
	mov	w2, 8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
.LEHB6:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE6:
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x1, sp, 576
	add	x0, sp, 640
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
	beq	.L74
	add	x3, sp, 576
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
	beq	.L74
	add	x3, sp, 576
	mov	x2, 0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm
	add	x1, x0, 2
	add	x0, sp, 576
	add	x2, sp, 608
	mov	x8, x2
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE7:
	add	x1, sp, 608
	add	x0, sp, 480
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 608
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L74:
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 640
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 4096
	add	x0, x0, 2200
	mov	x1, 256
	bl	gethostname
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L75
	add	x1, sp, 4096
	add	x1, x1, 2200
	add	x0, sp, 512
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L75:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	popen
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	cmp	x0, 0
	beq	.L76
	add	x0, sp, 4096
	add	x0, x0, 2072
	ldr	x2, [sp, 112]
	mov	w1, 128
	bl	fgets
.LEHE8:
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L77
	add	x0, sp, 384
	str	x0, [sp, 192]
	nop
	nop
	add	x2, sp, 384
	add	x1, sp, 4096
	add	x1, x1, 2072
	add	x0, sp, 640
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	add	x1, sp, 640
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	add	x0, sp, 640
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	add	x0, sp, 544
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L78
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L78
	mov	w0, 1
	b	.L79
.L78:
	mov	w0, 0
.L79:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L77
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv
.L77:
	ldr	x0, [sp, 112]
.LEHB10:
	bl	pclose
.L76:
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
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
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
	mov	x2, x0
	add	x0, sp, 512
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 544
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 416
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 448
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, sp, 480
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [sp, 56]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE10:
	ldrsw	x1, [sp, 56]
	add	x0, sp, 384
	str	x0, [sp, 200]
	nop
	nop
	add	x2, sp, 384
	add	x0, sp, 248
.LEHB11:
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE11:
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	ldrsw	x1, [sp, 56]
	add	x0, sp, 384
	str	x0, [sp, 208]
	nop
	nop
	add	x2, sp, 384
	add	x0, sp, 272
.LEHB12:
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE12:
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	ldrsw	x1, [sp, 56]
	add	x0, sp, 384
	str	x0, [sp, 216]
	nop
	nop
	add	x2, sp, 384
	add	x0, sp, 296
.LEHB13:
	bl	_ZNSt6vectorIjSaIjEEC1EmRKS0_
.LEHE13:
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	add	x0, sp, 224
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	bl	_ZNSt6vectorIjSaIjEE5beginEv
	str	x0, [sp, 72]
	ldr	x0, [sp, 120]
	bl	_ZNSt6vectorIjSaIjEE3endEv
	str	x0, [sp, 80]
	b	.L80
.L83:
	add	x0, sp, 72
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv
	ldr	w0, [x0]
	str	w0, [sp, 52]
	str	wzr, [sp, 60]
	b	.L81
.L82:
	add	x0, sp, 1168
.LEHB14:
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	str	w0, [sp, 64]
	add	x0, sp, 1168
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	str	w0, [sp, 68]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 64]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w19, w0, w1
	ldrsw	x1, [sp, 60]
	add	x0, sp, 248
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	w19, [x0]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 68]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w19, w0, w1
	ldrsw	x1, [sp, 60]
	add	x0, sp, 272
	bl	_ZNSt6vectorIjSaIjEEixEm
	str	w19, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L81:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L82
	str	xzr, [sp, 88]
	str	xzr, [sp, 96]
	str	xzr, [sp, 104]
	add	x0, sp, 248
	str	x0, [sp, 320]
	add	x0, sp, 272
	str	x0, [sp, 328]
	add	x0, sp, 296
	str	x0, [sp, 336]
	add	x0, sp, 52
	str	x0, [sp, 344]
	mov	x0, sp
	add	x1, sp, 320
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 88
	mov	x0, sp
	adrp	x2, .LC32
	ldr	d0, [x2, #:lo12:.LC32]
	bl	_Z14adaptive_benchIZ4mainEUlmE_EdT_Rmd
	str	d0, [sp, 128]
	add	x0, sp, 248
	str	x0, [sp, 352]
	add	x0, sp, 272
	str	x0, [sp, 360]
	add	x0, sp, 296
	str	x0, [sp, 368]
	add	x0, sp, 52
	str	x0, [sp, 376]
	mov	x0, sp
	add	x1, sp, 352
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 96
	mov	x0, sp
	adrp	x2, .LC32
	ldr	d0, [x2, #:lo12:.LC32]
	bl	_Z14adaptive_benchIZ4mainEUlmE0_EdT_Rmd
	str	d0, [sp, 136]
	add	x0, sp, 248
	str	x0, [sp, 384]
	add	x0, sp, 272
	str	x0, [sp, 392]
	add	x0, sp, 296
	str	x0, [sp, 400]
	add	x0, sp, 52
	str	x0, [sp, 408]
	mov	x0, sp
	add	x1, sp, 384
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 104
	mov	x0, sp
	adrp	x2, .LC32
	ldr	d0, [x2, #:lo12:.LC32]
	bl	_Z14adaptive_benchIZ4mainEUlmE1_EdT_Rmd
	str	d0, [sp, 144]
	ldr	d0, [sp, 136]
	ldr	d1, [sp, 128]
	fdiv	d0, d1, d0
	str	d0, [sp, 152]
	ldr	d0, [sp, 144]
	ldr	d1, [sp, 128]
	fdiv	d0, d1, d0
	str	d0, [sp, 160]
	ldr	d0, [sp, 144]
	ldr	d1, [sp, 136]
	fdiv	d0, d1, d0
	str	d0, [sp, 168]
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	w0, [sp, 52]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEj
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 128]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 88]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 136]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 96]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 144]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [sp, 104]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 152]
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
	ldr	d0, [sp, 160]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [sp, 168]
	bl	_ZNSolsEd
	mov	x2, x0
	adrp	x0, .LC31
	add	x1, x0, :lo12:.LC31
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE14:
	add	x0, sp, 72
	bl	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv
.L80:
	add	x1, sp, 80
	add	x0, sp, 72
	bl	_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L83
	mov	w19, 0
	add	x0, sp, 296
	bl	_ZNSt6vectorIjSaIjEED1Ev
	add	x0, sp, 272
	bl	_ZNSt6vectorIjSaIjEED1Ev
	add	x0, sp, 248
	bl	_ZNSt6vectorIjSaIjEED1Ev
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 512
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 480
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 448
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 416
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 224
	bl	_ZNSt6vectorIjSaIjEED1Ev
	mov	w1, w19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 6552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L102
	b	.L115
.L104:
	mov	x19, x0
	add	x0, sp, 1168
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L86
.L103:
	mov	x19, x0
.L86:
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 6552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L87
	bl	__stack_chk_fail
.L87:
	mov	x0, x1
.LEHB15:
	bl	_Unwind_Resume
.L105:
	mov	x19, x0
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 6552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L89
	bl	__stack_chk_fail
.L89:
	mov	x0, x1
	bl	_Unwind_Resume
.L107:
	mov	x19, x0
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 640
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L91
.L109:
	mov	x19, x0
	add	x0, sp, 576
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 640
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L91
.L110:
	mov	x19, x0
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIcED2Ev
	nop
	b	.L91
.L111:
	mov	x19, x0
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	b	.L91
.L112:
	mov	x19, x0
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	b	.L96
.L113:
	mov	x19, x0
	add	x0, sp, 384
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	b	.L98
.L114:
	mov	x19, x0
	add	x0, sp, 296
	bl	_ZNSt6vectorIjSaIjEED1Ev
.L98:
	add	x0, sp, 272
	bl	_ZNSt6vectorIjSaIjEED1Ev
.L96:
	add	x0, sp, 248
	bl	_ZNSt6vectorIjSaIjEED1Ev
	b	.L91
.L108:
	mov	x19, x0
.L91:
	add	x0, sp, 544
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 512
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 480
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 448
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 416
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L100
.L106:
	mov	x19, x0
.L100:
	add	x0, sp, 224
	bl	_ZNSt6vectorIjSaIjEED1Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 6552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L101
	bl	__stack_chk_fail
.L101:
	mov	x0, x1
	bl	_Unwind_Resume
.LEHE15:
.L115:
	bl	__stack_chk_fail
.L102:
	mov	w0, w1
	mov	x13, 6560
	add	sp, sp, x13
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
.LFE8037:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8037:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8037-.LLSDACSB8037
.LLSDACSB8037:
	.uleb128 .LEHB0-.LFB8037
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L103-.LFB8037
	.uleb128 0
	.uleb128 .LEHB1-.LFB8037
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L104-.LFB8037
	.uleb128 0
	.uleb128 .LEHB2-.LFB8037
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L105-.LFB8037
	.uleb128 0
	.uleb128 .LEHB3-.LFB8037
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L106-.LFB8037
	.uleb128 0
	.uleb128 .LEHB4-.LFB8037
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L108-.LFB8037
	.uleb128 0
	.uleb128 .LEHB5-.LFB8037
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L107-.LFB8037
	.uleb128 0
	.uleb128 .LEHB6-.LFB8037
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L108-.LFB8037
	.uleb128 0
	.uleb128 .LEHB7-.LFB8037
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L109-.LFB8037
	.uleb128 0
	.uleb128 .LEHB8-.LFB8037
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L108-.LFB8037
	.uleb128 0
	.uleb128 .LEHB9-.LFB8037
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L110-.LFB8037
	.uleb128 0
	.uleb128 .LEHB10-.LFB8037
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L108-.LFB8037
	.uleb128 0
	.uleb128 .LEHB11-.LFB8037
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L111-.LFB8037
	.uleb128 0
	.uleb128 .LEHB12-.LFB8037
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L112-.LFB8037
	.uleb128 0
	.uleb128 .LEHB13-.LFB8037
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L113-.LFB8037
	.uleb128 0
	.uleb128 .LEHB14-.LFB8037
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L114-.LFB8037
	.uleb128 0
	.uleb128 .LEHB15-.LFB8037
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE8037:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB8045:
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
	b	.L117
.L118:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L117:
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
	bne	.L118
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L120
	bl	__stack_chk_fail
.L120:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8045:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB8075:
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
.LFE8075:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB8078:
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
	bne	.L124
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
.L124:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8078:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.align	2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, %function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:
.LFB8081:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp]
	ldr	x1, [sp, 8]
	mov	x0, -2147483648
	cmp	x1, x0
	blt	.L126
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L127
.L126:
	mov	w0, 1
	b	.L128
.L127:
	mov	w0, 0
.L128:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8081:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB8073:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8073
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
.LEHB16:
	blr	x3
	str	x0, [sp, 80]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L131
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L132
	bl	__stack_chk_fail
.L132:
	ldr	x0, [sp, 32]
	bl	_ZSt24__throw_invalid_argumentPKc
.L131:
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L133
	mov	w1, w19
	ldr	x0, [sp, 80]
	bl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L134
.L133:
	mov	w0, 1
	b	.L135
.L134:
	mov	w0, 0
.L135:
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L136
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L137
	bl	__stack_chk_fail
.L137:
	ldr	x0, [sp, 32]
	bl	_ZSt20__throw_out_of_rangePKc
.LEHE16:
.L136:
	ldr	x0, [sp, 80]
	str	w0, [sp, 68]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L138
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L138:
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
	beq	.L142
	b	.L144
.L143:
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
	beq	.L141
	bl	__stack_chk_fail
.L141:
	mov	x0, x1
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L144:
	bl	__stack_chk_fail
.L142:
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
.LFE8073:
	.section	.gcc_except_table
.LLSDA8073:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8073-.LLSDACSB8073
.LLSDACSB8073:
	.uleb128 .LEHB16-.LFB8073
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L143-.LFB8073
	.uleb128 0
	.uleb128 .LEHB17-.LFB8073
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE8073:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB8154:
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
.LFE8154:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.rodata
	.align	3
.LC33:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB8379:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8379
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
	bne	.L147
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
.LEHB18:
	bl	_ZSt19__throw_logic_errorPKc
.L147:
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
	b	.L150
.L149:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.LEHE19:
.L150:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8379:
	.section	.gcc_except_table
.LLSDA8379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8379-.LLSDACSB8379
.LLSDACSB8379:
	.uleb128 .LEHB18-.LFB8379
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L149-.LFB8379
	.uleb128 0
	.uleb128 .LEHB19-.LFB8379
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE8379:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt12_Vector_baseIjSaIjEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEED2Ev
	.type	_ZNSt12_Vector_baseIjSaIjEED2Ev, %function
_ZNSt12_Vector_baseIjSaIjEED2Ev:
.LFB8388:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8388
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
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8388:
	.section	.gcc_except_table
.LLSDA8388:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8388-.LLSDACSB8388
.LLSDACSB8388:
.LLSDACSE8388:
	.section	.text._ZNSt12_Vector_baseIjSaIjEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIjSaIjEED2Ev, .-_ZNSt12_Vector_baseIjSaIjEED2Ev
	.weak	_ZNSt12_Vector_baseIjSaIjEED1Ev
	.set	_ZNSt12_Vector_baseIjSaIjEED1Ev,_ZNSt12_Vector_baseIjSaIjEED2Ev
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEED2Ev
	.type	_ZNSt6vectorIjSaIjEED2Ev, %function
_ZNSt6vectorIjSaIjEED2Ev:
.LFB8391:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8391
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
	bl	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	str	x20, [sp, 56]
	str	x19, [sp, 64]
	str	x0, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZSt8_DestroyIPjEvT_S1_
	nop
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIjSaIjEED2Ev
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
.LFE8391:
	.section	.gcc_except_table
.LLSDA8391:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8391-.LLSDACSB8391
.LLSDACSB8391:
.LLSDACSE8391:
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.size	_ZNSt6vectorIjSaIjEED2Ev, .-_ZNSt6vectorIjSaIjEED2Ev
	.weak	_ZNSt6vectorIjSaIjEED1Ev
	.set	_ZNSt6vectorIjSaIjEED1Ev,_ZNSt6vectorIjSaIjEED2Ev
	.section	.text._ZNKSt6vectorIjSaIjEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIjSaIjEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIjSaIjEE4sizeEv
	.type	_ZNKSt6vectorIjSaIjEE4sizeEv, %function
_ZNKSt6vectorIjSaIjEE4sizeEv:
.LFB8393:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8393:
	.size	_ZNKSt6vectorIjSaIjEE4sizeEv, .-_ZNKSt6vectorIjSaIjEE4sizeEv
	.section	.text._ZNKSt6vectorIjSaIjEEixEm,"axG",@progbits,_ZNKSt6vectorIjSaIjEEixEm,comdat
	.align	2
	.weak	_ZNKSt6vectorIjSaIjEEixEm
	.type	_ZNKSt6vectorIjSaIjEEixEm, %function
_ZNKSt6vectorIjSaIjEEixEm:
.LFB8410:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8410:
	.size	_ZNKSt6vectorIjSaIjEEixEm, .-_ZNKSt6vectorIjSaIjEEixEm
	.section	.text._ZNSt6vectorIjSaIjEEixEm,"axG",@progbits,_ZNSt6vectorIjSaIjEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEEixEm
	.type	_ZNSt6vectorIjSaIjEEixEm, %function
_ZNSt6vectorIjSaIjEEixEm:
.LFB8411:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8411:
	.size	_ZNSt6vectorIjSaIjEEixEm, .-_ZNSt6vectorIjSaIjEEixEm
	.section	.text._ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEEC5ESt16initializer_listIjERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_
	.type	_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_, %function
_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_:
.LFB8416:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8416
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
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	bl	_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	add	x0, sp, 8
	bl	_ZNKSt16initializer_listIjE5beginEv
	mov	x19, x0
	add	x0, sp, 8
	bl	_ZNKSt16initializer_listIjE3endEv
	mov	w3, w20
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 24]
.LEHB20:
	bl	_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag
.LEHE20:
	b	.L164
.L163:
	mov	x19, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEED2Ev
	mov	x1, x19
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L161
	bl	__stack_chk_fail
.L161:
	mov	x0, x1
.LEHB21:
	bl	_Unwind_Resume
.LEHE21:
.L164:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L162
	bl	__stack_chk_fail
.L162:
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
.LFE8416:
	.section	.gcc_except_table
.LLSDA8416:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8416-.LLSDACSB8416
.LLSDACSB8416:
	.uleb128 .LEHB20-.LFB8416
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L163-.LFB8416
	.uleb128 0
	.uleb128 .LEHB21-.LFB8416
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE8416:
	.section	.text._ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEEC5ESt16initializer_listIjERKS0_,comdat
	.size	_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_, .-_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_
	.weak	_ZNSt6vectorIjSaIjEEC1ESt16initializer_listIjERKS0_
	.set	_ZNSt6vectorIjSaIjEEC1ESt16initializer_listIjERKS0_,_ZNSt6vectorIjSaIjEEC2ESt16initializer_listIjERKS0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB8419:
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
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8419:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt6vectorIjSaIjEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.type	_ZNSt6vectorIjSaIjEEC2EmRKS0_, %function
_ZNSt6vectorIjSaIjEEC2EmRKS0_:
.LFB8445:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8445
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
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
.LEHB22:
	bl	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_
.LEHE22:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB23:
	bl	_ZNSt6vectorIjSaIjEE21_M_default_initializeEm
.LEHE23:
	b	.L169
.L168:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIjSaIjEED2Ev
	mov	x0, x19
.LEHB24:
	bl	_Unwind_Resume
.LEHE24:
.L169:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8445:
	.section	.gcc_except_table
.LLSDA8445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8445-.LLSDACSB8445
.LLSDACSB8445:
	.uleb128 .LEHB22-.LFB8445
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB8445
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L168-.LFB8445
	.uleb128 0
	.uleb128 .LEHB24-.LFB8445
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE8445:
	.section	.text._ZNSt6vectorIjSaIjEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIjSaIjEEC2EmRKS0_, .-_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.weak	_ZNSt6vectorIjSaIjEEC1EmRKS0_
	.set	_ZNSt6vectorIjSaIjEEC1EmRKS0_,_ZNSt6vectorIjSaIjEEC2EmRKS0_
	.section	.text._ZNSt6vectorIjSaIjEE5beginEv,"axG",@progbits,_ZNSt6vectorIjSaIjEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE5beginEv
	.type	_ZNSt6vectorIjSaIjEE5beginEv, %function
_ZNSt6vectorIjSaIjEE5beginEv:
.LFB8447:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L172
	bl	__stack_chk_fail
.L172:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8447:
	.size	_ZNSt6vectorIjSaIjEE5beginEv, .-_ZNSt6vectorIjSaIjEE5beginEv
	.section	.text._ZNSt6vectorIjSaIjEE3endEv,"axG",@progbits,_ZNSt6vectorIjSaIjEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE3endEv
	.type	_ZNSt6vectorIjSaIjEE3endEv, %function
_ZNSt6vectorIjSaIjEE3endEv:
.LFB8448:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC1ERKS1_
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L175
	bl	__stack_chk_fail
.L175:
	mov	x0, x1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8448:
	.size	_ZNSt6vectorIjSaIjEE3endEv, .-_ZNSt6vectorIjSaIjEE3endEv
	.section	.text._ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB8449:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
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
.LFE8449:
	.size	_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv:
.LFB8450:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 4
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8450:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv:
.LFB8451:
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
.LFE8451:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB8452:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 4992]
	cmp	x0, 623
	bls	.L183
	ldr	x0, [sp, 24]
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
.L183:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 4992]
	add	x2, x0, 1
	ldr	x1, [sp, 24]
	str	x2, [x1, 4992]
	ldr	x1, [sp, 24]
	ldr	x0, [x1, x0, lsl 3]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 11
	and	x0, x0, 4294967295
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 7
	mov	x0, 22144
	movk	x0, 0x9d2c, lsl 16
	and	x0, x1, x0
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsl	x1, x0, 15
	mov	x0, 4022730752
	and	x0, x1, x0
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 18
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
.LFE8452:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.text
	.align	2
	.type	_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm, %function
_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm:
.LFB8454:
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
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	ldr	x1, [sp]
	bl	_ZZ4mainENKUlmE_clEm
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	eor	w1, w2, w1
	str	w1, [x0]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
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
	beq	.L187
	bl	__stack_chk_fail
.L187:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8454:
	.size	_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm, .-_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm
	.align	2
	.type	_Z14adaptive_benchIZ4mainEUlmE_EdT_Rmd, %function
_Z14adaptive_benchIZ4mainEUlmE_EdT_Rmd:
.LFB8453:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	str	x1, [sp, 8]
	str	d0, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	wzr, [sp, 16]
	mov	x0, 10
	str	x0, [sp, 24]
	add	x0, sp, 16
	str	x0, [sp, 56]
	str	x19, [sp, 64]
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm
.L193:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp]
	fcmpe	d1, d0
	bge	.L201
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 4294967296
	cmp	x1, x0
	bhi	.L202
	b	.L193
.L201:
	nop
	b	.L191
.L202:
	nop
.L191:
	ldr	d0, [sp, 40]
	str	d0, [sp, 32]
	str	wzr, [sp, 20]
	b	.L194
.L197:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bmi	.L200
	b	.L195
.L200:
	ldr	d0, [sp, 48]
	str	d0, [sp, 32]
.L195:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L194:
	ldr	w0, [sp, 20]
	cmp	w0, 1
	ble	.L197
	ldr	w0, [sp, 16]
	bl	_ZL20do_not_optimize_awayj
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	d0, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L199
	bl	__stack_chk_fail
.L199:
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8453:
	.size	_Z14adaptive_benchIZ4mainEUlmE_EdT_Rmd, .-_Z14adaptive_benchIZ4mainEUlmE_EdT_Rmd
	.align	2
	.type	_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm, %function
_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm:
.LFB8457:
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
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	ldr	x1, [sp]
	bl	_ZZ4mainENKUlmE0_clEm
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	eor	w1, w2, w1
	str	w1, [x0]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
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
	beq	.L205
	bl	__stack_chk_fail
.L205:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8457:
	.size	_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm, .-_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm
	.align	2
	.type	_Z14adaptive_benchIZ4mainEUlmE0_EdT_Rmd, %function
_Z14adaptive_benchIZ4mainEUlmE0_EdT_Rmd:
.LFB8456:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	str	x1, [sp, 8]
	str	d0, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	wzr, [sp, 16]
	mov	x0, 10
	str	x0, [sp, 24]
	add	x0, sp, 16
	str	x0, [sp, 56]
	str	x19, [sp, 64]
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm
.L211:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp]
	fcmpe	d1, d0
	bge	.L219
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 4294967296
	cmp	x1, x0
	bhi	.L220
	b	.L211
.L219:
	nop
	b	.L209
.L220:
	nop
.L209:
	ldr	d0, [sp, 40]
	str	d0, [sp, 32]
	str	wzr, [sp, 20]
	b	.L212
.L215:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE0_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bmi	.L218
	b	.L213
.L218:
	ldr	d0, [sp, 48]
	str	d0, [sp, 32]
.L213:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L212:
	ldr	w0, [sp, 20]
	cmp	w0, 1
	ble	.L215
	ldr	w0, [sp, 16]
	bl	_ZL20do_not_optimize_awayj
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	d0, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L217
	bl	__stack_chk_fail
.L217:
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8456:
	.size	_Z14adaptive_benchIZ4mainEUlmE0_EdT_Rmd, .-_Z14adaptive_benchIZ4mainEUlmE0_EdT_Rmd
	.align	2
	.type	_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm, %function
_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm:
.LFB8459:
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
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	ldr	x1, [sp]
	bl	_ZZ4mainENKUlmE1_clEm
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	eor	w1, w2, w1
	str	w1, [x0]
	bl	_ZNSt6chrono3_V212steady_clock3nowEv
	str	x0, [sp, 32]
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
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
	beq	.L223
	bl	__stack_chk_fail
.L223:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8459:
	.size	_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm, .-_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm
	.align	2
	.type	_Z14adaptive_benchIZ4mainEUlmE1_EdT_Rmd, %function
_Z14adaptive_benchIZ4mainEUlmE1_EdT_Rmd:
.LFB8458:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	str	x1, [sp, 8]
	str	d0, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	wzr, [sp, 16]
	mov	x0, 10
	str	x0, [sp, 24]
	add	x0, sp, 16
	str	x0, [sp, 56]
	str	x19, [sp, 64]
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm
.L229:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp]
	fcmpe	d1, d0
	bge	.L237
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 4294967296
	cmp	x1, x0
	bhi	.L238
	b	.L229
.L237:
	nop
	b	.L227
.L238:
	nop
.L227:
	ldr	d0, [sp, 40]
	str	d0, [sp, 32]
	str	wzr, [sp, 20]
	b	.L230
.L233:
	add	x0, sp, 56
	ldr	x1, [sp, 24]
	bl	_ZZ14adaptive_benchIZ4mainEUlmE1_EdT_RmdENKUlmE_clEm
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bmi	.L236
	b	.L231
.L236:
	ldr	d0, [sp, 48]
	str	d0, [sp, 32]
.L231:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L230:
	ldr	w0, [sp, 20]
	cmp	w0, 1
	ble	.L233
	ldr	w0, [sp, 16]
	bl	_ZL20do_not_optimize_awayj
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	d0, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L235
	bl	__stack_chk_fail
.L235:
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8458:
	.size	_Z14adaptive_benchIZ4mainEUlmE1_EdT_Rmd, .-_Z14adaptive_benchIZ4mainEUlmE1_EdT_Rmd
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB8463:
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
.LFE8463:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, %function
_ZNSt15__new_allocatorIcED2Ev:
.LFB8471:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8471:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB8501:
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
.LFE8501:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align	2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, %function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB8504:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8504
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L245
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L245:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8504:
	.section	.gcc_except_table
.LLSDA8504:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8504-.LLSDACSB8504
.LLSDACSB8504:
.LLSDACSE8504:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB8499:
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
	bls	.L250
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
	b	.L251
.L250:
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	nop
.L251:
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
	beq	.L252
	bl	__stack_chk_fail
.L252:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8499:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev:
.LFB8624:
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
.LFE8624:
	.size	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorIjED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIjED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIjED2Ev
	.type	_ZNSt15__new_allocatorIjED2Ev, %function
_ZNSt15__new_allocatorIjED2Ev:
.LFB8627:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8627:
	.size	_ZNSt15__new_allocatorIjED2Ev, .-_ZNSt15__new_allocatorIjED2Ev
	.weak	_ZNSt15__new_allocatorIjED1Ev
	.set	_ZNSt15__new_allocatorIjED1Ev,_ZNSt15__new_allocatorIjED2Ev
	.section	.text._ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	.type	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, %function
_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm:
.LFB8629:
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
	beq	.L257
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	bl	_ZNSt15__new_allocatorIjE10deallocateEPjm
	nop
.L257:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8629:
	.size	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, .-_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	.section	.text._ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv:
.LFB8630:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8630:
	.size	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIjSaIjEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEEC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_, %function
_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_:
.LFB8638:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8638:
	.size	_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_, .-_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIjSaIjEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIjSaIjEEC1ERKS0_,_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	.section	.text._ZNKSt16initializer_listIjE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIjE5beginEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIjE5beginEv
	.type	_ZNKSt16initializer_listIjE5beginEv, %function
_ZNKSt16initializer_listIjE5beginEv:
.LFB8640:
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
.LFE8640:
	.size	_ZNKSt16initializer_listIjE5beginEv, .-_ZNKSt16initializer_listIjE5beginEv
	.section	.text._ZNKSt16initializer_listIjE3endEv,"axG",@progbits,_ZNKSt16initializer_listIjE3endEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIjE3endEv
	.type	_ZNKSt16initializer_listIjE3endEv, %function
_ZNKSt16initializer_listIjE3endEv:
.LFB8641:
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
	bl	_ZNKSt16initializer_listIjE5beginEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt16initializer_listIjE4sizeEv
	lsl	x0, x0, 2
	add	x0, x19, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8641:
	.size	_ZNKSt16initializer_listIjE3endEv, .-_ZNKSt16initializer_listIjE3endEv
	.section	.text._ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag, %function
_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag:
.LFB8642:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 32]
	nop
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	str	x0, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 2
	nop
	str	x0, [sp, 40]
	ldr	x19, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x19, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x19
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	bl	_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L269
	bl	__stack_chk_fail
.L269:
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8642:
	.size	_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorIjSaIjEE19_M_range_initializeIPKjEEvT_S5_St20forward_iterator_tag
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB8644:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	mov	x0, 1
	str	x0, [sp, 32]
	b	.L271
.L272:
	ldr	x0, [sp, 32]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 30
	ldr	x1, [sp, 40]
	eor	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, 35173
	movk	x0, 0x6c07, lsl 16
	mul	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L271:
	ldr	x0, [sp, 32]
	cmp	x0, 623
	bls	.L272
	ldr	x0, [sp, 24]
	mov	x1, 624
	str	x1, [x0, 4992]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8644:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.rodata
	.align	3
.LC34:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_:
.LFB8681:
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
	bl	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 8]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 24
	bl	_ZNSt15__new_allocatorIjED2Ev
	nop
	and	w0, w19, 1
	cmp	w0, 0
	beq	.L274
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L275
	bl	__stack_chk_fail
.L275:
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	bl	_ZSt20__throw_length_errorPKc
.L274:
	ldr	x0, [sp, 8]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L277
	bl	__stack_chk_fail
.L277:
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
.LFE8681:
	.size	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_, %function
_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_:
.LFB8683:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8683
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
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB25:
	bl	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm
.LEHE25:
	b	.L281
.L280:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.LEHE26:
.L281:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8683:
	.section	.gcc_except_table
.LLSDA8683:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8683-.LLSDACSB8683
.LLSDACSB8683:
	.uleb128 .LEHB25-.LFB8683
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L280-.LFB8683
	.uleb128 0
	.uleb128 .LEHB26-.LFB8683
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE8683:
	.section	.text._ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_, .-_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIjSaIjEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIjSaIjEEC1EmRKS0_,_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_
	.section	.text._ZNSt6vectorIjSaIjEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIjSaIjEE21_M_default_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE21_M_default_initializeEm
	.type	_ZNSt6vectorIjSaIjEE21_M_default_initializeEm, %function
_ZNSt6vectorIjSaIjEE21_M_default_initializeEm:
.LFB8685:
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
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8685:
	.size	_ZNSt6vectorIjSaIjEE21_M_default_initializeEm, .-_ZNSt6vectorIjSaIjEE21_M_default_initializeEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_:
.LFB8687:
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
.LFE8687:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv:
.LFB8689:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8689:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB8690:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 8]
	mov	x0, -2147483648
	str	x0, [sp, 40]
	mov	x0, 2147483647
	str	x0, [sp, 48]
	str	xzr, [sp, 24]
	b	.L287
.L290:
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
	add	x1, x0, 397
	ldr	x0, [sp, 8]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 72]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 72]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L288
	mov	x0, 45279
	movk	x0, 0x9908, lsl 16
	b	.L289
.L288:
	mov	x0, 0
.L289:
	eor	x2, x0, x1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L287:
	ldr	x0, [sp, 24]
	cmp	x0, 226
	bls	.L290
	mov	x0, 227
	str	x0, [sp, 32]
	b	.L291
.L294:
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
	sub	x1, x0, #227
	ldr	x0, [sp, 8]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 64]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L292
	mov	x0, 45279
	movk	x0, 0x9908, lsl 16
	b	.L293
.L292:
	mov	x0, 0
.L293:
	eor	x2, x0, x1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L291:
	ldr	x0, [sp, 32]
	cmp	x0, 622
	bls	.L294
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 4984]
	and	x1, x0, -2147483648
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	and	x0, x0, 2147483647
	orr	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 3168]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 1
	eor	x1, x1, x0
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L295
	mov	x0, 45279
	movk	x0, 0x9908, lsl 16
	b	.L296
.L295:
	mov	x0, 0
.L296:
	eor	x1, x0, x1
	ldr	x0, [sp, 8]
	str	x1, [x0, 4984]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 4992]
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8690:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text._ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.align	2
	.weak	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, %function
_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB8691:
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
	bl	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	str	x0, [sp, 24]
	ldr	x0, [sp]
	bl	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
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
	beq	.L299
	bl	__stack_chk_fail
.L299:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8691:
	.size	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB8693:
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
	beq	.L301
	bl	__stack_chk_fail
.L301:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8693:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align	2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, %function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB8695:
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
.LFE8695:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZSt8_DestroyIPjEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPjEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPjEvT_S1_
	.type	_ZSt8_DestroyIPjEvT_S1_, %function
_ZSt8_DestroyIPjEvT_S1_:
.LFB8793:
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
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8793:
	.size	_ZSt8_DestroyIPjEvT_S1_, .-_ZSt8_DestroyIPjEvT_S1_
	.section	.text._ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_, %function
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_:
.LFB8796:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	nop
	nop
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8796:
	.size	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_
	.section	.text._ZNKSt16initializer_listIjE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIjE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt16initializer_listIjE4sizeEv
	.type	_ZNKSt16initializer_listIjE4sizeEv, %function
_ZNKSt16initializer_listIjE4sizeEv:
.LFB8798:
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
.LFE8798:
	.size	_ZNKSt16initializer_listIjE4sizeEv, .-_ZNKSt16initializer_listIjE4sizeEv
	.section	.text._ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm:
.LFB8801:
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
	beq	.L309
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	mov	x2, 0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt15__new_allocatorIjE8allocateEmPKv
	nop
	b	.L311
.L309:
	mov	x0, 0
.L311:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8801:
	.size	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, .-_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	.section	.text._ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E:
.LFB8802:
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
	bl	_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8802:
	.size	_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.align	2
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, %function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB8803:
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
	bl	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8803:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.align	2
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, %function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB8804:
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
	bl	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8804:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_:
.LFB8817:
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
	mov	x0, 2305843009213693951
	str	x0, [sp, 16]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	mov	x0, 2305843009213693951
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
	beq	.L324
	bl	__stack_chk_fail
.L324:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8817:
	.size	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm, %function
_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm:
.LFB8821:
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
	bl	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8821:
	.size	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E:
.LFB8822:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt25__uninitialized_default_nIPjmET_S1_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8822:
	.size	_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align	2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, %function
_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB8823:
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
.LFE8823:
	.size	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.align	2
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, %function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB8824:
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
	beq	.L332
	bl	__stack_chk_fail
.L332:
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
.LFE8824:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.align	2
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, %function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB8825:
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
.LFE8825:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt15__new_allocatorIjE10deallocateEPjm,"axG",@progbits,_ZNSt15__new_allocatorIjE10deallocateEPjm,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIjE10deallocateEPjm
	.type	_ZNSt15__new_allocatorIjE10deallocateEPjm, %function
_ZNSt15__new_allocatorIjE10deallocateEPjm:
.LFB8891:
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
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8891:
	.size	_ZNSt15__new_allocatorIjE10deallocateEPjm, .-_ZNSt15__new_allocatorIjE10deallocateEPjm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_:
.LFB8892:
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
.LFE8892:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.section	.text._ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_, %function
_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_:
.LFB8894:
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
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8894:
	.size	_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKjPjET0_T_S4_S3_
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.align	2
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, %function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB8896:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4294967295
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8896:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.align	2
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, %function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB8897:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x2, [sp, 24]
	lsr	x1, x2, 4
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
	lsl	x0, x0, 4
	sub	x0, x2, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8897:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB8901:
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
	bcs	.L345
	ldr	x0, [sp]
	b	.L346
.L345:
	ldr	x0, [sp, 8]
.L346:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8901:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt25__uninitialized_default_nIPjmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPjmET_S1_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIPjmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPjmET_S1_T0_, %function
_ZSt25__uninitialized_default_nIPjmET_S1_T0_:
.LFB8905:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8905:
	.size	_ZSt25__uninitialized_default_nIPjmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPjmET_S1_T0_
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.align	2
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, %function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB8906:
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
	beq	.L351
	bl	__stack_chk_fail
.L351:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8906:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt15__new_allocatorIjE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIjE8allocateEmPKv,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIjE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIjE8allocateEmPKv, %function
_ZNSt15__new_allocatorIjE8allocateEmPKv:
.LFB8930:
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
	mov	x0, 2305843009213693951
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
	beq	.L354
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L355
	bl	_ZSt28__throw_bad_array_new_lengthv
.L355:
	bl	_ZSt17__throw_bad_allocv
.L354:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8930:
	.size	_ZNSt15__new_allocatorIjE8allocateEmPKv, .-_ZNSt15__new_allocatorIjE8allocateEmPKv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_:
.LFB8931:
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
	bl	_ZSt4copyIPKjPjET0_T_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8931:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKjPjEET0_T_S6_S5_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_:
.LFB8934:
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
	beq	.L360
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIjEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZSt10_ConstructIjJEEvPT_DpOT0_
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZSt6fill_nIPjmjET_S1_T0_RKT1_
	str	x0, [sp, 24]
.L360:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8934:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align	2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, %function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB8936:
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
.LFE8936:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.text._ZSt4copyIPKjPjET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKjPjET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZSt4copyIPKjPjET0_T_S4_S3_
	.type	_ZSt4copyIPKjPjET0_T_S4_S3_, %function
_ZSt4copyIPKjPjET0_T_S4_S3_:
.LFB8949:
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
	bl	_ZSt12__miter_baseIPKjET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPKjET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8949:
	.size	_ZSt4copyIPKjPjET0_T_S4_S3_, .-_ZSt4copyIPKjPjET0_T_S4_S3_
	.section	.text._ZSt11__addressofIjEPT_RS0_,"axG",@progbits,_ZSt11__addressofIjEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofIjEPT_RS0_
	.type	_ZSt11__addressofIjEPT_RS0_, %function
_ZSt11__addressofIjEPT_RS0_:
.LFB8951:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8951:
	.size	_ZSt11__addressofIjEPT_RS0_, .-_ZSt11__addressofIjEPT_RS0_
	.section	.text._ZSt10_ConstructIjJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIjJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructIjJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIjJEEvPT_DpOT0_, %function
_ZSt10_ConstructIjJEEvPT_DpOT0_:
.LFB8952:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8952:
	.size	_ZSt10_ConstructIjJEEvPT_DpOT0_, .-_ZSt10_ConstructIjJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPjmjET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPjmjET_S1_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt6fill_nIPjmjET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPjmjET_S1_T0_RKT1_, %function
_ZSt6fill_nIPjmjET_S1_T0_RKT1_:
.LFB8953:
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
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZSt17__size_to_integerm
	nop
	mov	w3, w20
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8953:
	.size	_ZSt6fill_nIPjmjET_S1_T0_RKT1_, .-_ZSt6fill_nIPjmjET_S1_T0_RKT1_
	.section	.text._ZSt12__miter_baseIPKjET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKjET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPKjET_S2_
	.type	_ZSt12__miter_baseIPKjET_S2_, %function
_ZSt12__miter_baseIPKjET_S2_:
.LFB8959:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8959:
	.size	_ZSt12__miter_baseIPKjET_S2_, .-_ZSt12__miter_baseIPKjET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_, %function
_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_:
.LFB8960:
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
	bl	_ZSt12__niter_baseIPKjET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKjET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPjET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPjET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8960:
	.size	_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKjPjET1_T0_S4_S3_
	.section	.text._ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag, %function
_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB8964:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L376
	ldr	x0, [sp, 40]
	b	.L377
.L376:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIPjjEvT_S1_RKT0_
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
.L377:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8964:
	.size	_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKjET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKjET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPKjET_S2_
	.type	_ZSt12__niter_baseIPKjET_S2_, %function
_ZSt12__niter_baseIPKjET_S2_:
.LFB8965:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8965:
	.size	_ZSt12__niter_baseIPKjET_S2_, .-_ZSt12__niter_baseIPKjET_S2_
	.section	.text._ZSt12__niter_baseIPjET_S1_,"axG",@progbits,_ZSt12__niter_baseIPjET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPjET_S1_
	.type	_ZSt12__niter_baseIPjET_S1_, %function
_ZSt12__niter_baseIPjET_S1_:
.LFB8966:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8966:
	.size	_ZSt12__niter_baseIPjET_S1_, .-_ZSt12__niter_baseIPjET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_, %function
_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_:
.LFB8967:
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
	bl	_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8967:
	.size	_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPjET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPjET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPjET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPjET_RKS1_S1_, %function
_ZSt12__niter_wrapIPjET_RKS1_S1_:
.LFB8968:
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
.LFE8968:
	.size	_ZSt12__niter_wrapIPjET_RKS1_S1_, .-_ZSt12__niter_wrapIPjET_RKS1_S1_
	.section	.text._ZSt8__fill_aIPjjEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPjjEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPjjEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPjjEvT_S1_RKT0_, %function
_ZSt8__fill_aIPjjEvT_S1_RKT0_:
.LFB8969:
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
	bl	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8969:
	.size	_ZSt8__fill_aIPjjEvT_S1_RKT0_, .-_ZSt8__fill_aIPjjEvT_S1_RKT0_
	.section	.text._ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_, %function
_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_:
.LFB8970:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8970:
	.size	_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_
	.section	.text._ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, %function
_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB8971:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L390
.L391:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L390:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L391
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8971:
	.size	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_:
.LFB8972:
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
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	.L393
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	b	.L394
.L393:
	ldr	x0, [sp, 56]
	cmp	x0, 1
	bne	.L394
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_
.L394:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8972:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKjjEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_, %function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_:
.LFB8973:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8973:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIjKjEEvPT_PT0_
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
	.align	3
.LC32:
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
