	.file	"bench_tree_reist.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\n--- Testing Independent Evaluation Formula ---\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"R0="
.LC2:
	.string	", B="
.LC3:
	.string	", half="
.LC4:
	.string	"\n\n"
.LC5:
	.string	"k = "
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Testing condition: c_i = B if (R0 - i*B) > half\n"
	.section	.rodata.str1.1
.LC7:
	.string	"i"
.LC8:
	.string	"R0 - i*B"
.LC9:
	.string	"> half?"
.LC10:
	.string	"c_i"
.LC11:
	.string	"\n"
.LC12:
	.string	"  ... ("
.LC13:
	.string	" more corrections)\n"
.LC14:
	.string	"NO"
.LC15:
	.string	"YES"
#NO_APP
	.section	.text.unlikely,"ax",@progbits
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4
	.globl	_Z27test_independent_evaluationlll
	.type	_Z27test_independent_evaluationlll, @function
_Z27test_independent_evaluationlll:
.LFB3316:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3316
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	leaq	.LC0(%rip), %rsi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	_ZSt4cout(%rip), %rbx
	movq	%rbx, %rdi
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %r14
	movq	%r14, 56(%rsp)
	movq	%rdx, %r14
	movl	$48, %edx
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$7, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	%r14, %rbp
	jle	.L2
	movq	%rbp, %rax
	subq	%r14, %rax
	leaq	-1(%r13,%rax), %rax
	cqto
	idivq	%r13
	movq	%rax, 8(%rsp)
.L3:
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%r15, %r15
	jle	.L1
	movl	$48, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movl	$1, %edx
	movq	%rbx, %rdi
	leaq	.LC7(%rip), %rsi
	leaq	32(%rsp), %r12
	movq	-24(%rax), %rax
	movq	$5, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movl	$8, %edx
	movq	%rbx, %rdi
	leaq	.LC8(%rip), %rsi
	movq	-24(%rax), %rax
	movq	$15, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movl	$7, %edx
	movq	%rbx, %rdi
	leaq	.LC9(%rip), %rsi
	movq	-24(%rax), %rax
	movq	$15, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movl	$3, %edx
	movq	%rbx, %rdi
	leaq	.LC10(%rip), %rsi
	movq	-24(%rax), %rax
	movq	$10, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$45, %edx
	movl	$45, %esi
	leaq	16(%rsp), %rdi
	movq	%r12, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.LEHE0:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE1:
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L7
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L7:
	movq	8(%rsp), %rax
	leaq	2(%rax), %rcx
	movl	$10, %eax
	cmpq	%rax, %rcx
	cmovle	%rcx, %rax
	xorl	%r12d, %r12d
	movq	%rax, (%rsp)
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	.LC15(%rip), %rsi
	movl	$3, %edx
	movq	%r15, %rdi
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r15), %rax
	movq	%r13, %rsi
	movq	-24(%rax), %rax
	movq	$10, 16(%r15,%rax)
.L24:
	movq	%r15, %rdi
	addq	$1, %r12
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	(%rsp), %r12
	je	.L16
	subq	%r13, %rbp
.L10:
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	-24(%rax), %rax
	movq	$5, 16(%rbx,%rax)
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rbp, %rsi
	movq	(%rax), %rdx
	movq	%rax, %rdi
	movq	-24(%rdx), %rdx
	movq	$15, 16(%rax,%rdx)
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	$15, 16(%r15,%rax)
	cmpq	%rbp, %r14
	jl	.L8
	leaq	.LC14(%rip), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r15), %rax
	xorl	%esi, %esi
	movq	-24(%rax), %rax
	movq	$10, 16(%r15,%rax)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L16:
	cmpq	$10, 8(%rsp)
	jg	.L28
.L1:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L26
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	movq	%r14, %rax
	negq	%rax
	cmpq	%rbp, %rax
	jl	.L4
	movq	%r14, %rax
	subq	%rbp, %rax
	leaq	-1(%r13,%rax), %rax
	cqto
	idivq	%r13
	negq	%rax
	movq	%rax, 8(%rsp)
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L26
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
.L25:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movl	$7, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	subq	$10, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
.LEHE2:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L26
	movl	$19, %edx
	leaq	.LC13(%rip), %rsi
	jmp	.L25
.L26:
	call	__stack_chk_fail@PLT
.L20:
	movq	%rax, %rbx
	jmp	.L13
	.section	.gcc_except_table,"a",@progbits
.LLSDA3316:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3316-.LLSDACSB3316
.LLSDACSB3316:
	.uleb128 .LEHB0-.LFB3316
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3316
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB3316
	.uleb128 0
	.uleb128 .LEHB2-.LFB3316
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3316:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3316
	.type	_Z27test_independent_evaluationlll.cold, @function
_Z27test_independent_evaluationlll.cold:
.LFSB3316:
.L13:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L29
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L29:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3316:
	.section	.gcc_except_table
.LLSDAC3316:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3316-.LLSDACSBC3316
.LLSDACSBC3316:
	.uleb128 .LEHB3-.LCOLDB16
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC3316:
	.section	.text.unlikely
	.text
	.size	_Z27test_independent_evaluationlll, .-_Z27test_independent_evaluationlll
	.section	.text.unlikely
	.size	_Z27test_independent_evaluationlll.cold, .-_Z27test_independent_evaluationlll.cold
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.1
.LC20:
	.string	"\n--- Complexity Analysis ---\n"
.LC21:
	.string	"T="
.LC22:
	.string	"Initial remainder R="
.LC23:
	.string	"Corrections needed: k="
.LC24:
	.string	"\nLinear method:\n"
.LC25:
	.string	"  Critical path: O("
.LC26:
	.string	") = "
.LC27:
	.string	" sequential steps\n"
.LC28:
	.string	"  Total work: "
.LC29:
	.string	" corrections\n"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"  Parallelism: None (fully sequential)\n"
	.section	.rodata.str1.1
.LC31:
	.string	"\nTree method:\n"
.LC32:
	.string	"  Critical path: O(log "
.LC33:
	.string	" levels\n"
.LC34:
	.string	" corrections (same)\n"
.LC35:
	.string	"  Parallelism: Up to "
.LC36:
	.string	" parallel evaluations\n"
.LC37:
	.string	"\nTheoretical speedup: "
.LC38:
	.string	"x\n"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"(assuming perfect parallelization)\n"
	.align 8
.LC40:
	.string	"\nSIMD Analysis (AVX2, 8-wide):\n"
	.section	.rodata.str1.1
.LC41:
	.string	"  Evaluation phase: "
.LC42:
	.string	" SIMD operations\n"
.LC43:
	.string	"  Reduction phase: "
	.text
	.p2align 4
	.globl	_Z18analyze_complexityll
	.type	_Z18analyze_complexityll, @function
_Z18analyze_complexityll:
.LFB3318:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	cvtsi2sdq	%rsi, %xmm1
	sarq	%rcx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movsd	.LC17(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	.LC19(%rip), %xmm1
	mulsd	.LC18(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L31
	cvttsd2siq	%xmm0, %rax
.L32:
	movq	%rbp, %rdi
	movq	%rbp, %r13
	sarq	$63, %rdi
	movq	%rdi, %rsi
	imulq	%rax, %rsi
	mulq	%rbp
	addq	%rdx, %rsi
	shrdq	$32, %rsi, %rax
	imulq	%rbx, %rax
	subq	%rax, %r13
	cmpq	%rcx, %r13
	jg	.L43
	movq	%rcx, %rax
	negq	%rax
	cmpq	%rax, %r13
	jle	.L44
	movl	$29, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$22, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%esi, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
.L42:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L44:
	subq	%r13, %rcx
	leaq	-1(%rbx,%rcx), %rax
	cqto
	idivq	%rbx
	negq	%rax
	movq	%rax, %r12
.L34:
	movl	$29, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$22, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%r12, %r12
	je	.L30
	movq	%r12, %rbx
	negq	%rbx
	cmovs	%r12, %rbx
	cmpq	$1, %rbx
	je	.L39
	movq	%rbx, %rdx
	xorl	%r13d, %r13d
	.p2align 5
	.p2align 4
	.p2align 3
.L38:
	addq	$1, %rdx
	movl	%r13d, %eax
	addl	$1, %r13d
	sarq	%rdx
	cmpq	$1, %rdx
	jne	.L38
	leal	2(%rax), %ebp
.L37:
	movl	$16, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$19, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$18, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$14, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$39, %edx
	leaq	.LC30(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$14, %edx
	leaq	.LC31(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$23, %edx
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movl	$8, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$14, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$20, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$21, %edx
	leaq	.LC35(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$22, %edx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	leaq	.LC37(%rip), %rsi
	cvtsi2sdl	%ebp, %xmm1
	cvtsi2sdq	%rbx, %xmm0
	divsd	%xmm1, %xmm0
	movl	$22, %edx
	leaq	_ZSt4cout(%rip), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$2, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$35, %edx
	leaq	.LC39(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$31, %edx
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	leaq	.LC41(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	7(%rbx), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	sarq	$3, %rsi
	call	_ZNSolsEi@PLT
	movl	$17, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$19, %edx
	leaq	.LC43(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r13d, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$8, %edx
	leaq	.LC33(%rip), %rsi
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	movq	%r13, %rax
	subq	%rcx, %rax
	leaq	-1(%rbx,%rax), %rax
	cqto
	idivq	%rbx
	movq	%rax, %r12
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
	movl	$1, %ebp
	xorl	%r13d, %r13d
	jmp	.L37
	.cfi_endproc
.LFE3318:
	.size	_Z18analyze_complexityll, .-_Z18analyze_complexityll
	.section	.rodata._ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_.str1.1,"aMS",@progbits,1
.LC44:
	.string	"vector::_M_realloc_append"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_, @function
_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_:
.LFB3872:
	.cfi_startproc
	movabsq	$1152921504606846975, %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %r14
	movq	8(%rdi), %r12
	subq	%r14, %r12
	movq	%r12, %rdx
	sarq	$3, %rdx
	cmpq	%rax, %rdx
	je	.L56
	testq	%rdx, %rdx
	movl	$1, %eax
	movq	%rdi, %r13
	movq	%rsi, %r15
	cmovne	%rdx, %rax
	addq	%rdx, %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	%rax, %rbp
	movq	(%r15), %rax
	movq	%rax, 0(%rbp,%r12)
	testq	%r12, %r12
	je	.L47
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
.L47:
	leaq	8(%rbp,%r12), %r12
	testq	%r14, %r14
	je	.L48
	movq	16(%r13), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
.L48:
	movq	%rbp, 0(%r13)
	addq	%rbx, %rbp
	movq	%r12, 8(%r13)
	movq	%rbp, 16(%r13)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L56:
	.cfi_restore_state
	leaq	.LC44(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3872:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_
	.section	.rodata._Z11tree_reduceRKSt6vectorIlSaIlEEb.str1.1,"aMS",@progbits,1
.LC45:
	.string	"  Level "
.LC46:
	.string	" (size="
.LC47:
	.string	"): ["
.LC48:
	.string	", "
.LC49:
	.string	", ..."
.LC50:
	.string	"]\n"
.LC51:
	.string	" (size=1): ["
	.section	.text._Z11tree_reduceRKSt6vectorIlSaIlEEb,"axG",@progbits,_Z11tree_reduceRKSt6vectorIlSaIlEEb,comdat
	.p2align 4
	.weak	_Z11tree_reduceRKSt6vectorIlSaIlEEb
	.type	_Z11tree_reduceRKSt6vectorIlSaIlEEb, @function
_Z11tree_reduceRKSt6vectorIlSaIlEEb:
.LFB3301:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3301
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	(%rdi), %rbx
	movl	%esi, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	movq	8(%rdi), %rax
	cmpq	%rax, %rbx
	je	.L84
	subq	%rbx, %rax
	movq	%rax, %r15
	cmpq	$8, %rax
	jne	.L59
	movq	(%rbx), %rbx
.L57:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L112
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_restore_state
	movq	%rax, %rdi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%r15, %rdx
	movq	%rbx, %rsi
	leaq	(%rax,%r15), %r14
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%r14, 24(%rsp)
	call	memcpy@PLT
	movq	%r14, 32(%rsp)
	movl	$0, 44(%rsp)
	cmpq	$8, %r15
	jle	.L113
	.p2align 4
	.p2align 3
.L74:
	movq	%r15, %r13
	sarq	$3, %r13
	leaq	4(,%r13,4), %r12
	andq	$-8, %r12
	movq	%r12, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	%rax, %rbx
	addq	%rax, %r12
	cmpb	$0, 40(%rsp)
	jne	.L114
.L61:
	movq	%rbx, %r14
	movl	$1, %ecx
	jmp	.L71
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L116:
	addq	$2, %rcx
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	%r13, %rcx
	jnb	.L115
.L71:
	movq	0(%rbp,%rcx,8), %rax
	addq	-8(%rbp,%rcx,8), %rax
	movq	%rax, %rdx
	cmpq	%r12, %rbx
	jne	.L116
	movabsq	$1152921504606846975, %rdi
	subq	%r14, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%rdi, %rax
	je	.L117
	testq	%rax, %rax
	movl	$1, %r15d
	movq	%rcx, 16(%rsp)
	cmovne	%rax, %r15
	movq	%rdx, 8(%rsp)
	addq	%rax, %r15
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r15
	cmova	%rax, %r15
	salq	$3, %r15
	movq	%r15, %rdi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	8(%rsp), %rdx
	testq	%rbx, %rbx
	movq	16(%rsp), %rcx
	movq	%rax, %r8
	movq	%rdx, (%rax,%rbx)
	je	.L69
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rcx, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %r8
.L69:
	leaq	8(%r8,%rbx), %rbx
	testq	%r14, %r14
	je	.L70
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	%r8, 16(%rsp)
	subq	%r14, %rsi
	movq	%rcx, 8(%rsp)
	call	_ZdlPvm@PLT
	movq	16(%rsp), %r8
	movq	8(%rsp), %rcx
.L70:
	addq	$2, %rcx
	leaq	(%r8,%r15), %r12
	movq	%r8, %r14
	cmpq	%r13, %rcx
	jb	.L71
	.p2align 4
	.p2align 3
.L115:
	andl	$1, %r13d
	je	.L85
	cmpq	%rbx, %r12
	je	.L73
	movq	24(%rsp), %rax
	movq	-8(%rax), %rax
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rax
	movq	%rax, 24(%rsp)
.L72:
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	movq	%r14, %rbp
	call	_ZdlPvm@PLT
	movq	24(%rsp), %r15
	addl	$1, 44(%rsp)
	movq	%r12, 32(%rsp)
	subq	%r14, %r15
	cmpq	$8, %r15
	jg	.L74
.L113:
	movl	44(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L75
	cmpb	$0, 40(%rsp)
	je	.L75
	movl	$8, %edx
	leaq	.LC45(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$12, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE7:
.L75:
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	0(%rbp), %rbx
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L85:
	movq	%rbx, 24(%rsp)
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L114:
	movl	$8, %edx
	leaq	.LC45(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB8:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	44(%rsp), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$7, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	$32, %r15
	movl	$4, %r14d
	cmovle	%r13, %r14
	leaq	-1(%r14), %rax
	movq	%r14, 16(%rsp)
	xorl	%r14d, %r14d
	movq	%rax, 8(%rsp)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L62:
	addq	$1, %r14
	cmpq	%r14, 16(%rsp)
	je	.L118
.L63:
	movq	0(%rbp,%r14,8), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	cmpq	8(%rsp), %r14
	jnb	.L62
	movl	$2, %edx
	leaq	.LC48(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$1, %r14
	cmpq	%r14, 16(%rsp)
	jne	.L63
.L118:
	cmpq	$32, %r15
	jle	.L64
	movl	$5, %edx
	leaq	.LC49(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L64:
	movl	$2, %edx
	leaq	.LC50(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE8:
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L73:
	movq	24(%rsp), %rsi
	leaq	48(%rsp), %rdi
	movq	%r14, 48(%rsp)
	movq	%r12, 56(%rsp)
	subq	$8, %rsi
	movq	%r12, 64(%rsp)
.LEHB9:
	call	_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_
.LEHE9:
	movq	56(%rsp), %rax
	movq	48(%rsp), %r14
	movq	64(%rsp), %r12
	movq	%rax, 24(%rsp)
	jmp	.L72
.L84:
	xorl	%ebx, %ebx
	jmp	.L57
.L76:
	movq	48(%rsp), %r14
	movq	64(%rsp), %r12
.L77:
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.L80
.L79:
	movq	%r12, %rsi
	movq	%rbx, %rdi
	subq	%rbx, %rsi
	call	_ZdlPvm@PLT
.L80:
	testq	%rbp, %rbp
	jne	.L119
.L81:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	je	.L82
.L112:
	call	__stack_chk_fail@PLT
.L117:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L112
	leaq	.LC44(%rip), %rdi
.LEHB10:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE10:
.L89:
	movq	%rax, %r13
	jmp	.L77
.L87:
	movq	%rax, %r13
	jmp	.L76
.L88:
	movq	%rax, %r13
	jmp	.L79
.L86:
	movq	%rax, %r13
	jmp	.L80
.L119:
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	jmp	.L81
.L82:
	movq	%r13, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE3301:
	.section	.gcc_except_table
.LLSDA3301:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3301-.LLSDACSB3301
.LLSDACSB3301:
	.uleb128 .LEHB4-.LFB3301
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB3301
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L86-.LFB3301
	.uleb128 0
	.uleb128 .LEHB6-.LFB3301
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L89-.LFB3301
	.uleb128 0
	.uleb128 .LEHB7-.LFB3301
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L86-.LFB3301
	.uleb128 0
	.uleb128 .LEHB8-.LFB3301
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L88-.LFB3301
	.uleb128 0
	.uleb128 .LEHB9-.LFB3301
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L87-.LFB3301
	.uleb128 0
	.uleb128 .LEHB10-.LFB3301
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L89-.LFB3301
	.uleb128 0
	.uleb128 .LEHB11-.LFB3301
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE3301:
	.section	.text._Z11tree_reduceRKSt6vectorIlSaIlEEb,"axG",@progbits,_Z11tree_reduceRKSt6vectorIlSaIlEEb,comdat
	.size	_Z11tree_reduceRKSt6vectorIlSaIlEEb, .-_Z11tree_reduceRKSt6vectorIlSaIlEEb
	.section	.rodata._Z10reist_treelRK12ReistTreeCtxb.str1.1,"aMS",@progbits,1
.LC52:
	.string	"Initial: Q="
.LC53:
	.string	", R="
	.section	.rodata._Z10reist_treelRK12ReistTreeCtxb.str1.8,"aMS",@progbits,1
	.align 8
.LC54:
	.string	"Using linear correction (k too small)\n"
	.section	.rodata._Z10reist_treelRK12ReistTreeCtxb.str1.1
.LC55:
	.string	"vector::reserve"
.LC56:
	.string	"Correction terms: k="
.LC57:
	.string	" terms of "
.LC58:
	.string	" each\n"
.LC59:
	.string	"Tree reduction:\n"
.LC60:
	.string	"Total correction: "
.LC61:
	.string	"After correction: R="
.LC62:
	.base64	"4pqg77iPICBXYXJuaW5nOiAA"
.LC63:
	.string	" final corrections needed!\n"
	.section	.text._Z10reist_treelRK12ReistTreeCtxb,"axG",@progbits,_Z10reist_treelRK12ReistTreeCtxb,comdat
	.p2align 4
	.weak	_Z10reist_treelRK12ReistTreeCtxb
	.type	_Z10reist_treelRK12ReistTreeCtxb, @function
_Z10reist_treelRK12ReistTreeCtxb:
.LFB3315:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3315
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	sarq	$63, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	16(%rsi), %rcx
	movb	%dl, 12(%rsp)
	imulq	%rbx, %rcx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	movq	16(%rsi), %rax
	mulq	%rdi
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	24(%rsi), %ecx
	movq	(%rsi), %rsi
	shrdq	%cl, %rdx, %rax
	sarq	%cl, %rdx
	testb	$64, %cl
	cmovne	%rdx, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	imulq	%rbx, %rax
	subq	%rax, %rdi
	movq	%rdi, %r15
	testb	%bpl, %bpl
	jne	.L121
	movq	8(%r14), %rcx
	cmpq	%rcx, %rdi
	jg	.L204
	movq	%rcx, %rax
	negq	%rax
	cmpq	%rax, %rdi
	jle	.L205
.L120:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L204:
	.cfi_restore_state
	movq	%rdi, %rax
	subq	%rcx, %rax
	leaq	-1(%rsi,%rax), %rax
	cqto
	idivq	%rsi
	movq	%rax, %r13
.L123:
	testq	%r13, %r13
	je	.L120
	movq	%r13, %rbx
	negq	%rbx
	cmovs	%r13, %rbx
	cmpq	$2, %rbx
	jg	.L131
.L134:
	cmpq	%rcx, %r15
	jle	.L133
	movq	(%r14), %rax
	.p2align 3
	.p2align 4
	.p2align 3
.L135:
	subq	%rax, %r15
	cmpq	%rcx, %r15
	jg	.L135
.L133:
	negq	%rcx
	cmpq	%rcx, %r15
	jg	.L120
	movq	(%r14), %rax
	.p2align 3
	.p2align 4
	.p2align 3
.L136:
	addq	%rax, %r15
	cmpq	%rcx, %r15
	jle	.L136
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L131:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rbx
	jg	.L206
	leaq	0(,%rbx,8), %rdi
	xorl	%r12d, %r12d
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, (%rsp)
	movq	%rax, %rcx
	leaq	(%rax,%rbx,8), %rbx
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	testq	%r13, %r13
	jg	.L139
	movq	(%r14), %r10
	movq	%r13, %r11
	negq	%r11
	negq	%r10
	jmp	.L140
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L207:
	movq	%r10, (%rcx)
	addq	$8, %rcx
.L145:
	addq	$1, %r12
	cmpq	%r11, %r12
	je	.L143
.L140:
	cmpq	%rbx, %rcx
	jne	.L207
	movabsq	$1152921504606846975, %rax
	subq	(%rsp), %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	cmpq	%rax, %rdx
	je	.L208
	testq	%rdx, %rdx
	movl	$1, %eax
	movq	%r11, 40(%rsp)
	cmovne	%rdx, %rax
	movq	%rcx, 32(%rsp)
	movq	%r10, 24(%rsp)
	addq	%rdx, %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
.LEHB13:
	call	_Znwm@PLT
.LEHE13:
	movq	32(%rsp), %rcx
	movq	24(%rsp), %r10
	movq	%rax, %r8
	movq	40(%rsp), %r11
	testq	%rcx, %rcx
	movq	%r10, (%rax,%rcx)
	je	.L148
	movq	(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%r10, 32(%rsp)
	movq	%rcx, 24(%rsp)
	call	memcpy@PLT
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	movq	24(%rsp), %rcx
	movq	%rax, %r8
.L148:
	movq	(%rsp), %rax
	leaq	8(%r8,%rcx), %rcx
	testq	%rax, %rax
	je	.L149
	subq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r8, 40(%rsp)
	movq	%rbx, %rsi
	movq	%r11, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r10, (%rsp)
	call	_ZdlPvm@PLT
	movq	40(%rsp), %r8
	movq	32(%rsp), %r11
	movq	24(%rsp), %rcx
	movq	(%rsp), %r10
.L149:
	movq	16(%rsp), %rbx
	movq	%r8, (%rsp)
	addq	%r8, %rbx
	jmp	.L145
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L209:
	movq	(%r14), %rax
	addq	$1, %r12
	addq	$8, %rcx
	movq	%rax, -8(%rcx)
	cmpq	%r13, %r12
	je	.L143
.L139:
	cmpq	%rbx, %rcx
	jne	.L209
	movq	(%rsp), %rax
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rcx, 56(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%rax, 48(%rsp)
.LEHB14:
	call	_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_
.LEHE14:
	movq	48(%rsp), %rax
	addq	$1, %r12
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rbx
	movq	%rax, (%rsp)
	cmpq	%r13, %r12
	jne	.L139
	.p2align 4
	.p2align 3
.L143:
	testb	%bpl, %bpl
	je	.L150
	leaq	_ZSt4cout(%rip), %r12
	movl	$20, %edx
	movq	%rcx, 16(%rsp)
	leaq	.LC56(%rip), %rsi
	movq	%r12, %rdi
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	subq	(%rsp), %rsi
	movq	%rcx, 24(%rsp)
	sarq	$3, %rsi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	movl	$10, %edx
	movq	%rax, 16(%rsp)
	leaq	.LC57(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rsi
	movq	16(%rsp), %rdi
	movq	%rsi, %rdx
	negq	%rdx
	testq	%r13, %r13
	cmovle	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$6, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	leaq	.LC59(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	leaq	48(%rsp), %rdi
	movl	$1, %esi
	movq	%rbx, 64(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
	call	_Z11tree_reduceRKSt6vectorIlSaIlEEb
	movl	$18, %edx
	leaq	.LC60(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, 16(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	leaq	.LC61(%rip), %rsi
	movq	%r12, %rdi
	subq	16(%rsp), %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE15:
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L121:
	movl	$11, %edx
	leaq	.LC52(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB16:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r14), %rax
	cmpq	%rax, %r15
	jg	.L210
	movq	%rax, %rdx
	negq	%rdx
	cmpq	%rdx, %r15
	jle	.L211
	movl	$22, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%esi, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE16:
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L150:
	movq	(%rsp), %rax
	leaq	48(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rcx, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rax, 48(%rsp)
.LEHB17:
	call	_Z11tree_reduceRKSt6vectorIlSaIlEEb
.LEHE17:
	subq	%rax, %r15
.L153:
	movq	8(%r14), %rdx
	movq	%rdx, %rsi
	negq	%rsi
	cmpq	%rdx, %r15
	jle	.L154
	movq	(%r14), %rax
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L155:
	subq	%rax, %r15
	addl	$1, %ecx
	cmpq	%rdx, %r15
	jg	.L155
	cmpq	%rsi, %r15
	jg	.L159
	.p2align 4
	.p2align 4
	.p2align 3
.L160:
	addq	%rax, %r15
	subl	$1, %ecx
	cmpq	%rsi, %r15
	jle	.L160
	testl	%ecx, %ecx
	setne	%al
	andl	%ebp, %eax
	movb	%al, 12(%rsp)
.L159:
	cmpb	$0, 12(%rsp)
	jne	.L212
.L157:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L120
	subq	%rdi, %rbx
	movq	%rbx, %rsi
	call	_ZdlPvm@PLT
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L211:
	movq	(%r14), %rcx
	subq	%r15, %rax
	leaq	-1(%rcx,%rax), %rax
	cqto
	idivq	%rcx
	negq	%rax
	movq	%rax, %r13
.L127:
	movl	$22, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%r13, %r13
	je	.L120
	movq	%r13, %rbx
	negq	%rbx
	cmovs	%r13, %rbx
	cmpq	$2, %rbx
	jg	.L131
	movl	$38, %edx
	leaq	.LC54(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE18:
	movq	8(%r14), %rcx
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L205:
	movq	%rcx, %rax
	subq	%rdi, %rax
	leaq	-1(%rsi,%rax), %rax
	cqto
	idivq	%rsi
	negq	%rax
	movq	%rax, %r13
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L210:
	movq	(%r14), %rcx
	movq	%r15, %rdx
	subq	%rax, %rdx
	leaq	-1(%rcx,%rdx), %rax
	cqto
	idivq	%rcx
	movq	%rax, %r13
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L212:
	movl	$17, %edx
	leaq	.LC62(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	%ecx, 12(%rsp)
.LEHB19:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	12(%rsp), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$27, %edx
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE19:
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L154:
	cmpq	%rsi, %r15
	jg	.L157
	movq	(%r14), %rax
	xorl	%ecx, %ecx
	jmp	.L160
.L208:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	je	.L147
.L203:
	call	__stack_chk_fail@PLT
.L170:
	movq	%rax, %rbp
	jmp	.L164
.L206:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	leaq	.LC55(%rip), %rdi
.LEHB20:
	call	_ZSt20__throw_length_errorPKc@PLT
.L163:
	movq	48(%rsp), %rax
	movq	64(%rsp), %rbx
	movq	%rax, (%rsp)
.L164:
	cmpq	$0, (%rsp)
	je	.L165
	movq	(%rsp), %rdi
	subq	%rdi, %rbx
	movq	%rbx, %rsi
	call	_ZdlPvm@PLT
.L165:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE20:
.L169:
	movq	%rax, %rbp
	jmp	.L163
.L147:
	leaq	.LC44(%rip), %rdi
.LEHB21:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE21:
	.cfi_endproc
.LFE3315:
	.section	.gcc_except_table
.LLSDA3315:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3315-.LLSDACSB3315
.LLSDACSB3315:
	.uleb128 .LEHB12-.LFB3315
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB3315
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L170-.LFB3315
	.uleb128 0
	.uleb128 .LEHB14-.LFB3315
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L169-.LFB3315
	.uleb128 0
	.uleb128 .LEHB15-.LFB3315
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L170-.LFB3315
	.uleb128 0
	.uleb128 .LEHB16-.LFB3315
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB3315
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L170-.LFB3315
	.uleb128 0
	.uleb128 .LEHB18-.LFB3315
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB3315
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L170-.LFB3315
	.uleb128 0
	.uleb128 .LEHB20-.LFB3315
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB3315
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L170-.LFB3315
	.uleb128 0
.LLSDACSE3315:
	.section	.text._Z10reist_treelRK12ReistTreeCtxb,"axG",@progbits,_Z10reist_treelRK12ReistTreeCtxb,comdat
	.size	_Z10reist_treelRK12ReistTreeCtxb, .-_Z10reist_treelRK12ReistTreeCtxb
	.section	.rodata.str1.8
	.align 8
.LC64:
	.string	"\n========================================\n"
	.section	.rodata.str1.1
.LC65:
	.string	"Testing: T="
	.section	.rodata.str1.8
	.align 8
.LC66:
	.string	"========================================\n"
	.section	.rodata.str1.1
.LC67:
	.string	"\n--- REIST-Linear ---\n"
.LC68:
	.string	"Result: "
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"\n--- REIST-Tree (Corrected) ---\n"
	.section	.rodata.str1.1
.LC70:
	.string	"\n--- Verification ---\n"
.LC71:
	.string	"Linear result: "
.LC72:
	.string	"Tree result:   "
.LC73:
	.base64	"4pyTIFJlc3VsdHMgbWF0Y2ghCgA="
.LC74:
	.base64	"4pyXIE1JU01BVENIIQoA"
.LC75:
	.string	"  Expected (linear): "
.LC76:
	.string	"  Got (tree):        "
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"void test_equivalence(int64_t, int64_t)"
	.section	.rodata.str1.1
.LC78:
	.string	"src/bench_tree_reist.cpp"
	.section	.rodata.str1.8
	.align 8
.LC79:
	.string	"false && \"Results don't match!\""
	.align 8
.LC80:
	.string	"r_linear > -ctx.half && r_linear <= ctx.half"
	.align 8
.LC81:
	.string	"T == q_linear * ctx.B + r_linear"
	.section	.text.unlikely
.LCOLDB82:
	.text
.LHOTB82:
	.p2align 4
	.globl	_Z16test_equivalencell
	.type	_Z16test_equivalencell, @function
_Z16test_equivalencell:
.LFB3317:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$42, %edx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	leaq	_ZSt4cout(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rbp
	movq	%rbp, 40(%rsp)
	movq	%rsi, %rbp
	leaq	.LC64(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$11, %edx
	leaq	.LC65(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %r13
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	sarq	%r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$41, %edx
	leaq	.LC66(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm1, %xmm1
	movq	%rbp, (%rsp)
	movsd	.LC17(%rip), %xmm0
	cvtsi2sdq	%rbp, %xmm1
	movq	%r13, 8(%rsp)
	divsd	%xmm1, %xmm0
	movsd	.LC19(%rip), %xmm1
	movl	$32, 24(%rsp)
	mulsd	.LC18(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L214
	cvttsd2siq	%xmm0, %rbx
.L215:
	movl	$22, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rbx, 16(%rsp)
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rax
	cqto
	movq	%rdx, %rcx
	mulq	%rbx
	imulq	%rbx, %rcx
	movq	%r12, %rbx
	addq	%rdx, %rcx
	shrdq	$32, %rcx, %rax
	imulq	%rbp, %rax
	subq	%rax, %rbx
	cmpq	%rbx, %r13
	jge	.L216
	.p2align 3
	.p2align 4
	.p2align 3
.L217:
	subq	%rbp, %rbx
	cmpq	%rbx, %r13
	jl	.L217
.L216:
	movq	%r13, %rax
	negq	%rax
	cmpq	%rax, %rbx
	jg	.L218
	.p2align 3
	.p2align 4
	.p2align 3
.L219:
	addq	%rbp, %rbx
	cmpq	%rax, %rbx
	jle	.L219
.L218:
	movl	$8, %edx
	leaq	.LC68(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC69(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rsp, %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	call	_Z10reist_treelRK12ReistTreeCtxb
	movl	$8, %edx
	leaq	.LC68(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$22, %edx
	leaq	.LC70(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$15, %edx
	leaq	.LC71(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$15, %edx
	leaq	.LC72(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	%rbx, %r14
	jne	.L220
	movl	$19, %edx
	leaq	.LC73(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	%rbx, %r13
	jl	.L230
	movq	%r12, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rbp
	subq	%rdx, %rcx
	addq	%rbx, %rcx
	cmpq	%r12, %rcx
	jne	.L228
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L231
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L214:
	.cfi_restore_state
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rbx
	btcq	$63, %rbx
	jmp	.L215
.L220:
	leaq	.LC74(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$21, %edx
	leaq	.LC75(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$21, %edx
	leaq	.LC76(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC77(%rip), %rcx
	movl	$312, %edx
	leaq	.LC78(%rip), %rsi
	leaq	.LC79(%rip), %rdi
	call	__assert_fail@PLT
.L231:
	call	__stack_chk_fail@PLT
.L230:
	jmp	.L227
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z16test_equivalencell.cold, @function
_Z16test_equivalencell.cold:
.LFSB3317:
.L228:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	leaq	.LC77(%rip), %rcx
	movl	$321, %edx
	leaq	.LC78(%rip), %rsi
	leaq	.LC81(%rip), %rdi
	call	__assert_fail@PLT
.L227:
	leaq	.LC77(%rip), %rcx
	movl	$316, %edx
	leaq	.LC78(%rip), %rsi
	leaq	.LC80(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE3317:
	.text
	.size	_Z16test_equivalencell, .-_Z16test_equivalencell
	.section	.text.unlikely
	.size	_Z16test_equivalencell.cold, .-_Z16test_equivalencell.cold
.LCOLDE82:
	.text
.LHOTE82:
	.section	.rodata.str1.8
	.align 8
.LC83:
	.string	"REIST Tree: Corrected Scalar Implementation\n"
	.align 8
.LC84:
	.string	"============================================\n"
	.align 8
.LC85:
	.string	"Using CEILING division for correct k calculation\n"
	.align 8
.LC86:
	.string	"Independent evaluation: c_i = B if (R0 - i*B) > half\n\n"
	.align 8
.LC87:
	.string	"All tests completed successfully! \342\234\223\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3319:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC83(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC84(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC85(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC86(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$6, %edx
	movl	$13, %esi
	movl	$53, %edi
	call	_Z27test_independent_evaluationlll
	movl	$6, %edx
	movl	$13, %esi
	movl	$10000010, %edi
	call	_Z27test_independent_evaluationlll
	movl	$13, %esi
	movl	$157, %edi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movl	$157, %edi
	call	_Z18analyze_complexityll
	movl	$13, %esi
	movl	$10013, %edi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movl	$10013, %edi
	call	_Z18analyze_complexityll
	movl	$13, %esi
	movl	$1000013, %edi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movl	$1000013, %edi
	call	_Z18analyze_complexityll
	movl	$13, %esi
	movl	$10000013, %edi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movl	$10000013, %edi
	call	_Z18analyze_complexityll
	movl	$13, %esi
	movq	$-500007, %rdi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movq	$-500007, %rdi
	call	_Z18analyze_complexityll
	movl	$13, %esi
	movl	$13006, %edi
	call	_Z16test_equivalencell
	movl	$13, %esi
	movl	$13007, %edi
	call	_Z16test_equivalencell
	leaq	.LC64(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC87(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC66(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3319:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC17:
	.long	0
	.long	1072693248
	.align 8
.LC18:
	.long	0
	.long	1106247680
	.align 8
.LC19:
	.long	0
	.long	1138753536
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
