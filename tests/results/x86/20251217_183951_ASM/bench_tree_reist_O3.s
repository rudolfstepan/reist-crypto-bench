	.file	"bench_tree_reist.cpp"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\12--- Testing Independent Evaluation Formula ---\12\0"
.LC1:
	.ascii "R0=\0"
.LC2:
	.ascii ", B=\0"
.LC3:
	.ascii ", half=\0"
.LC4:
	.ascii "\12\12\0"
.LC5:
	.ascii "k = \0"
	.align 8
.LC6:
	.ascii "Testing condition: c_i = B if (R0 - i*B) > half\12\0"
.LC7:
	.ascii "i\0"
.LC8:
	.ascii "R0 - i*B\0"
.LC9:
	.ascii "> half?\0"
.LC10:
	.ascii "c_i\0"
.LC11:
	.ascii "\12\0"
.LC12:
	.ascii "  ... (\0"
.LC13:
	.ascii " more corrections)\12\0"
.LC14:
	.ascii "NO\0"
.LC15:
	.ascii "YES\0"
	.text
	.p2align 4
	.globl	_Z27test_independent_evaluationxxx
	.def	_Z27test_independent_evaluationxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27test_independent_evaluationxxx
_Z27test_independent_evaluationxxx:
.LFB3515:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rsi
	movq	%rcx, %rdi
	movq	%r8, %r13
	movq	%rdx, %r12
	leaq	.LC0(%rip), %rdx
	movl	$48, %r8d
	movq	%rsi, %rcx
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$3, %r8d
	movq	%rsi, %rcx
	leaq	.LC1(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%r12, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$7, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$2, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%r13, %rdi
	jle	.L2
	movq	%rdi, %rax
	subq	%r13, %rax
	leaq	-1(%r12,%rax), %rax
	cqto
	idivq	%r12
	movq	%rax, %r14
.L3:
	leaq	.LC5(%rip), %rdx
	movl	$4, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r14, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$2, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testq	%r14, %r14
	jle	.L1
	leaq	.LC6(%rip), %rdx
	movl	$48, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	leaq	32(%rsp), %rbp
	movq	%rsi, %rcx
	leaq	.LC7(%rip), %rdx
	movl	$1, %r8d
	leaq	48(%rsp), %rbx
	movq	-24(%rax), %rax
	movq	$5, 16(%rsi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	movl	$8, %r8d
	movq	%rsi, %rcx
	leaq	.LC8(%rip), %rdx
	movq	-24(%rax), %rax
	movq	$15, 16(%rsi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	movl	$7, %r8d
	movq	%rsi, %rcx
	leaq	.LC9(%rip), %rdx
	movq	-24(%rax), %rax
	movq	$15, 16(%rsi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	movl	$3, %r8d
	movq	%rsi, %rcx
	leaq	.LC10(%rip), %rdx
	movq	-24(%rax), %rax
	movq	$10, 16(%rsi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	movq	%rsi, %rcx
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$45, %r8d
	movl	$45, %edx
	movq	%rbp, %rcx
	movq	%rbx, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE0:
	movq	40(%rsp), %r8
	movq	%rsi, %rcx
	movq	32(%rsp), %rdx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC11(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE1:
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L7
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L7:
	leaq	2(%r14), %r15
	movl	$10, %eax
	cmpq	%rax, %r15
	cmovg	%rax, %r15
	xorl	%ebp, %ebp
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	.LC15(%rip), %rdx
	movl	$3, %r8d
	movq	%rbx, %rcx
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%r12, %rdx
	movq	-24(%rax), %rax
	movq	$10, 16(%rbx,%rax)
.L19:
	movq	%rbx, %rcx
	addq	$1, %rbp
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%r15, %rbp
	je	.L14
	subq	%r12, %rdi
.L10:
	movq	(%rsi), %rax
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movq	-24(%rax), %rax
	movq	$5, 16(%rsi,%rax)
	call	_ZNSo9_M_insertIxEERSoT_
	movq	(%rax), %rdx
	movq	%rax, %rcx
	movq	-24(%rdx), %rdx
	movq	$15, 16(%rax,%rdx)
	movq	%rdi, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	cmpq	%rdi, %r13
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	$15, 16(%rbx,%rax)
	jl	.L8
	leaq	.LC14(%rip), %rdx
	movl	$2, %r8d
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	xorl	%edx, %edx
	movq	-24(%rax), %rax
	movq	$10, 16(%rbx,%rax)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L14:
	cmpq	$10, %r14
	jg	.L22
.L1:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%r13, %rax
	negq	%rax
	cmpq	%rdi, %rax
	jl	.L4
	movq	%r13, %rax
	subq	%rdi, %rax
	leaq	-1(%r12,%rax), %rax
	cqto
	idivq	%r12
	negq	%rax
	movq	%rax, %r14
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	leaq	.LC5(%rip), %rdx
	movl	$4, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	xorl	%edx, %edx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$2, %r8d
	leaq	.LC4(%rip), %rdx
.L20:
	movq	%rax, %rcx
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	.LC12(%rip), %rdx
	movl	$7, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	-10(%r14), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$19, %r8d
	leaq	.LC13(%rip), %rdx
	jmp	.L20
.L16:
	movq	%rax, %rbx
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3515:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3515-.LLSDACSB3515
.LLSDACSB3515:
	.uleb128 .LEHB0-.LFB3515
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3515
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB3515
	.uleb128 0
	.uleb128 .LEHB2-.LFB3515
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3515:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC19:
	.ascii "\12--- Complexity Analysis ---\12\0"
.LC20:
	.ascii "T=\0"
.LC21:
	.ascii "Initial remainder R=\0"
.LC22:
	.ascii "Corrections needed: k=\0"
.LC23:
	.ascii "\12Linear method:\12\0"
.LC24:
	.ascii "  Critical path: O(\0"
.LC25:
	.ascii ") = \0"
.LC26:
	.ascii " sequential steps\12\0"
.LC27:
	.ascii "  Total work: \0"
.LC28:
	.ascii " corrections\12\0"
	.align 8
.LC29:
	.ascii "  Parallelism: None (fully sequential)\12\0"
.LC30:
	.ascii "\12Tree method:\12\0"
.LC31:
	.ascii "  Critical path: O(log \0"
.LC32:
	.ascii " levels\12\0"
.LC33:
	.ascii " corrections (same)\12\0"
.LC34:
	.ascii "  Parallelism: Up to \0"
.LC35:
	.ascii " parallel evaluations\12\0"
.LC36:
	.ascii "\12Theoretical speedup: \0"
.LC37:
	.ascii "x\12\0"
	.align 8
.LC38:
	.ascii "(assuming perfect parallelization)\12\0"
	.align 8
.LC39:
	.ascii "\12SIMD Analysis (AVX2, 8-wide):\12\0"
.LC40:
	.ascii "  Evaluation phase: \0"
.LC41:
	.ascii " SIMD operations\12\0"
.LC42:
	.ascii "  Reduction phase: \0"
	.text
	.p2align 4
	.globl	_Z18analyze_complexityxx
	.def	_Z18analyze_complexityxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18analyze_complexityxx
_Z18analyze_complexityxx:
.LFB3517:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movsd	.LC16(%rip), %xmm0
	pxor	%xmm1, %xmm1
	movq	%rdx, %rdi
	sarq	%rdx
	movq	%rcx, %rbp
	cvtsi2sdq	%rdi, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC18(%rip), %xmm1
	mulsd	.LC17(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L24
	cvttsd2siq	%xmm0, %rax
.L25:
	imulq	%rbp, %rax
	movq	%rbp, %r12
	sarq	$32, %rax
	imulq	%rdi, %rax
	subq	%rax, %r12
	cmpq	%rdx, %r12
	jg	.L35
	movq	%rdx, %rax
	negq	%rax
	cmpq	%rax, %r12
	jle	.L36
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$29, %r8d
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %r8d
	movq	%rbx, %rcx
	leaq	.LC20(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$20, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$22, %r8d
	movq	%rbx, %rcx
	leaq	.LC22(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
.L34:
	movq	%rax, %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	.p2align 4,,10
	.p2align 3
.L24:
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L36:
	subq	%r12, %rdx
	leaq	-1(%rdi,%rdx), %rax
	cqto
	idivq	%rdi
	negq	%rax
	movq	%rax, %rsi
.L27:
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$29, %r8d
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %r8d
	movq	%rbx, %rcx
	leaq	.LC20(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$20, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$22, %r8d
	movq	%rbx, %rcx
	leaq	.LC22(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testq	%rsi, %rsi
	je	.L23
	movq	%rsi, %rax
	sarq	$63, %rax
	xorq	%rax, %rsi
	subq	%rax, %rsi
	cmpq	$1, %rsi
	je	.L32
	movq	%rsi, %rdx
	xorl	%r12d, %r12d
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L31:
	addq	$1, %rdx
	movl	%r12d, %eax
	addl	$1, %r12d
	sarq	%rdx
	cmpq	$1, %rdx
	jne	.L31
	leal	2(%rax), %edi
.L30:
	leaq	.LC23(%rip), %rdx
	movl	$16, %r8d
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$19, %r8d
	movq	%rbx, %rcx
	leaq	.LC24(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	movq	%rsi, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$18, %r8d
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	movq	%rbx, %rcx
	leaq	.LC27(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$13, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$39, %r8d
	movq	%rbx, %rcx
	leaq	.LC29(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$23, %r8d
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%edi, %edx
	movq	%rbp, %rcx
	call	_ZNSolsEi
	movl	$8, %r8d
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	movq	%rbx, %rcx
	leaq	.LC27(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$20, %r8d
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$21, %r8d
	movq	%rbx, %rcx
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$22, %r8d
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rsi, %xmm1
	cvtsi2sdl	%edi, %xmm0
	divsd	%xmm0, %xmm1
	movl	$22, %r8d
	movq	%rbx, %rcx
	leaq	.LC36(%rip), %rdx
	movsd	%xmm1, 40(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	movsd	40(%rsp), %xmm1
	movq	-24(%rax), %rdx
	addq	%rbx, %rdx
	movl	24(%rdx), %eax
	movq	$2, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC37(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$35, %r8d
	movq	%rbx, %rcx
	leaq	.LC38(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$31, %r8d
	movq	%rbx, %rcx
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$20, %r8d
	movq	%rbx, %rcx
	leaq	.LC40(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	7(%rsi), %rdx
	movq	%rbx, %rcx
	sarq	$3, %rdx
	call	_ZNSolsEi
	movl	$17, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$19, %r8d
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%r12d, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movl	$8, %r8d
	leaq	.LC32(%rip), %rdx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L35:
	movq	%r12, %rax
	subq	%rdx, %rax
	leaq	-1(%rdi,%rax), %rax
	cqto
	idivq	%rdi
	movq	%rax, %rsi
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movl	$1, %edi
	xorl	%r12d, %r12d
	jmp	.L30
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "vector::_M_realloc_append\0"
	.section	.text$_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
	.def	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_:
.LFB4071:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movabsq	$1152921504606846975, %rax
	movq	(%rcx), %r12
	movq	8(%rcx), %rbp
	movq	%rcx, %rsi
	movq	%rdx, %r13
	subq	%r12, %rbp
	movq	%rbp, %rcx
	sarq	$3, %rcx
	cmpq	%rax, %rcx
	je	.L47
	testq	%rcx, %rcx
	movl	$1, %eax
	movabsq	$1152921504606846975, %rdx
	cmovne	%rcx, %rax
	addq	%rcx, %rax
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rcx
	call	_Znwy
	testq	%rbp, %rbp
	movq	%rax, %rdi
	movq	0(%r13), %rax
	movq	%rax, (%rdi,%rbp)
	je	.L39
	movq	%rbp, %r8
	movq	%r12, %rdx
	movq	%rdi, %rcx
	call	memcpy
.L39:
	leaq	8(%rdi,%rbp), %rax
	movq	%rdi, %xmm0
	testq	%r12, %r12
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0
	je	.L40
	movq	16(%rsi), %rdx
	movq	%r12, %rcx
	movaps	%xmm0, 32(%rsp)
	subq	%r12, %rdx
	call	_ZdlPvy
	movdqa	32(%rsp), %xmm0
.L40:
	addq	%rbx, %rdi
	movups	%xmm0, (%rsi)
	movq	%rdi, 16(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L47:
	leaq	.LC44(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC45:
	.ascii "  Level \0"
.LC46:
	.ascii " (size=\0"
.LC47:
	.ascii "): [\0"
.LC48:
	.ascii ", \0"
.LC49:
	.ascii ", ...\0"
.LC50:
	.ascii "]\12\0"
.LC51:
	.ascii " (size=1): [\0"
	.section	.text$_Z11tree_reduceRKSt6vectorIxSaIxEEb,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z11tree_reduceRKSt6vectorIxSaIxEEb
	.def	_Z11tree_reduceRKSt6vectorIxSaIxEEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11tree_reduceRKSt6vectorIxSaIxEEb
_Z11tree_reduceRKSt6vectorIxSaIxEEb:
.LFB3500:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	(%rcx), %rbx
	movl	%edx, 56(%rsp)
	cmpq	%r12, %rbx
	je	.L72
	subq	%rbx, %r12
	cmpq	$8, %r12
	jne	.L50
	movq	(%rbx), %rbx
.L48:
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%r12, %rcx
.LEHB3:
	call	_Znwy
.LEHE3:
	movq	%r12, %r8
	movq	%rbx, %rdx
	leaq	(%rax,%r12), %rdi
	movq	%rax, %rcx
	movq	%rax, %rsi
	movq	%rdi, 32(%rsp)
	call	memcpy
	cmpq	$8, %r12
	movq	%rdi, 40(%rsp)
	movl	$0, 60(%rsp)
	jle	.L98
	.p2align 4,,10
	.p2align 3
.L64:
	movq	%r12, %rbp
	sarq	$3, %rbp
	leaq	4(,%rbp,4), %rdi
	andq	$-8, %rdi
	movq	%rdi, %rcx
.LEHB4:
	call	_Znwy
.LEHE4:
	addq	%rax, %rdi
	cmpb	$0, 56(%rsp)
	movq	%rax, %rbx
	jne	.L99
.L52:
	movq	%rbx, %r14
	movl	$1, %r15d
	jmp	.L61
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L101:
	addq	$2, %r15
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	%rbp, %r15
	jnb	.L100
.L61:
	movq	(%rsi,%r15,8), %rax
	addq	-8(%rsi,%r15,8), %rax
	cmpq	%rdi, %rbx
	movq	%rax, %r13
	jne	.L101
	movabsq	$1152921504606846975, %rcx
	movq	%rdi, %rbx
	subq	%r14, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%rcx, %rax
	je	.L102
	testq	%rax, %rax
	movl	$1, %r12d
	cmovne	%rax, %r12
	addq	%rax, %r12
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r12
	cmova	%rax, %r12
	salq	$3, %r12
	movq	%r12, %rcx
.LEHB5:
	call	_Znwy
.LEHE5:
	testq	%rbx, %rbx
	movq	%rax, %r9
	movq	%r13, (%rax,%rbx)
	je	.L59
	movq	%rbx, %r8
	movq	%r14, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	%rax, %r9
.L59:
	leaq	8(%r9,%rbx), %rbx
	testq	%r14, %r14
	je	.L60
	movq	%rdi, %rdx
	movq	%r14, %rcx
	movq	%r9, 48(%rsp)
	subq	%r14, %rdx
	call	_ZdlPvy
	movq	48(%rsp), %r9
.L60:
	leaq	(%r9,%r12), %rdi
	addq	$2, %r15
	movq	%r9, %r14
	cmpq	%rbp, %r15
	jb	.L61
	.p2align 4,,10
	.p2align 3
.L100:
	andl	$1, %ebp
	je	.L73
	cmpq	%rbx, %rdi
	je	.L63
	movq	32(%rsp), %rax
	movq	-8(%rax), %rax
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rax
	movq	%rax, 32(%rsp)
.L62:
	movq	40(%rsp), %rdx
	movq	%rsi, %rcx
	subq	%rsi, %rdx
	movq	%r14, %rsi
	call	_ZdlPvy
	movq	32(%rsp), %r12
	movq	%rdi, 40(%rsp)
	addl	$1, 60(%rsp)
	subq	%r14, %r12
	cmpq	$8, %r12
	jg	.L64
.L98:
	movl	60(%rsp), %edi
	testl	%edi, %edi
	je	.L65
	cmpb	$0, 56(%rsp)
	je	.L65
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$8, %r8d
	leaq	.LC45(%rip), %rdx
	movq	%rbx, %rcx
.LEHB6:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%edi, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movl	$12, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	.LC51(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC50(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE6:
.L65:
	movq	40(%rsp), %rdx
	movq	%rsi, %rcx
	movq	(%rsi), %rbx
	subq	%rsi, %rdx
	call	_ZdlPvy
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L73:
	movq	%rbx, 32(%rsp)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L99:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$8, %r8d
	leaq	.LC45(%rip), %rdx
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	60(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movl	$7, %r8d
	movq	%rax, %rcx
	movq	%rax, %r14
	leaq	.LC46(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC47(%rip), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	$32, %r12
	movl	$4, %r14d
	cmovle	%rbp, %r14
	xorl	%r13d, %r13d
	leaq	-1(%r14), %r15
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L53:
	addq	$1, %r13
	cmpq	%r13, %r14
	je	.L103
.L54:
	movq	(%rsi,%r13,8), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	cmpq	%r15, %r13
	jnb	.L53
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$2, %r8d
	leaq	.LC48(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$1, %r13
	cmpq	%r13, %r14
	jne	.L54
.L103:
	cmpq	$32, %r12
	jle	.L55
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$5, %r8d
	leaq	.LC49(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L55:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$2, %r8d
	leaq	.LC50(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE7:
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L63:
	movq	32(%rsp), %rdx
	movq	%r14, %xmm0
	movq	%rdi, %xmm1
	movq	%rdi, 80(%rsp)
	leaq	64(%rsp), %rcx
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm0, 64(%rsp)
	subq	$8, %rdx
.LEHB8:
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
.LEHE8:
	movq	72(%rsp), %rax
	movq	64(%rsp), %r14
	movq	80(%rsp), %rdi
	movq	%rax, 32(%rsp)
	jmp	.L62
.L72:
	xorl	%ebx, %ebx
	jmp	.L48
.L75:
	movq	64(%rsp), %r14
	movq	%rax, %rbp
	movq	80(%rsp), %rdi
.L67:
	testq	%r14, %r14
	movq	%r14, %rbx
	jne	.L69
.L70:
	testq	%rsi, %rsi
	je	.L71
	movq	40(%rsp), %rdx
	movq	%rsi, %rcx
	subq	%rsi, %rdx
	call	_ZdlPvy
.L71:
	movq	%rbp, %rcx
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L74:
	movq	%rax, %rbp
	jmp	.L70
.L77:
	movq	%rax, %rbp
	jmp	.L67
.L102:
	leaq	.LC44(%rip), %rcx
.LEHB10:
	call	_ZSt20__throw_length_errorPKc
.LEHE10:
.L76:
	movq	%rax, %rbp
.L69:
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	subq	%rbx, %rdx
	call	_ZdlPvy
	jmp	.L70
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3500:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3500-.LLSDACSB3500
.LLSDACSB3500:
	.uleb128 .LEHB3-.LFB3500
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3500
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L74-.LFB3500
	.uleb128 0
	.uleb128 .LEHB5-.LFB3500
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L77-.LFB3500
	.uleb128 0
	.uleb128 .LEHB6-.LFB3500
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L74-.LFB3500
	.uleb128 0
	.uleb128 .LEHB7-.LFB3500
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L76-.LFB3500
	.uleb128 0
	.uleb128 .LEHB8-.LFB3500
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L75-.LFB3500
	.uleb128 0
	.uleb128 .LEHB9-.LFB3500
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB3500
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L77-.LFB3500
	.uleb128 0
.LLSDACSE3500:
	.section	.text$_Z11tree_reduceRKSt6vectorIxSaIxEEb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC52:
	.ascii "Initial: Q=\0"
.LC53:
	.ascii ", R=\0"
	.align 8
.LC54:
	.ascii "Using linear correction (k too small)\12\0"
.LC55:
	.ascii "vector::reserve\0"
.LC56:
	.ascii "Correction terms: k=\0"
.LC57:
	.ascii " terms of \0"
.LC58:
	.ascii " each\12\0"
.LC59:
	.ascii "Tree reduction:\12\0"
.LC60:
	.ascii "Total correction: \0"
.LC61:
	.ascii "After correction: R=\0"
.LC62:
	.ascii "\342\232\240\357\270\217  Warning: \0"
.LC63:
	.ascii " final corrections needed!\12\0"
	.section	.text$_Z10reist_treexRK12ReistTreeCtxb,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z10reist_treexRK12ReistTreeCtxb
	.def	_Z10reist_treexRK12ReistTreeCtxb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10reist_treexRK12ReistTreeCtxb
_Z10reist_treexRK12ReistTreeCtxb:
.LFB3514:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	movq	16(%rdx), %rsi
	imulq	%rcx, %rsi
	movq	%rcx, %rbx
	movl	%r8d, %ebp
	movl	24(%rdx), %ecx
	movl	%r8d, %r14d
	movq	(%rdx), %r8
	movq	%rdx, %r15
	sarq	%cl, %rsi
	movq	%r8, %rax
	imulq	%rsi, %rax
	subq	%rax, %rbx
	testb	%bpl, %bpl
	jne	.L105
	movq	8(%rdx), %rcx
	cmpq	%rcx, %rbx
	jg	.L181
	movq	%rcx, %rax
	negq	%rax
	cmpq	%rax, %rbx
	jle	.L182
.L104:
	movaps	112(%rsp), %xmm6
	movq	%rbx, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	movq	%rbx, %rax
	subq	%rcx, %rax
	leaq	-1(%r8,%rax), %rax
	cqto
	idivq	%r8
	movq	%rax, %rdi
.L107:
	testq	%rdi, %rdi
	je	.L104
	movq	%rdi, %rsi
	negq	%rsi
	cmovs	%rdi, %rsi
	cmpq	$2, %rsi
	jg	.L115
.L118:
	cmpq	%rcx, %rbx
	jle	.L117
	movq	(%r15), %rax
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L119:
	subq	%rax, %rbx
	cmpq	%rcx, %rbx
	jg	.L119
.L117:
	negq	%rcx
	cmpq	%rcx, %rbx
	jg	.L104
	movq	(%r15), %rax
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L120:
	addq	%rax, %rbx
	cmpq	%rcx, %rbx
	jle	.L120
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L115:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rsi
	jg	.L183
	leaq	0(,%rsi,8), %rcx
	xorl	%r12d, %r12d
.LEHB11:
	call	_Znwy
.LEHE11:
	testq	%rdi, %rdi
	leaq	(%rax,%rsi,8), %rsi
	movq	%rax, %r9
	movq	%rax, %r13
	leaq	80(%rsp), %rax
	movq	%rax, 40(%rsp)
	jg	.L122
	movq	(%r15), %r10
	movq	%rdi, %r11
	negq	%r11
	negq	%r10
	jmp	.L123
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L184:
	movq	%r10, (%r9)
	addq	$8, %r9
.L128:
	addq	$1, %r12
	cmpq	%r11, %r12
	je	.L126
.L123:
	cmpq	%rsi, %r9
	jne	.L184
	movabsq	$1152921504606846975, %rax
	movq	%rsi, %r8
	subq	%r13, %r8
	movq	%r8, %rdx
	sarq	$3, %rdx
	cmpq	%rax, %rdx
	je	.L185
	testq	%rdx, %rdx
	movl	$1, %eax
	movq	%r11, 72(%rsp)
	cmovne	%rdx, %rax
	movq	%r8, 64(%rsp)
	movq	%r10, 56(%rsp)
	addq	%rdx, %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	64(%rsp), %r8
	movq	%rax, 40(%rsp)
	movq	%rax, %rcx
	movq	56(%rsp), %r10
	movq	72(%rsp), %r11
	testq	%r8, %r8
	movq	%r10, (%rax,%r8)
	je	.L130
	movq	%r13, %rdx
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	call	memcpy
	movq	72(%rsp), %r11
	movq	64(%rsp), %r10
	movq	56(%rsp), %r8
.L130:
	movq	40(%rsp), %rax
	testq	%r13, %r13
	leaq	8(%rax,%r8), %r9
	je	.L131
	movq	%rsi, %rdx
	movq	%r13, %rcx
	movq	%r11, 72(%rsp)
	subq	%r13, %rdx
	movq	%r9, 64(%rsp)
	movq	%r10, 56(%rsp)
	call	_ZdlPvy
	movq	72(%rsp), %r11
	movq	64(%rsp), %r9
	movq	56(%rsp), %r10
.L131:
	movq	48(%rsp), %rsi
	movq	40(%rsp), %r13
	addq	%r13, %rsi
	jmp	.L128
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L186:
	movq	(%r15), %rax
	addq	$1, %r12
	addq	$8, %r9
	movq	%rax, -8(%r9)
	cmpq	%r12, %rdi
	je	.L126
.L122:
	cmpq	%rsi, %r9
	jne	.L186
	movq	40(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%r9, 96(%rsp)
.LEHB13:
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
.LEHE13:
	addq	$1, %r12
	movq	80(%rsp), %r13
	cmpq	%r12, %rdi
	movq	88(%rsp), %r9
	movq	96(%rsp), %rsi
	jne	.L122
	.p2align 4,,10
	.p2align 3
.L126:
	movq	%r13, %xmm6
	movq	%r9, %xmm0
	testb	%bpl, %bpl
	punpcklqdq	%xmm0, %xmm6
	je	.L132
	movq	.refptr._ZSt4cout(%rip), %r12
	movl	$20, %r8d
	movq	%r9, 40(%rsp)
	leaq	.LC56(%rip), %rdx
	movq	%r12, %rcx
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	40(%rsp), %rdx
	movq	%r12, %rcx
	subq	%r13, %rdx
	sarq	$3, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movq	%rax, %rcx
	movl	$10, %r8d
	movq	%rax, 40(%rsp)
	leaq	.LC57(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%r15), %rdx
	movq	40(%rsp), %rcx
	movq	%rdx, %rax
	negq	%rax
	testq	%rdi, %rdi
	cmovle	%rax, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC58(%rip), %rdx
	movl	$6, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC59(%rip), %rdx
	movl	$16, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	80(%rsp), %rcx
	movl	$1, %edx
	movaps	%xmm6, 80(%rsp)
	movq	%rsi, 96(%rsp)
	call	_Z11tree_reduceRKSt6vectorIxSaIxEEb
	movl	$18, %r8d
	movq	%r12, %rcx
	movq	%rax, %rdi
	leaq	.LC60(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC11(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rdx, 40(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$20, %r8d
	movq	%r12, %rcx
	subq	%rdi, %rbx
	leaq	.LC61(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	40(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE14:
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L105:
	movq	.refptr._ZSt4cout(%rip), %r12
	movl	$11, %r8d
	leaq	.LC52(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%r12, %rcx
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rdi, 40(%rsp)
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	8(%r15), %rax
	cmpq	%rax, %rbx
	jg	.L187
	movq	%rax, %rdx
	negq	%rdx
	cmpq	%rdx, %rbx
	jle	.L188
	leaq	.LC22(%rip), %rdx
	movl	$22, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	40(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE15:
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L132:
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	movaps	%xmm6, 80(%rsp)
	movq	%rsi, 96(%rsp)
.LEHB16:
	call	_Z11tree_reduceRKSt6vectorIxSaIxEEb
.LEHE16:
	subq	%rax, %rbx
.L135:
	movq	8(%r15), %rdx
	movq	%rdx, %rcx
	negq	%rcx
	cmpq	%rdx, %rbx
	jle	.L136
	movq	(%r15), %rax
	xorl	%edi, %edi
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L137:
	subq	%rax, %rbx
	addl	$1, %edi
	cmpq	%rdx, %rbx
	jg	.L137
	cmpq	%rcx, %rbx
	jg	.L141
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L142:
	addq	%rax, %rbx
	subl	$1, %edi
	cmpq	%rcx, %rbx
	jle	.L142
	testl	%edi, %edi
	setne	%r14b
	andl	%ebp, %r14d
.L141:
	testb	%r14b, %r14b
	jne	.L189
.L139:
	testq	%r13, %r13
	je	.L104
	movq	%rsi, %rdx
	movq	%r13, %rcx
	subq	%r13, %rdx
	call	_ZdlPvy
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L188:
	movq	(%r15), %rcx
	subq	%rbx, %rax
	leaq	-1(%rcx,%rax), %rax
	cqto
	idivq	%rcx
	negq	%rax
	movq	%rax, %rdi
.L111:
	leaq	.LC22(%rip), %rdx
	movl	$22, %r8d
	movq	%r12, %rcx
.LEHB17:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	40(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testq	%rdi, %rdi
	je	.L104
	movq	%rdi, %rsi
	negq	%rsi
	cmovs	%rdi, %rsi
	cmpq	$2, %rsi
	jg	.L115
	leaq	.LC54(%rip), %rdx
	movq	%r12, %rcx
	movl	$38, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE17:
	movq	8(%r15), %rcx
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L182:
	movq	%rcx, %rax
	subq	%rbx, %rax
	leaq	-1(%r8,%rax), %rax
	cqto
	idivq	%r8
	negq	%rax
	movq	%rax, %rdi
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L187:
	movq	(%r15), %rcx
	movq	%rbx, %rdx
	subq	%rax, %rdx
	leaq	-1(%rcx,%rdx), %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L189:
	movq	.refptr._ZSt4cout(%rip), %r12
	movl	$17, %r8d
	leaq	.LC62(%rip), %rdx
	movq	%r12, %rcx
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%edi, %edx
	movq	%r12, %rcx
	call	_ZNSolsEi
	leaq	.LC63(%rip), %rdx
	movl	$27, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L136:
	cmpq	%rcx, %rbx
	jg	.L139
	movq	(%r15), %rax
	xorl	%edi, %edi
	jmp	.L142
.L185:
	leaq	.LC44(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.LEHE18:
.L150:
	movq	%rax, %rbx
.L146:
	testq	%r13, %r13
	je	.L147
	subq	%r13, %rsi
	movq	%r13, %rcx
	movq	%rsi, %rdx
	call	_ZdlPvy
.L147:
	movq	%rbx, %rcx
.LEHB19:
	call	_Unwind_Resume
.L149:
	movq	80(%rsp), %r13
	movq	%rax, %rbx
	movq	96(%rsp), %rsi
	jmp	.L146
.L183:
	leaq	.LC55(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
.LEHE19:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3514:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3514-.LLSDACSB3514
.LLSDACSB3514:
	.uleb128 .LEHB11-.LFB3514
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB3514
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L150-.LFB3514
	.uleb128 0
	.uleb128 .LEHB13-.LFB3514
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L149-.LFB3514
	.uleb128 0
	.uleb128 .LEHB14-.LFB3514
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L150-.LFB3514
	.uleb128 0
	.uleb128 .LEHB15-.LFB3514
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3514
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L150-.LFB3514
	.uleb128 0
	.uleb128 .LEHB17-.LFB3514
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB3514
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L150-.LFB3514
	.uleb128 0
	.uleb128 .LEHB19-.LFB3514
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3514:
	.section	.text$_Z10reist_treexRK12ReistTreeCtxb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC64:
	.ascii "\12========================================\12\0"
.LC65:
	.ascii "Testing: T=\0"
	.align 8
.LC66:
	.ascii "========================================\12\0"
.LC67:
	.ascii "\12--- REIST-Linear ---\12\0"
.LC68:
	.ascii "Result: \0"
	.align 8
.LC69:
	.ascii "\12--- REIST-Tree (Corrected) ---\12\0"
.LC70:
	.ascii "\12--- Verification ---\12\0"
.LC71:
	.ascii "Linear result: \0"
.LC72:
	.ascii "Tree result:   \0"
.LC73:
	.ascii "\342\234\223 Results match!\12\0"
.LC74:
	.ascii "\342\234\227 MISMATCH!\12\0"
.LC75:
	.ascii "  Expected (linear): \0"
.LC76:
	.ascii "  Got (tree):        \0"
.LC77:
	.ascii "src\\bench_tree_reist.cpp\0"
	.align 8
.LC78:
	.ascii "false && \"Results don't match!\"\0"
	.align 8
.LC79:
	.ascii "r_linear > -ctx.half && r_linear <= ctx.half\0"
	.align 8
.LC80:
	.ascii "T == q_linear * ctx.B + r_linear\0"
	.text
	.p2align 4
	.globl	_Z16test_equivalencexx
	.def	_Z16test_equivalencexx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_equivalencexx
_Z16test_equivalencexx:
.LFB3516:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rdi
	movl	$42, %r8d
	movq	%rdx, %rsi
	movq	%rcx, %r12
	movq	%rdi, %rcx
	leaq	.LC64(%rip), %rdx
	movq	%rsi, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$11, %r8d
	movq	%rdi, %rcx
	sarq	%rbp
	leaq	.LC65(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$41, %r8d
	movq	%rdi, %rcx
	leaq	.LC66(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
	movsd	.LC16(%rip), %xmm0
	movq	%rsi, 32(%rsp)
	divsd	%xmm1, %xmm0
	movsd	.LC18(%rip), %xmm1
	movq	%rbp, 40(%rsp)
	movl	$32, 56(%rsp)
	mulsd	.LC17(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L191
	cvttsd2siq	%xmm0, %rbx
.L192:
	movl	$22, %r8d
	movq	%rdi, %rcx
	movq	%rbx, 48(%rsp)
	leaq	.LC67(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rax
	movq	%r12, %rbx
	imulq	%r12, %rax
	sarq	$32, %rax
	imulq	%rsi, %rax
	subq	%rax, %rbx
	cmpq	%rbx, %rbp
	jge	.L193
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L194:
	subq	%rsi, %rbx
	cmpq	%rbx, %rbp
	jl	.L194
.L193:
	movq	%rbp, %rax
	negq	%rax
	cmpq	%rax, %rbx
	jg	.L195
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L196:
	addq	%rsi, %rbx
	cmpq	%rax, %rbx
	jle	.L196
.L195:
	leaq	.LC68(%rip), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$32, %r8d
	movq	%rdi, %rcx
	leaq	.LC69(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	32(%rsp), %rdx
	movl	$1, %r8d
	movq	%r12, %rcx
	call	_Z10reist_treexRK12ReistTreeCtxb
	movl	$8, %r8d
	movq	%rdi, %rcx
	leaq	.LC68(%rip), %rdx
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$22, %r8d
	movq	%rdi, %rcx
	leaq	.LC70(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$15, %r8d
	movq	%rdi, %rcx
	leaq	.LC71(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$15, %r8d
	movq	%rdi, %rcx
	leaq	.LC72(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%rbx, %r13
	jne	.L197
	leaq	.LC73(%rip), %rdx
	movl	$19, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%rbx, %rbp
	jl	.L204
	movq	%r12, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	subq	%rdx, %rcx
	addq	%rbx, %rcx
	cmpq	%r12, %rcx
	jne	.L205
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rbx
	btcq	$63, %rbx
	jmp	.L192
.L197:
	leaq	.LC74(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$21, %r8d
	movq	%rdi, %rcx
	leaq	.LC75(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$21, %r8d
	movq	%rdi, %rcx
	leaq	.LC76(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$312, %r8d
	leaq	.LC77(%rip), %rdx
	leaq	.LC78(%rip), %rcx
	call	*__imp__assert(%rip)
.L205:
	leaq	.LC77(%rip), %rdx
	movl	$321, %r8d
	leaq	.LC80(%rip), %rcx
	call	*__imp__assert(%rip)
.L204:
	leaq	.LC77(%rip), %rdx
	movl	$316, %r8d
	leaq	.LC79(%rip), %rcx
	call	*__imp__assert(%rip)
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC81:
	.ascii "REIST Tree: Corrected Scalar Implementation\12\0"
	.align 8
.LC82:
	.ascii "============================================\12\0"
	.align 8
.LC83:
	.ascii "Using CEILING division for correct k calculation\12\0"
	.align 8
.LC84:
	.ascii "Independent evaluation: c_i = B if (R0 - i*B) > half\12\12\0"
	.align 8
.LC85:
	.ascii "All tests completed successfully! \342\234\223\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3518:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rbx
	leaq	.LC81(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC82(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC83(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC84(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$6, %r8d
	movl	$13, %edx
	movl	$53, %ecx
	call	_Z27test_independent_evaluationxxx
	movl	$6, %r8d
	movl	$13, %edx
	movl	$10000010, %ecx
	call	_Z27test_independent_evaluationxxx
	movl	$13, %edx
	movl	$157, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$157, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$10013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$10013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$1000013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$1000013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$10000013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$10000013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movq	$-500007, %rcx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movq	$-500007, %rcx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$13006, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$13007, %ecx
	call	_Z16test_equivalencexx
	leaq	.LC64(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC85(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC66(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 8
.LC17:
	.long	0
	.long	1106247680
	.align 8
.LC18:
	.long	0
	.long	1138753536
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
