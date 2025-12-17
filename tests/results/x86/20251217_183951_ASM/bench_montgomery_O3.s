	.file	"bench_montgomery.cpp"
	.text
	.p2align 4
	.globl	_Z14classic_modaddyyy
	.def	_Z14classic_modaddyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14classic_modaddyyy
_Z14classic_modaddyyy:
.LFB11435:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z14classic_modmulyyy
	.def	_Z14classic_modmulyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14classic_modmulyyy
_Z14classic_modmulyyy:
.LFB11436:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r8, 32(%rsp)
	movq	$0, 40(%rsp)
	mulq	%rdx
	leaq	48(%rsp), %rcx
	movq	%rdx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	__umodti3
	movq	%xmm0, %rax
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z12reist_modaddxxx
	.def	_Z12reist_modaddxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12reist_modaddxxx
_Z12reist_modaddxxx:
.LFB11437:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	movq	%r8, %rdx
	sarq	%rdx
	movq	%rax, %rcx
	subq	%r8, %rcx
	cmpq	%rdx, %rax
	cmovg	%rcx, %rax
	negq	%rdx
	addq	%rax, %r8
	cmpq	%rax, %rdx
	cmovg	%r8, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z12reist_modmulxxx
	.def	_Z12reist_modmulxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12reist_modmulxxx
_Z12reist_modmulxxx:
.LFB11438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r8, %rbx
	movq	%r8, 32(%rsp)
	imulq	%rdx
	leaq	48(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%r8, %rax
	sarq	$63, %rax
	movq	%rdx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 40(%rsp)
	call	__modti3
	movq	%rbx, %rdx
	movq	%xmm0, %rax
	sarq	%rdx
	movq	%rax, %rcx
	subq	%rbx, %rcx
	cmpq	%rdx, %rax
	cmovg	%rcx, %rax
	negq	%rdx
	addq	%rax, %rbx
	cmpq	%rax, %rdx
	cmovg	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "basic_string: construction from null is not valid\0"
.LC1:
	.ascii "stoll\0"
	.align 8
.LC2:
	.ascii "========================================\12\0"
	.align 8
.LC3:
	.ascii "REIST vs Montgomery Arithmetic Benchmark\12\0"
	.align 8
.LC4:
	.ascii "Total operations per modulus = \0"
.LC5:
	.ascii "\12\12\0"
.LC6:
	.ascii "Modulus = \0"
.LC7:
	.ascii "\12\0"
	.align 8
.LC8:
	.ascii "Montgomery requires odd modulus\12\0"
.LC10:
	.ascii "\12--- Modular Addition ---\12\0"
.LC11:
	.ascii "Classic     : \0"
.LC12:
	.ascii " s\12\0"
.LC13:
	.ascii "REIST       : \0"
.LC14:
	.ascii "Montgomery  : \0"
	.align 8
.LC15:
	.ascii "\12--- Modular Multiplication ---\12\0"
	.align 8
.LC16:
	.ascii "\12--- Full Cycle (with conversion) ---\12\0"
.LC17:
	.ascii "Classic full    : \0"
.LC18:
	.ascii "Montgomery full : \0"
.LC19:
	.ascii "Overhead vs classic: \0"
.LC22:
	.ascii " %\12\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11440:
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
	subq	$344, %rsp
	.seh_stackalloc	344
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	movaps	%xmm9, 272(%rsp)
	.seh_savexmm	%xmm9, 272
	movaps	%xmm10, 288(%rsp)
	.seh_savexmm	%xmm10, 288
	movaps	%xmm11, 304(%rsp)
	.seh_savexmm	%xmm11, 304
	movaps	%xmm12, 320(%rsp)
	.seh_savexmm	%xmm12, 320
	.seh_endprologue
	movl	%ecx, %ebx
	movq	%rdx, %rsi
	call	__main
	cmpl	$1, %ebx
	jle	.L58
	movq	8(%rsi), %rdi
	leaq	208(%rsp), %rsi
	leaq	192(%rsp), %rbp
	movq	%rsi, 192(%rsp)
	testq	%rdi, %rdi
	je	.L85
	movq	%rdi, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	movq	%rax, 184(%rsp)
	ja	.L86
	cmpq	$1, %rax
	jne	.L15
	movzbl	(%rdi), %eax
	movb	%al, 208(%rsp)
.L16:
	movq	184(%rsp), %rax
	movq	192(%rsp), %rdx
	movq	__imp__errno(%rip), %rbx
	movq	%rax, 200(%rsp)
	movb	$0, (%rdx,%rax)
	movq	192(%rsp), %rsi
.LEHB0:
	call	*%rbx
	movl	(%rax), %r12d
	call	*%rbx
.LEHE0:
	leaq	184(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rcx
	movl	%r8d, (%rax)
	movl	$10, %r8d
	call	strtoll
	cmpq	184(%rsp), %rsi
	movq	%rax, 56(%rsp)
	je	.L87
.LEHB1:
	call	*%rbx
.LEHE1:
	cmpl	$34, (%rax)
	je	.L88
	call	*%rbx
	cmpl	$0, (%rax)
	je	.L89
.L19:
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L11:
	movl	$48, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$41, %r8d
	movq	$257, (%rax)
	movq	%rax, %rsi
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	$65537, 8(%rax)
	movq	$1000003, 16(%rax)
	movq	$10000019, 24(%rax)
	movq	$1000000007, 32(%rax)
	movq	%rax, 136(%rsp)
	movabsq	$1000000000039, %rax
	movq	%rax, 40(%rsi)
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$9, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC2(%rip), %rdx
.LEHB3:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$31, %r8d
	leaq	.LC4(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	56(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC5(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	48(%rsi), %rax
	movq	%rsi, 72(%rsp)
	movsd	.LC9(%rip), %xmm7
	movsd	.LC20(%rip), %xmm8
	movq	%rax, 128(%rsp)
	movsd	.LC21(%rip), %xmm9
	.p2align 4,,10
	.p2align 3
.L53:
	movq	72(%rsp), %rax
	movl	$41, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movq	(%rax), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$10, %r8d
	leaq	.LC6(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rdi, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC7(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testb	$1, %dil
	je	.L23
	movl	$2, %r13d
	movq	%rdi, %rcx
	movq	%rdi, 144(%rsp)
	leaq	160(%rsp), %rbp
	movq	%r13, %rax
	movq	%r13, %rdx
	movq	$0, 152(%rsp)
	leaq	144(%rsp), %r12
	subq	%rdi, %rax
	imulq	%rax, %rcx
	subq	%rcx, %rdx
	movq	%rdi, %rcx
	imulq	%rax, %rdx
	movq	%r13, %rax
	imulq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rdi, %rcx
	imulq	%rdx, %rax
	movq	%r13, %rdx
	imulq	%rax, %rcx
	subq	%rcx, %rdx
	movq	%rdi, %rcx
	imulq	%rax, %rdx
	movq	%r13, %rax
	imulq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rbp, %rcx
	imulq	%rdx, %rax
	movq	%rdi, %rdx
	imulq	%rax, %rdx
	subq	%rdx, %r13
	movl	$1, %edx
	imulq	%rax, %r13
	movq	%rdx, 168(%rsp)
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	movq	%rbp, %rcx
	movq	%xmm0, %rax
	mulq	%rax
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	xorl	%edx, %edx
	movl	$1234567, %eax
	divq	%rdi
	movl	$89101112, %eax
	movq	%rdx, %r14
	movq	%rdx, 64(%rsp)
	movq	%rdx, 96(%rsp)
	xorl	%edx, %edx
	movq	%r14, %r15
	divq	%rdi
	movq	%xmm0, 48(%rsp)
	movq	%rdx, %rsi
	movq	%rdx, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r14, %rdx
	xorl	%r14d, %r14d
	movq	56(%rsp), %rcx
	cmpq	$0, 56(%rsp)
	movq	%rax, %rbx
	jle	.L90
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L26:
	leaq	(%rsi,%rdx), %rax
	addq	$1, %r14
	xorl	%edx, %edx
	divq	%rdi
	cmpq	%r14, %rcx
	jne	.L26
	movq	%rdx, _ZL6g_sink(%rip)
	pxor	%xmm6, %xmm6
	movapd	%xmm7, %xmm10
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm6
	movq	%rdi, %r8
	movq	%rax, %rbx
	movq	64(%rsp), %rax
	sarq	%r8
	xorl	%edx, %edx
	movq	%r8, %r11
	negq	%r11
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L29:
	addq	%rsi, %rax
	movq	%rax, %rcx
	subq	%rdi, %rcx
	cmpq	%r8, %rax
	cmovg	%rcx, %rax
	leaq	(%rax,%rdi), %rcx
	cmpq	%r11, %rax
	cmovl	%rcx, %rax
	addq	$1, %rdx
	cmpq	%rdx, %r14
	jne	.L29
	leaq	(%rax,%rdi), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
.L31:
	movq	%rax, _ZL6g_sink(%rip)
	pxor	%xmm12, %xmm12
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	48(%rsp), %r14
	movq	%rbp, %rcx
	movq	%rdi, 144(%rsp)
	movq	$0, 152(%rsp)
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm12
	movq	64(%rsp), %rax
	mulq	%r14
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	movq	%r14, %rax
	movq	%rbp, %rcx
	mulq	%rsi
	movaps	%xmm0, 32(%rsp)
	movq	32(%rsp), %rbx
	divsd	%xmm10, %xmm12
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	movq	%xmm0, %r14
	movq	%xmm0, 104(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	56(%rsp), %r9
	movq	%rax, 80(%rsp)
	movq	32(%rsp), %rax
	testq	%r9, %r9
	jle	.L60
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L37:
	addq	%r14, %rax
	setc	%r8b
	cmpq	%rdi, %rax
	movq	%rax, %rcx
	movzbl	%r8b, %r8d
	jnb	.L66
	testq	%r8, %r8
	je	.L35
.L66:
	movq	%rcx, %rax
	subq	%rdi, %rax
.L35:
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.L37
	movq	%rax, %r8
	xorl	%r9d, %r9d
.L32:
	imulq	%r13, %rax
	pxor	%xmm11, %xmm11
	mulq	%rdi
	addq	%r8, %rax
	adcq	%r9, %rdx
	movq	%rdx, %rax
	subq	%rdi, %rdx
	cmpq	%rdi, %rax
	cmovnb	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	80(%rsp), %rax
	movl	$26, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	cvtsi2sdq	%rax, %xmm11
	divsd	%xmm10, %xmm11
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC13(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC14(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	movq	56(%rsp), %rax
	testq	%rax, %rax
	jle	.L39
	movq	64(%rsp), %rcx
	movq	%r13, 32(%rsp)
	xorl	%r13d, %r13d
	movq	%rbx, 80(%rsp)
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L40:
	movq	%rsi, %rax
	movq	%rdi, 144(%rsp)
	addq	$1, %r13
	movq	$0, 152(%rsp)
	mulq	%rcx
	movq	%rbp, %rcx
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	cmpq	%r13, %rbx
	movq	%xmm0, %rdx
	movq	%rdx, %rcx
	jne	.L40
	movq	80(%rsp), %rbx
	movq	%r13, 112(%rsp)
	pxor	%xmm6, %xmm6
	movq	%xmm0, _ZL6g_sink(%rip)
	movq	32(%rsp), %r13
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r14, %rax
	xorl	%r14d, %r14d
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm10, %xmm6
	movq	%rdi, %rcx
	sarq	%rcx
	movq	%r13, 32(%rsp)
	movq	112(%rsp), %r13
	movq	%rcx, %rdx
	movq	%rax, 120(%rsp)
	movq	%r15, %rax
	movq	%rdi, %r15
	negq	%rdx
	movq	%rbx, 80(%rsp)
	movq	%rsi, %rdi
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.p2align 4,,10
	.p2align 3
.L43:
	imulq	%rdi
	movq	%rbp, %rcx
	movq	%r15, 144(%rsp)
	movq	%rax, 160(%rsp)
	movq	%r15, %rax
	sarq	$63, %rax
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 152(%rsp)
	call	__modti3
	movq	%xmm0, %rax
	movq	%rax, %rdx
	subq	%r15, %rdx
	cmpq	%rbx, %rax
	cmovg	%rdx, %rax
	leaq	(%rax,%r15), %rdx
	cmpq	%rsi, %rax
	cmovl	%rdx, %rax
	addq	$1, %r14
	cmpq	%r13, %r14
	jne	.L43
	testq	%rax, %rax
	movq	%rdi, %rsi
	movq	32(%rsp), %r13
	movq	%r15, %rdi
	movq	80(%rsp), %rbx
	js	.L91
	movq	%rax, _ZL6g_sink(%rip)
.L84:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	120(%rsp), %rax
	pxor	%xmm12, %xmm12
	cvtsi2sdq	%rax, %xmm12
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	56(%rsp), %r9
	xorl	%r8d, %r8d
	divsd	%xmm10, %xmm12
	movq	104(%rsp), %r10
	movq	%rax, %r14
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%r10, %rax
	mulq	%rbx
	movq	%rax, %rcx
	movq	%r13, %rax
	movq	%rdx, %rbx
	imulq	%rcx, %rax
	mulq	%rdi
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	cmpq	%rdi, %rax
	movq	%rax, %rbx
	jb	.L45
	subq	%rdi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rax
.L45:
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L46
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
.L56:
	imulq	%r13, %rbx
	pxor	%xmm11, %xmm11
	movq	%rbx, %rax
	mulq	%rdi
	addq	32(%rsp), %rax
	adcq	40(%rsp), %rdx
	movq	%rdx, %rax
	subq	%rdi, %rdx
	cmpq	%rdi, %rax
	cmovnb	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC15(%rip), %rdx
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm11
	divsd	%xmm10, %xmm11
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC13(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC14(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	56(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	jle	.L48
	movq	64(%rsp), %rax
	xorl	%edx, %edx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L49:
	leaq	1(%rdx), %r14
	addq	%r14, %rax
	movq	%r14, %rdx
	xorq	%rax, %rsi
	cmpq	%r14, %rcx
	jne	.L49
	xorl	%edx, %edx
	movq	%rdi, 144(%rsp)
	pxor	%xmm11, %xmm11
	movq	$0, 152(%rsp)
	divq	%rdi
	movq	%rsi, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	divq	%rdi
	movq	%rcx, %rax
	movq	%rbp, %rcx
	mulq	%rdx
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	movq	%xmm0, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm10, %xmm11
	movq	%r14, 32(%rsp)
	movq	88(%rsp), %r15
	movq	%rax, 64(%rsp)
	movq	96(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L52:
	addq	$1, %rsi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movq	%rdi, 144(%rsp)
	movq	$0, 152(%rsp)
	addq	%rsi, %r14
	xorq	%r14, %r15
	movq	%r15, %rax
	divq	%rdi
	movq	48(%rsp), %rax
	mulq	%rdx
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	xorl	%edx, %edx
	movq	%r14, %rax
	movq	%rbp, %rcx
	divq	%rdi
	movq	48(%rsp), %rax
	movq	%xmm0, %rbx
	mulq	%rdx
	movq	%rdx, 168(%rsp)
	movq	%r12, %rdx
	movq	%rax, 160(%rsp)
	call	__umodti3
	movq	%rbx, %rax
	movq	%r13, %rcx
	movq	%xmm0, %rdx
	mulq	%rdx
	imulq	%rax, %rcx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	addq	%r8, %rcx
	adcq	%r9, %rbx
	movq	%rbx, %rcx
	xorl	%ebx, %ebx
	cmpq	%rdi, %rcx
	movq	%rcx, %rax
	jb	.L50
	subq	%rdi, %rax
	xorl	%ebx, %ebx
	movq	%rax, %rcx
.L50:
	imulq	%r13, %rax
	mulq	%rdi
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rdx, %rax
	subq	%rdi, %rdx
	cmpq	%rdi, %rax
	cmovnb	%rdx, %rax
	cmpq	32(%rsp), %rsi
	jne	.L52
	movq	64(%rsp), %r15
.L55:
	movq	%rax, _ZL6g_sink(%rip)
	pxor	%xmm6, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$38, %r8d
	leaq	.LC16(%rip), %rdx
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm10, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC17(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC18(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$21, %r8d
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm11, %xmm1
	subsd	%xmm8, %xmm1
	mulsd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE3:
	addq	$8, 72(%rsp)
	movq	128(%rsp), %rsi
	cmpq	%rsi, 72(%rsp)
	jne	.L53
	movq	136(%rsp), %rcx
	movl	$48, %edx
	call	_ZdlPvy
	nop
	movaps	224(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	movaps	272(%rsp), %xmm9
	movaps	288(%rsp), %xmm10
	movaps	304(%rsp), %xmm11
	movaps	320(%rsp), %xmm12
	addq	$344, %rsp
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
.L91:
	leaq	(%r15,%rax), %r10
	movq	%r10, _ZL6g_sink(%rip)
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L90:
	movq	64(%rsp), %r14
	pxor	%xmm6, %xmm6
	movq	%r14, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movsd	.LC9(%rip), %xmm10
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm10, %xmm6
	movq	%rax, %rbx
	movq	%r14, %rax
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L48:
	movq	$0, _ZL6g_sink(%rip)
	pxor	%xmm11, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm10, %xmm11
	movq	%rax, %r15
	xorl	%eax, %eax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L39:
	movq	64(%rsp), %r15
	pxor	%xmm6, %xmm6
	pxor	%xmm12, %xmm12
	movq	%r15, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm10, %xmm6
	movq	%r15, _ZL6g_sink(%rip)
	movq	%rax, %r14
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm12
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	divsd	%xmm10, %xmm12
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L60:
	movq	40(%rsp), %rdx
	movq	%rax, %r8
	movq	%rdx, %r9
	jmp	.L32
.L58:
	movq	$10000000, 56(%rsp)
	jmp	.L11
.L86:
	leaq	184(%rsp), %rdx
	movq	%rbp, %rcx
	xorl	%r8d, %r8d
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE4:
	movq	%rax, %rcx
	movq	%rax, 192(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 208(%rsp)
.L14:
	movq	%rbx, %r8
	movq	%rdi, %rdx
	call	memcpy
	jmp	.L16
.L15:
	testq	%rax, %rax
	je	.L16
	movq	%rsi, %rcx
	jmp	.L14
.L89:
	call	*%rbx
	movl	%r12d, (%rax)
	jmp	.L19
.L23:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC8(%rip), %rdx
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	abort
.LEHE5:
.L87:
	leaq	.LC1(%rip), %rcx
.LEHB6:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE6:
.L85:
	leaq	.LC0(%rip), %rcx
.LEHB7:
	call	_ZSt19__throw_logic_errorPKc
.L63:
	movq	%rax, %rsi
.L22:
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE7:
.L88:
	leaq	.LC1(%rip), %rcx
.LEHB8:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE8:
.L64:
	movq	136(%rsp), %rcx
	movq	%rax, %rbx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L65:
	movq	%rax, %rsi
	call	*%rbx
	cmpl	$0, (%rax)
	jne	.L22
	call	*%rbx
	movl	%r12d, (%rax)
	jmp	.L22
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11440-.LLSDACSB11440
.LLSDACSB11440:
	.uleb128 .LEHB0-.LFB11440
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L63-.LFB11440
	.uleb128 0
	.uleb128 .LEHB1-.LFB11440
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L65-.LFB11440
	.uleb128 0
	.uleb128 .LEHB2-.LFB11440
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11440
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L64-.LFB11440
	.uleb128 0
	.uleb128 .LEHB4-.LFB11440
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB11440
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L64-.LFB11440
	.uleb128 0
	.uleb128 .LEHB6-.LFB11440
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L65-.LFB11440
	.uleb128 0
	.uleb128 .LEHB7-.LFB11440
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB11440
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L65-.LFB11440
	.uleb128 0
	.uleb128 .LEHB9-.LFB11440
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE11440:
	.section	.text.startup,"x"
	.seh_endproc
.lcomm _ZL6g_sink,8,8
	.section .rdata,"dr"
	.align 8
.LC9:
	.long	0
	.long	1104006501
	.align 8
.LC20:
	.long	0
	.long	1072693248
	.align 8
.LC21:
	.long	0
	.long	1079574528
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__modti3;	.scl	2;	.type	32;	.endef
	.def	__umodti3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	abort;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
