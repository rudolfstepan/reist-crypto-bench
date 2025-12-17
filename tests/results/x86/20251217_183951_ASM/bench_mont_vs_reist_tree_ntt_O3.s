	.file	"bench_mont_vs_reist_tree_ntt.cpp"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "cannot create std::vector larger than max_size()\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0
_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0:
.LFB4029:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movabsq	$2305843009213693951, %rax
	cmpq	%rdx, %rax
	movq	%rcx, %rbx
	jb	.L9
	testq	%rdx, %rdx
	je	.L10
	leaq	0(,%rdx,4), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rsi, %rcx
	call	_Znwy
	xorl	%edx, %edx
	cmpq	$1, 88(%rsp)
	movq	%rax, (%rbx)
	leaq	(%rax,%rsi), %r10
	movl	%edx, (%rax)
	movq	%r10, 16(%rbx)
	leaq	4(%rax), %rcx
	je	.L4
	leaq	-4(%rsi), %r8
	xorl	%edx, %edx
	movq	%r10, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	memset
	movq	40(%rsp), %r10
	leaq	-4(%r10,%rax), %rcx
	subq	32(%rsp), %rcx
.L4:
	movq	%rcx, 8(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L10:
	xorl	%ecx, %ecx
	movq	%rcx, (%rbx)
	movq	%rcx, 16(%rbx)
	xorl	%ecx, %ecx
	jmp	.L4
.L9:
	leaq	.LC0(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0:
.LFB4031:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movabsq	$2305843009213693951, %rax
	cmpq	%rdx, %rax
	movq	%rcx, %rbx
	jb	.L18
	testq	%rdx, %rdx
	je	.L19
	leaq	0(,%rdx,4), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rsi, %rcx
	call	_Znwy
	xorl	%edx, %edx
	cmpq	$1, 88(%rsp)
	movq	%rax, (%rbx)
	leaq	(%rax,%rsi), %r10
	movl	%edx, (%rax)
	movq	%r10, 16(%rbx)
	leaq	4(%rax), %rcx
	je	.L14
	leaq	-4(%rsi), %r8
	xorl	%edx, %edx
	movq	%r10, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	memset
	movq	40(%rsp), %r10
	leaq	-4(%r10,%rax), %rcx
	subq	32(%rsp), %rcx
.L14:
	movq	%rcx, 8(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L19:
	xorl	%ecx, %ecx
	movq	%rcx, (%rbx)
	movq	%rcx, 16(%rbx)
	xorl	%ecx, %ecx
	jmp	.L14
.L18:
	leaq	.LC0(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB4033:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	je	.L22
	movq	%rdx, %rcx
	movq	%rdx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L22:
	movq	(%rcx), %rax
	addq	-24(%rax), %rbx
	movl	32(%rbx), %edx
	movq	%rbx, %rcx
	orl	$1, %edx
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIiSaIiEEC1ERKS1_
	.def	_ZNSt6vectorIiSaIiEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1ERKS1_
_ZNSt6vectorIiSaIiEEC1ERKS1_:
.LFB3580:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	8(%rdx), %rax
	subq	(%rdx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rbx
	je	.L24
	movq	%rax, %rcx
	movq	%rdx, 72(%rsp)
	call	_Znwy
	movq	72(%rsp), %rdx
	movq	%rax, %r9
.L24:
	leaq	(%r9,%rbx), %rax
	movq	%r9, %xmm1
	movq	%rax, 16(%rsi)
	movddup	%xmm1, %xmm0
	movups	%xmm0, (%rsi)
	movq	(%rdx), %rax
	movq	8(%rdx), %rbx
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jle	.L25
	movq	%r9, %rcx
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	memcpy
	leaq	(%rax,%rbx), %r9
.L25:
	movq	%r9, 8(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIjSaIjEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIjSaIjEEC1ERKS1_
	.def	_ZNSt6vectorIjSaIjEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEEC1ERKS1_
_ZNSt6vectorIjSaIjEEC1ERKS1_:
.LFB3583:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	8(%rdx), %rax
	subq	(%rdx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rbx
	je	.L29
	movq	%rax, %rcx
	movq	%rdx, 72(%rsp)
	call	_Znwy
	movq	72(%rsp), %rdx
	movq	%rax, %r9
.L29:
	leaq	(%r9,%rbx), %rax
	movq	%r9, %xmm1
	movq	%rax, 16(%rsi)
	movddup	%xmm1, %xmm0
	movups	%xmm0, (%rsi)
	movq	(%rdx), %rax
	movq	8(%rdx), %rbx
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jle	.L30
	movq	%r9, %rcx
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	memcpy
	leaq	(%rax,%rbx), %r9
.L30:
	movq	%r9, 8(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "Montgomery vs REIST-Tree NTT Butterfly Benchmark\12\0"
.LC2:
	.ascii "Modulus Q = \0"
.LC3:
	.ascii ", n = \0"
.LC4:
	.ascii ", rounds = \0"
.LC5:
	.ascii "\12\0"
	.align 8
.LC6:
	.ascii "NEON: not available, using scalar\12\0"
.LC13:
	.ascii "Results (seconds)\12\0"
.LC14:
	.ascii "REIST-Tree scalar : \0"
.LC15:
	.ascii "Montgomery (stay) : \0"
.LC16:
	.ascii "\12\12\0"
.LC17:
	.ascii "Speedups\12\0"
.LC18:
	.ascii "Mont vs REIST-Tree scalar  : \0"
.LC19:
	.ascii "x\12\0"
.LC20:
	.ascii "\12Sink: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3242:
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
	subq	$568, %rsp
	.seh_stackalloc	568
	movaps	%xmm6, 448(%rsp)
	.seh_savexmm	%xmm6, 448
	movaps	%xmm7, 464(%rsp)
	.seh_savexmm	%xmm7, 464
	movaps	%xmm8, 480(%rsp)
	.seh_savexmm	%xmm8, 480
	movaps	%xmm9, 496(%rsp)
	.seh_savexmm	%xmm9, 496
	movaps	%xmm10, 512(%rsp)
	.seh_savexmm	%xmm10, 512
	movaps	%xmm11, 528(%rsp)
	.seh_savexmm	%xmm11, 528
	movaps	%xmm12, 544(%rsp)
	.seh_savexmm	%xmm12, 544
	.seh_endprologue
	movl	$1024, %esi
	movl	%ecx, %ebx
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %ebx
	movl	$5000, 36(%rsp)
	jg	.L282
.L34:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC1(%rip), %rdx
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$8380417, %edx
	call	_ZNSolsEi
	movl	$6, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movl	%esi, %edx
	call	_ZNSolsEi
	movl	$11, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	36(%rsp), %edx
	movq	%rbx, %rcx
	movslq	%esi, %rbx
	call	_ZNSolsEi
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	64(%rsp), %rcx
	movq	%rbx, %rdx
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE0:
	leaq	96(%rsp), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE1:
	leaq	128(%rsp), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE2:
	movq	64(%rsp), %r11
	movq	72(%rsp), %r10
	subq	%r11, %r10
	je	.L35
	movq	96(%rsp), %rbp
	sarq	$2, %r10
	xorl	%r9d, %r9d
	movl	$1, %eax
	movq	128(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L39:
	imull	$1664525, %eax, %eax
	leal	1013904223(%rax), %edx
	movq	%rdx, %rax
	imulq	$1074791297, %rdx, %rdx
	shrq	$53, %rdx
	imull	$8380417, %edx, %ecx
	movl	%eax, %edx
	imull	$1664525, %eax, %eax
	subl	%ecx, %edx
	leal	1013904223(%rax), %r8d
	movq	%r8, %rax
	imulq	$1074791297, %r8, %r8
	shrq	$53, %r8
	imull	$8380417, %r8d, %ecx
	movl	%eax, %r8d
	imull	$1664525, %eax, %eax
	subl	%ecx, %r8d
	leal	1013904223(%rax), %ecx
	movq	%rcx, %rax
	imulq	$1074791297, %rcx, %rcx
	shrq	$53, %rcx
	imull	$8380417, %ecx, %r12d
	movl	%eax, %ecx
	subl	%r12d, %ecx
	cmpl	$4190208, %edx
	leal	-8380417(%rdx), %r12d
	cmovbe	%edx, %r12d
	cmpl	$4190208, %r8d
	leal	-8380417(%r8), %edx
	movl	%r12d, (%r11,%r9,4)
	cmova	%edx, %r8d
	cmpl	$4190208, %ecx
	leal	-8380417(%rcx), %edx
	movl	%r8d, 0(%rbp,%r9,4)
	cmovbe	%ecx, %edx
	movl	%edx, (%rdi,%r9,4)
	addq	$1, %r9
	cmpq	%r10, %r9
	jb	.L39
.L35:
	leaq	160(%rsp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
.LEHB3:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0
.LEHE3:
	leaq	192(%rsp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
.LEHB4:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0
.LEHE4:
	leaq	224(%rsp), %rcx
	movq	%rbx, %rdx
.LEHB5:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_.isra.0
.LEHE5:
	testl	%esi, %esi
	jle	.L45
	leal	-1(%rsi), %r10d
	movq	64(%rsp), %rdx
	cmpl	$12, %r10d
	movq	96(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	160(%rsp), %r8
	movq	192(%rsp), %r9
	movq	224(%rsp), %r11
	jbe	.L42
	leaq	-4(%r9), %rbp
	leaq	-4(%r11), %rdi
	movq	%rbp, %r10
	leaq	-4(%r8), %r12
	subq	%rax, %r10
	movq	%rdi, %r13
	cmpq	$8, %r10
	seta	%r10b
	subq	%rax, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%r12, %r13
	subq	%rax, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%rdi, %r13
	subq	%rdx, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%rbp, %r13
	subq	%rdx, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%r12, %r13
	subq	%rdx, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%rdi, %r13
	subq	%rcx, %r13
	cmpq	$8, %r13
	seta	%r13b
	andl	%r13d, %r10d
	movq	%rbp, %r13
	subq	%rcx, %r13
	cmpq	$8, %r13
	seta	%r13b
	subq	%rcx, %r12
	andl	%r10d, %r13d
	cmpq	$8, %r12
	movq	%rdi, %r10
	seta	%r12b
	subq	%r9, %r10
	andl	%r13d, %r12d
	cmpq	$8, %r10
	seta	%r10b
	subq	%r8, %rdi
	andl	%r12d, %r10d
	cmpq	$8, %rdi
	seta	%dil
	testb	%dil, %r10b
	je	.L42
	subq	%r8, %rbp
	cmpq	$8, %rbp
	jbe	.L42
	movdqa	.LC9(%rip), %xmm4
	movl	%esi, %ebx
	pcmpeqd	%xmm6, %xmm6
	movdqa	%xmm6, %xmm5
	shrl	$2, %ebx
	pslld	$31, %xmm5
	movdqa	.LC7(%rip), %xmm2
	xorl	%r10d, %r10d
	movdqa	.LC8(%rip), %xmm3
	salq	$4, %rbx
	psubd	%xmm5, %xmm4
	movdqa	.LC11(%rip), %xmm7
	.p2align 4,,10
	.p2align 3
.L43:
	movdqu	(%rdx,%r10), %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm9
	pcmpgtd	%xmm6, %xmm0
	paddd	%xmm2, %xmm9
	pand	%xmm0, %xmm1
	pandn	%xmm9, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm10
	punpckldq	%xmm0, %xmm10
	pmuludq	%xmm3, %xmm10
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm3, %xmm0
	movdqa	%xmm10, %xmm1
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm9
	pslld	$3, %xmm9
	psubd	%xmm1, %xmm9
	pslld	$10, %xmm9
	paddd	%xmm1, %xmm9
	pslld	$13, %xmm9
	paddd	%xmm1, %xmm9
	pxor	%xmm1, %xmm1
	psubd	%xmm9, %xmm1
	movdqa	%xmm1, %xmm9
	punpckldq	%xmm1, %xmm9
	pmuludq	%xmm2, %xmm9
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm2, %xmm1
	paddq	%xmm10, %xmm9
	psrlq	$32, %xmm9
	paddq	%xmm0, %xmm1
	psrlq	$32, %xmm1
	movdqa	%xmm9, %xmm0
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm9
	movdqa	%xmm0, %xmm1
	psubd	%xmm5, %xmm9
	paddd	%xmm7, %xmm1
	pcmpgtd	%xmm4, %xmm9
	pand	%xmm9, %xmm1
	pandn	%xmm0, %xmm9
	por	%xmm1, %xmm9
	movdqu	(%rax,%r10), %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm10
	pcmpgtd	%xmm6, %xmm0
	paddd	%xmm2, %xmm10
	pand	%xmm0, %xmm1
	pandn	%xmm10, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm11
	punpckldq	%xmm0, %xmm11
	pmuludq	%xmm3, %xmm11
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm3, %xmm0
	movdqa	%xmm11, %xmm1
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm10
	pslld	$3, %xmm10
	psubd	%xmm1, %xmm10
	pslld	$10, %xmm10
	paddd	%xmm1, %xmm10
	pslld	$13, %xmm10
	paddd	%xmm1, %xmm10
	pxor	%xmm1, %xmm1
	psubd	%xmm10, %xmm1
	movdqa	%xmm1, %xmm10
	punpckldq	%xmm1, %xmm10
	pmuludq	%xmm2, %xmm10
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm2, %xmm1
	paddq	%xmm11, %xmm10
	psrlq	$32, %xmm10
	paddq	%xmm0, %xmm1
	psrlq	$32, %xmm1
	movdqa	%xmm10, %xmm0
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm10
	movdqa	%xmm0, %xmm1
	psubd	%xmm5, %xmm10
	paddd	%xmm7, %xmm1
	pcmpgtd	%xmm4, %xmm10
	pand	%xmm10, %xmm1
	pandn	%xmm0, %xmm10
	por	%xmm1, %xmm10
	movdqu	(%rcx,%r10), %xmm1
	movups	%xmm9, (%r8,%r10)
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm11
	movups	%xmm10, (%r9,%r10)
	pcmpgtd	%xmm6, %xmm0
	paddd	%xmm2, %xmm11
	pand	%xmm0, %xmm1
	pandn	%xmm11, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm12
	punpckldq	%xmm0, %xmm12
	pmuludq	%xmm3, %xmm12
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm3, %xmm0
	movdqa	%xmm12, %xmm1
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm11
	pslld	$3, %xmm11
	psubd	%xmm1, %xmm11
	pslld	$10, %xmm11
	paddd	%xmm1, %xmm11
	pslld	$13, %xmm11
	paddd	%xmm1, %xmm11
	pxor	%xmm1, %xmm1
	psubd	%xmm11, %xmm1
	movdqa	%xmm1, %xmm11
	punpckldq	%xmm1, %xmm11
	pmuludq	%xmm2, %xmm11
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm2, %xmm1
	paddq	%xmm12, %xmm11
	paddq	%xmm0, %xmm1
	psrlq	$32, %xmm11
	psrlq	$32, %xmm1
	movdqa	%xmm11, %xmm0
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm9
	psubd	%xmm5, %xmm1
	paddd	%xmm7, %xmm9
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm1, %xmm9
	pandn	%xmm0, %xmm1
	por	%xmm9, %xmm1
	movups	%xmm1, (%r11,%r10)
	addq	$16, %r10
	cmpq	%rbx, %r10
	jne	.L43
	movl	%esi, %r13d
	andl	$-4, %r13d
	testb	$3, %sil
	je	.L45
	movl	%r13d, %r10d
	movl	(%rdx,%r10,4), %ebx
	testl	%ebx, %ebx
	js	.L283
.L47:
	movl	(%rax,%r10,4), %ebp
	testl	%ebp, %ebp
	js	.L284
.L48:
	movl	(%rcx,%r10,4), %edi
	testl	%edi, %edi
	js	.L285
.L49:
	imulq	$2365951, %rbx, %r12
	imull	$-58728449, %r12d, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%r12, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %r12d
	jbe	.L50
	leal	-8380417(%rbx), %r12d
.L50:
	imulq	$2365951, %rbp, %rbp
	movl	%r12d, (%r8,%r10,4)
	imull	$-58728449, %ebp, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%rbp, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %ebp
	jbe	.L51
	leal	-8380417(%rbx), %ebp
.L51:
	imulq	$2365951, %rdi, %rdi
	movl	%ebp, (%r9,%r10,4)
	imull	$-58728449, %edi, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%rdi, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %edi
	jbe	.L52
	leal	-8380417(%rbx), %edi
.L52:
	leal	1(%r13), %ebx
	movl	%edi, (%r11,%r10,4)
	cmpl	%ebx, %esi
	jle	.L45
	movl	4(%rdx,%r10,4), %ebx
	testl	%ebx, %ebx
	jns	.L53
	addl	$8380417, %ebx
.L53:
	movl	4(%rax,%r10,4), %ebp
	testl	%ebp, %ebp
	jns	.L54
	addl	$8380417, %ebp
.L54:
	movl	4(%rcx,%r10,4), %edi
	testl	%edi, %edi
	jns	.L55
	addl	$8380417, %edi
.L55:
	imulq	$2365951, %rbx, %r12
	imull	$-58728449, %r12d, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%r12, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %r12d
	jbe	.L56
	leal	-8380417(%rbx), %r12d
.L56:
	imulq	$2365951, %rbp, %rbp
	movl	%r12d, 4(%r8,%r10,4)
	imull	$-58728449, %ebp, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%rbp, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %ebp
	jbe	.L57
	leal	-8380417(%rbx), %ebp
.L57:
	imulq	$2365951, %rdi, %rdi
	movl	%ebp, 4(%r9,%r10,4)
	imull	$-58728449, %edi, %ebx
	imulq	$8380417, %rbx, %rbx
	addq	%rdi, %rbx
	shrq	$32, %rbx
	cmpq	$8380416, %rbx
	movl	%ebx, %edi
	ja	.L286
.L58:
	addl	$2, %r13d
	movl	%edi, 4(%r11,%r10,4)
	cmpl	%r13d, %esi
	jle	.L45
	movl	8(%rdx,%r10,4), %ebx
	testl	%ebx, %ebx
	js	.L287
.L59:
	movl	8(%rax,%r10,4), %edx
	testl	%edx, %edx
	js	.L288
.L65:
	movl	8(%rcx,%r10,4), %ecx
	testl	%ecx, %ecx
	js	.L289
.L64:
	imulq	$2365951, %rbx, %rbx
	imull	$-58728449, %ebx, %eax
	imulq	$8380417, %rax, %rax
	addq	%rbx, %rax
	shrq	$32, %rax
	cmpq	$8380416, %rax
	movl	%eax, %ebx
	jbe	.L63
	leal	-8380417(%rax), %ebx
.L63:
	imulq	$2365951, %rdx, %rdx
	movl	%ebx, 8(%r8,%r10,4)
	imull	$-58728449, %edx, %eax
	imulq	$8380417, %rax, %rax
	addq	%rdx, %rax
	shrq	$32, %rax
	cmpq	$8380416, %rax
	movl	%eax, %edx
	jbe	.L62
	leal	-8380417(%rax), %edx
.L62:
	movl	%edx, 8(%r9,%r10,4)
	movl	%ecx, %edx
	imulq	$2365951, %rdx, %rdx
	imull	$-58728449, %edx, %eax
	imulq	$8380417, %rax, %rax
	addq	%rdx, %rax
	shrq	$32, %rax
	cmpq	$8380416, %rax
	movl	%eax, %edx
	jbe	.L61
	leal	-8380417(%rax), %edx
.L61:
	movl	%edx, 8(%r11,%r10,4)
.L45:
	leaq	64(%rsp), %rdx
	leaq	256(%rsp), %rcx
.LEHB6:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE6:
	leaq	288(%rsp), %rbp
	leaq	96(%rsp), %rdx
	movq	%rbp, %rcx
.LEHB7:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE7:
	movq	40(%rsp), %rdx
	leaq	320(%rsp), %rcx
.LEHB8:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE8:
	movq	48(%rsp), %rdx
	leaq	352(%rsp), %rcx
.LEHB9:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE9:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	256(%rsp), %rdx
	leaq	384(%rsp), %rcx
	movq	%rax, %r14
.LEHB10:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE10:
	leaq	416(%rsp), %rcx
	movq	%rbp, %rdx
.LEHB11:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE11:
	movq	384(%rsp), %r10
	movq	392(%rsp), %r11
	movl	36(%rsp), %ecx
	movq	416(%rsp), %r9
	subq	%r10, %r11
	sarq	$2, %r11
	testl	%ecx, %ecx
	jle	.L74
	testl	%r11d, %r11d
	jle	.L74
	movq	128(%rsp), %r12
	leal	-1(%r11), %ebp
	xorl	%ecx, %ecx
	movq	%r11, %r8
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%r11d, %r11d
	movl	%ecx, 40(%rsp)
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L291:
	leal	-8380417(%rcx), %r15d
	cmpl	$8380416, %ecx
	cmovg	%r15d, %ecx
.L81:
	cmpl	$4190208, %ecx
	leal	-8380417(%rcx), %r15d
	cmovg	%r15d, %ecx
	subl	%eax, %edx
	movl	%ecx, (%r10,%r11,4)
	js	.L83
	leal	-8380417(%rdx), %eax
	cmpl	$8380416, %edx
	cmovg	%eax, %edx
.L84:
	cmpl	$4190208, %edx
	leal	-8380417(%rdx), %eax
	cmovg	%eax, %edx
	cmpq	%rbp, %r11
	movl	%edx, (%r9,%r11,4)
	je	.L290
	addq	$1, %r11
.L86:
	movl	(%r9,%r11,4), %edx
	movl	(%r12,%r11,4), %ecx
	leal	8380417(%rdx), %eax
	testl	%edx, %edx
	cmovs	%eax, %edx
	testl	%ecx, %ecx
	leal	8380417(%rcx), %eax
	cmovns	%ecx, %eax
	imulq	%rax, %rdx
	movq	%rdx, %rcx
	salq	$9, %rcx
	shrq	$32, %rcx
	imulq	$8380417, %rcx, %rcx
	subq	%rcx, %rdx
	cmpq	$8380416, %rdx
	jle	.L78
	leaq	-8380417(%rdx), %rcx
	subq	$16760834, %rdx
	cmpq	$8380416, %rcx
	cmovbe	%rcx, %rdx
.L78:
	cmpl	$4190208, %edx
	leal	-8380417(%rdx), %eax
	cmovle	%edx, %eax
	movl	(%r10,%r11,4), %edx
	movl	%edx, %ecx
	addl	%eax, %ecx
	jns	.L291
	addl	$8380417, %ecx
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L83:
	addl	$8380417, %edx
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L290:
	movl	40(%rsp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, 36(%rsp)
	jne	.L87
	movq	%r8, %r11
.L74:
	movl	%r11d, %eax
	movl	(%r10), %r15d
	movq	%r9, %rcx
	shrl	$31, %eax
	movq	_ZL6g_sink(%rip), %rdx
	addl	%r11d, %eax
	sarl	%eax
	cltq
	addl	(%r9,%rax,4), %r15d
	movq	%r15, %rax
	xorq	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	movl	8(%r9), %eax
	movq	_ZL6g_sink(%rip), %rdx
	addl	4(%r10), %eax
	xorq	%rdx, %rax
	movq	432(%rsp), %rdx
	movq	%rax, _ZL6g_sink(%rip)
	subq	%r9, %rdx
	call	_ZdlPvy
	movq	384(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L89
	movq	400(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L89:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm6, %xmm6
	movsd	.LC12(%rip), %xmm11
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm11, %xmm6
	leaq	320(%rsp), %rdx
	movq	%rax, %r12
	leaq	384(%rsp), %rcx
.LEHB12:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE12:
	leaq	352(%rsp), %rdx
	leaq	416(%rsp), %rcx
.LEHB13:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE13:
	movq	384(%rsp), %rax
	movq	392(%rsp), %rbx
	movl	36(%rsp), %edx
	movq	416(%rsp), %rcx
	subq	%rax, %rbx
	sarq	$2, %rbx
	testl	%edx, %edx
	jle	.L94
	testl	%ebx, %ebx
	jle	.L94
	leal	-1(%rbx), %ebp
	movq	224(%rsp), %rdx
	cmpl	$4, %ebp
	jbe	.L160
	leaq	15(%rax), %r8
	subq	%rcx, %r8
	cmpq	$30, %r8
	leaq	-4(%rax), %r8
	seta	%r9b
	subq	%rdx, %r8
	cmpq	$8, %r8
	seta	%r8b
	testb	%r8b, %r9b
	je	.L160
	leaq	-4(%rcx), %r8
	subq	%rdx, %r8
	cmpq	$8, %r8
	jbe	.L160
	movl	%ebx, %r13d
	movl	%ebx, %r10d
	movdqa	.LC7(%rip), %xmm2
	xorl	%edi, %edi
	andl	$-4, %r13d
	shrl	$2, %r10d
	movdqa	.LC10(%rip), %xmm1
	movapd	%xmm6, %xmm12
	movl	%r13d, %esi
	movdqa	.LC22(%rip), %xmm4
	salq	$4, %r10
	movq	%r12, 56(%rsp)
	salq	$2, %rsi
	movdqa	.LC11(%rip), %xmm3
	leaq	4(%rsi), %r14
	movq	%r14, 40(%rsp)
	addq	%rcx, %r14
	movq	%r14, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L113:
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L98:
	movdqu	(%rdx,%r8), %xmm7
	movdqu	(%rcx,%r8), %xmm0
	movdqa	%xmm7, %xmm8
	movdqa	%xmm0, %xmm9
	punpckldq	%xmm7, %xmm8
	punpckhdq	%xmm7, %xmm7
	punpckldq	%xmm0, %xmm9
	pmuludq	%xmm9, %xmm8
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm0, %xmm7
	movdqa	%xmm8, %xmm0
	shufps	$136, %xmm7, %xmm0
	movdqa	%xmm0, %xmm6
	pslld	$3, %xmm6
	psubd	%xmm0, %xmm6
	pslld	$10, %xmm6
	paddd	%xmm0, %xmm6
	pslld	$13, %xmm6
	paddd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	psubd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	punpckldq	%xmm0, %xmm6
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm2, %xmm6
	pmuludq	%xmm2, %xmm0
	paddq	%xmm8, %xmm6
	paddq	%xmm7, %xmm0
	psrlq	$32, %xmm6
	psrlq	$32, %xmm0
	shufps	$136, %xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	%xmm6, %xmm7
	psubd	%xmm1, %xmm0
	paddd	%xmm3, %xmm7
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm6, %xmm0
	movdqu	(%rax,%r8), %xmm6
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm10
	paddd	%xmm6, %xmm10
	movdqa	%xmm6, %xmm8
	psubd	%xmm1, %xmm6
	movdqa	%xmm10, %xmm9
	movdqa	%xmm6, %xmm7
	psubd	%xmm0, %xmm8
	psubd	%xmm1, %xmm9
	psubd	%xmm1, %xmm0
	pcmpgtd	%xmm9, %xmm7
	pcmpgtd	%xmm4, %xmm9
	pcmpgtd	%xmm6, %xmm0
	por	%xmm9, %xmm7
	pand	%xmm3, %xmm7
	paddd	%xmm10, %xmm7
	movups	%xmm7, (%rax,%r8)
	movdqa	%xmm8, %xmm7
	paddd	%xmm2, %xmm7
	pand	%xmm0, %xmm7
	pandn	%xmm8, %xmm0
	por	%xmm7, %xmm0
	movups	%xmm0, (%rcx,%r8)
	addq	$16, %r8
	cmpq	%r8, %r10
	jne	.L98
	testb	$3, %bl
	je	.L99
	leaq	(%rcx,%rsi), %rbp
	movl	(%rdx,%rsi), %r9d
	movl	0(%rbp), %r8d
	movl	(%rax,%rsi), %r11d
	imulq	%r8, %r9
	imull	$-58728449, %r9d, %r8d
	imulq	$8380417, %r8, %r8
	addq	%r9, %r8
	shrq	$32, %r8
	leal	-8380417(%r8), %r9d
	cmpq	$8380416, %r8
	cmova	%r9d, %r8d
	movl	%r8d, %r14d
	addl	%r11d, %r14d
	setc	%r9b
	cmpl	$8380416, %r14d
	seta	%r15b
	orl	%r15d, %r9d
	movzbl	%r9b, %r9d
	negl	%r9d
	andl	$-8380417, %r9d
	addl	%r14d, %r9d
	movl	%r9d, (%rax,%rsi)
	movl	%r11d, %r9d
	subl	%r8d, %r9d
	cmpl	%r8d, %r11d
	leal	8380417(%r9), %r12d
	cmovb	%r12d, %r9d
	leal	1(%r13), %r8d
	movl	%r9d, 0(%rbp)
	cmpl	%ebx, %r8d
	jge	.L99
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	movl	(%rdx,%r14), %r9d
	leaq	(%rax,%r14), %rbp
	movl	(%r15), %r8d
	movl	0(%rbp), %r11d
	imulq	%r8, %r9
	movl	%r11d, %r12d
	imull	$-58728449, %r9d, %r8d
	imulq	$8380417, %r8, %r8
	addq	%r9, %r8
	shrq	$32, %r8
	leal	-8380417(%r8), %r9d
	cmpq	$8380416, %r8
	cmova	%r9d, %r8d
	xorl	%r14d, %r14d
	addl	%r8d, %r12d
	setc	%r14b
	xorl	%r9d, %r9d
	cmpl	$8380416, %r12d
	seta	%r9b
	orl	%r14d, %r9d
	negl	%r9d
	andl	$-8380417, %r9d
	addl	%r12d, %r9d
	movl	%r9d, 0(%rbp)
	movl	%r11d, %r9d
	subl	%r8d, %r9d
	cmpl	%r8d, %r11d
	leal	8380417(%r9), %ebp
	cmovb	%ebp, %r9d
	leal	2(%r13), %r8d
	movl	%r9d, (%r15)
	cmpl	%ebx, %r8d
	jge	.L99
	leaq	8(%rcx,%rsi), %rbp
	movl	8(%rdx,%rsi), %r9d
	movl	0(%rbp), %r8d
	movl	8(%rax,%rsi), %r11d
	imulq	%r8, %r9
	movl	%r11d, %r14d
	imull	$-58728449, %r9d, %r8d
	imulq	$8380417, %r8, %r8
	addq	%r9, %r8
	shrq	$32, %r8
	leal	-8380417(%r8), %r9d
	cmpq	$8380416, %r8
	cmova	%r9d, %r8d
	addl	%r8d, %r14d
	setc	%r9b
	cmpl	$8380416, %r14d
	seta	%r15b
	orl	%r15d, %r9d
	movzbl	%r9b, %r9d
	negl	%r9d
	andl	$-8380417, %r9d
	addl	%r14d, %r9d
	movl	%r9d, 8(%rax,%rsi)
	movl	%r11d, %r9d
	subl	%r8d, %r9d
	cmpl	%r8d, %r11d
	leal	8380417(%r9), %r12d
	cmovb	%r12d, %r9d
	movl	%r9d, 0(%rbp)
.L99:
	addl	$1, %edi
	cmpl	%edi, 36(%rsp)
	jne	.L113
	movq	56(%rsp), %r12
	movapd	%xmm12, %xmm6
.L94:
	movl	%ebx, %edx
	movq	_ZL6g_sink(%rip), %r9
	shrl	$31, %edx
	addl	%ebx, %edx
	sarl	%edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %r8d
	xorl	(%rax), %r8d
	imull	$-58728449, %r8d, %edx
	imulq	$8380417, %rdx, %rdx
	addq	%r8, %rdx
	xorl	%r8d, %r8d
	shrq	$32, %rdx
	cmpq	$8380417, %rdx
	cmove	%r8, %rdx
	xorq	%r9, %rdx
	movq	%rdx, _ZL6g_sink(%rip)
	movl	12(%rax), %edx
	xorl	16(%rcx), %edx
	imull	$-58728449, %edx, %eax
	imulq	$8380417, %rax, %rax
	addq	%rdx, %rax
	movq	_ZL6g_sink(%rip), %rdx
	shrq	$32, %rax
	cmpq	$8380417, %rax
	cmove	%r8, %rax
	xorq	%rdx, %rax
	movq	432(%rsp), %rdx
	movq	%rax, _ZL6g_sink(%rip)
	subq	%rcx, %rdx
	call	_ZdlPvy
	movq	384(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L123
	movq	400(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L123:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	pxor	%xmm7, %xmm7
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm7
	divsd	%xmm11, %xmm7
.LEHB14:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$20, %r8d
	leaq	.LC14(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$20, %r8d
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$29, %r8d
	leaq	.LC18(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$7, %r8d
	leaq	.LC20(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	_ZL6g_sink(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE14:
	movq	352(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L127
	movq	368(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L127:
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L128
	movq	336(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L128:
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L129
	movq	304(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L129:
	movq	256(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L130
	movq	272(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L130:
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L131
	movq	240(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L131:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L132
	movq	208(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L132:
	movq	160(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L133
	movq	176(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L133:
	movq	128(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L134
	movq	144(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L134:
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L135
	movq	112(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L135:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L206
	movq	80(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	nop
.L206:
	movaps	448(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	464(%rsp), %xmm7
	movaps	480(%rsp), %xmm8
	movaps	496(%rsp), %xmm9
	movaps	512(%rsp), %xmm10
	movaps	528(%rsp), %xmm11
	movaps	544(%rsp), %xmm12
	addq	$568, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L285:
	addl	$8380417, %edi
	jmp	.L49
.L284:
	addl	$8380417, %ebp
	jmp	.L48
.L283:
	addl	$8380417, %ebx
	jmp	.L47
.L282:
	movq	8(%rdi), %rcx
	call	atoi
	cmpl	$2, %ebx
	movl	%eax, %esi
	je	.L34
	movq	16(%rdi), %rcx
	call	atoi
	movl	%eax, 36(%rsp)
	jmp	.L34
.L286:
	leal	-8380417(%rbx), %edi
	jmp	.L58
.L289:
	addl	$8380417, %ecx
	jmp	.L64
.L288:
	addl	$8380417, %edx
	jmp	.L65
.L287:
	addl	$8380417, %ebx
	jmp	.L59
.L42:
	salq	$2, %rbx
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L72:
	movl	(%rdx,%rbp), %r10d
	movl	(%rax,%rbp), %edi
	leal	8380417(%r10), %esi
	testl	%r10d, %r10d
	cmovs	%esi, %r10d
	testl	%edi, %edi
	leal	8380417(%rdi), %esi
	cmovs	%esi, %edi
	movl	(%rcx,%rbp), %esi
	leal	8380417(%rsi), %r12d
	testl	%esi, %esi
	cmovs	%r12d, %esi
	imulq	$2365951, %r10, %r12
	imull	$-58728449, %r12d, %r10d
	imulq	$8380417, %r10, %r10
	addq	%r12, %r10
	shrq	$32, %r10
	leal	-8380417(%r10), %r12d
	cmpq	$8380416, %r10
	cmova	%r12d, %r10d
	imulq	$2365951, %rdi, %rdi
	movl	%r10d, (%r8,%rbp)
	imull	$-58728449, %edi, %r10d
	imulq	$8380417, %r10, %r10
	addq	%rdi, %r10
	shrq	$32, %r10
	leal	-8380417(%r10), %edi
	cmpq	$8380416, %r10
	cmova	%edi, %r10d
	imulq	$2365951, %rsi, %rsi
	movl	%r10d, (%r9,%rbp)
	imull	$-58728449, %esi, %r10d
	imulq	$8380417, %r10, %r10
	addq	%rsi, %r10
	shrq	$32, %r10
	leal	-8380417(%r10), %esi
	cmpq	$8380416, %r10
	cmova	%esi, %r10d
	movl	%r10d, (%r11,%rbp)
	addq	$4, %rbp
	cmpq	%rbp, %rbx
	jne	.L72
	jmp	.L45
.L160:
	movl	36(%rsp), %esi
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L120:
	xorl	%r10d, %r10d
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L161:
	addq	$1, %r10
.L119:
	movl	(%rcx,%r10,4), %r8d
	movl	(%rdx,%r10,4), %r9d
	movl	(%rax,%r10,4), %edi
	imulq	%r8, %r9
	movl	%edi, %r13d
	imull	$-58728449, %r9d, %r8d
	imulq	$8380417, %r8, %r8
	addq	%r9, %r8
	shrq	$32, %r8
	leal	-8380417(%r8), %r9d
	cmpq	$8380416, %r8
	cmova	%r9d, %r8d
	addl	%r8d, %r13d
	setc	%r9b
	cmpl	$8380416, %r13d
	seta	%r14b
	orl	%r14d, %r9d
	movzbl	%r9b, %r9d
	negl	%r9d
	andl	$-8380417, %r9d
	addl	%r13d, %r9d
	movl	%r9d, (%rax,%r10,4)
	movl	%edi, %r9d
	subl	%r8d, %r9d
	cmpl	%r8d, %edi
	leal	8380417(%r9), %r13d
	cmovb	%r13d, %r9d
	cmpq	%r10, %rbp
	movl	%r9d, (%rcx,%r10,4)
	jne	.L161
	addl	$1, %r11d
	cmpl	%r11d, %esi
	jne	.L120
	jmp	.L94
.L169:
	movq	%rax, %rbx
.L144:
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L146
	movq	240(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L146:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L148
	movq	208(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L148:
	movq	160(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L150
	movq	176(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L150:
	movq	128(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L152
	movq	144(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L152:
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L154
	movq	112(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L154:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L155
	movq	80(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L155:
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L168:
	movq	%rax, %rbx
	jmp	.L146
.L167:
	movq	%rax, %rbx
	jmp	.L148
.L166:
	movq	%rax, %rbx
	jmp	.L150
.L165:
	movq	%rax, %rbx
	jmp	.L152
.L164:
	movq	%rax, %rbx
	jmp	.L154
.L175:
.L281:
	movq	384(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L93
	movq	400(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L93:
	movq	352(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L138
	movq	368(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L138:
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L140
	movq	336(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L140:
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L142
	movq	304(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L142:
	movq	256(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L144
	movq	272(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	jmp	.L144
.L174:
	jmp	.L281
.L173:
	movq	%rax, %rbx
	jmp	.L93
.L172:
	movq	%rax, %rbx
	jmp	.L138
.L171:
	movq	%rax, %rbx
	jmp	.L140
.L170:
	movq	%rax, %rbx
	jmp	.L142
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3242:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3242-.LLSDACSB3242
.LLSDACSB3242:
	.uleb128 .LEHB0-.LFB3242
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3242
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L164-.LFB3242
	.uleb128 0
	.uleb128 .LEHB2-.LFB3242
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L165-.LFB3242
	.uleb128 0
	.uleb128 .LEHB3-.LFB3242
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L166-.LFB3242
	.uleb128 0
	.uleb128 .LEHB4-.LFB3242
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L167-.LFB3242
	.uleb128 0
	.uleb128 .LEHB5-.LFB3242
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L168-.LFB3242
	.uleb128 0
	.uleb128 .LEHB6-.LFB3242
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L169-.LFB3242
	.uleb128 0
	.uleb128 .LEHB7-.LFB3242
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L170-.LFB3242
	.uleb128 0
	.uleb128 .LEHB8-.LFB3242
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L171-.LFB3242
	.uleb128 0
	.uleb128 .LEHB9-.LFB3242
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L172-.LFB3242
	.uleb128 0
	.uleb128 .LEHB10-.LFB3242
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L173-.LFB3242
	.uleb128 0
	.uleb128 .LEHB11-.LFB3242
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L174-.LFB3242
	.uleb128 0
	.uleb128 .LEHB12-.LFB3242
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L173-.LFB3242
	.uleb128 0
	.uleb128 .LEHB13-.LFB3242
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L175-.LFB3242
	.uleb128 0
	.uleb128 .LEHB14-.LFB3242
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L173-.LFB3242
	.uleb128 0
	.uleb128 .LEHB15-.LFB3242
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3242:
	.section	.text.startup,"x"
	.seh_endproc
.lcomm _ZL6g_sink,8,8
	.section .rdata,"dr"
	.align 16
.LC7:
	.long	8380417
	.long	8380417
	.long	8380417
	.long	8380417
	.align 16
.LC8:
	.long	2365951
	.long	2365951
	.long	2365951
	.long	2365951
	.align 16
.LC9:
	.long	8380416
	.long	8380416
	.long	8380416
	.long	8380416
	.align 16
.LC10:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 16
.LC11:
	.long	-8380417
	.long	-8380417
	.long	-8380417
	.long	-8380417
	.align 8
.LC12:
	.long	0
	.long	1104006501
	.align 16
.LC22:
	.long	-2139103232
	.long	-2139103232
	.long	-2139103232
	.long	-2139103232
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
