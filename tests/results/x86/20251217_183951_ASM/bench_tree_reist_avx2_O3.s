	.file	"bench_tree_reist_avx2.cpp"
	.text
	.p2align 4
	.globl	_Z15test_scalar_addx
	.def	_Z15test_scalar_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15test_scalar_addx
_Z15test_scalar_addx:
.LFB9822:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	testq	%rcx, %rcx
	movl	$1, 8(%rsp)
	movl	$2, 12(%rsp)
	jle	.L5
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
.L5:
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z13test_avx2_addx
	.def	_Z13test_avx2_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13test_avx2_addx
_Z13test_avx2_addx:
.LFB9823:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	cmpq	$7, %rcx
	jle	.L10
	movl	$2, %edx
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	vpsrld	$31, %ymm3, %ymm3
	sarq	$3, %rcx
	vmovd	%edx, %xmm1
	xorl	%eax, %eax
	vmovdqa	%ymm3, %ymm2
	vpbroadcastd	%xmm1, %ymm1
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L9:
	addq	$1, %rax
	vpaddd	%ymm1, %ymm2, %ymm0
	cmpq	%rcx, %rax
	vmovdqa	%ymm0, %ymm2
	vpaddd	%ymm3, %ymm0, %ymm1
	jl	.L9
	vmovd	%xmm0, 12(%rsp)
	vzeroupper
	addq	$24, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	vpcmpeqd	%ymm0, %ymm0, %ymm0
	vpsrld	$31, %ymm0, %ymm0
	vmovd	%xmm0, 12(%rsp)
	vzeroupper
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z19test_scalar_barrettxRK7Context
	.def	_Z19test_scalar_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19test_scalar_barrettxRK7Context
_Z19test_scalar_barrettxRK7Context:
.LFB9825:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	testq	%rcx, %rcx
	movl	$12345, 12(%rsp)
	jle	.L16
	movl	8(%rdx), %r10d
	xorl	%r8d, %r8d
	movl	(%rdx), %r9d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L14:
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
	jne	.L14
.L16:
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z17test_avx2_barrettxRK7Context
	.def	_Z17test_avx2_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17test_avx2_barrettxRK7Context
_Z17test_avx2_barrettxRK7Context:
.LFB9826:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	cmpq	$7, %rcx
	jle	.L20
	movl	$12345, %eax
	vpbroadcastd	8(%rdx), %ymm3
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	sarq	$3, %rcx
	vmovd	%eax, %xmm2
	vpbroadcastd	(%rdx), %ymm5
	vpsrld	$31, %ymm4, %ymm4
	xorl	%edx, %edx
	vpbroadcastd	%xmm2, %ymm2
	.p2align 4,,10
	.p2align 3
.L19:
	vpsrlq	$32, %ymm2, %ymm1
	addq	$1, %rdx
	vpmuldq	%ymm3, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm2
	cmpq	%rcx, %rdx
	vpmuldq	%ymm3, %ymm1, %ymm1
	vpsrlq	$32, %ymm0, %ymm0
	vpsrlq	$32, %ymm1, %ymm1
	vpshufd	$136, %ymm0, %ymm0
	vpshufd	$136, %ymm1, %ymm1
	vpunpckldq	%ymm1, %ymm0, %ymm0
	vpmulld	%ymm5, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, %ymm2
	jl	.L19
	vmovd	%xmm0, 12(%rsp)
	vzeroupper
	addq	$24, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movl	$12345, %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovd	%xmm0, 12(%rsp)
	vzeroupper
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z16test_scalar_fullxRK7Context
	.def	_Z16test_scalar_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_scalar_fullxRK7Context
_Z16test_scalar_fullxRK7Context:
.LFB9827:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %r11
	movl	$12345, 12(%rsp)
	jle	.L32
	movl	4(%rdx), %r8d
	xorl	%r10d, %r10d
	movl	8(%rdx), %ebx
	movl	(%rdx), %ecx
	movl	%r8d, %r9d
	negl	%r9d
	.p2align 4,,10
	.p2align 3
.L28:
	movslq	12(%rsp), %rdx
	movl	12(%rsp), %eax
	imulq	%rbx, %rdx
	sarq	$32, %rdx
	imull	%ecx, %edx
	subl	%edx, %eax
	cmpl	%r8d, %eax
	jle	.L24
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L25:
	subl	%ecx, %eax
	cmpl	%r8d, %eax
	jg	.L25
.L24:
	cmpl	%eax, %r9d
	jl	.L26
	.p2align 3
	.p2align 4,,10
	.p2align 3
.L27:
	addl	%ecx, %eax
	cmpl	%r9d, %eax
	jle	.L27
.L26:
	addq	$1, %r10
	addl	$100, %eax
	cmpq	%r10, %r11
	movl	%eax, 12(%rsp)
	jne	.L28
.L32:
	addq	$16, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z14test_avx2_fullxRK7Context
	.def	_Z14test_avx2_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14test_avx2_fullxRK7Context
_Z14test_avx2_fullxRK7Context:
.LFB9828:
	subq	$56, %rsp
	.seh_stackalloc	56
	vmovaps	%xmm6, 16(%rsp)
	.seh_savexmm	%xmm6, 16
	vmovaps	%xmm7, 32(%rsp)
	.seh_savexmm	%xmm7, 32
	.seh_endprologue
	cmpq	$7, %rcx
	jle	.L36
	movl	$12345, %eax
	vpbroadcastd	4(%rdx), %ymm3
	vpxor	%xmm2, %xmm2, %xmm2
	sarq	$3, %rcx
	vmovd	%eax, %xmm6
	movl	$100, %eax
	vpbroadcastd	(%rdx), %ymm1
	vmovd	%eax, %xmm5
	vpbroadcastd	8(%rdx), %ymm4
	vpsubd	%ymm3, %ymm2, %ymm2
	xorl	%edx, %edx
	vpbroadcastd	%xmm6, %ymm6
	vpbroadcastd	%xmm5, %ymm5
	.p2align 4,,10
	.p2align 3
.L35:
	vpsrlq	$32, %ymm6, %ymm7
	addq	$1, %rdx
	vpmuldq	%ymm4, %ymm6, %ymm0
	cmpq	%rcx, %rdx
	vpmuldq	%ymm4, %ymm7, %ymm7
	vpsrlq	$32, %ymm0, %ymm0
	vpsrlq	$32, %ymm7, %ymm7
	vpshufd	$136, %ymm0, %ymm0
	vpshufd	$136, %ymm7, %ymm7
	vpunpckldq	%ymm7, %ymm0, %ymm0
	vpmulld	%ymm1, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm6, %ymm6
	vpcmpgtd	%ymm2, %ymm6, %ymm0
	vpcmpgtd	%ymm3, %ymm6, %ymm7
	vpandn	%ymm1, %ymm0, %ymm0
	vpand	%ymm7, %ymm1, %ymm7
	vpsubd	%ymm7, %ymm0, %ymm0
	vpaddd	%ymm6, %ymm0, %ymm0
	vpcmpgtd	%ymm2, %ymm0, %ymm6
	vpcmpgtd	%ymm3, %ymm0, %ymm7
	vpaddd	%ymm5, %ymm0, %ymm0
	vpandn	%ymm1, %ymm6, %ymm6
	vpand	%ymm7, %ymm1, %ymm7
	vpsubd	%ymm7, %ymm6, %ymm6
	vpaddd	%ymm0, %ymm6, %ymm0
	vmovdqa	%ymm0, %ymm6
	jl	.L35
.L34:
	vmovd	%xmm0, 12(%rsp)
	vzeroupper
	vmovaps	16(%rsp), %xmm6
	vmovaps	32(%rsp), %xmm7
	addq	$56, %rsp
	ret
.L36:
	movl	$12345, %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	_Z18test_scalar_memoryxPi
	.def	_Z18test_scalar_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18test_scalar_memoryxPi
_Z18test_scalar_memoryxPi:
.LFB9829:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L42
	salq	$3, %rcx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L40:
	movq	%rax, %r8
	addq	$8, %rax
	andl	$1023, %r8d
	addl	$1, (%rdx,%r8,4)
	cmpq	%rax, %rcx
	jne	.L40
.L42:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z16test_avx2_memoryxPi
	.def	_Z16test_avx2_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_avx2_memoryxPi
_Z16test_avx2_memoryxPi:
.LFB9830:
	.seh_endprologue
	cmpq	$7, %rcx
	jle	.L47
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	sarq	$3, %rcx
	vpsrld	$31, %ymm1, %ymm1
	xorl	%r8d, %r8d
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L45:
	movq	%r8, %rax
	addq	$1, %r8
	salq	$8, %rax
	andl	$3840, %eax
	cmpq	%rcx, %r8
	vpaddd	(%rdx,%rax), %ymm1, %ymm0
	vmovdqa	%ymm0, (%rdx,%rax)
	jl	.L45
	vzeroupper
.L47:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "REIST Performance Diagnosis\12\0"
	.align 8
.LC9:
	.ascii "============================\12\12\0"
.LC11:
	.ascii "Test 1: Pure Addition (\0"
.LC12:
	.ascii " iterations)\12\0"
	.align 8
.LC13:
	.ascii "----------------------------------------------\12\0"
.LC15:
	.ascii "Scalar\0"
.LC16:
	.ascii ": \0"
.LC18:
	.ascii " ms\12\0"
.LC19:
	.ascii "AVX2  \0"
	.align 8
.LC20:
	.ascii "Expected speedup: ~8x (8 values in parallel)\12\0"
.LC21:
	.ascii "Actual speedup: \0"
.LC22:
	.ascii "x\12\12\0"
	.align 8
.LC23:
	.ascii "Test 2: Barrett Approximation, B=13 (\0"
.LC24:
	.ascii "Expected speedup: ~4-6x\12\0"
	.align 8
.LC25:
	.ascii "Test 3: Full Reduction with Centering, B=13 (\0"
.LC26:
	.ascii "Expected speedup: ~3-5x\12\0"
.LC28:
	.ascii "Test 4: Memory Bandwidth (\0"
	.align 8
.LC29:
	.ascii "Expected speedup: ~2-4x (memory bound)\12\0"
.LC30:
	.ascii "============================\12\0"
.LC31:
	.ascii "Analysis\12\0"
	.align 8
.LC33:
	.ascii "\342\232\240 WARNING: Pure addition speedup < 2x\12\0"
.LC34:
	.ascii "   Possible causes:\12\0"
	.align 8
.LC35:
	.ascii "   - Compiler is auto-vectorizing scalar code\12\0"
	.align 8
.LC36:
	.ascii "   - CPU throttling AVX2 (thermal/power limits)\12\0"
.LC37:
	.ascii "   - Measurement error\12\12\0"
	.align 8
.LC38:
	.ascii "   Try: Compile with -fno-tree-vectorize\12\0"
	.align 8
.LC39:
	.ascii "   Try: Check CPU frequency: cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\12\12\0"
	.align 8
.LC41:
	.ascii "\342\234\223 Good: AVX2 providing expected speedup on pure compute\12\12\0"
	.align 8
.LC42:
	.ascii "\342\232\240 WARNING: Barrett speedup < 2x\12\0"
	.align 8
.LC43:
	.ascii "   - 64-bit multiply (mul_epi32) is expensive\12\0"
	.align 8
.LC44:
	.ascii "   - Shuffle overhead dominates\12\0"
	.align 8
.LC45:
	.ascii "   - Memory pressure from wider registers\12\12\0"
	.align 8
.LC46:
	.ascii "\342\234\223 Good: Barrett benefits from AVX2\12\12\0"
	.align 8
.LC48:
	.ascii "\342\232\240 WARNING: Full reduction speedup < 1.5x\12\0"
.LC49:
	.ascii "   Likely causes:\12\0"
	.align 8
.LC50:
	.ascii "   - Branch misprediction costs dominate\12\0"
	.align 8
.LC51:
	.ascii "   - Correction loops have unpredictable iterations\12\0"
	.align 8
.LC52:
	.ascii "   - SIMD overhead outweighs parallel benefit\12\12\0"
	.align 8
.LC53:
	.ascii "   Recommendation: REIST-Linear may not benefit from AVX2\12\0"
	.align 8
.LC54:
	.ascii "   for this workload. Consider alternative approaches.\12\12\0"
.LC55:
	.ascii "CPU Info Check:\12\0"
	.align 8
.LC56:
	.ascii "Run: lscpu | grep -E '(Model name|MHz|Flags)'\12\0"
	.align 8
.LC57:
	.ascii "Look for 'avx2' in flags and check CPU frequency\12\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB9832:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$184, %rsp
	.seh_stackalloc	184
	vmovaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	vmovaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	vmovaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	vmovaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	vmovaps	%xmm10, 128(%rsp)
	.seh_savexmm	%xmm10, 128
	vmovaps	%xmm11, 144(%rsp)
	.seh_savexmm	%xmm11, 144
	vmovaps	%xmm12, 160(%rsp)
	.seh_savexmm	%xmm12, 160
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rbx
	leaq	.LC8(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC9(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.LC10(%rip), %rax
	movl	$23, %r8d
	movq	%rbx, %rcx
	leaq	.LC11(%rip), %rdx
	movl	$330382099, 56(%rsp)
	movq	%rax, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$1, 40(%rsp)
	movl	$100000000, %edx
	movq	%rax, %rsi
	movl	$2, 44(%rsp)
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L49:
	movl	40(%rsp), %eax
	movl	44(%rsp), %ecx
	addl	%ecx, %eax
	movl	%eax, 40(%rsp)
	movl	40(%rsp), %eax
	addl	$1, %eax
	subq	$1, %rdx
	movl	%eax, 44(%rsp)
	jne	.L49
	vxorps	%xmm6, %xmm6, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC15(%rip), %rdx
	movq	%rbx, %rcx
	vmovsd	.LC14(%rip), %xmm8
	subq	%rsi, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm9
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovsd	.LC17(%rip), %xmm7
	movq	%rsi, %rcx
	vmulsd	%xmm7, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$2, %edx
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	vpsrld	$31, %ymm3, %ymm3
	vmovd	%edx, %xmm1
	movq	%rax, %rsi
	vmovdqa	%ymm3, %ymm2
	movl	$12500000, %eax
	vpbroadcastd	%xmm1, %ymm1
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L50:
	vpaddd	%ymm1, %ymm2, %ymm0
	subq	$1, %rax
	vmovdqa	%ymm0, %ymm2
	vpaddd	%ymm3, %ymm0, %ymm1
	jne	.L50
	vmovd	%xmm0, 36(%rsp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rsi, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm10
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	movl	$100000000, %esi
	vmulsd	%xmm7, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	vdivsd	%xmm10, %xmm9, %xmm9
	vmovapd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$37, %r8d
	movq	%rbx, %rcx
	leaq	.LC23(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$12345, 32(%rsp)
	movq	%rax, %rdi
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L51:
	movslq	32(%rsp), %rax
	movl	32(%rsp), %edx
	imulq	$330382099, %rax, %rax
	sarq	$32, %rax
	leal	(%rax,%rax,2), %ecx
	leal	(%rax,%rcx,4), %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	subq	$1, %rsi
	movl	%eax, 32(%rsp)
	jne	.L51
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC15(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rdi, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm11
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	vmulsd	%xmm7, %xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	48(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rbp
	call	_Z17test_avx2_barrettxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rbp, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm10
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	vmulsd	%xmm7, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC24(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	vdivsd	%xmm10, %xmm11, %xmm11
	vmovapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$45, %r8d
	movq	%rbx, %rcx
	leaq	.LC25(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	48(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rbp
	call	_Z16test_scalar_fullxRK7Context
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC15(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rbp, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm10
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	vmulsd	%xmm7, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	48(%rsp), %rdx
	movl	$100000000, %ecx
	movq	%rax, %rbp
	call	_Z14test_avx2_fullxRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rbp, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm12
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	vmulsd	%xmm7, %xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC26(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	vdivsd	%xmm12, %xmm10, %xmm10
	vmovapd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$4096, %ecx
	call	_Znay
	movl	$8, %edx
	vmovdqa	.LC7(%rip), %ymm0
	leaq	4096(%rax), %rcx
	vmovd	%edx, %xmm1
	movq	%rax, %rdi
	vpbroadcastd	%xmm1, %ymm1
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L52:
	vmovdqu	%ymm0, (%rax)
	addq	$32, %rax
	vpaddd	%ymm1, %ymm0, %ymm0
	cmpq	%rax, %rcx
	jne	.L52
	movl	$26, %r8d
	movq	%rbx, %rcx
	vzeroupper
	leaq	.LC28(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$100000000, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rdi, %rdx
	movl	$100000000, %ecx
	movq	%rax, %rbp
	call	_Z18test_scalar_memoryxPi
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC15(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rbp, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm12
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	vmulsd	%xmm7, %xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vpsrld	$31, %ymm1, %ymm1
	movq	%rax, %rbp
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L53:
	movq	%rsi, %rax
	addq	$8, %rsi
	andl	$127, %eax
	salq	$5, %rax
	cmpq	$100000000, %rsi
	vpaddd	(%rdi,%rax), %ymm1, %ymm0
	vmovdqa	%ymm0, (%rdi,%rax)
	jne	.L53
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC19(%rip), %rdx
	movq	%rbx, %rcx
	subq	%rbp, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm6
	vdivsd	%xmm8, %xmm6, %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	vmulsd	%xmm7, %xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC29(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %r8d
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	vdivsd	%xmm6, %xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rdi, %rcx
	call	_ZdaPv
	leaq	.LC30(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC31(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC9(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	.LC32(%rip), %xmm6
	vcomisd	%xmm9, %xmm6
	ja	.L74
	vcomisd	.LC40(%rip), %xmm9
	ja	.L75
.L56:
	vcomisd	%xmm11, %xmm6
	jbe	.L73
	leaq	.LC42(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC34(%rip), %rdx
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
.L60:
	vmovsd	.LC47(%rip), %xmm0
	vcomisd	%xmm10, %xmm0
	ja	.L76
.L61:
	leaq	.LC55(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC56(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	vmovaps	64(%rsp), %xmm6
	xorl	%eax, %eax
	vmovaps	80(%rsp), %xmm7
	vmovaps	96(%rsp), %xmm8
	vmovaps	112(%rsp), %xmm9
	vmovaps	128(%rsp), %xmm10
	vmovaps	144(%rsp), %xmm11
	vmovaps	160(%rsp), %xmm12
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L73:
	leaq	.LC46(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L60
.L75:
	leaq	.LC41(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L56
.L74:
	leaq	.LC33(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC34(%rip), %rdx
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
	leaq	.LC38(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC39(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L56
.L76:
	leaq	.LC48(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC49(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC50(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC51(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC52(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC53(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC54(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L61
	.seh_endproc
	.section .rdata,"dr"
	.align 32
.LC7:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 8
.LC10:
	.long	13
	.long	6
	.align 8
.LC14:
	.long	0
	.long	1104006501
	.align 8
.LC17:
	.long	0
	.long	1083129856
	.align 8
.LC32:
	.long	0
	.long	1073741824
	.align 8
.LC40:
	.long	0
	.long	1075314688
	.align 8
.LC47:
	.long	0
	.long	1073217536
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
