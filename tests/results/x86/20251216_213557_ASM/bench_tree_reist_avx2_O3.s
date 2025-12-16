	.file	"bench_tree_reist_avx2.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z15test_scalar_addl
	.type	_Z15test_scalar_addl, @function
_Z15test_scalar_addl:
.LFB9622:
	.cfi_startproc
	movl	$1, -8(%rsp)
	movl	$2, -4(%rsp)
	testq	%rdi, %rdi
	jle	.L5
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
.L3:
	movl	-8(%rsp), %eax
	movl	-4(%rsp), %ecx
	addq	$1, %rdx
	addl	%ecx, %eax
	movl	%eax, -8(%rsp)
	movl	-8(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	cmpq	%rdx, %rdi
	jne	.L3
.L5:
	ret
	.cfi_endproc
.LFE9622:
	.size	_Z15test_scalar_addl, .-_Z15test_scalar_addl
	.p2align 4
	.globl	_Z13test_avx2_addl
	.type	_Z13test_avx2_addl, @function
_Z13test_avx2_addl:
.LFB9623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	cmpq	$7, %rdi
	jle	.L10
	movl	$2, %edx
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	sarq	$3, %rdi
	xorl	%eax, %eax
	vmovd	%edx, %xmm1
	vpsrld	$31, %ymm3, %ymm3
	vpbroadcastd	%xmm1, %ymm1
	vmovdqa	%ymm3, %ymm2
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vpaddd	%ymm1, %ymm2, %ymm0
	addq	$1, %rax
	vmovdqa	%ymm0, %ymm2
	vpaddd	%ymm3, %ymm0, %ymm1
	cmpq	%rdi, %rax
	jl	.L9
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	vpcmpeqd	%ymm0, %ymm0, %ymm0
	vpsrld	$31, %ymm0, %ymm0
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9623:
	.size	_Z13test_avx2_addl, .-_Z13test_avx2_addl
	.p2align 4
	.globl	_Z19test_scalar_barrettlRK7Context
	.type	_Z19test_scalar_barrettlRK7Context, @function
_Z19test_scalar_barrettlRK7Context:
.LFB9625:
	.cfi_startproc
	movl	$12345, -4(%rsp)
	testq	%rdi, %rdi
	jle	.L17
	movl	8(%rsi), %r8d
	movl	(%rsi), %esi
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L15:
	movslq	-4(%rsp), %rax
	movl	-4(%rsp), %edx
	addq	$1, %rcx
	imulq	%r8, %rax
	sarq	$32, %rax
	imull	%esi, %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, -4(%rsp)
	cmpq	%rcx, %rdi
	jne	.L15
.L17:
	ret
	.cfi_endproc
.LFE9625:
	.size	_Z19test_scalar_barrettlRK7Context, .-_Z19test_scalar_barrettlRK7Context
	.p2align 4
	.globl	_Z17test_avx2_barrettlRK7Context
	.type	_Z17test_avx2_barrettlRK7Context, @function
_Z17test_avx2_barrettlRK7Context:
.LFB9626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	cmpq	$7, %rdi
	jle	.L21
	movl	$12345, %eax
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	vpbroadcastd	(%rsi), %ymm5
	xorl	%edx, %edx
	vmovd	%eax, %xmm2
	vpbroadcastd	8(%rsi), %ymm3
	sarq	$3, %rdi
	vpsrld	$31, %ymm4, %ymm4
	vpbroadcastd	%xmm2, %ymm2
	.p2align 4
	.p2align 3
.L20:
	vpsrlq	$32, %ymm2, %ymm1
	vpmuldq	%ymm3, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm2
	addq	$1, %rdx
	vpmuldq	%ymm3, %ymm1, %ymm1
	vpsrlq	$32, %ymm0, %ymm0
	vpsrlq	$32, %ymm1, %ymm1
	vpshufd	$136, %ymm0, %ymm0
	vpshufd	$136, %ymm1, %ymm1
	vpunpckldq	%ymm1, %ymm0, %ymm0
	vpmulld	%ymm5, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm2, %ymm0
	vmovdqa	%ymm0, %ymm2
	cmpq	%rdi, %rdx
	jl	.L20
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	movl	$12345, %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9626:
	.size	_Z17test_avx2_barrettlRK7Context, .-_Z17test_avx2_barrettlRK7Context
	.p2align 4
	.globl	_Z16test_scalar_fulllRK7Context
	.type	_Z16test_scalar_fulllRK7Context, @function
_Z16test_scalar_fulllRK7Context:
.LFB9627:
	.cfi_startproc
	movl	$12345, -4(%rsp)
	movq	%rdi, %r9
	testq	%rdi, %rdi
	jle	.L34
	movl	8(%rsi), %r10d
	movl	(%rsi), %edx
	xorl	%r8d, %r8d
	movl	4(%rsi), %esi
	movl	%esi, %edi
	negl	%edi
	.p2align 4
	.p2align 3
.L30:
	movslq	-4(%rsp), %rcx
	movl	-4(%rsp), %eax
	imulq	%r10, %rcx
	sarq	$32, %rcx
	imull	%edx, %ecx
	subl	%ecx, %eax
	cmpl	%esi, %eax
	jle	.L26
	.p2align 3
	.p2align 4
	.p2align 3
.L27:
	subl	%edx, %eax
	cmpl	%esi, %eax
	jg	.L27
.L26:
	cmpl	%eax, %edi
	jl	.L28
	.p2align 3
	.p2align 4
	.p2align 3
.L29:
	addl	%edx, %eax
	cmpl	%edi, %eax
	jle	.L29
.L28:
	addl	$100, %eax
	addq	$1, %r8
	movl	%eax, -4(%rsp)
	cmpq	%r8, %r9
	jne	.L30
.L34:
	ret
	.cfi_endproc
.LFE9627:
	.size	_Z16test_scalar_fulllRK7Context, .-_Z16test_scalar_fulllRK7Context
	.p2align 4
	.globl	_Z14test_avx2_fulllRK7Context
	.type	_Z14test_avx2_fulllRK7Context, @function
_Z14test_avx2_fulllRK7Context:
.LFB9628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	cmpq	$7, %rdi
	jle	.L38
	movl	$12345, %eax
	vpxor	%xmm2, %xmm2, %xmm2
	vpbroadcastd	(%rsi), %ymm1
	xorl	%edx, %edx
	vmovd	%eax, %xmm6
	vpbroadcastd	4(%rsi), %ymm3
	movl	$100, %eax
	sarq	$3, %rdi
	vmovd	%eax, %xmm5
	vpbroadcastd	8(%rsi), %ymm4
	vpbroadcastd	%xmm6, %ymm6
	vpsubd	%ymm3, %ymm2, %ymm2
	vpbroadcastd	%xmm5, %ymm5
	.p2align 4
	.p2align 3
.L37:
	vpsrlq	$32, %ymm6, %ymm7
	vpmuldq	%ymm4, %ymm6, %ymm0
	addq	$1, %rdx
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
	cmpq	%rdi, %rdx
	jl	.L37
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L38:
	.cfi_restore_state
	movl	$12345, %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovd	%xmm0, -4(%rsp)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9628:
	.size	_Z14test_avx2_fulllRK7Context, .-_Z14test_avx2_fulllRK7Context
	.p2align 4
	.globl	_Z18test_scalar_memorylPi
	.type	_Z18test_scalar_memorylPi, @function
_Z18test_scalar_memorylPi:
.LFB9629:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L45
	salq	$3, %rdi
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L43:
	movq	%rax, %rdx
	addq	$8, %rax
	andl	$1023, %edx
	addl	$1, (%rsi,%rdx,4)
	cmpq	%rax, %rdi
	jne	.L43
.L45:
	ret
	.cfi_endproc
.LFE9629:
	.size	_Z18test_scalar_memorylPi, .-_Z18test_scalar_memorylPi
	.p2align 4
	.globl	_Z16test_avx2_memorylPi
	.type	_Z16test_avx2_memorylPi, @function
_Z16test_avx2_memorylPi:
.LFB9630:
	.cfi_startproc
	cmpq	$7, %rdi
	jle	.L50
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	sarq	$3, %rdi
	xorl	%edx, %edx
	vpsrld	$31, %ymm1, %ymm1
	.p2align 5
	.p2align 4
	.p2align 3
.L48:
	movq	%rdx, %rax
	addq	$1, %rdx
	salq	$8, %rax
	andl	$3840, %eax
	vpaddd	(%rsi,%rax), %ymm1, %ymm0
	vmovdqa	%ymm0, (%rsi,%rax)
	cmpq	%rdi, %rdx
	jl	.L48
	vzeroupper
.L50:
	ret
	.cfi_endproc
.LFE9630:
	.size	_Z16test_avx2_memorylPi, .-_Z16test_avx2_memorylPi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"REIST Performance Diagnosis\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"============================\n\n"
	.section	.rodata.str1.1
.LC11:
	.string	"Test 1: Pure Addition ("
.LC12:
	.string	" iterations)\n"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"----------------------------------------------\n"
	.section	.rodata.str1.1
.LC15:
	.string	"Scalar"
.LC16:
	.string	": "
.LC18:
	.string	" ms\n"
.LC19:
	.string	"AVX2  "
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"Expected speedup: ~8x (8 values in parallel)\n"
	.section	.rodata.str1.1
.LC21:
	.string	"Actual speedup: "
.LC22:
	.string	"x\n\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"Test 2: Barrett Approximation, B=13 ("
	.section	.rodata.str1.1
.LC24:
	.string	"Expected speedup: ~4-6x\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"Test 3: Full Reduction with Centering, B=13 ("
	.section	.rodata.str1.1
.LC26:
	.string	"Expected speedup: ~3-5x\n"
.LC28:
	.string	"Test 4: Memory Bandwidth ("
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Expected speedup: ~2-4x (memory bound)\n"
	.section	.rodata.str1.1
.LC30:
	.string	"============================\n"
.LC31:
	.string	"Analysis\n"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"\342\232\240 WARNING: Pure addition speedup < 2x\n"
	.section	.rodata.str1.1
.LC34:
	.string	"   Possible causes:\n"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"   - Compiler is auto-vectorizing scalar code\n"
	.align 8
.LC36:
	.string	"   - CPU throttling AVX2 (thermal/power limits)\n"
	.section	.rodata.str1.1
.LC37:
	.string	"   - Measurement error\n\n"
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"   Try: Compile with -fno-tree-vectorize\n"
	.align 8
.LC39:
	.string	"   Try: Check CPU frequency: cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\n\n"
	.align 8
.LC41:
	.string	"\342\234\223 Good: AVX2 providing expected speedup on pure compute\n\n"
	.align 8
.LC42:
	.string	"\342\232\240 WARNING: Barrett speedup < 2x\n"
	.align 8
.LC43:
	.string	"   - 64-bit multiply (mul_epi32) is expensive\n"
	.align 8
.LC44:
	.string	"   - Shuffle overhead dominates\n"
	.align 8
.LC45:
	.string	"   - Memory pressure from wider registers\n\n"
	.align 8
.LC46:
	.string	"\342\234\223 Good: Barrett benefits from AVX2\n\n"
	.align 8
.LC48:
	.string	"\342\232\240 WARNING: Full reduction speedup < 1.5x\n"
	.section	.rodata.str1.1
.LC49:
	.string	"   Likely causes:\n"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"   - Branch misprediction costs dominate\n"
	.align 8
.LC51:
	.string	"   - Correction loops have unpredictable iterations\n"
	.align 8
.LC52:
	.string	"   - SIMD overhead outweighs parallel benefit\n\n"
	.align 8
.LC53:
	.string	"   Recommendation: REIST-Linear may not benefit from AVX2\n"
	.align 8
.LC54:
	.string	"   for this workload. Consider alternative approaches.\n\n"
	.section	.rodata.str1.1
.LC55:
	.string	"CPU Info Check:\n"
	.section	.rodata.str1.8
	.align 8
.LC56:
	.string	"Run: lscpu | grep -E '(Model name|MHz|Flags)'\n"
	.align 8
.LC57:
	.string	"Look for 'avx2' in flags and check CPU frequency\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB9632:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	leaq	_ZSt4cout(%rip), %rdi
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x78
	.cfi_escape 0x10,0xc,0x2,0x76,0x70
	pushq	%rbx
	subq	$112, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x60
	movq	%fs:40, %rsi
	movq	%rsi, -56(%rbp)
	leaq	.LC8(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	.LC10(%rip), %rax
	movl	$23, %edx
	leaq	.LC11(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$330382099, -64(%rbp)
	movq	%rax, -72(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$100000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$100000000, %edi
	movq	%rax, %rbx
	call	_Z15test_scalar_addl
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm3, %xmm3, %xmm3
	leaq	.LC15(%rip), %rsi
	subq	%rbx, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm5
	vmovsd	%xmm5, -96(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm7
	movq	%rbx, %rdi
	movl	$12500000, %ebx
	vmulsd	-96(%rbp), %xmm7, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	movq	%rax, %r12
	vpsrld	$31, %ymm3, %ymm3
	movl	$2, %eax
	vmovd	%eax, %xmm1
	vmovdqa	%ymm3, %ymm2
	vpbroadcastd	%xmm1, %ymm1
	.p2align 5
	.p2align 4
	.p2align 3
.L52:
	vpaddd	%ymm1, %ymm2, %ymm0
	vmovdqa	%ymm0, %ymm2
	vpaddd	%ymm3, %ymm0, %ymm1
	subq	$1, %rbx
	jne	.L52
	vmovd	%xmm0, -76(%rbp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	.LC19(%rip), %rsi
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm6
	vmovsd	%xmm6, -88(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm5
	movq	%r12, %rdi
	vmulsd	-88(%rbp), %xmm5, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-96(%rbp), %xmm2
	leaq	_ZSt4cout(%rip), %rdi
	vdivsd	-88(%rbp), %xmm2, %xmm7
	vmovapd	%xmm7, %xmm0
	vmovsd	%xmm7, -104(%rbp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$37, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$100000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	-72(%rbp), %rsi
	movl	$100000000, %edi
	movq	%rax, %r13
	call	_Z19test_scalar_barrettlRK7Context
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	.LC15(%rip), %rsi
	subq	%r13, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm5
	vmovsd	%xmm5, -96(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm6
	movq	%r13, %rdi
	vmulsd	-96(%rbp), %xmm6, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	-72(%rbp), %rsi
	movl	$100000000, %edi
	movq	%rax, %r13
	call	_Z17test_avx2_barrettlRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r13, %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm7
	vmovsd	%xmm7, -88(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm3
	movq	%r13, %rdi
	vmulsd	-88(%rbp), %xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-96(%rbp), %xmm5
	leaq	_ZSt4cout(%rip), %rdi
	vdivsd	-88(%rbp), %xmm5, %xmm6
	vmovapd	%xmm6, %xmm0
	vmovsd	%xmm6, -112(%rbp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$45, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$100000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	-72(%rbp), %rsi
	movl	$100000000, %edi
	movq	%rax, %r13
	call	_Z16test_scalar_fulllRK7Context
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	.LC15(%rip), %rsi
	subq	%r13, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm5
	vmovsd	%xmm5, -96(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm7
	movq	%r13, %rdi
	vmulsd	-96(%rbp), %xmm7, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	-72(%rbp), %rsi
	movl	$100000000, %edi
	movq	%rax, %r13
	call	_Z14test_avx2_fulllRK7Context
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r13, %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm6
	vmovsd	%xmm6, -88(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm2
	movq	%r12, %rdi
	vmulsd	-88(%rbp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-96(%rbp), %xmm5
	leaq	_ZSt4cout(%rip), %rdi
	vdivsd	-88(%rbp), %xmm5, %xmm7
	vmovapd	%xmm7, %xmm0
	vmovsd	%xmm7, -120(%rbp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4096, %edi
	call	_Znam@PLT
	movl	$8, %edx
	vmovdqa	.LC7(%rip), %ymm0
	vmovd	%edx, %xmm1
	movq	%rax, %r13
	leaq	4096(%rax), %rcx
	vpbroadcastd	%xmm1, %ymm1
	.p2align 5
	.p2align 4
	.p2align 3
.L53:
	vmovdqu	%ymm0, (%rax)
	addq	$32, %rax
	vpaddd	%ymm1, %ymm0, %ymm0
	cmpq	%rcx, %rax
	jne	.L53
	movl	$26, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	vzeroupper
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$100000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r13, %rsi
	movl	$100000000, %edi
	movq	%rax, %r12
	call	_Z18test_scalar_memorylPi
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	leaq	.LC15(%rip), %rsi
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm3
	vmovsd	%xmm3, -96(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm6
	movq	%r12, %rdi
	vmulsd	-96(%rbp), %xmm6, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	movq	%rax, %r12
	vpsrld	$31, %ymm1, %ymm1
	.p2align 6
	.p2align 4
	.p2align 3
.L54:
	movq	%rbx, %rax
	addq	$8, %rbx
	andl	$127, %eax
	salq	$5, %rax
	vpaddd	0(%r13,%rax), %ymm1, %ymm0
	vmovdqa	%ymm0, 0(%r13,%rax)
	cmpq	$100000000, %rbx
	jne	.L54
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm3, %xmm3, %xmm3
	leaq	.LC19(%rip), %rsi
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	vdivsd	.LC14(%rip), %xmm0, %xmm4
	vmovsd	%xmm4, -88(%rbp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$2, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	.LC17(%rip), %xmm5
	movq	%rbx, %rdi
	vmulsd	-88(%rbp), %xmm5, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC29(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	vmovsd	-96(%rbp), %xmm7
	vdivsd	-88(%rbp), %xmm7, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%r13, %rdi
	call	_ZdaPv@PLT
	leaq	.LC30(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC31(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	.LC32(%rip), %xmm0
	vcomisd	-104(%rbp), %xmm0
	ja	.L75
	vmovsd	-104(%rbp), %xmm3
	vcomisd	.LC40(%rip), %xmm3
	ja	.L76
.L57:
	vcomisd	-112(%rbp), %xmm0
	jbe	.L73
	leaq	.LC42(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC43(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC44(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC45(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L61:
	vmovsd	.LC47(%rip), %xmm0
	vcomisd	-120(%rbp), %xmm0
	ja	.L77
.L62:
	leaq	.LC55(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC56(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC57(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L78
	addq	$112, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L73:
	.cfi_restore_state
	leaq	.LC46(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L61
.L76:
	leaq	.LC41(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	.LC32(%rip), %xmm0
	jmp	.L57
.L75:
	leaq	.LC33(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC35(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC37(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC39(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	.LC32(%rip), %xmm0
	jmp	.L57
.L77:
	leaq	.LC48(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC49(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC50(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC51(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC52(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC53(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC54(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L62
.L78:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE9632:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
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
	.section	.rodata.cst8,"aM",@progbits,8
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
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
