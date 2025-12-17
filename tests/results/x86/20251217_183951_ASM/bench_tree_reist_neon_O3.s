	.file	"bench_tree_reist_neon.cpp"
	.text
	.p2align 4
	.globl	_Z15test_scalar_addx
	.def	_Z15test_scalar_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15test_scalar_addx
_Z15test_scalar_addx:
.LFB2551:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	testq	%rcx, %rcx
	movl	$1, 8(%rsp)
	movl	$2, 12(%rsp)
	jle	.L1
	xorl	%edx, %edx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L3:
	movl	8(%rsp), %eax
	addq	$1, %rdx
	movl	12(%rsp), %r8d
	addl	%r8d, %eax
	movl	%eax, 8(%rsp)
	movl	8(%rsp), %eax
	addl	$1, %eax
	cmpq	%rdx, %rcx
	movl	%eax, 12(%rsp)
	jne	.L3
.L1:
	addq	$24, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii ": \0"
.LC3:
	.ascii " ms\12\0"
	.text
	.p2align 4
	.def	_Z5benchIZ4mainEUlvE_EdOT_PKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE_EdOT_PKc.isra.0
_Z5benchIZ4mainEUlvE_EdOT_PKc.isra.0:
.LFB3164:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	pxor	%xmm6, %xmm6
	movq	%rcx, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$100000000, %ecx
	movq	%rax, %rsi
	call	_Z15test_scalar_addx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	subq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	.LC0(%rip), %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	.LC2(%rip), %xmm1
	movq	%rbx, %rcx
	mulsd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z13test_neon_addx
	.def	_Z13test_neon_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13test_neon_addx
_Z13test_neon_addx:
.LFB2552:
	.seh_endprologue
	jmp	_Z15test_scalar_addx
	.seh_endproc
	.p2align 4
	.globl	_Z19test_scalar_barrettxRK7Context
	.def	_Z19test_scalar_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19test_scalar_barrettxRK7Context
_Z19test_scalar_barrettxRK7Context:
.LFB2553:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	testq	%rcx, %rcx
	movl	$12345, 12(%rsp)
	jle	.L8
	movl	8(%rdx), %r10d
	xorl	%r8d, %r8d
	movl	(%rdx), %r9d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L10:
	movslq	12(%rsp), %rax
	addq	$1, %r8
	movl	12(%rsp), %edx
	imulq	%r10, %rax
	sarq	$32, %rax
	imull	%r9d, %eax
	subl	%eax, %edx
	cmpq	%r8, %rcx
	leal	1(%rdx), %eax
	movl	%eax, 12(%rsp)
	jne	.L10
.L8:
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z17test_neon_barrettxRK7Context
	.def	_Z17test_neon_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17test_neon_barrettxRK7Context
_Z17test_neon_barrettxRK7Context:
.LFB2554:
	.seh_endprologue
	jmp	_Z19test_scalar_barrettxRK7Context
	.seh_endproc
	.p2align 4
	.globl	_Z16test_scalar_fullxRK7Context
	.def	_Z16test_scalar_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_scalar_fullxRK7Context
_Z16test_scalar_fullxRK7Context:
.LFB2555:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %r11
	movl	$12345, 12(%rsp)
	jle	.L13
	movl	4(%rdx), %r8d
	xorl	%r10d, %r10d
	movl	8(%rdx), %ebx
	movl	(%rdx), %ecx
	movl	%r8d, %r9d
	negl	%r9d
	.p2align 4,,10
	.p2align 3
.L19:
	movslq	12(%rsp), %rdx
	movl	12(%rsp), %eax
	imulq	%rbx, %rdx
	sarq	$32, %rdx
	imull	%ecx, %edx
	subl	%edx, %eax
	cmpl	%r8d, %eax
	jle	.L15
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L16:
	subl	%ecx, %eax
	cmpl	%r8d, %eax
	jg	.L16
.L15:
	cmpl	%eax, %r9d
	jl	.L17
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L18:
	addl	%ecx, %eax
	cmpl	%r9d, %eax
	jle	.L18
.L17:
	addq	$1, %r10
	addl	$100, %eax
	cmpq	%r10, %r11
	movl	%eax, 12(%rsp)
	jne	.L19
.L13:
	addq	$16, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z14test_neon_fullxRK7Context
	.def	_Z14test_neon_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14test_neon_fullxRK7Context
_Z14test_neon_fullxRK7Context:
.LFB2556:
	.seh_endprologue
	jmp	_Z16test_scalar_fullxRK7Context
	.seh_endproc
	.p2align 4
	.globl	_Z18test_scalar_memoryxPi
	.def	_Z18test_scalar_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18test_scalar_memoryxPi
_Z18test_scalar_memoryxPi:
.LFB2557:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L24
	salq	$3, %rcx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L26:
	movq	%rax, %r8
	addq	$8, %rax
	andl	$1023, %r8d
	addl	$1, (%rdx,%r8,4)
	cmpq	%rax, %rcx
	jne	.L26
.L24:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z16test_neon_memoryxPi
	.def	_Z16test_neon_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_neon_memoryxPi
_Z16test_neon_memoryxPi:
.LFB2558:
	.seh_endprologue
	jmp	_Z18test_scalar_memoryxPi
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "REIST Performance Diagnosis (NEON)\12\0"
	.align 8
.LC7:
	.ascii "============================\12\12\0"
.LC9:
	.ascii "Test 1: Pure Addition (\0"
.LC10:
	.ascii " iterations)\12\0"
	.align 8
.LC11:
	.ascii "----------------------------------------------\12\0"
.LC12:
	.ascii "Scalar\0"
.LC13:
	.ascii "NEON  \0"
	.align 8
.LC14:
	.ascii "Expected speedup: ~4x (4 values in parallel)\12\0"
.LC15:
	.ascii "Actual speedup: \0"
.LC16:
	.ascii "x\12\12\0"
	.align 8
.LC17:
	.ascii "Test 2: Barrett Approximation, B=13 (\0"
.LC18:
	.ascii "Expected speedup: ~2-4x\12\0"
	.align 8
.LC19:
	.ascii "Test 3: Full Reduction with Centering, B=13 (\0"
.LC21:
	.ascii "Test 4: Memory Bandwidth (\0"
	.align 8
.LC22:
	.ascii "Expected speedup: ~2-3x (memory bound)\12\0"
.LC23:
	.ascii "============================\12\0"
.LC24:
	.ascii "Analysis\12\0"
	.align 8
.LC26:
	.ascii "\342\232\240 WARNING: Pure addition speedup < 1.5x\12\0"
.LC27:
	.ascii "   Possible causes:\12\0"
	.align 8
.LC28:
	.ascii "   - Compiler is auto-vectorizing scalar code\12\0"
	.align 8
.LC29:
	.ascii "   - CPU throttling NEON (thermal/power limits)\12\0"
.LC30:
	.ascii "   - Measurement error\12\12\0"
	.align 8
.LC31:
	.ascii "   Try: Compile with -fno-tree-vectorize\12\12\0"
	.align 8
.LC33:
	.ascii "\342\234\223 Good: NEON providing expected speedup on pure compute\12\12\0"
	.align 8
.LC34:
	.ascii "\342\232\240 WARNING: Barrett speedup < 1.5x\12\0"
	.align 8
.LC35:
	.ascii "   - 64-bit multiply overhead\12\0"
	.align 8
.LC36:
	.ascii "   - Shuffle/extract overhead dominates\12\0"
	.align 8
.LC37:
	.ascii "   - Memory pressure from wider registers\12\12\0"
	.align 8
.LC38:
	.ascii "\342\234\223 Good: Barrett benefits from NEON\12\12\0"
	.align 8
.LC40:
	.ascii "\342\232\240 WARNING: Full reduction speedup < 1.2x\12\0"
.LC41:
	.ascii "   Likely causes:\12\0"
	.align 8
.LC42:
	.ascii "   - Branch misprediction costs dominate\12\0"
	.align 8
.LC43:
	.ascii "   - Correction loops have unpredictable iterations\12\0"
	.align 8
.LC44:
	.ascii "   - SIMD overhead outweighs parallel benefit\12\12\0"
	.align 8
.LC45:
	.ascii "   Recommendation: REIST-Linear may not benefit from NEON\12\0"
	.align 8
.LC46:
	.ascii "   for this workload. Consider alternative approaches.\12\12\0"
.LC47:
	.ascii "CPU Info Check:\12\0"
	.align 8
.LC48:
	.ascii "Run: sysctl -a | grep -E 'machdep.cpu|hw.optional'\12\0"
	.align 8
.LC49:
	.ascii "Look for NEON/ASIMD support and check CPU frequency\12\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2560:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$160, %rsp
	.seh_stackalloc	160
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	movaps	%xmm9, 96(%rsp)
	.seh_savexmm	%xmm9, 96
	movaps	%xmm10, 112(%rsp)
	.seh_savexmm	%xmm10, 112
	movaps	%xmm11, 128(%rsp)
	.seh_savexmm	%xmm11, 128
	movaps	%xmm12, 144(%rsp)
	.seh_savexmm	%xmm12, 144
	.seh_endprologue
	pxor	%xmm7, %xmm7
	pxor	%xmm11, %xmm11
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rbx
	leaq	.LC6(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC7(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.LC8(%rip), %rax
	movl	$23, %r8d
	movq	%rbx, %rcx
	leaq	.LC9(%rip), %rdx
	movl	$330382099, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rcx
	call	_Z5benchIZ4mainEUlvE_EdOT_PKc.isra.0
	leaq	.LC13(%rip), %rcx
	movapd	%xmm0, %xmm10
	call	_Z5benchIZ4mainEUlvE_EdOT_PKc.isra.0
	leaq	.LC14(%rip), %rdx
	movq	%rbx, %rcx
	movapd	%xmm0, %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm6, %xmm10
	movq	%rbx, %rcx
	pxor	%xmm6, %xmm6
	movapd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$37, %r8d
	movq	%rbx, %rcx
	leaq	.LC17(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	32(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z19test_scalar_barrettxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC12(%rip), %rdx
	movq	%rbx, %rcx
	movsd	.LC0(%rip), %xmm9
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm7
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm7
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	movsd	.LC2(%rip), %xmm8
	movapd	%xmm7, %xmm1
	mulsd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	32(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z19test_scalar_barrettxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm6
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	movapd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm6, %xmm7
	movq	%rbx, %rcx
	pxor	%xmm6, %xmm6
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$45, %r8d
	movq	%rbx, %rcx
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	32(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z16test_scalar_fullxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC12(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm6
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	movapd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	32(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z16test_scalar_fullxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	movl	$4, %edi
	cvtsi2sdq	%rax, %xmm11
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm11
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	movapd	%xmm11, %xmm1
	mulsd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm11, %xmm6
	movq	%rbx, %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$4096, %ecx
	call	_Znay
	movdqa	.LC5(%rip), %xmm0
	movd	%edi, %xmm1
	leaq	4096(%rax), %rdx
	movq	%rax, %rsi
	pshufd	$0, %xmm1, %xmm1
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L30:
	movups	%xmm0, (%rax)
	addq	$16, %rax
	paddd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L30
	movl	$26, %r8d
	movq	%rbx, %rcx
	pxor	%xmm12, %xmm12
	pxor	%xmm11, %xmm11
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z18test_scalar_memoryxPi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC12(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm12
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm12
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	movapd	%xmm12, %xmm1
	mulsd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %rdx
	movl	$100000000, %ecx
	movq	%rax, %rdi
	call	_Z18test_scalar_memoryxPi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm11
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	divsd	%xmm9, %xmm11
	movl	$2, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm8, %xmm1
	movq	%rdi, %rcx
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC22(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	%rbx, %rcx
	divsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rsi, %rcx
	call	_ZdaPv
	leaq	.LC23(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC24(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC7(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	.LC25(%rip), %xmm8
	comisd	%xmm10, %xmm8
	ja	.L47
	comisd	.LC32(%rip), %xmm10
	ja	.L48
.L33:
	comisd	%xmm7, %xmm8
	jbe	.L46
	leaq	.LC34(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC27(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC35(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC36(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC37(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L37:
	movsd	.LC39(%rip), %xmm0
	comisd	%xmm6, %xmm0
	ja	.L49
.L38:
	leaq	.LC47(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC48(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC49(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
	movaps	128(%rsp), %xmm11
	movaps	144(%rsp), %xmm12
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L46:
	leaq	.LC38(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L37
.L48:
	leaq	.LC33(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L33
.L47:
	leaq	.LC26(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC27(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC28(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC29(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC30(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC31(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L33
.L49:
	leaq	.LC40(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC41(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC42(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC43(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC44(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC45(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC46(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L38
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 16
.LC5:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 8
.LC8:
	.long	13
	.long	6
	.align 8
.LC25:
	.long	0
	.long	1073217536
	.align 8
.LC32:
	.long	0
	.long	1074266112
	.align 8
.LC39:
	.long	858993459
	.long	1072902963
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
