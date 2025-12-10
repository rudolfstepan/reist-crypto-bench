	.arch armv8-a
	.file	"bench_modular.cpp"
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
.LFB5090:
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
.LFE5090:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, %function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4279:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4279
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
.LFE4279:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4279:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4279-.LLSDACSB4279
.LLSDACSB4279:
	.uleb128 .LEHB0-.LFB4279
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB4279
	.uleb128 0
	.uleb128 .LEHB1-.LFB4279
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4279:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
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
.LFB4558:
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
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE4558:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv:
.LFB5039:
	.cfi_startproc
	adrp	x3, .LC3
	adrp	x1, .LC1
	add	x2, x0, 1248
	ldr	q4, [x3, #:lo12:.LC3]
	adrp	x3, .LC4
	ldr	q6, [x1, #:lo12:.LC1]
	adrp	x1, .LC2
	ldr	q3, [x3, #:lo12:.LC4]
	ldr	q5, [x1, #:lo12:.LC2]
	mov	x1, x0
	.p2align 3,,7
.L60:
	ldr	q0, [x1]
	ldr	q2, [x1, 8]
	and	v0.16b, v0.16b, v6.16b
	ldr	q1, [x1, 1248]
	and	v2.16b, v2.16b, v5.16b
	orr	v0.16b, v0.16b, v2.16b
	and	v2.16b, v0.16b, v4.16b
	ushr	v0.2d, v0.2d, 1
	neg	v2.2d, v2.2d
	eor	v0.16b, v1.16b, v0.16b
	and	v1.16b, v2.16b, v3.16b
	eor	v0.16b, v0.16b, v1.16b
	str	q0, [x1], 16
	cmp	x2, x1
	bne	.L60
	adrp	x4, .LC3
	adrp	x1, .LC1
	add	x3, x0, 1256
	ldr	q3, [x4, #:lo12:.LC3]
	adrp	x4, .LC4
	ldr	q5, [x1, #:lo12:.LC1]
	adrp	x1, .LC2
	ldr	q0, [x4, #:lo12:.LC4]
	ldr	q4, [x1, #:lo12:.LC2]
	mov	x1, 0
	umov	x7, v0.d[1]
	fmov	x6, d0
	.p2align 3,,7
.L61:
	ldr	q0, [x2, x1]
	ldr	q2, [x3, x1]
	and	v0.16b, v0.16b, v5.16b
	ldr	q1, [x0, x1]
	and	v2.16b, v2.16b, v4.16b
	orr	v0.16b, v0.16b, v2.16b
	and	v2.16b, v0.16b, v3.16b
	ushr	v0.2d, v0.2d, 1
	neg	v2.2d, v2.2d
	eor	v0.16b, v1.16b, v0.16b
	fmov	d1, x6
	ins	v1.d[1], x7
	and	v1.16b, v2.16b, v1.16b
	eor	v0.16b, v0.16b, v1.16b
	str	q0, [x2, x1]
	add	x1, x1, 16
	cmp	x1, 1232
	bne	.L61
	ldr	x1, [x0, 2488]
	str	xzr, [x0, 2496]
	ldr	x4, [x0]
	mov	x2, x1
	ldr	x3, [x0, 2480]
	ldr	x5, [x0, 1232]
	bfi	x2, x4, 0, 31
	ldr	x8, [x0, 1240]
	bfi	x3, x1, 0, 31
	sbfx	x4, x2, 0, 1
	sbfx	x1, x1, 0, 1
	and	x4, x4, x6
	and	x1, x1, x6
	eor	x2, x8, x2, lsr 1
	eor	x3, x5, x3, lsr 1
	eor	x2, x2, x4
	eor	x1, x1, x3
	str	x1, [x0, 2480]
	str	x2, [x0, 2488]
	ret
	.cfi_endproc
.LFE5039:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC5:
	.string	"stoll"
	.align	3
.LC6:
	.string	"Usage: "
	.align	3
.LC7:
	.string	" [B>1] [N>0]\n"
	.align	3
.LC8:
	.string	"/proc/cpuinfo"
	.align	3
.LC9:
	.string	"model name"
	.align	3
.LC10:
	.string	":"
	.align	3
.LC11:
	.string	"basic_string::substr"
	.align	3
.LC12:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.align	3
.LC13:
	.string	"cpu MHz"
	.align	3
.LC14:
	.string	"/proc/meminfo"
	.align	3
.LC15:
	.string	"MemTotal"
	.align	3
.LC16:
	.string	"r"
	.align	3
.LC17:
	.string	"uname -o"
	.align	3
.LC18:
	.string	"========================================\n"
	.align	3
.LC19:
	.string	"Modular Benchmark\n"
	.align	3
.LC20:
	.string	"System Information:\n"
	.align	3
.LC21:
	.string	"  Hostname: "
	.align	3
.LC22:
	.string	"\n"
	.align	3
.LC23:
	.string	"  OS: "
	.align	3
.LC24:
	.string	"  CPU Model: "
	.align	3
.LC25:
	.string	"  CPU MHz: "
	.align	3
.LC26:
	.string	"  Memory: "
	.align	3
.LC27:
	.string	"========================================\n\n"
	.align	3
.LC28:
	.string	"Benchmark with B = "
	.align	3
.LC29:
	.string	", N = "
	.align	3
.LC30:
	.string	"\n--- Modular remainder ---\n"
	.align	3
.LC31:
	.string	"classic  : "
	.align	3
.LC32:
	.string	" s\n"
	.align	3
.LC33:
	.string	"REIST    : "
	.align	3
.LC34:
	.string	"Speedup  : "
	.align	3
.LC35:
	.string	"x (classic / REIST)\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB4217:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4217
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #3696
	.cfi_def_cfa_offset 3808
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	str	xzr, [sp, 1024]
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	mov	w19, w0
	ldr	x0, [x2]
	str	x0, [sp, 3688]
	mov	x0, 0
	cmp	w19, 1
	bgt	.L170
	mov	x27, 19264
	mov	x23, 257
	movk	x27, 0x4c, lsl 16
	str	x25, [sp, 3760]
	.cfi_offset 25, -48
	str	x26, [sp, 3768]
	.cfi_offset 26, -40
	str	d8, [sp, 3792]
	.cfi_offset 72, -16
	str	d9, [sp, 3800]
	.cfi_offset 73, -8
.L65:
	mov	x2, 32557
	mov	x3, 48879
	movk	x2, 0x4c95, lsl 16
	add	x1, sp, 808
	movk	x2, 0xf42d, lsl 32
	mov	x0, x3
	mov	x19, 1
	movk	x2, 0x5851, lsl 48
	str	x3, [sp, 800]
	.p2align 3,,7
.L69:
	eor	x0, x0, x0, lsr 62
	madd	x0, x0, x2, x19
	add	x19, x19, 1
	str	x0, [x1], 8
	cmp	x19, 312
	bne	.L69
	add	x7, sp, 64
	add	x6, sp, 96
	add	x5, sp, 128
	add	x4, sp, 160
	add	x3, sp, 192
	add	x2, sp, 112
	add	x24, sp, 272
	adrp	x1, .LC8
	mov	x0, x24
	add	x1, x1, :lo12:.LC8
	add	x26, sp, 144
	add	x20, sp, 176
	stp	x2, x7, [sp]
	mov	w2, 8
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
	str	x19, [sp, 3296]
.LEHB2:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE2:
	add	x2, sp, 224
	adrp	x1, _ZNKSt5ctypeIcE8do_widenEc
	adrp	x0, .LC9
	add	x1, x1, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:.LC9
	str	x0, [sp]
	stp	x1, x2, [sp, 16]
	stp	x2, xzr, [sp, 208]
	strb	wzr, [sp, 224]
.L70:
	add	x21, sp, 208
	.p2align 3,,7
.L88:
	ldr	x0, [sp, 272]
	ldr	x0, [x0, -24]
	add	x0, x24, x0
	ldr	x20, [x0, 240]
	cbz	x20, .L171
	ldrb	w0, [x20, 56]
	cbz	w0, .L91
	ldrb	w2, [x20, 67]
.L92:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x26, x21
	mov	x1, x21
	mov	x0, x24
.LEHB3:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	bne	.L172
	ldr	x1, [sp]
	mov	x0, x21
	mov	x3, 10
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L71
	mov	x2, 0
	mov	x0, x21
	adrp	x1, .LC10
	mov	x3, 1
	add	x1, x1, :lo12:.LC10
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	ldr	x20, [sp, 216]
	add	x2, x0, 2
	cmp	x2, x20
	bhi	.L173
	ldr	x1, [sp, 208]
	sub	x20, x20, x2
	add	x22, sp, 256
	str	x20, [sp, 40]
	str	x22, [sp, 240]
	add	x0, sp, 240
	add	x28, x1, x2
	cmp	x20, 15
	bhi	.L174
	cmp	x20, 1
	beq	.L175
	cbnz	x20, .L176
.L78:
	mov	x0, x22
	str	x20, [sp, 248]
	strb	wzr, [x0, x20]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 240]
	mov	x1, x0
	cmp	x2, x22
	beq	.L177
.L79:
	ldr	x0, [sp, 8]
	ldr	q0, [sp, 248]
	cmp	x1, x0
	beq	.L178
	str	x2, [sp, 48]
	ldr	x0, [sp, 64]
	str	q0, [sp, 56]
	cbz	x1, .L86
	str	x1, [sp, 240]
	str	x0, [sp, 256]
.L85:
	str	xzr, [sp, 248]
	strb	wzr, [x1]
	ldr	x0, [sp, 240]
	cmp	x0, x22
	beq	.L71
	ldr	x1, [sp, 256]
	add	x1, x1, 1
	bl	_ZdlPvm
.L71:
	adrp	x1, .LC13
	mov	x0, x21
	add	x1, x1, :lo12:.LC13
	mov	x3, 7
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L88
	adrp	x1, .LC10
	mov	x3, 1
	add	x1, x1, :lo12:.LC10
	mov	x2, 0
	mov	x0, x21
	add	x20, sp, 240
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	mov	x1, x0
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x0, x21
	add	x1, x1, 2
	mov	x8, x20
	mov	x2, -1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	x1, x20
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L70
.L176:
	mov	x0, x22
.L75:
	mov	x2, x20
	mov	x1, x28
	bl	memcpy
	ldr	x20, [sp, 40]
	str	x20, [sp, 248]
	ldr	x0, [sp, 240]
	strb	wzr, [x0, x20]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 240]
	mov	x1, x0
	cmp	x2, x22
	bne	.L79
.L177:
	ldr	x2, [sp, 248]
	cbz	x2, .L81
	cmp	x2, 1
	beq	.L179
	mov	x1, x22
	bl	memcpy
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 248]
.L81:
	str	x2, [sp, 56]
	strb	wzr, [x0, x2]
	ldr	x1, [sp, 240]
	b	.L85
	.p2align 2,,3
.L91:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x26, x21
	mov	x0, x20
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x0, [x20]
	mov	w2, 10
	ldr	x3, [x0, 48]
	ldr	x0, [sp, 16]
	cmp	x3, x0
	beq	.L92
	mov	w1, w2
	mov	x0, x20
	add	x26, sp, 208
	blr	x3
	and	w2, w0, 255
	b	.L92
	.p2align 2,,3
.L175:
	ldrb	w0, [x1, x2]
	strb	w0, [sp, 256]
	b	.L78
	.p2align 2,,3
.L174:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	add	x1, sp, 40
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE3:
	ldr	x1, [sp, 40]
	str	x0, [sp, 240]
	str	x1, [sp, 256]
	b	.L75
	.p2align 2,,3
.L178:
	str	x2, [sp, 48]
	str	q0, [sp, 56]
.L86:
	str	x22, [sp, 240]
	add	x22, sp, 256
	mov	x1, x22
	b	.L85
.L172:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x24
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 112
	adrp	x1, .LC14
	add	x26, sp, 144
	add	x20, sp, 176
	add	x1, x1, :lo12:.LC14
	mov	w2, 8
	str	x0, [sp]
	mov	x0, x24
.LEHB4:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE4:
	ldr	x2, [sp, 24]
	mov	x1, x21
	mov	x0, x24
	stp	x2, xzr, [sp, 208]
	strb	wzr, [sp, 224]
.LEHB5:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE5:
	ldr	x2, [x0]
	mov	w1, 5
	ldr	x2, [x2, -24]
	add	x0, x0, x2
	ldr	w0, [x0, 32]
	tst	w0, w1
	beq	.L94
.L166:
	add	x0, sp, 112
	str	x0, [sp]
.L95:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x24
	add	x20, sp, 3432
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x20
	mov	x1, 256
	bl	gethostname
	cbz	w0, .L163
	add	x26, sp, 144
.L97:
	adrp	x1, .LC16
	adrp	x0, .LC17
	add	x1, x1, :lo12:.LC16
	add	x0, x0, :lo12:.LC17
	add	x20, sp, 176
.LEHB6:
	bl	popen
	mov	x21, x0
	cbz	x0, .L98
	add	x25, sp, 3304
	add	x20, sp, 176
	mov	x0, x25
	mov	x2, x21
	mov	w1, 128
	bl	fgets
	cbz	x0, .L100
	mov	x1, x25
	add	x20, sp, 176
	add	x2, sp, 40
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	mov	x1, x24
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 184]
	cbz	x0, .L100
	ldr	x2, [sp, 176]
	sub	x1, x0, #1
	ldrb	w0, [x2, x1]
	cmp	w0, 10
	beq	.L180
.L100:
	mov	x0, x21
	bl	pclose
.L98:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w4, -261
	mov	x5, 6
	adrp	x21, .LC18
	add	x1, x21, :lo12:.LC18
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
	adrp	x1, .LC19
	add	x1, x1, :lo12:.LC19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	add	x1, x21, :lo12:.LC18
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC21
	mov	x2, 12
	add	x1, x1, :lo12:.LC21
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 144]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC22
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC23
	mov	x2, 6
	add	x1, x1, :lo12:.LC23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 176]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC24
	mov	x2, 13
	add	x1, x1, :lo12:.LC24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC25
	mov	x2, 11
	add	x1, x1, :lo12:.LC25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 80]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC26
	mov	x2, 10
	add	x1, x1, :lo12:.LC26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [sp, 112]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC28
	mov	x2, 19
	add	x1, x1, :lo12:.LC28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	x1, x23
	bl	_ZNSo9_M_insertIxEERSoT_
	adrp	x1, .LC29
	mov	x21, x0
	add	x1, x1, :lo12:.LC29
	mov	x2, 6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x1, x27
	mov	x0, x21
	bl	_ZNSo9_M_insertIxEERSoT_
	add	x1, x24, :lo12:.LC22
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE6:
	mov	x22, 3987079168
	mov	x28, 262645840084992
	movk	x22, 0x7fff, lsl 32
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	add	x21, sp, 800
	mov	x24, 0
	movk	x22, 0x71d6, lsl 48
	movk	x28, 0xfff7, lsl 48
	mov	x25, 4611686018427387900
	str	x0, [sp, 8]
	b	.L106
	.p2align 2,,3
.L103:
	udiv	x0, x2, x23
	add	x24, x24, 1
	msub	x0, x0, x23, x2
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x24, x27
	beq	.L181
.L106:
	cmp	x19, 311
	bhi	.L182
.L102:
	ldr	x0, [x21, x19, lsl 3]
	add	x5, x19, 1
	str	x5, [sp, 3296]
	mov	x19, x5
	lsr	x1, x0, 29
	and	x1, x1, 6148914691236517205
	eor	x0, x0, x1
	and	x1, x22, x0, lsl 17
	eor	x0, x0, x1
	and	x1, x28, x0, lsl 37
	eor	x0, x0, x1
	eor	x0, x0, x0, lsr 43
	lsl	x1, x0, 62
	lsr	x2, x0, 2
	adds	x1, x1, x0
	cinc	x2, x2, cs
	cmp	x1, x25
	bhi	.L103
	mov	x0, x5
	cmp	x5, 311
	bhi	.L183
	.p2align 3,,7
.L104:
	ldr	x1, [x21, x0, lsl 3]
	add	x5, x0, 1
	str	x5, [sp, 3296]
	lsr	x0, x1, 29
	and	x0, x0, 6148914691236517205
	eor	x1, x1, x0
	and	x0, x22, x1, lsl 17
	eor	x1, x1, x0
	and	x0, x28, x1, lsl 37
	eor	x1, x1, x0
	eor	x1, x1, x1, lsr 43
	lsl	x0, x1, 62
	lsr	x2, x1, 2
	adds	x0, x0, x1
	cinc	x2, x2, cs
	cmp	x0, x25
	bhi	.L184
	mov	x0, x5
	cmp	x5, 311
	bls	.L104
.L183:
	mov	x0, x21
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	ldr	x0, [sp, 3296]
	b	.L104
.L94:
	adrp	x1, .LC15
	mov	x0, x21
	add	x1, x1, :lo12:.LC15
	mov	x3, 8
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmn	x0, #1
	beq	.L166
	mov	x3, 1
	mov	x2, 0
	mov	x0, x21
	add	x20, sp, 240
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	add	x1, x0, 2
	mov	x8, x20
	mov	x0, x21
	mov	x2, -1
.LEHB7:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE7:
	mov	x1, x20
	add	x0, sp, 112
	str	x0, [sp]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L95
	.p2align 2,,3
.L184:
	udiv	x0, x2, x23
	add	x24, x24, 1
	mov	x19, x5
	msub	x0, x0, x23, x2
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x24, x27
	bne	.L106
.L181:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x24, 3987079168
	ldr	x1, [sp, 8]
	movk	x24, 0x7fff, lsl 32
	mov	x28, 262645840084992
	asr	x19, x23, 1
	sub	x0, x0, x1
	mov	x1, 225833675390976
	movk	x1, 0x41cd, lsl 48
	fmov	d0, x1
	scvtf	d9, x0
	mov	x22, 0
	movk	x24, 0x71d6, lsl 48
	movk	x28, 0xfff7, lsl 48
	mov	x25, 4611686018427387900
	fdiv	d9, d9, d0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	str	x0, [sp, 8]
	ldr	x6, [sp, 3296]
	b	.L112
	.p2align 2,,3
.L108:
	udiv	x0, x2, x23
	add	x22, x22, 1
	msub	x0, x0, x23, x2
	cmp	x0, x19
	sub	x1, x0, x23
	csel	x0, x1, x0, gt
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x22, x27
	beq	.L185
.L112:
	cmp	x6, 311
	bhi	.L186
.L107:
	ldr	x0, [x21, x6, lsl 3]
	add	x5, x6, 1
	str	x5, [sp, 3296]
	mov	x6, x5
	lsr	x1, x0, 29
	and	x1, x1, 6148914691236517205
	eor	x0, x0, x1
	and	x1, x24, x0, lsl 17
	eor	x0, x0, x1
	and	x1, x28, x0, lsl 37
	eor	x0, x0, x1
	eor	x0, x0, x0, lsr 43
	lsl	x1, x0, 62
	lsr	x2, x0, 2
	adds	x1, x1, x0
	cinc	x2, x2, cs
	cmp	x1, x25
	bhi	.L108
	mov	x0, x5
	cmp	x5, 311
	bhi	.L187
	.p2align 3,,7
.L109:
	ldr	x1, [x21, x0, lsl 3]
	add	x5, x0, 1
	str	x5, [sp, 3296]
	lsr	x0, x1, 29
	and	x0, x0, 6148914691236517205
	eor	x1, x1, x0
	and	x0, x24, x1, lsl 17
	eor	x1, x1, x0
	and	x0, x28, x1, lsl 37
	eor	x1, x1, x0
	eor	x1, x1, x1, lsr 43
	lsl	x0, x1, 62
	lsr	x2, x1, 2
	adds	x0, x0, x1
	cinc	x2, x2, cs
	cmp	x0, x25
	bhi	.L188
	mov	x0, x5
	cmp	x5, 311
	bls	.L109
.L187:
	mov	x0, x21
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	ldr	x0, [sp, 3296]
	b	.L109
	.p2align 2,,3
.L182:
	mov	x0, x21
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	ldr	x19, [sp, 3296]
	b	.L102
	.p2align 2,,3
.L188:
	mov	x6, x5
	b	.L108
	.p2align 2,,3
.L186:
	mov	x0, x21
	bl	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	ldr	x6, [sp, 3296]
	b	.L107
.L185:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	ldr	x1, [sp, 8]
	mov	x2, 225833675390976
	movk	x2, 0x41cd, lsl 48
	fmov	d0, x2
	sub	x1, x0, x1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	scvtf	d8, x1
	adrp	x1, .LC30
	add	x1, x1, :lo12:.LC30
	fdiv	d8, d8, d0
.LEHB8:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC31
	mov	x2, 11
	add	x1, x1, :lo12:.LC31
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d9
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC32
	add	x1, x19, :lo12:.LC32
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC33
	mov	x2, 11
	add	x1, x1, :lo12:.LC33
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	add	x1, x19, :lo12:.LC32
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE8:
	fcmpe	d8, #0.0
	bgt	.L136
.L113:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x25, [sp, 3760]
	.cfi_restore 25
	mov	w0, 0
	ldr	x26, [sp, 3768]
	.cfi_restore 26
	ldr	d8, [sp, 3792]
	.cfi_restore 72
	ldr	d9, [sp, 3800]
	.cfi_restore 73
.L64:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 3688]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L189
	add	sp, sp, 3696
	.cfi_remember_state
	.cfi_def_cfa_offset 112
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L170:
	.cfi_restore_state
	mov	x20, x1
	add	x24, sp, 40
	ldr	x1, [x1, 8]
	add	x21, sp, 800
	mov	x2, x24
	mov	x0, x21
	adrp	x22, .LC5
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	ldr	x2, [sp, 800]
	add	x1, x22, :lo12:.LC5
	adrp	x0, :got:__isoc23_strtoll
	ldr	x0, [x0, :got_lo12:__isoc23_strtoll]
	mov	w4, 10
	mov	x3, 0
.LEHB10:
	bl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE10:
	mov	x23, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	w19, 2
	bne	.L66
	cmp	x23, 1
	ble	.L68
	mov	x27, 19264
	str	x25, [sp, 3760]
	.cfi_remember_state
	.cfi_offset 25, -48
	movk	x27, 0x4c, lsl 16
	str	x26, [sp, 3768]
	.cfi_offset 26, -40
	str	d8, [sp, 3792]
	.cfi_offset 72, -16
	str	d9, [sp, 3800]
	.cfi_offset 73, -8
	b	.L65
.L66:
	.cfi_restore_state
	ldr	x1, [x20, 16]
	mov	x2, x24
	mov	x0, x21
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	ldr	x2, [sp, 800]
	add	x1, x22, :lo12:.LC5
	adrp	x0, :got:__isoc23_strtoll
	ldr	x0, [x0, :got_lo12:__isoc23_strtoll]
	mov	w4, 10
	mov	x3, 0
.LEHB12:
	bl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE12:
	mov	x27, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmp	x27, 0
	ccmp	x23, 1, 4, gt
	bgt	.L190
.L68:
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	mov	x2, 7
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
.LEHB13:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, :got_lo12:_ZSt4cerr]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE13:
	mov	w0, 1
	b	.L64
.L136:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 72, -16
	.cfi_offset 73, -8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	adrp	x1, .LC34
	mov	x2, 11
	add	x1, x1, :lo12:.LC34
.LEHB14:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fdiv	d0, d9, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC35
	add	x1, x1, :lo12:.LC35
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L113
.L163:
	mov	x0, x20
	bl	strlen
	ldr	x2, [sp, 152]
	add	x26, sp, 144
	mov	x3, x20
	mov	x4, x0
	add	x20, sp, 176
	mov	x0, x26
	mov	x1, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.LEHE14:
	b	.L97
.L179:
	ldrb	w1, [sp, 256]
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 248]
	b	.L81
.L180:
	mov	x0, x20
	mov	x2, 1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L100
.L190:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 72
	.cfi_restore 73
	str	x25, [sp, 3760]
	.cfi_offset 25, -48
	str	x26, [sp, 3768]
	.cfi_offset 26, -40
	str	d8, [sp, 3792]
	.cfi_offset 72, -16
	str	d9, [sp, 3800]
	.cfi_offset 73, -8
	b	.L65
.L171:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 3688]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L168
	add	x26, sp, 208
.LEHB15:
	bl	_ZSt16__throw_bad_castv
.L189:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 72
	.cfi_restore 73
	str	x25, [sp, 3760]
	.cfi_offset 25, -48
	str	x26, [sp, 3768]
	.cfi_offset 26, -40
	str	d8, [sp, 3792]
	.cfi_offset 72, -16
	str	d9, [sp, 3800]
	.cfi_offset 73, -8
.L168:
	bl	__stack_chk_fail
.L173:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	ldr	x0, [sp, 3688]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L168
	adrp	x1, .LC11
	adrp	x0, .LC12
	mov	x3, x20
	add	x1, x1, :lo12:.LC11
	add	x0, x0, :lo12:.LC12
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE15:
.L135:
	mov	x19, x0
	mov	x0, x21
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x24
	add	x26, sp, 144
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x20, sp, 176
	add	x0, sp, 112
	str	x0, [sp]
.L120:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 80
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 3688]
	ldr	x1, [x25]
	subs	x0, x0, x1
	mov	x1, 0
	bne	.L168
.L122:
	mov	x0, x19
.LEHB16:
	bl	_Unwind_Resume
.LEHE16:
.L134:
	adrp	x25, :got:__stack_chk_guard
	ldr	x25, [x25, :got_lo12:__stack_chk_guard]
	mov	x19, x0
	b	.L120
.L132:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 72
	.cfi_restore 73
.L169:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 3688]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	str	x25, [sp, 3760]
	.cfi_offset 25, -48
	str	x26, [sp, 3768]
	.cfi_offset 26, -40
	str	d8, [sp, 3792]
	.cfi_offset 72, -16
	str	d9, [sp, 3800]
	.cfi_offset 73, -8
	beq	.L122
	b	.L168
.L131:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 72
	.cfi_restore 73
	b	.L169
.L133:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 72, -16
	.cfi_offset 73, -8
	mov	x19, x0
	mov	x0, x26
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x26, sp, 144
	mov	x0, x24
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	add	x0, sp, 112
	add	x20, sp, 176
	str	x0, [sp]
	b	.L120
	.cfi_endproc
.LFE4217:
	.section	.gcc_except_table,"a",@progbits
.LLSDA4217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4217-.LLSDACSB4217
.LLSDACSB4217:
	.uleb128 .LEHB2-.LFB4217
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L134-.LFB4217
	.uleb128 0
	.uleb128 .LEHB3-.LFB4217
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L133-.LFB4217
	.uleb128 0
	.uleb128 .LEHB4-.LFB4217
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L134-.LFB4217
	.uleb128 0
	.uleb128 .LEHB5-.LFB4217
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L135-.LFB4217
	.uleb128 0
	.uleb128 .LEHB6-.LFB4217
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L134-.LFB4217
	.uleb128 0
	.uleb128 .LEHB7-.LFB4217
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L135-.LFB4217
	.uleb128 0
	.uleb128 .LEHB8-.LFB4217
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L134-.LFB4217
	.uleb128 0
	.uleb128 .LEHB9-.LFB4217
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB4217
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L131-.LFB4217
	.uleb128 0
	.uleb128 .LEHB11-.LFB4217
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB4217
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L132-.LFB4217
	.uleb128 0
	.uleb128 .LEHB13-.LFB4217
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB4217
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L134-.LFB4217
	.uleb128 0
	.uleb128 .LEHB15-.LFB4217
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L133-.LFB4217
	.uleb128 0
	.uleb128 .LEHB16-.LFB4217
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE4217:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC1:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC2:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC3:
	.xword	1
	.xword	1
	.align	4
.LC4:
	.xword	-5403634167711393303
	.xword	-5403634167711393303
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
