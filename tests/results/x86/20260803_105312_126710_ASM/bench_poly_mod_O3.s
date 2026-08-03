	.file	"bench_poly_mod.cpp"
	.text
	.p2align 4
	.globl	classic_poly_const_1000003
	.def	classic_poly_const_1000003;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_poly_const_1000003
classic_poly_const_1000003:
.LFB14985:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testq	%r9, %r9
	movq	%rdx, %r10
	je	.L33
	leaq	-1(%r9), %rdx
	cmpq	$2, %rdx
	jbe	.L12
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L12
	movq	%r8, %rax
	subq	%r10, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L12
	cmpq	$6, %rdx
	jbe	.L13
	movl	$-2043174237, %edx
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%edx, %xmm3
	movl	$1000003, %edx
	shrq	$3, %r11
	vmovd	%edx, %xmm4
	salq	$5, %r11
	vpbroadcastd	%xmm3, %ymm3
	vpbroadcastd	%xmm4, %ymm4
	.p2align 4,,10
	.p2align 3
.L5:
	vmovdqu	(%r10,%rax), %ymm1
	vpaddd	(%rcx,%rax), %ymm1, %ymm1
	vpmuldq	%ymm3, %ymm1, %ymm2
	vpsrlq	$32, %ymm1, %ymm0
	vpmuldq	%ymm3, %ymm0, %ymm0
	vpshufd	$245, %ymm2, %ymm2
	vpblendd	$85, %ymm2, %ymm0, %ymm0
	vpsrad	$31, %ymm1, %ymm2
	vpaddd	%ymm1, %ymm0, %ymm0
	vpsrad	$19, %ymm0, %ymm0
	vpsubd	%ymm2, %ymm0, %ymm0
	vpmulld	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax)
	addq	$32, %rax
	cmpq	%rax, %r11
	jne	.L5
	testb	$7, %r9b
	je	.L31
	movq	%r9, %rdx
	movq	%r9, %rax
	andl	$7, %edx
	andq	$-8, %rax
	leaq	-1(%rdx), %r11
	cmpq	$2, %r11
	jbe	.L35
	vzeroupper
.L4:
	movl	$-2043174237, %ebx
	vmovdqu	(%r10,%rax,4), %xmm1
	vpaddd	(%rcx,%rax,4), %xmm1, %xmm1
	testb	$3, %dl
	vmovd	%ebx, %xmm2
	movl	$1000003, %ebx
	vpbroadcastd	%xmm2, %xmm2
	vpsrlq	$32, %xmm1, %xmm0
	vpmuldq	%xmm2, %xmm1, %xmm3
	vpmuldq	%xmm2, %xmm0, %xmm0
	vpshufd	$245, %xmm3, %xmm2
	vpblendd	$5, %xmm2, %xmm0, %xmm0
	vpsrad	$31, %xmm1, %xmm2
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrad	$19, %xmm0, %xmm0
	vpsubd	%xmm2, %xmm0, %xmm0
	vmovd	%ebx, %xmm2
	vpbroadcastd	%xmm2, %xmm2
	vpmulld	%xmm2, %xmm0, %xmm0
	vpsubd	%xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, (%r8,%rax,4)
	je	.L10
	andq	$-4, %rdx
	addq	%rdx, %rax
.L7:
	movl	(%r10,%rax,4), %r11d
	addl	(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$-2043174237, %rdx, %rdx
	sarl	$31, %ebx
	shrq	$32, %rdx
	addl	%r11d, %edx
	sarl	$19, %edx
	subl	%ebx, %edx
	imull	$1000003, %edx, %edx
	subl	%edx, %r11d
	leaq	1(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, (%r8,%rax,4)
	jnb	.L10
	movl	4(%r10,%rax,4), %r11d
	addl	4(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$-2043174237, %rdx, %rdx
	sarl	$31, %ebx
	shrq	$32, %rdx
	addl	%r11d, %edx
	sarl	$19, %edx
	subl	%ebx, %edx
	imull	$1000003, %edx, %edx
	subl	%edx, %r11d
	leaq	2(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, 4(%r8,%rax,4)
	jnb	.L10
	movl	8(%r10,%rax,4), %edx
	addl	8(%rcx,%rax,4), %edx
	movl	%edx, %ecx
	movslq	%edx, %rdx
	imulq	$-2043174237, %rdx, %rdx
	movl	%ecx, %r9d
	sarl	$31, %r9d
	shrq	$32, %rdx
	addl	%ecx, %edx
	sarl	$19, %edx
	subl	%r9d, %edx
	imull	$1000003, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, 8(%r8,%rax,4)
.L10:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L33:
	popq	%rbx
	ret
.L35:
	vzeroupper
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L12:
	xorl	%r11d, %r11d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L9:
	movl	(%r10,%r11,4), %edx
	addl	(%rcx,%r11,4), %edx
	movslq	%edx, %rax
	movl	%edx, %ebx
	imulq	$-2043174237, %rax, %rax
	sarl	$31, %ebx
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$19, %eax
	subl	%ebx, %eax
	imull	$1000003, %eax, %eax
	subl	%eax, %edx
	movl	%edx, (%r8,%r11,4)
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L9
	jmp	.L10
.L31:
	vzeroupper
	jmp	.L10
.L13:
	movq	%r9, %rdx
	xorl	%eax, %eax
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	reist_poly_const_1000003
	.def	reist_poly_const_1000003;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_poly_const_1000003
reist_poly_const_1000003:
.LFB14986:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovups	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	vmovups	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	testq	%r9, %r9
	je	.L78
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L56
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L56
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L56
	cmpq	$6, %r10
	jbe	.L57
	movl	$500001, %r10d
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%r10d, %xmm8
	movl	$-1000003, %r10d
	shrq	$3, %r11
	vmovd	%r10d, %xmm7
	movl	$-500001, %r10d
	salq	$5, %r11
	vpbroadcastd	%xmm8, %ymm8
	vmovd	%r10d, %xmm6
	movl	$1000003, %r10d
	vpbroadcastd	%xmm7, %ymm7
	vmovd	%r10d, %xmm5
	vpbroadcastd	%xmm6, %ymm6
	vpbroadcastd	%xmm5, %ymm5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L40:
	vmovdqu	(%rdx,%rax), %ymm0
	vpaddd	(%rcx,%rax), %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm6, %ymm4
	vpcmpgtd	%ymm8, %ymm0, %ymm2
	vpaddd	%ymm5, %ymm0, %ymm3
	vpaddd	%ymm7, %ymm0, %ymm1
	vpblendvb	%ymm4, %ymm3, %ymm0, %ymm0
	vpblendvb	%ymm2, %ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L40
	testb	$7, %r9b
	je	.L76
	movq	%r9, %r10
	movq	%r9, %rax
	andl	$7, %r10d
	andq	$-8, %rax
	leaq	-1(%r10), %r11
	cmpq	$2, %r11
	jbe	.L79
	vzeroupper
.L39:
	movl	$500001, %r11d
	vmovdqu	(%rdx,%rax,4), %xmm0
	vpaddd	(%rcx,%rax,4), %xmm0, %xmm0
	testb	$3, %r10b
	vmovd	%r11d, %xmm2
	movl	$-1000003, %r11d
	vmovd	%r11d, %xmm1
	movl	$-500001, %r11d
	vpbroadcastd	%xmm2, %xmm2
	vmovd	%r11d, %xmm4
	movl	$1000003, %r11d
	vpbroadcastd	%xmm1, %xmm1
	vpbroadcastd	%xmm4, %xmm4
	vmovd	%r11d, %xmm3
	vpaddd	%xmm1, %xmm0, %xmm1
	vpcmpgtd	%xmm0, %xmm4, %xmm4
	vpcmpgtd	%xmm2, %xmm0, %xmm2
	vpbroadcastd	%xmm3, %xmm3
	vpaddd	%xmm3, %xmm0, %xmm3
	vpblendvb	%xmm4, %xmm3, %xmm0, %xmm0
	vpblendvb	%xmm2, %xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8,%rax,4)
	je	.L54
	andq	$-4, %r10
	addq	%r10, %rax
.L42:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	leaq	0(,%rax,4), %r11
	cmpl	$500001, %r10d
	jle	.L44
	subl	$1000003, %r10d
.L45:
	movl	%r10d, (%r8,%r11)
	leaq	1(%rax), %r10
	cmpq	%r9, %r10
	jnb	.L54
	movl	4(%rdx,%r11), %r10d
	addl	4(%rcx,%r11), %r10d
	cmpl	$500001, %r10d
	jle	.L46
	subl	$1000003, %r10d
.L47:
	addq	$2, %rax
	movl	%r10d, 4(%r8,%r11)
	cmpq	%r9, %rax
	jnb	.L54
	movl	8(%rdx,%r11), %eax
	addl	8(%rcx,%r11), %eax
	cmpl	$500001, %eax
	jg	.L48
	leal	1000003(%rax), %edx
	cmpl	$-500001, %eax
	cmovl	%edx, %eax
.L50:
	movl	%eax, 8(%r8,%r11)
.L54:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L78:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	vmovups	32(%rsp), %xmm8
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	leal	1000003(%r10), %ebx
	cmpl	$-500001, %r10d
	cmovl	%ebx, %r10d
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	leal	1000003(%r10), %ebx
	cmpl	$-500001, %r10d
	cmovl	%ebx, %r10d
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L48:
	subl	$1000003, %eax
	jmp	.L50
.L79:
	vzeroupper
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L56:
	xorl	%r10d, %r10d
	jmp	.L53
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L80:
	subl	$1000003, %eax
.L52:
	movl	%eax, (%r8,%r10,4)
	addq	$1, %r10
	cmpq	%r10, %r9
	je	.L54
.L53:
	movl	(%rdx,%r10,4), %eax
	addl	(%rcx,%r10,4), %eax
	cmpl	$500001, %eax
	jg	.L80
	leal	1000003(%rax), %r11d
	cmpl	$-500001, %eax
	cmovl	%r11d, %eax
	jmp	.L52
.L76:
	vzeroupper
	jmp	.L54
.L57:
	movq	%r9, %r10
	xorl	%eax, %eax
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	classic_poly_const_10000019
	.def	classic_poly_const_10000019;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_poly_const_10000019
classic_poly_const_10000019:
.LFB14987:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testq	%r9, %r9
	movq	%rdx, %r10
	je	.L113
	leaq	-1(%r9), %rdx
	cmpq	$2, %rdx
	jbe	.L92
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L92
	movq	%r8, %rax
	subq	%r10, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L92
	cmpq	$6, %rdx
	jbe	.L93
	movl	$1801436429, %edx
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%edx, %xmm3
	movl	$10000019, %edx
	shrq	$3, %r11
	vmovd	%edx, %xmm4
	salq	$5, %r11
	vpbroadcastd	%xmm3, %ymm3
	vpbroadcastd	%xmm4, %ymm4
	.p2align 4,,10
	.p2align 3
.L85:
	vmovdqu	(%r10,%rax), %ymm1
	vpaddd	(%rcx,%rax), %ymm1, %ymm1
	vpmuldq	%ymm3, %ymm1, %ymm2
	vpsrlq	$32, %ymm1, %ymm0
	vpmuldq	%ymm3, %ymm0, %ymm0
	vpshufd	$245, %ymm2, %ymm2
	vpblendd	$85, %ymm2, %ymm0, %ymm0
	vpsrad	$31, %ymm1, %ymm2
	vpsrad	$22, %ymm0, %ymm0
	vpsubd	%ymm2, %ymm0, %ymm0
	vpmulld	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax)
	addq	$32, %rax
	cmpq	%rax, %r11
	jne	.L85
	testb	$7, %r9b
	je	.L111
	movq	%r9, %rdx
	movq	%r9, %rax
	andl	$7, %edx
	andq	$-8, %rax
	leaq	-1(%rdx), %r11
	cmpq	$2, %r11
	jbe	.L114
	vzeroupper
.L84:
	movl	$1801436429, %ebx
	vmovdqu	(%r10,%rax,4), %xmm1
	vpaddd	(%rcx,%rax,4), %xmm1, %xmm1
	testb	$3, %dl
	vmovd	%ebx, %xmm2
	movl	$10000019, %ebx
	vpbroadcastd	%xmm2, %xmm2
	vpsrlq	$32, %xmm1, %xmm0
	vpmuldq	%xmm2, %xmm1, %xmm3
	vpmuldq	%xmm2, %xmm0, %xmm0
	vpshufd	$245, %xmm3, %xmm2
	vpblendd	$5, %xmm2, %xmm0, %xmm0
	vpsrad	$31, %xmm1, %xmm2
	vpsrad	$22, %xmm0, %xmm0
	vpsubd	%xmm2, %xmm0, %xmm0
	vmovd	%ebx, %xmm2
	vpbroadcastd	%xmm2, %xmm2
	vpmulld	%xmm2, %xmm0, %xmm0
	vpsubd	%xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, (%r8,%rax,4)
	je	.L90
	andq	$-4, %rdx
	addq	%rdx, %rax
.L87:
	movl	(%r10,%rax,4), %r11d
	addl	(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$1801436429, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$54, %rdx
	subl	%ebx, %edx
	imull	$10000019, %edx, %edx
	subl	%edx, %r11d
	leaq	1(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, (%r8,%rax,4)
	jnb	.L90
	movl	4(%r10,%rax,4), %r11d
	addl	4(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$1801436429, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$54, %rdx
	subl	%ebx, %edx
	imull	$10000019, %edx, %edx
	subl	%edx, %r11d
	leaq	2(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, 4(%r8,%rax,4)
	jnb	.L90
	movl	8(%r10,%rax,4), %edx
	addl	8(%rcx,%rax,4), %edx
	movl	%edx, %ecx
	movslq	%edx, %rdx
	imulq	$1801436429, %rdx, %rdx
	movl	%ecx, %r9d
	sarl	$31, %r9d
	sarq	$54, %rdx
	subl	%r9d, %edx
	imull	$10000019, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, 8(%r8,%rax,4)
.L90:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L113:
	popq	%rbx
	ret
.L114:
	vzeroupper
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L92:
	xorl	%r11d, %r11d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L89:
	movl	(%r10,%r11,4), %edx
	addl	(%rcx,%r11,4), %edx
	movslq	%edx, %rax
	movl	%edx, %ebx
	imulq	$1801436429, %rax, %rax
	sarl	$31, %ebx
	sarq	$54, %rax
	subl	%ebx, %eax
	imull	$10000019, %eax, %eax
	subl	%eax, %edx
	movl	%edx, (%r8,%r11,4)
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L89
	jmp	.L90
.L111:
	vzeroupper
	jmp	.L90
.L93:
	movq	%r9, %rdx
	xorl	%eax, %eax
	jmp	.L84
	.seh_endproc
	.p2align 4
	.globl	reist_poly_const_10000019
	.def	reist_poly_const_10000019;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_poly_const_10000019
reist_poly_const_10000019:
.LFB14988:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovups	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	vmovups	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	testq	%r9, %r9
	je	.L157
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L135
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L135
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L135
	cmpq	$6, %r10
	jbe	.L136
	movl	$5000009, %r10d
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%r10d, %xmm8
	movl	$-10000019, %r10d
	shrq	$3, %r11
	vmovd	%r10d, %xmm7
	movl	$-5000009, %r10d
	salq	$5, %r11
	vpbroadcastd	%xmm8, %ymm8
	vmovd	%r10d, %xmm6
	movl	$10000019, %r10d
	vpbroadcastd	%xmm7, %ymm7
	vmovd	%r10d, %xmm5
	vpbroadcastd	%xmm6, %ymm6
	vpbroadcastd	%xmm5, %ymm5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L119:
	vmovdqu	(%rdx,%rax), %ymm0
	vpaddd	(%rcx,%rax), %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm6, %ymm4
	vpcmpgtd	%ymm8, %ymm0, %ymm2
	vpaddd	%ymm5, %ymm0, %ymm3
	vpaddd	%ymm7, %ymm0, %ymm1
	vpblendvb	%ymm4, %ymm3, %ymm0, %ymm0
	vpblendvb	%ymm2, %ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L119
	testb	$7, %r9b
	je	.L155
	movq	%r9, %r10
	movq	%r9, %rax
	andl	$7, %r10d
	andq	$-8, %rax
	leaq	-1(%r10), %r11
	cmpq	$2, %r11
	jbe	.L158
	vzeroupper
.L118:
	movl	$5000009, %r11d
	vmovdqu	(%rdx,%rax,4), %xmm0
	vpaddd	(%rcx,%rax,4), %xmm0, %xmm0
	testb	$3, %r10b
	vmovd	%r11d, %xmm2
	movl	$-10000019, %r11d
	vmovd	%r11d, %xmm1
	movl	$-5000009, %r11d
	vpbroadcastd	%xmm2, %xmm2
	vmovd	%r11d, %xmm4
	movl	$10000019, %r11d
	vpbroadcastd	%xmm1, %xmm1
	vpbroadcastd	%xmm4, %xmm4
	vmovd	%r11d, %xmm3
	vpaddd	%xmm1, %xmm0, %xmm1
	vpcmpgtd	%xmm0, %xmm4, %xmm4
	vpcmpgtd	%xmm2, %xmm0, %xmm2
	vpbroadcastd	%xmm3, %xmm3
	vpaddd	%xmm3, %xmm0, %xmm3
	vpblendvb	%xmm4, %xmm3, %xmm0, %xmm0
	vpblendvb	%xmm2, %xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8,%rax,4)
	je	.L133
	andq	$-4, %r10
	addq	%r10, %rax
.L121:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	leaq	0(,%rax,4), %r11
	cmpl	$5000009, %r10d
	jle	.L123
	subl	$10000019, %r10d
.L124:
	movl	%r10d, (%r8,%r11)
	leaq	1(%rax), %r10
	cmpq	%r9, %r10
	jnb	.L133
	movl	4(%rdx,%r11), %r10d
	addl	4(%rcx,%r11), %r10d
	cmpl	$5000009, %r10d
	jle	.L125
	subl	$10000019, %r10d
.L126:
	addq	$2, %rax
	movl	%r10d, 4(%r8,%r11)
	cmpq	%r9, %rax
	jnb	.L133
	movl	8(%rdx,%r11), %eax
	addl	8(%rcx,%r11), %eax
	cmpl	$5000009, %eax
	jg	.L127
	leal	10000019(%rax), %edx
	cmpl	$-5000009, %eax
	cmovl	%edx, %eax
.L129:
	movl	%eax, 8(%r8,%r11)
.L133:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L157:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	vmovups	32(%rsp), %xmm8
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	leal	10000019(%r10), %ebx
	cmpl	$-5000009, %r10d
	cmovl	%ebx, %r10d
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L125:
	leal	10000019(%r10), %ebx
	cmpl	$-5000009, %r10d
	cmovl	%ebx, %r10d
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L127:
	subl	$10000019, %eax
	jmp	.L129
.L158:
	vzeroupper
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L135:
	xorl	%r10d, %r10d
	jmp	.L132
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L159:
	subl	$10000019, %eax
.L131:
	movl	%eax, (%r8,%r10,4)
	addq	$1, %r10
	cmpq	%r10, %r9
	je	.L133
.L132:
	movl	(%rdx,%r10,4), %eax
	addl	(%rcx,%r10,4), %eax
	cmpl	$5000009, %eax
	jg	.L159
	leal	10000019(%rax), %r11d
	cmpl	$-5000009, %eax
	cmovl	%r11d, %eax
	jmp	.L131
.L155:
	vzeroupper
	jmp	.L133
.L136:
	movq	%r9, %r10
	xorl	%eax, %eax
	jmp	.L118
	.seh_endproc
	.p2align 4
	.globl	classic_poly_const_100000007
	.def	classic_poly_const_100000007;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_poly_const_100000007
classic_poly_const_100000007:
.LFB14989:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testq	%r9, %r9
	movq	%rdx, %r10
	je	.L192
	leaq	-1(%r9), %rdx
	cmpq	$2, %rdx
	jbe	.L171
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L171
	movq	%r8, %rax
	subq	%r10, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L171
	cmpq	$6, %rdx
	jbe	.L172
	movl	$360287945, %edx
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%edx, %xmm3
	movl	$100000007, %edx
	shrq	$3, %r11
	vmovd	%edx, %xmm4
	salq	$5, %r11
	vpbroadcastd	%xmm3, %ymm3
	vpbroadcastd	%xmm4, %ymm4
	.p2align 4,,10
	.p2align 3
.L164:
	vmovdqu	(%r10,%rax), %ymm1
	vpaddd	(%rcx,%rax), %ymm1, %ymm1
	vpmuldq	%ymm3, %ymm1, %ymm2
	vpsrlq	$32, %ymm1, %ymm0
	vpmuldq	%ymm3, %ymm0, %ymm0
	vpshufd	$245, %ymm2, %ymm2
	vpblendd	$85, %ymm2, %ymm0, %ymm0
	vpsrad	$31, %ymm1, %ymm2
	vpsrad	$23, %ymm0, %ymm0
	vpsubd	%ymm2, %ymm0, %ymm0
	vpmulld	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax)
	addq	$32, %rax
	cmpq	%rax, %r11
	jne	.L164
	testb	$7, %r9b
	je	.L190
	movq	%r9, %rdx
	movq	%r9, %rax
	andl	$7, %edx
	andq	$-8, %rax
	leaq	-1(%rdx), %r11
	cmpq	$2, %r11
	jbe	.L193
	vzeroupper
.L163:
	movl	$360287945, %ebx
	vmovdqu	(%r10,%rax,4), %xmm1
	vpaddd	(%rcx,%rax,4), %xmm1, %xmm1
	testb	$3, %dl
	vmovd	%ebx, %xmm2
	movl	$100000007, %ebx
	vpbroadcastd	%xmm2, %xmm2
	vpsrlq	$32, %xmm1, %xmm0
	vpmuldq	%xmm2, %xmm1, %xmm3
	vpmuldq	%xmm2, %xmm0, %xmm0
	vpshufd	$245, %xmm3, %xmm2
	vpblendd	$5, %xmm2, %xmm0, %xmm0
	vpsrad	$31, %xmm1, %xmm2
	vpsrad	$23, %xmm0, %xmm0
	vpsubd	%xmm2, %xmm0, %xmm0
	vmovd	%ebx, %xmm2
	vpbroadcastd	%xmm2, %xmm2
	vpmulld	%xmm2, %xmm0, %xmm0
	vpsubd	%xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, (%r8,%rax,4)
	je	.L169
	andq	$-4, %rdx
	addq	%rdx, %rax
.L166:
	movl	(%r10,%rax,4), %r11d
	addl	(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$360287945, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$55, %rdx
	subl	%ebx, %edx
	imull	$100000007, %edx, %edx
	subl	%edx, %r11d
	leaq	1(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, (%r8,%rax,4)
	jnb	.L169
	movl	4(%r10,%rax,4), %r11d
	addl	4(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$360287945, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$55, %rdx
	subl	%ebx, %edx
	imull	$100000007, %edx, %edx
	subl	%edx, %r11d
	leaq	2(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, 4(%r8,%rax,4)
	jnb	.L169
	movl	8(%r10,%rax,4), %edx
	addl	8(%rcx,%rax,4), %edx
	movl	%edx, %ecx
	movslq	%edx, %rdx
	imulq	$360287945, %rdx, %rdx
	movl	%ecx, %r9d
	sarl	$31, %r9d
	sarq	$55, %rdx
	subl	%r9d, %edx
	imull	$100000007, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, 8(%r8,%rax,4)
.L169:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L192:
	popq	%rbx
	ret
.L193:
	vzeroupper
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L171:
	xorl	%r11d, %r11d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L168:
	movl	(%r10,%r11,4), %edx
	addl	(%rcx,%r11,4), %edx
	movslq	%edx, %rax
	movl	%edx, %ebx
	imulq	$360287945, %rax, %rax
	sarl	$31, %ebx
	sarq	$55, %rax
	subl	%ebx, %eax
	imull	$100000007, %eax, %eax
	subl	%eax, %edx
	movl	%edx, (%r8,%r11,4)
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L168
	jmp	.L169
.L190:
	vzeroupper
	jmp	.L169
.L172:
	movq	%r9, %rdx
	xorl	%eax, %eax
	jmp	.L163
	.seh_endproc
	.p2align 4
	.globl	reist_poly_const_100000007
	.def	reist_poly_const_100000007;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_poly_const_100000007
reist_poly_const_100000007:
.LFB14990:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovups	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	vmovups	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	testq	%r9, %r9
	je	.L236
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L214
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L214
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L214
	cmpq	$6, %r10
	jbe	.L215
	movl	$50000003, %r10d
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%r10d, %xmm8
	movl	$-100000007, %r10d
	shrq	$3, %r11
	vmovd	%r10d, %xmm7
	movl	$-50000003, %r10d
	salq	$5, %r11
	vpbroadcastd	%xmm8, %ymm8
	vmovd	%r10d, %xmm6
	movl	$100000007, %r10d
	vpbroadcastd	%xmm7, %ymm7
	vmovd	%r10d, %xmm5
	vpbroadcastd	%xmm6, %ymm6
	vpbroadcastd	%xmm5, %ymm5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L198:
	vmovdqu	(%rdx,%rax), %ymm0
	vpaddd	(%rcx,%rax), %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm6, %ymm4
	vpcmpgtd	%ymm8, %ymm0, %ymm2
	vpaddd	%ymm5, %ymm0, %ymm3
	vpaddd	%ymm7, %ymm0, %ymm1
	vpblendvb	%ymm4, %ymm3, %ymm0, %ymm0
	vpblendvb	%ymm2, %ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L198
	testb	$7, %r9b
	je	.L234
	movq	%r9, %r10
	movq	%r9, %rax
	andl	$7, %r10d
	andq	$-8, %rax
	leaq	-1(%r10), %r11
	cmpq	$2, %r11
	jbe	.L237
	vzeroupper
.L197:
	movl	$50000003, %r11d
	vmovdqu	(%rdx,%rax,4), %xmm0
	vpaddd	(%rcx,%rax,4), %xmm0, %xmm0
	testb	$3, %r10b
	vmovd	%r11d, %xmm2
	movl	$-100000007, %r11d
	vmovd	%r11d, %xmm1
	movl	$-50000003, %r11d
	vpbroadcastd	%xmm2, %xmm2
	vmovd	%r11d, %xmm4
	movl	$100000007, %r11d
	vpbroadcastd	%xmm1, %xmm1
	vpbroadcastd	%xmm4, %xmm4
	vmovd	%r11d, %xmm3
	vpaddd	%xmm1, %xmm0, %xmm1
	vpcmpgtd	%xmm0, %xmm4, %xmm4
	vpcmpgtd	%xmm2, %xmm0, %xmm2
	vpbroadcastd	%xmm3, %xmm3
	vpaddd	%xmm3, %xmm0, %xmm3
	vpblendvb	%xmm4, %xmm3, %xmm0, %xmm0
	vpblendvb	%xmm2, %xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8,%rax,4)
	je	.L212
	andq	$-4, %r10
	addq	%r10, %rax
.L200:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	leaq	0(,%rax,4), %r11
	cmpl	$50000003, %r10d
	jle	.L202
	subl	$100000007, %r10d
.L203:
	movl	%r10d, (%r8,%r11)
	leaq	1(%rax), %r10
	cmpq	%r9, %r10
	jnb	.L212
	movl	4(%rdx,%r11), %r10d
	addl	4(%rcx,%r11), %r10d
	cmpl	$50000003, %r10d
	jle	.L204
	subl	$100000007, %r10d
.L205:
	addq	$2, %rax
	movl	%r10d, 4(%r8,%r11)
	cmpq	%r9, %rax
	jnb	.L212
	movl	8(%rdx,%r11), %eax
	addl	8(%rcx,%r11), %eax
	cmpl	$50000003, %eax
	jg	.L206
	leal	100000007(%rax), %edx
	cmpl	$-50000003, %eax
	cmovl	%edx, %eax
.L208:
	movl	%eax, 8(%r8,%r11)
.L212:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L236:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	vmovups	32(%rsp), %xmm8
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L202:
	leal	100000007(%r10), %ebx
	cmpl	$-50000003, %r10d
	cmovl	%ebx, %r10d
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L204:
	leal	100000007(%r10), %ebx
	cmpl	$-50000003, %r10d
	cmovl	%ebx, %r10d
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L206:
	subl	$100000007, %eax
	jmp	.L208
.L237:
	vzeroupper
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L214:
	xorl	%r10d, %r10d
	jmp	.L211
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L238:
	subl	$100000007, %eax
.L210:
	movl	%eax, (%r8,%r10,4)
	addq	$1, %r10
	cmpq	%r10, %r9
	je	.L212
.L211:
	movl	(%rdx,%r10,4), %eax
	addl	(%rcx,%r10,4), %eax
	cmpl	$50000003, %eax
	jg	.L238
	leal	100000007(%rax), %r11d
	cmpl	$-50000003, %eax
	cmovl	%r11d, %eax
	jmp	.L210
.L234:
	vzeroupper
	jmp	.L212
.L215:
	movq	%r9, %r10
	xorl	%eax, %eax
	jmp	.L197
	.seh_endproc
	.p2align 4
	.globl	classic_poly_const_1000000007
	.def	classic_poly_const_1000000007;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_poly_const_1000000007
classic_poly_const_1000000007:
.LFB14991:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testq	%r9, %r9
	movq	%rdx, %r10
	je	.L271
	leaq	-1(%r9), %rdx
	cmpq	$2, %rdx
	jbe	.L250
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L250
	movq	%r8, %rax
	subq	%r10, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L250
	cmpq	$6, %rdx
	jbe	.L251
	movl	$1152921497, %edx
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%edx, %xmm3
	movl	$1000000007, %edx
	shrq	$3, %r11
	vmovd	%edx, %xmm4
	salq	$5, %r11
	vpbroadcastd	%xmm3, %ymm3
	vpbroadcastd	%xmm4, %ymm4
	.p2align 4,,10
	.p2align 3
.L243:
	vmovdqu	(%r10,%rax), %ymm1
	vpaddd	(%rcx,%rax), %ymm1, %ymm1
	vpmuldq	%ymm3, %ymm1, %ymm2
	vpsrlq	$32, %ymm1, %ymm0
	vpmuldq	%ymm3, %ymm0, %ymm0
	vpshufd	$245, %ymm2, %ymm2
	vpblendd	$85, %ymm2, %ymm0, %ymm0
	vpsrad	$31, %ymm1, %ymm2
	vpsrad	$28, %ymm0, %ymm0
	vpsubd	%ymm2, %ymm0, %ymm0
	vpmulld	%ymm4, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax)
	addq	$32, %rax
	cmpq	%rax, %r11
	jne	.L243
	testb	$7, %r9b
	je	.L269
	movq	%r9, %rdx
	movq	%r9, %rax
	andl	$7, %edx
	andq	$-8, %rax
	leaq	-1(%rdx), %r11
	cmpq	$2, %r11
	jbe	.L272
	vzeroupper
.L242:
	movl	$1152921497, %ebx
	vmovdqu	(%r10,%rax,4), %xmm1
	vpaddd	(%rcx,%rax,4), %xmm1, %xmm1
	testb	$3, %dl
	vmovd	%ebx, %xmm2
	movl	$1000000007, %ebx
	vpbroadcastd	%xmm2, %xmm2
	vpsrlq	$32, %xmm1, %xmm0
	vpmuldq	%xmm2, %xmm1, %xmm3
	vpmuldq	%xmm2, %xmm0, %xmm0
	vpshufd	$245, %xmm3, %xmm2
	vpblendd	$5, %xmm2, %xmm0, %xmm0
	vpsrad	$31, %xmm1, %xmm2
	vpsrad	$28, %xmm0, %xmm0
	vpsubd	%xmm2, %xmm0, %xmm0
	vmovd	%ebx, %xmm2
	vpbroadcastd	%xmm2, %xmm2
	vpmulld	%xmm2, %xmm0, %xmm0
	vpsubd	%xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, (%r8,%rax,4)
	je	.L248
	andq	$-4, %rdx
	addq	%rdx, %rax
.L245:
	movl	(%r10,%rax,4), %r11d
	addl	(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$1152921497, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$60, %rdx
	subl	%ebx, %edx
	imull	$1000000007, %edx, %edx
	subl	%edx, %r11d
	leaq	1(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, (%r8,%rax,4)
	jnb	.L248
	movl	4(%r10,%rax,4), %r11d
	addl	4(%rcx,%rax,4), %r11d
	movslq	%r11d, %rdx
	movl	%r11d, %ebx
	imulq	$1152921497, %rdx, %rdx
	sarl	$31, %ebx
	sarq	$60, %rdx
	subl	%ebx, %edx
	imull	$1000000007, %edx, %edx
	subl	%edx, %r11d
	leaq	2(%rax), %rdx
	cmpq	%r9, %rdx
	movl	%r11d, 4(%r8,%rax,4)
	jnb	.L248
	movl	8(%r10,%rax,4), %edx
	addl	8(%rcx,%rax,4), %edx
	movl	%edx, %ecx
	movslq	%edx, %rdx
	imulq	$1152921497, %rdx, %rdx
	movl	%ecx, %r9d
	sarl	$31, %r9d
	sarq	$60, %rdx
	subl	%r9d, %edx
	imull	$1000000007, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, 8(%r8,%rax,4)
.L248:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L271:
	popq	%rbx
	ret
.L272:
	vzeroupper
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L250:
	xorl	%r11d, %r11d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L247:
	movl	(%r10,%r11,4), %edx
	addl	(%rcx,%r11,4), %edx
	movslq	%edx, %rax
	movl	%edx, %ebx
	imulq	$1152921497, %rax, %rax
	sarl	$31, %ebx
	sarq	$60, %rax
	subl	%ebx, %eax
	imull	$1000000007, %eax, %eax
	subl	%eax, %edx
	movl	%edx, (%r8,%r11,4)
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L247
	jmp	.L248
.L269:
	vzeroupper
	jmp	.L248
.L251:
	movq	%r9, %rdx
	xorl	%eax, %eax
	jmp	.L242
	.seh_endproc
	.p2align 4
	.globl	reist_poly_const_1000000007
	.def	reist_poly_const_1000000007;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_poly_const_1000000007
reist_poly_const_1000000007:
.LFB14992:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovups	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	vmovups	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	testq	%r9, %r9
	je	.L315
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L293
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L293
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L293
	cmpq	$6, %r10
	jbe	.L294
	movl	$500000003, %r10d
	movq	%r9, %r11
	xorl	%eax, %eax
	vmovd	%r10d, %xmm8
	movl	$-1000000007, %r10d
	shrq	$3, %r11
	vmovd	%r10d, %xmm7
	movl	$-500000003, %r10d
	salq	$5, %r11
	vpbroadcastd	%xmm8, %ymm8
	vmovd	%r10d, %xmm6
	movl	$1000000007, %r10d
	vpbroadcastd	%xmm7, %ymm7
	vmovd	%r10d, %xmm5
	vpbroadcastd	%xmm6, %ymm6
	vpbroadcastd	%xmm5, %ymm5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L277:
	vmovdqu	(%rdx,%rax), %ymm0
	vpaddd	(%rcx,%rax), %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm6, %ymm4
	vpcmpgtd	%ymm8, %ymm0, %ymm2
	vpaddd	%ymm5, %ymm0, %ymm3
	vpaddd	%ymm7, %ymm0, %ymm1
	vpblendvb	%ymm4, %ymm3, %ymm0, %ymm0
	vpblendvb	%ymm2, %ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L277
	testb	$7, %r9b
	je	.L313
	movq	%r9, %r10
	movq	%r9, %rax
	andl	$7, %r10d
	andq	$-8, %rax
	leaq	-1(%r10), %r11
	cmpq	$2, %r11
	jbe	.L316
	vzeroupper
.L276:
	movl	$500000003, %r11d
	vmovdqu	(%rdx,%rax,4), %xmm0
	vpaddd	(%rcx,%rax,4), %xmm0, %xmm0
	testb	$3, %r10b
	vmovd	%r11d, %xmm2
	movl	$-1000000007, %r11d
	vmovd	%r11d, %xmm1
	movl	$-500000003, %r11d
	vpbroadcastd	%xmm2, %xmm2
	vmovd	%r11d, %xmm4
	movl	$1000000007, %r11d
	vpbroadcastd	%xmm1, %xmm1
	vpbroadcastd	%xmm4, %xmm4
	vmovd	%r11d, %xmm3
	vpaddd	%xmm1, %xmm0, %xmm1
	vpcmpgtd	%xmm0, %xmm4, %xmm4
	vpcmpgtd	%xmm2, %xmm0, %xmm2
	vpbroadcastd	%xmm3, %xmm3
	vpaddd	%xmm3, %xmm0, %xmm3
	vpblendvb	%xmm4, %xmm3, %xmm0, %xmm0
	vpblendvb	%xmm2, %xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8,%rax,4)
	je	.L291
	andq	$-4, %r10
	addq	%r10, %rax
.L279:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	leaq	0(,%rax,4), %r11
	cmpl	$500000003, %r10d
	jle	.L281
	subl	$1000000007, %r10d
.L282:
	movl	%r10d, (%r8,%r11)
	leaq	1(%rax), %r10
	cmpq	%r9, %r10
	jnb	.L291
	movl	4(%rdx,%r11), %r10d
	addl	4(%rcx,%r11), %r10d
	cmpl	$500000003, %r10d
	jle	.L283
	subl	$1000000007, %r10d
.L284:
	addq	$2, %rax
	movl	%r10d, 4(%r8,%r11)
	cmpq	%r9, %rax
	jnb	.L291
	movl	8(%rdx,%r11), %eax
	addl	8(%rcx,%r11), %eax
	cmpl	$500000003, %eax
	jg	.L285
	leal	1000000007(%rax), %edx
	cmpl	$-500000003, %eax
	cmovl	%edx, %eax
.L287:
	movl	%eax, 8(%r8,%r11)
.L291:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L315:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	vmovups	32(%rsp), %xmm8
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L281:
	leal	1000000007(%r10), %ebx
	cmpl	$-500000003, %r10d
	cmovl	%ebx, %r10d
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L283:
	leal	1000000007(%r10), %ebx
	cmpl	$-500000003, %r10d
	cmovl	%ebx, %r10d
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L285:
	subl	$1000000007, %eax
	jmp	.L287
.L316:
	vzeroupper
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L293:
	xorl	%r10d, %r10d
	jmp	.L290
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L317:
	subl	$1000000007, %eax
.L289:
	movl	%eax, (%r8,%r10,4)
	addq	$1, %r10
	cmpq	%r10, %r9
	je	.L291
.L290:
	movl	(%rdx,%r10,4), %eax
	addl	(%rcx,%r10,4), %eax
	cmpl	$500000003, %eax
	jg	.L317
	leal	1000000007(%rax), %r11d
	cmpl	$-500000003, %eax
	cmovl	%r11d, %eax
	jmp	.L289
.L313:
	vzeroupper
	jmp	.L291
.L294:
	movq	%r9, %r10
	xorl	%eax, %eax
	jmp	.L276
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZN12_GLOBAL__N_18WorkloadD2Ev;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_18WorkloadD2Ev
_ZN12_GLOBAL__N_18WorkloadD2Ev:
.LFB15023:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rax
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L319
	movq	40(%rax), %rdx
	movq	%rax, 40(%rsp)
	subq	%rcx, %rdx
	call	_ZdlPvy
	movq	40(%rsp), %rax
.L319:
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L324
	movq	16(%rax), %rdx
	subq	%rcx, %rdx
	addq	$56, %rsp
	jmp	_ZdlPvy
.L324:
	addq	$56, %rsp
	ret
	.seh_endproc
	.def	_ZN12_GLOBAL__N_18WorkloadD1Ev;	.scl	3;	.type	32;	.endef
	.set	_ZN12_GLOBAL__N_18WorkloadD1Ev,_ZN12_GLOBAL__N_18WorkloadD2Ev
	.section .rdata,"dr"
	.align 8
.LC40:
	.ascii " FAILED: output size mismatch\12\0"
.LC41:
	.ascii " FAILED for q=\0"
.LC42:
	.ascii ", index=\0"
.LC43:
	.ascii ", a=\0"
.LC44:
	.ascii ", b=\0"
.LC45:
	.ascii ", classic=\0"
.LC46:
	.ascii ", REIST=\0"
.LC47:
	.ascii ", expected canonical=\0"
.LC48:
	.ascii "\12\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc:
.LFB15103:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	(%rcx), %rcx
	movq	%r8, %r11
	movq	8(%r10), %rax
	movq	(%rdx), %r8
	movq	8(%rbx), %rdx
	subq	%r8, %rax
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	jne	.L326
	movq	(%r11), %rbp
	movq	8(%r11), %rdx
	subq	%rbp, %rdx
	cmpq	%rax, %rdx
	jne	.L326
	sarq	$2, %rdx
	movl	%r9d, %eax
	movl	$2, %esi
	movl	%r9d, %edi
	movq	%rdx, %r12
	cltd
	movslq	%r9d, %r14
	idivl	%esi
	xorl	%esi, %esi
	subl	%eax, %edi
	negl	%eax
	movl	%eax, 36(%rsp)
	movq	%rcx, %rax
	movslq	%edi, %r13
	movq	%r8, %rcx
	movl	%edi, 40(%rsp)
	movq	%rax, %r8
	movq	%r11, %rdi
	movq	%r10, %r11
.L327:
	cmpq	%r12, %rsi
	je	.L342
	movq	24(%rbx), %rax
	movslq	(%r8,%rsi,4), %rdx
	leaq	0(,%rsi,4), %r10
	movslq	(%rax,%rsi,4), %rax
	addq	%rdx, %rax
	cqto
	idivq	%r14
	testq	%rdx, %rdx
	jns	.L329
	addq	%r14, %rdx
.L329:
	cmpq	%rdx, %r13
	jg	.L330
	subq	%r14, %rdx
.L330:
	cmpl	%edx, 0(%rbp,%rsi,4)
	movl	%edx, %r15d
	jne	.L331
	cmpl	%edx, 36(%rsp)
	jg	.L331
	cmpl	%edx, 40(%rsp)
	jg	.L343
.L331:
	movq	160(%rsp), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	%r9d, 152(%rsp)
	movq	%r11, 136(%rsp)
	movq	%rdi, 144(%rsp)
	movq	%r10, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$14, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	152(%rsp), %edx
	movq	%rbp, %rcx
	call	_ZNSolsEi
	movl	$8, %r8d
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$4, %r8d
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rsi, %rcx
	movl	(%rax,%rdi), %edx
	call	_ZNSolsEi
	movl	$4, %r8d
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	24(%rbx), %rax
	movq	%rsi, %rcx
	movl	(%rax,%rdi), %edx
	call	_ZNSolsEi
	movl	$10, %r8d
	leaq	.LC45(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	136(%rsp), %r10
	movq	%rbx, %rcx
	movq	(%r10), %rax
	movl	(%rax,%rdi), %edx
	call	_ZNSolsEi
	movl	$8, %r8d
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	144(%rsp), %r11
	movq	%rbx, %rcx
	movq	(%r11), %rax
	movl	(%rax,%rdi), %edx
	call	_ZNSolsEi
	movl	$21, %r8d
	leaq	.LC47(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%r15d, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L328:
	xorl	%eax, %eax
.L325:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L326:
	movq	160(%rsp), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L328
.L343:
	movl	(%rcx,%rsi,4), %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	movl	%edx, 44(%rsp)
	jns	.L332
	addl	%r9d, %edx
	movl	%edx, 44(%rsp)
.L332:
	movl	%r15d, %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	jns	.L333
	addl	%r9d, %edx
.L333:
	cmpl	44(%rsp), %edx
	jne	.L331
	addq	$1, %rsi
	jmp	.L327
.L342:
	movl	$1, %eax
	jmp	.L325
	.seh_endproc
	.section .rdata,"dr"
.LC50:
	.ascii "]\12\0"
.LC51:
	.ascii "q = \0"
.LC52:
	.ascii "  classic : \0"
.LC53:
	.ascii " s\12\0"
.LC54:
	.ascii "  REIST   : \0"
.LC55:
	.ascii "  speedup : \0"
.LC56:
	.ascii "x\12\0"
	.align 8
.LC57:
	.ascii "  correction mix per pass: upper \0"
.LC58:
	.ascii " (\0"
.LC60:
	.ascii "%), lower \0"
.LC61:
	.ascii "%), none \0"
.LC62:
	.ascii "%)\12\0"
.LC63:
	.ascii "  checksums: 0x\0"
.LC64:
	.ascii " / 0x\0"
	.align 8
.LC65:
	.ascii " (representations checked element-wise)\12\12\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy:
.LFB15110:
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
	vmovups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %r12
	movq	56(%rcx), %rsi
	addq	48(%rcx), %rsi
	addq	64(%rcx), %rsi
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r12, %rcx
	movl	$91, %edx
	movq	%r8, %rbp
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	40(%rbx), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$2, %r8d
	leaq	.LC50(%rip), %rdx
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$4, %r8d
	movq	%r13, %rcx
	leaq	.LC51(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	(%rbx), %edx
	movq	%r13, %rcx
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC52(%rip), %rdx
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovsd	24(%rbx), %xmm1
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC53(%rip), %rdx
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC54(%rip), %rdx
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovsd	32(%rbx), %xmm1
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	32(%rbx), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vcomisd	%xmm0, %xmm1
	jbe	.L345
	leaq	.LC55(%rip), %rdx
	movl	$12, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rcx
	vmovsd	24(%rbx), %xmm1
	vdivsd	32(%rbx), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L345:
	movl	$33, %r8d
	movq	%r12, %rcx
	leaq	.LC57(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rbx), %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testq	%rsi, %rsi
	je	.L347
	vxorps	%xmm6, %xmm6, %xmm6
	js	.L348
	vcvtsi2sdq	%rsi, %xmm6, %xmm0
	vmovapd	%xmm0, %xmm7
.L349:
	movq	48(%rbx), %rax
	testq	%rax, %rax
	js	.L350
	vcvtsi2sdq	%rax, %xmm6, %xmm1
.L351:
	vmulsd	.LC59(%rip), %xmm1, %xmm1
	movq	%r12, %rcx
	vdivsd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$10, %r8d
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	56(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	56(%rbx), %rax
	testq	%rax, %rax
	js	.L352
	vcvtsi2sdq	%rax, %xmm6, %xmm1
.L353:
	vmulsd	.LC59(%rip), %xmm1, %xmm1
	movq	%rsi, %rcx
	vdivsd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %r8d
	leaq	.LC61(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rbx), %rax
	testq	%rax, %rax
	js	.L354
	vcvtsi2sdq	%rax, %xmm6, %xmm1
.L355:
	vmulsd	.LC59(%rip), %xmm1, %xmm1
	vdivsd	%xmm7, %xmm1, %xmm1
	jmp	.L356
.L347:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$10, %r8d
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	56(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %r8d
	leaq	.LC61(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
.L356:
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC62(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$15, %r8d
	movq	%rbx, %rcx
	leaq	.LC63(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	movq	-24(%rax), %rdx
	addq	%rbx, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	movq	%rdi, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$5, %r8d
	leaq	.LC64(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	vmovups	32(%rsp), %xmm6
	leaq	.LC65(%rip), %rdx
	vmovups	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L348:
	movq	%rsi, %rax
	andl	$1, %esi
	shrq	%rax
	orq	%rsi, %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm5
	vmovapd	%xmm5, %xmm7
	jmp	.L349
.L354:
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm6, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	jmp	.L355
.L352:
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm6, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	jmp	.L353
.L350:
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm6, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	jmp	.L351
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC67:
	.ascii "cannot create std::vector larger than max_size()\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0:
.LFB17813:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rax
	movq	%rcx, %rbx
	shrq	$61, %rax
	jne	.L365
	testq	%rdx, %rdx
	je	.L366
	leaq	0(,%rdx,4), %r8
	movq	%rdx, 72(%rsp)
	movq	%r8, %rcx
	movq	%r8, 32(%rsp)
	call	_Znwy
	movq	32(%rsp), %r8
	xorl	%edx, %edx
	cmpq	$1, 72(%rsp)
	movq	%rax, (%rbx)
	leaq	4(%rax), %rcx
	leaq	(%rax,%r8), %r10
	movl	%edx, (%rax)
	movq	%r10, 16(%rbx)
	je	.L361
	subq	$4, %r8
	xorl	%edx, %edx
	movq	%r10, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	memset
	movq	40(%rsp), %r10
	leaq	-4(%r10,%rax), %rcx
	subq	32(%rsp), %rcx
.L361:
	movq	%rcx, 8(%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
.L366:
	xorl	%ecx, %ecx
	movq	%rcx, (%rbx)
	movq	%rcx, 16(%rbx)
	xorl	%ecx, %ecx
	jmp	.L361
.L365:
	leaq	.LC67(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC68:
	.ascii "basic_string: construction from null is not valid\0"
.LC69:
	.ascii "stoll\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx:
.LFB15119:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	leaq	64(%rsp), %r12
	testq	%rcx, %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movq	%r12, 48(%rsp)
	je	.L392
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	ja	.L393
	cmpq	$1, %rax
	je	.L394
	testq	%rax, %rax
	jne	.L395
.L372:
	movq	48(%rsp), %rax
	movq	%rbx, 56(%rsp)
	movb	$0, (%rax,%rbx)
	movq	__imp__errno(%rip), %rbx
	movq	48(%rsp), %rdi
.LEHB0:
	call	*%rbx
	movl	(%rax), %r14d
	call	*%rbx
.LEHE0:
	movl	$0, (%rax)
	leaq	40(%rsp), %rdx
	movl	$10, %r8d
	movq	%rdi, %rcx
	call	strtoll
	cmpq	40(%rsp), %rdi
	movq	%rax, %r13
	je	.L396
.LEHB1:
	call	*%rbx
.LEHE1:
	cmpl	$34, (%rax)
	je	.L397
	movq	40(%rsp), %rsi
	call	*%rbx
	movq	%rax, %rdx
	movq	56(%rsp), %rax
	movl	(%rdx), %edx
	testl	%edx, %edx
	je	.L398
.L376:
	subq	%rdi, %rsi
	cmpq	%rax, %rsi
	jne	.L385
	testq	%r13, %r13
	jle	.L385
	movq	%r13, 0(%rbp)
	movl	$1, %ebx
.L380:
	movq	48(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L367
	movq	64(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L367:
	movl	%ebx, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L394:
	movzbl	(%rsi), %eax
	movb	%al, 64(%rsp)
	jmp	.L372
.L385:
	xorl	%ebx, %ebx
	jmp	.L380
.L393:
	leaq	1(%rax), %rcx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rax, 48(%rsp)
	movq	%rax, %rcx
	movq	%rbx, 64(%rsp)
.L370:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	memcpy
	jmp	.L372
.L398:
	call	*%rbx
	movl	%r14d, (%rax)
	movq	56(%rsp), %rax
	jmp	.L376
.L395:
	movq	%r12, %rcx
	jmp	.L370
.L392:
	leaq	.LC68(%rip), %rcx
.LEHB3:
	call	_ZSt19__throw_logic_errorPKc
.LEHE3:
.L387:
	movq	%rax, %rsi
	vzeroupper
.L379:
	movq	48(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L382
	movq	64(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L382:
	movq	%rsi, %rcx
	jmp	.L383
.L396:
	leaq	.LC69(%rip), %rcx
.LEHB4:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L388:
	vzeroupper
	movq	%rax, %rsi
	call	*%rbx
	cmpl	$0, (%rax)
	jne	.L379
	call	*%rbx
	movl	%r14d, (%rax)
	jmp	.L379
.L397:
	leaq	.LC69(%rip), %rcx
.LEHB5:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE5:
.L386:
	movq	%rax, %rcx
	vzeroupper
.L383:
	call	__cxa_begin_catch
	xorl	%ebx, %ebx
.LEHB6:
	call	__cxa_end_catch
.LEHE6:
	jmp	.L367
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA15119:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT15119-.LLSDATTD15119
.LLSDATTD15119:
	.byte	0x1
	.uleb128 .LLSDACSE15119-.LLSDACSB15119
.LLSDACSB15119:
	.uleb128 .LEHB0-.LFB15119
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L387-.LFB15119
	.uleb128 0x3
	.uleb128 .LEHB1-.LFB15119
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L388-.LFB15119
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB15119
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L386-.LFB15119
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB15119
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L386-.LFB15119
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB15119
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L388-.LFB15119
	.uleb128 0x3
	.uleb128 .LEHB5-.LFB15119
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L388-.LFB15119
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB15119
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE15119:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT15119:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB17820:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rdx, %rdi
	call	strlen
	movq	(%rbx), %r11
	leaq	16(%rbx), %r10
	movq	%rax, %rsi
	cmpq	%r10, %r11
	je	.L420
	movq	16(%rbx), %rax
	cmpq	%rsi, %rax
	jb	.L403
.L401:
	cmpq	%r11, %rdi
	jnb	.L421
.L404:
	testq	%rsi, %rsi
	je	.L407
	cmpq	$1, %rsi
	je	.L422
	movq	%r11, %rcx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	(%rbx), %r11
.L407:
	movq	%rsi, 8(%rbx)
	movb	$0, (%r11,%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
.L421:
	movq	8(%rbx), %r8
	leaq	(%r11,%r8), %rax
	cmpq	%rdi, %rax
	jb	.L404
	xorl	%eax, %eax
	movq	%rsi, 32(%rsp)
	movq	%r11, %rdx
	movq	%rdi, %r9
	movq	%rax, 40(%rsp)
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy
	movq	(%rbx), %r11
	jmp	.L407
.L403:
	leaq	(%rax,%rax), %r9
	cmpq	%r9, %rsi
	jb	.L409
.L414:
	leaq	1(%rsi), %rcx
	movq	%rsi, %r9
.L410:
	movq	%r11, 72(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r10, 56(%rsp)
	call	_Znwy
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	call	memcpy
	movq	72(%rsp), %r11
	cmpq	56(%rsp), %r11
	movq	64(%rsp), %r9
	je	.L412
.L415:
	movq	16(%rbx), %rax
	movq	%r11, %rcx
	movq	%r9, 56(%rsp)
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	movq	56(%rsp), %r9
.L412:
	movq	%r14, (%rbx)
	movq	%r14, %r11
	movq	%r9, 16(%rbx)
	jmp	.L407
.L409:
	movabsq	$9223372036854775806, %rax
	cmpq	%r9, %rax
	jnb	.L413
	movabsq	$9223372036854775807, %rcx
	movq	%r11, 56(%rsp)
	call	_Znwy
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	call	memcpy
	movq	56(%rsp), %r11
	movabsq	$9223372036854775806, %r9
	jmp	.L415
.L420:
	cmpq	$15, %rax
	jbe	.L401
	cmpq	$29, %rax
	movl	$30, %r9d
	ja	.L414
.L413:
	leaq	1(%r9), %rcx
	jmp	.L410
.L422:
	movzbl	(%rdi), %eax
	movb	%al, (%r11)
	movq	(%rbx), %r11
	jmp	.L407
	.seh_endproc
	.section .rdata,"dr"
.LC70:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_:
.LFB15698:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rcx), %r8
	movq	16(%rcx), %r10
	cmpq	%r10, %r8
	movq	%rcx, %r9
	je	.L424
	vmovdqu	(%rdx), %ymm0
	addq	$72, %r8
	vmovdqu	%ymm0, -72(%r8)
	vmovdqu	32(%rdx), %ymm0
	vmovdqu	%ymm0, -40(%r8)
	movq	64(%rdx), %rax
	movq	%rax, -8(%r8)
	movq	%r8, 8(%rcx)
	vzeroupper
.L435:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
.L424:
	movq	(%rcx), %rax
	subq	%rax, %r8
	movq	%rax, %rbx
	movabsq	$-8198552921648689607, %rax
	movq	%r8, %rcx
	sarq	$3, %rcx
	imulq	%rax, %rcx
	movabsq	$128102389400760775, %rax
	cmpq	%rax, %rcx
	je	.L436
	testq	%rcx, %rcx
	movl	$1, %eax
	movq	%r9, 112(%rsp)
	cmovne	%rcx, %rax
	movq	%r8, 56(%rsp)
	movq	%r10, 32(%rsp)
	addq	%rcx, %rax
	movq	%rdx, 120(%rsp)
	movabsq	$128102389400760775, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	imulq	$72, %rax, %rcx
	imulq	$72, %rax, %r14
	call	_Znwy
	movq	56(%rsp), %r8
	movq	120(%rsp), %rsi
	movl	$18, %ecx
	movq	32(%rsp), %r10
	movq	112(%rsp), %r9
	movq	%rax, %r11
	testq	%r8, %r8
	leaq	(%rax,%r8), %rdi
	rep movsl
	je	.L427
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%r10, 56(%rsp)
	movq	%r8, 32(%rsp)
	call	memcpy
	movq	112(%rsp), %r9
	movq	56(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
.L427:
	leaq	72(%r11,%r8), %rax
	vmovq	%r11, %xmm1
	testq	%rbx, %rbx
	vpinsrq	$1, %rax, %xmm1, %xmm0
	je	.L428
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movq	%r11, 56(%rsp)
	subq	%rbx, %rdx
	movq	%r9, 112(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	call	_ZdlPvy
	movq	56(%rsp), %r11
	movq	112(%rsp), %r9
	vmovdqu	32(%rsp), %xmm0
.L428:
	leaq	(%r11,%r14), %rax
	vmovdqu	%xmm0, (%r9)
	movq	%rax, 16(%r9)
	jmp	.L435
.L436:
	leaq	.LC70(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt7__cxx119to_stringEy
	.def	_ZNSt7__cxx119to_stringEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEy
_ZNSt7__cxx119to_stringEy:
.LFB2423:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	cmpq	$9, %rdx
	movq	%rcx, %r11
	movq	%rdx, %r9
	jbe	.L438
	movq	%rdx, %rcx
	movl	$1, %esi
	movabsq	$3777893186295716171, %r10
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L439:
	cmpq	$999, %rcx
	jbe	.L453
	cmpq	$9999, %rcx
	jbe	.L454
	movq	%rcx, %rax
	addl	$4, %esi
	mulq	%r10
	cmpq	$99999, %rcx
	jbe	.L440
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L443:
	cmpq	$99, %rcx
	ja	.L439
	addl	$1, %esi
.L440:
	leaq	16(%r11), %r10
	cmpl	$15, %esi
	movb	$0, 16(%r11)
	movl	%esi, %ebx
	movq	%r10, (%r11)
	movq	$0, 8(%r11)
	jbe	.L445
	cmpq	$29, %rbx
	jbe	.L450
	leaq	1(%rbx), %rcx
	movq	%rbx, %rdi
.L446:
	movq	%r9, 280(%rsp)
	movq	%r11, 272(%rsp)
	call	_Znwy
	movq	272(%rsp), %r11
	movq	280(%rsp), %r9
	movb	$0, (%rax)
	movq	%rax, %r10
	movq	%rax, (%r11)
	movq	%rdi, 16(%r11)
.L445:
	vmovdqu	.LC71(%rip), %ymm0
	cmpq	$99, %r9
	movabsq	$4122263930388298034, %rax
	movabsq	$16106987313379638, %rdx
	movq	%rdx, 225(%rsp)
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	.LC72(%rip), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	vmovdqu	.LC73(%rip), %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	vmovdqu	.LC74(%rip), %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	vmovdqu	.LC75(%rip), %ymm0
	vmovdqu	%ymm0, 160(%rsp)
	vmovdqu	.LC76(%rip), %ymm0
	vmovdqu	%ymm0, 192(%rsp)
	movq	%rax, 217(%rsp)
	jbe	.L447
	leal	-1(%rsi), %ecx
	movabsq	$2951479051793528259, %rsi
	.p2align 4,,10
	.p2align 3
.L448:
	movq	%r9, %rdx
	movq	%r9, %r8
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%rsi
	shrq	$2, %rdx
	imulq	$100, %rdx, %rax
	subq	%rax, %r8
	movq	%r9, %rax
	movq	%rdx, %r9
	movl	%ecx, %edx
	movzbl	33(%rsp,%r8,2), %edi
	movzbl	32(%rsp,%r8,2), %r8d
	movb	%dil, (%r10,%rdx)
	leal	-1(%rcx), %edx
	subl	$2, %ecx
	cmpq	$9999, %rax
	movb	%r8b, (%r10,%rdx)
	ja	.L448
	cmpq	$999, %rax
	ja	.L447
	vzeroupper
.L444:
	leal	48(%r9), %eax
.L449:
	movb	%al, (%r10)
	movq	(%r11), %rax
	movq	%rbx, 8(%r11)
	movb	$0, (%rax,%rbx)
	movq	%r11, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L447:
	movzbl	33(%rsp,%r9,2), %eax
	movb	%al, 1(%r10)
	movzbl	32(%rsp,%r9,2), %eax
	vzeroupper
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L453:
	addl	$2, %esi
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L454:
	addl	$3, %esi
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L450:
	movl	$30, %edi
	movl	$31, %ecx
	jmp	.L446
.L438:
	leaq	16(%rcx), %r10
	movb	$0, 16(%rcx)
	movl	$1, %ebx
	movq	%r10, (%rcx)
	jmp	.L444
	.seh_endproc
	.text
	.p2align 4
	.globl	classic_poly_runtime_kernel
	.def	classic_poly_runtime_kernel;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_poly_runtime_kernel
classic_poly_runtime_kernel:
.LFB14983:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	48(%rsp), %r10d
	testq	%r9, %r9
	movq	%rcx, %r11
	movq	%rdx, %rbx
	je	.L462
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L457:
	movl	(%rbx,%rcx,4), %eax
	addl	(%r11,%rcx,4), %eax
	cltd
	idivl	%r10d
	movl	%edx, (%r8,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L457
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L462:
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_poly_runtime_kernel
	.def	reist_poly_runtime_kernel;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_poly_runtime_kernel
reist_poly_runtime_kernel:
.LFB14984:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	vmovups	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	112(%rsp), %r11d
	testq	%r9, %r9
	je	.L505
	movl	%r11d, %eax
	movl	%r11d, %ebx
	leaq	-1(%r9), %r10
	shrl	$31, %eax
	addl	%r11d, %eax
	sarl	%eax
	movl	%eax, %esi
	subl	%eax, %ebx
	negl	%esi
	cmpq	$2, %r10
	jbe	.L483
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L483
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$24, %rax
	jbe	.L483
	cmpq	$6, %r10
	jbe	.L484
	movq	%r9, %r10
	vmovd	%ebx, %xmm3
	vmovd	%r11d, %xmm2
	xorl	%eax, %eax
	vmovd	%esi, %xmm7
	shrq	$3, %r10
	vpbroadcastd	%xmm3, %ymm3
	vpbroadcastd	%xmm2, %ymm2
	vpbroadcastd	%xmm7, %ymm7
	salq	$5, %r10
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L467:
	vmovdqu	(%rdx,%rax), %ymm0
	vpaddd	(%rcx,%rax), %ymm0, %ymm0
	vpminsd	%ymm0, %ymm3, %ymm1
	vpcmpgtd	%ymm0, %ymm7, %ymm6
	vpaddd	%ymm2, %ymm0, %ymm5
	vpcmpeqd	%ymm1, %ymm3, %ymm1
	vpsubd	%ymm2, %ymm0, %ymm4
	vpblendvb	%ymm6, %ymm5, %ymm0, %ymm0
	vpblendvb	%ymm1, %ymm4, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
	cmpq	%rax, %r10
	jne	.L467
	testb	$7, %r9b
	je	.L503
	movq	%r9, %r10
	movq	%r9, %rax
	andl	$7, %r10d
	andq	$-8, %rax
	leaq	-1(%r10), %rdi
	cmpq	$2, %rdi
	jbe	.L506
	vzeroupper
.L466:
	vmovdqu	(%rdx,%rax,4), %xmm0
	vmovd	%ebx, %xmm7
	vpaddd	(%rcx,%rax,4), %xmm0, %xmm0
	testb	$3, %r10b
	vpbroadcastd	%xmm7, %xmm1
	vmovd	%r11d, %xmm7
	vpminsd	%xmm0, %xmm1, %xmm2
	vpcmpeqd	%xmm2, %xmm1, %xmm1
	vpbroadcastd	%xmm7, %xmm2
	vmovd	%esi, %xmm7
	vpbroadcastd	%xmm7, %xmm3
	vpsubd	%xmm2, %xmm0, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpcmpgtd	%xmm0, %xmm3, %xmm3
	vpblendvb	%xmm3, %xmm2, %xmm0, %xmm0
	vpblendvb	%xmm1, %xmm4, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8,%rax,4)
	je	.L481
	andq	$-4, %r10
	addq	%r10, %rax
.L469:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	leaq	0(,%rax,4), %rdi
	cmpl	%ebx, %r10d
	jl	.L471
	subl	%r11d, %r10d
.L472:
	movl	%r10d, (%r8,%rdi)
	leaq	1(%rax), %r10
	cmpq	%r9, %r10
	jnb	.L481
	movl	4(%rdx,%rdi), %r10d
	addl	4(%rcx,%rdi), %r10d
	cmpl	%r10d, %ebx
	jg	.L473
	subl	%r11d, %r10d
.L474:
	addq	$2, %rax
	movl	%r10d, 4(%r8,%rdi)
	cmpq	%r9, %rax
	jnb	.L481
	movl	8(%rdx,%rdi), %eax
	addl	8(%rcx,%rdi), %eax
	cmpl	%eax, %ebx
	jle	.L475
	addl	%eax, %r11d
	cmpl	%eax, %esi
	cmovg	%r11d, %eax
.L477:
	movl	%eax, 8(%r8,%rdi)
.L481:
	movl	(%r8), %eax
	movl	%eax, reist_poly_benchmark_sink(%rip)
.L505:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L471:
	leal	(%r10,%r11), %r14d
	cmpl	%esi, %r10d
	cmovl	%r14d, %r10d
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L473:
	leal	(%r10,%r11), %r14d
	cmpl	%r10d, %esi
	cmovg	%r14d, %r10d
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L475:
	subl	%r11d, %eax
	jmp	.L477
.L506:
	vzeroupper
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L483:
	xorl	%r10d, %r10d
	jmp	.L480
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L507:
	subl	%r11d, %eax
.L479:
	movl	%eax, (%r8,%r10,4)
	addq	$1, %r10
	cmpq	%r10, %r9
	je	.L481
.L480:
	movl	(%rdx,%r10,4), %eax
	addl	(%rcx,%r10,4), %eax
	cmpl	%eax, %ebx
	jle	.L507
	leal	(%rax,%r11), %edi
	cmpl	%eax, %esi
	cmovg	%edi, %eax
	jmp	.L479
.L503:
	vzeroupper
	jmp	.L481
.L484:
	movq	%r9, %r10
	xorl	%eax, %eax
	jmp	.L466
	.seh_endproc
	.section .rdata,"dr"
.LC77:
	.ascii "vector::_M_default_append\0"
	.section	.text$_ZNSt6vectorIiSaIiEE6resizeEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIiSaIiEE6resizeEy
	.def	_ZNSt6vectorIiSaIiEE6resizeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE6resizeEy
_ZNSt6vectorIiSaIiEE6resizeEy:
.LFB15648:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	(%rcx), %r11
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	movq	%rcx, %r9
	movq	%rdx, %rbx
	subq	%r11, %rbx
	movq	%rbx, %rax
	sarq	$2, %rax
	cmpq	%r10, %rax
	jb	.L530
	cmpq	%rax, %r10
	jnb	.L529
	leaq	(%r11,%r10,4), %rax
	cmpq	%rdx, %rax
	je	.L529
	movq	%rax, 8(%rcx)
.L529:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L530:
	movq	16(%rcx), %rcx
	movq	%r10, %r8
	subq	%rax, %r8
	movq	%rcx, %rdi
	subq	%rdx, %rcx
	sarq	$2, %rcx
	cmpq	%r8, %rcx
	jnb	.L531
	movabsq	$2305843009213693951, %rdx
	subq	%rax, %rdx
	cmpq	%r8, %rdx
	jb	.L532
	cmpq	%rax, %r8
	movq	%rax, %rdx
	movq	%r10, 104(%rsp)
	cmovnb	%r8, %rdx
	movq	%r9, 96(%rsp)
	movq	%r11, 40(%rsp)
	addq	%rdx, %rax
	movq	%r8, 32(%rsp)
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	0(,%rax,4), %r14
	call	_Znwy
	movq	32(%rsp), %r8
	movq	40(%rsp), %r11
	movl	$0, (%rax,%rbx)
	movq	96(%rsp), %r9
	movq	%rax, %rsi
	subq	$1, %r8
	movq	104(%rsp), %r10
	je	.L514
	leaq	4(%rax,%rbx), %rcx
	leaq	0(,%r8,4), %r8
	xorl	%edx, %edx
	movq	%r11, 32(%rsp)
	call	memset
	movq	104(%rsp), %r10
	movq	96(%rsp), %r9
	movq	32(%rsp), %r11
.L514:
	testq	%rbx, %rbx
	je	.L515
	movq	%r11, %rdx
	movq	%rbx, %r8
	movq	%rsi, %rcx
	movq	%r10, 104(%rsp)
	movq	%r9, 96(%rsp)
	movq	%r11, 32(%rsp)
	call	memcpy
	movq	104(%rsp), %r10
	movq	96(%rsp), %r9
	movq	32(%rsp), %r11
.L515:
	testq	%r11, %r11
	je	.L516
	movq	%rdi, %rdx
	movq	%r11, %rcx
	movq	%r10, 104(%rsp)
	subq	%r11, %rdx
	movq	%r9, 96(%rsp)
	call	_ZdlPvy
	movq	104(%rsp), %r10
	movq	96(%rsp), %r9
.L516:
	leaq	(%rsi,%r10,4), %rax
	vmovq	%rsi, %xmm1
	vpinsrq	$1, %rax, %xmm1, %xmm0
	leaq	(%rsi,%r14), %rax
	movq	%rax, 16(%r9)
	vmovdqu	%xmm0, (%r9)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L531:
	subq	$1, %r8
	movl	$0, (%rdx)
	leaq	4(%rdx), %rcx
	je	.L511
	leaq	(%rcx,%r8,4), %rbx
	movq	%r9, 96(%rsp)
	movq	%rbx, %rax
	subq	%rdx, %rax
	xorl	%edx, %edx
	leaq	-4(%rax), %r8
	call	memset
	movq	96(%rsp), %r9
	movq	%rbx, %rcx
.L511:
	movq	%rcx, 8(%r9)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
.L532:
	leaq	.LC77(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	.def	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv:
.LFB16573:
	.seh_endprologue
	movl	$-1727483681, %edx
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	vpslld	$31, %ymm2, %ymm5
	vpsrld	$1, %ymm2, %ymm4
	vmovd	%edx, %xmm3
	vpsrld	$31, %ymm2, %ymm2
	vpbroadcastd	%xmm3, %ymm3
	movq	%rcx, %r8
	leaq	896(%rcx), %rcx
	movq	%r8, %rax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L534:
	vpand	4(%rax), %ymm4, %ymm1
	vpand	(%rax), %ymm5, %ymm0
	addq	$32, %rax
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm2, %ymm0, %ymm0
	vpxor	1556(%rax), %ymm1, %ymm1
	vpmulld	%ymm3, %ymm0, %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L534
	vmovq	896(%r8), %xmm0
	vmovq	.LC82(%rip), %xmm1
	movl	$-1727483681, %ecx
	vmovq	.LC83(%rip), %xmm2
	movl	904(%r8), %eax
	vmovd	%ecx, %xmm3
	vpand	%xmm1, %xmm0, %xmm0
	movl	908(%r8), %edx
	vpbroadcastd	%xmm3, %ymm3
	vmovq	900(%r8), %xmm1
	andl	$-2147483648, %eax
	vpand	%xmm2, %xmm1, %xmm1
	andl	$2147483647, %edx
	vpor	%xmm1, %xmm0, %xmm0
	orl	%edx, %eax
	vmovq	2484(%r8), %xmm1
	vpsrld	$1, %xmm0, %xmm2
	movl	%eax, %edx
	andl	$1, %eax
	vpxor	%xmm2, %xmm1, %xmm1
	vmovq	.LC84(%rip), %xmm2
	negl	%eax
	shrl	%edx
	andl	$-1727483681, %eax
	xorl	2492(%r8), %edx
	vpand	%xmm2, %xmm0, %xmm0
	vmovq	.LC85(%rip), %xmm2
	xorl	%edx, %eax
	leaq	2476(%r8), %rdx
	movl	%eax, 904(%r8)
	leaq	908(%r8), %rax
	vpmulld	%xmm2, %xmm0, %xmm0
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	vpslld	$31, %ymm2, %ymm5
	vpsrld	$1, %ymm2, %ymm4
	vpsrld	$31, %ymm2, %ymm2
	vpxor	%xmm0, %xmm1, %xmm1
	vmovq	%xmm1, 896(%r8)
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L535:
	vpand	4(%rax), %ymm4, %ymm1
	vpand	(%rax), %ymm5, %ymm0
	addq	$32, %rax
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	%ymm2, %ymm0, %ymm0
	vpxor	-940(%rax), %ymm1, %ymm1
	vpmulld	%ymm3, %ymm0, %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rdx
	jne	.L535
	vpcmpeqd	%xmm2, %xmm2, %xmm2
	movl	2492(%r8), %eax
	movl	(%r8), %edx
	vmovd	%ecx, %xmm3
	vpslld	$31, %xmm2, %xmm0
	vpsrld	$1, %xmm2, %xmm1
	vpand	2476(%r8), %xmm0, %xmm0
	movq	$0, 2496(%r8)
	andl	$2147483647, %edx
	vpsrld	$31, %xmm2, %xmm2
	andl	$-2147483648, %eax
	vpand	2480(%r8), %xmm1, %xmm1
	orl	%edx, %eax
	movl	%eax, %edx
	andl	$1, %eax
	vpor	%xmm1, %xmm0, %xmm0
	negl	%eax
	shrl	%edx
	xorl	1584(%r8), %edx
	vpsrld	$1, %xmm0, %xmm1
	vpand	%xmm2, %xmm0, %xmm0
	vpbroadcastd	%xmm3, %xmm2
	andl	$-1727483681, %eax
	vpxor	1568(%r8), %xmm1, %xmm1
	vpmulld	%xmm2, %xmm0, %xmm0
	xorl	%edx, %eax
	movl	%eax, 2492(%r8)
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, 2476(%r8)
	vzeroupper
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L13make_workloadEyi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L13make_workloadEyi
_ZN12_GLOBAL__N_1L13make_workloadEyi:
.LFB14996:
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
	subq	$2712, %rsp
	.seh_stackalloc	2712
	vmovups	%xmm6, 2576(%rsp)
	.seh_savexmm	%xmm6, 2576
	vmovups	%xmm7, 2592(%rsp)
	.seh_savexmm	%xmm7, 2592
	vmovups	%xmm8, 2608(%rsp)
	.seh_savexmm	%xmm8, 2608
	vmovups	%xmm9, 2624(%rsp)
	.seh_savexmm	%xmm9, 2624
	vmovups	%xmm10, 2640(%rsp)
	.seh_savexmm	%xmm10, 2640
	vmovups	%xmm11, 2656(%rsp)
	.seh_savexmm	%xmm11, 2656
	vmovups	%xmm12, 2672(%rsp)
	.seh_savexmm	%xmm12, 2672
	vmovups	%xmm13, 2688(%rsp)
	.seh_savexmm	%xmm13, 2688
	.seh_endprologue
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdx, 2792(%rsp)
	movq	%rcx, %rsi
	movl	%r8d, %ebx
	movq	$0, 64(%rcx)
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	%ymm0, 32(%rcx)
	vzeroupper
.LEHB7:
	call	_ZNSt6vectorIiSaIiEE6resizeEy
	movq	2792(%rsp), %rdx
	leaq	24(%rsi), %rcx
	call	_ZNSt6vectorIiSaIiEE6resizeEy
.LEHE7:
	movl	%ebx, %r14d
	movl	%ebx, %edx
	movl	%ebx, %r15d
	movl	$1, %eax
	shrl	$31, %r14d
	xorl	$1592594996, %edx
	leaq	64(%rsp), %rbp
	addl	%ebx, %r14d
	movl	%edx, 64(%rsp)
	leaq	68(%rsp), %r8
	movl	%edx, %ecx
	sarl	%r14d
	movl	%r14d, %r13d
	subl	%r14d, %r15d
	negl	%r13d
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L539:
	movl	%ecx, %edx
	addq	$4, %r8
	shrl	$30, %edx
	xorl	%ecx, %edx
	imull	$1812433253, %edx, %edx
	leal	(%rdx,%rax), %ecx
	addq	$1, %rax
	movl	%ecx, -4(%r8)
	cmpq	$624, %rax
	jne	.L539
	leal	-1(%r15), %r8d
	xorl	%r12d, %r12d
	movl	%ebx, 2800(%rsp)
	vmovq	.LC83(%rip), %xmm9
	leal	(%r8,%r14), %edi
	movq	%rsi, %rbx
	movl	%r13d, 56(%rsp)
	movl	%r14d, %esi
	cmpl	$-1, %edi
	movl	%r15d, 60(%rsp)
	vmovq	.LC82(%rip), %xmm8
	movl	%r8d, 44(%rsp)
	vmovq	.LC84(%rip), %xmm7
	movq	$624, 2560(%rsp)
	vmovq	.LC85(%rip), %xmm6
	je	.L540
	.p2align 4,,10
	.p2align 3
.L606:
	cmpq	$623, %rax
	leal	1(%rdi), %r15d
	ja	.L601
.L541:
	movl	64(%rsp,%rax,4), %r8d
	leaq	1(%rax), %rcx
	movl	%r15d, %r13d
	movq	%rcx, 2560(%rsp)
	movl	%r8d, %eax
	shrl	$11, %eax
	xorl	%eax, %r8d
	movl	%r8d, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %r8d
	movl	%r8d, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, %r8d
	movl	%r8d, %eax
	shrl	$18, %eax
	xorl	%eax, %r8d
	imulq	%r13, %r8
	cmpl	%r15d, %r8d
	jnb	.L542
	movl	%esi, %eax
	xorl	%edx, %edx
	notl	%eax
	subl	44(%rsp), %eax
	divl	%r15d
	cmpl	%edx, %r8d
	movl	%edx, %r14d
	jb	.L544
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L543:
	leaq	1(%rax), %rcx
	movl	64(%rsp,%rax,4), %eax
	movq	%rcx, 2560(%rsp)
	movl	%eax, %edx
	shrl	$11, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$7, %edx
	andl	$-1658038656, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	imulq	%r13, %rax
	cmpl	%r14d, %eax
	jnb	.L602
.L544:
	cmpq	$623, %rcx
	movq	%rcx, %rax
	jbe	.L543
	movq	%rbp, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	2560(%rsp), %rax
	jmp	.L543
.L602:
	movq	%rax, %r8
.L542:
	shrq	$32, %r8
	movq	(%rbx), %rax
	leaq	0(,%r12,4), %r10
	subl	%esi, %r8d
	cmpq	$623, %rcx
	movl	%r8d, (%rax,%r12,4)
	ja	.L603
.L546:
	leaq	1(%rcx), %r8
	movl	64(%rsp,%rcx,4), %ecx
	movq	%r8, 2560(%rsp)
	movl	%ecx, %eax
	shrl	$11, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$18, %eax
	xorl	%eax, %ecx
	imulq	%r13, %rcx
	cmpl	%r15d, %ecx
	jnb	.L550
	movl	%esi, %eax
	xorl	%edx, %edx
	notl	%eax
	subl	44(%rsp), %eax
	divl	%r15d
	cmpl	%edx, %ecx
	jnb	.L550
	movl	$-1727483681, %eax
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	vpsrld	$1, %ymm5, %ymm2
	vpsrld	$1, %xmm10, %xmm12
	vmovd	%eax, %xmm11
	vpbroadcastd	%xmm11, %ymm1
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L605:
	movl	64(%rsp,%r8,4), %ecx
	addq	$1, %r8
.L552:
	movl	%ecx, %eax
	shrl	$11, %eax
	xorl	%ecx, %eax
	movl	%eax, %ecx
	sall	$7, %ecx
	andl	$-1658038656, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ecx
	sall	$15, %ecx
	andl	$-272236544, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$18, %ecx
	xorl	%ecx, %eax
	imulq	%r13, %rax
	cmpl	%edx, %eax
	jnb	.L604
.L555:
	cmpq	$623, %r8
	jbe	.L605
	leaq	896(%rbp), %rcx
	vpslld	$31, %ymm5, %ymm4
	movq	%rbp, %rax
	vpsrld	$31, %ymm5, %ymm3
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L553:
	vpand	(%rax), %ymm4, %ymm13
	vpand	4(%rax), %ymm2, %ymm0
	addq	$32, %rax
	vpor	%ymm13, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm13
	vpand	%ymm3, %ymm0, %ymm0
	vpxor	1556(%rax), %ymm13, %ymm13
	vpmulld	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm13, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L553
	vmovq	964(%rsp), %xmm0
	movl	968(%rsp), %ecx
	vmovq	960(%rsp), %xmm3
	movl	972(%rsp), %eax
	vpand	%xmm9, %xmm0, %xmm0
	andl	$-2147483648, %ecx
	vmovq	2548(%rsp), %xmm4
	vpand	%xmm8, %xmm3, %xmm3
	andl	$2147483647, %eax
	vpor	%xmm3, %xmm0, %xmm0
	orl	%ecx, %eax
	vpsrld	$1, %xmm0, %xmm3
	vpand	%xmm7, %xmm0, %xmm0
	movl	%eax, %ecx
	andl	$1, %eax
	vpmulld	%xmm6, %xmm0, %xmm0
	negl	%eax
	vpxor	%xmm4, %xmm3, %xmm3
	shrl	%ecx
	andl	$-1727483681, %eax
	xorl	2556(%rsp), %ecx
	xorl	%ecx, %eax
	vpslld	$31, %ymm5, %ymm4
	leaq	2476(%rbp), %rcx
	movl	%eax, 968(%rsp)
	leaq	908(%rbp), %rax
	vpxor	%xmm0, %xmm3, %xmm3
	vmovq	%xmm3, 960(%rsp)
	vpsrld	$31, %ymm5, %ymm3
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L554:
	vpand	(%rax), %ymm4, %ymm13
	vpand	4(%rax), %ymm2, %ymm0
	addq	$32, %rax
	vpor	%ymm13, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm13
	vpand	%ymm3, %ymm0, %ymm0
	vpxor	-940(%rax), %ymm13, %ymm13
	vpmulld	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm13, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L554
	vpslld	$31, %xmm10, %xmm3
	movl	64(%rsp), %ecx
	vpand	2544(%rsp), %xmm12, %xmm0
	vpand	2540(%rsp), %xmm3, %xmm3
	movl	2556(%rsp), %eax
	vpsrld	$31, %xmm10, %xmm4
	movl	%ecx, %r8d
	vpor	%xmm3, %xmm0, %xmm0
	andl	$2147483647, %r8d
	andl	$-2147483648, %eax
	vpsrld	$1, %xmm0, %xmm3
	vpand	%xmm4, %xmm0, %xmm0
	vpbroadcastd	%xmm11, %xmm4
	orl	%r8d, %eax
	vpmulld	%xmm4, %xmm0, %xmm0
	movl	%eax, %r8d
	andl	$1, %eax
	vpxor	1632(%rsp), %xmm3, %xmm3
	negl	%eax
	shrl	%r8d
	xorl	1648(%rsp), %r8d
	andl	$-1727483681, %eax
	xorl	%r8d, %eax
	movl	$1, %r8d
	movl	%eax, 2556(%rsp)
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, 2540(%rsp)
	jmp	.L552
.L604:
	movq	%r8, 2560(%rsp)
	movq	%rax, %rcx
.L550:
	shrq	$32, %rcx
.L556:
	movq	24(%rbx), %rax
	subl	%esi, %ecx
	leaq	1(%r12), %rdx
	cmpq	%rdx, 2792(%rsp)
	movl	%ecx, (%rax,%r10)
	je	.L557
	cmpl	$-1, %edi
	movq	2560(%rsp), %rax
	movq	%rdx, %r12
	jne	.L606
.L540:
	cmpq	$623, %rax
	ja	.L607
.L547:
	movl	64(%rsp,%rax,4), %edx
	leaq	1(%rax), %rcx
	leaq	0(,%r12,4), %r10
	movq	%rcx, 2560(%rsp)
	movl	%edx, %eax
	shrl	$11, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, %edx
	movq	(%rbx), %rax
	movl	%edx, %r8d
	shrl	$18, %r8d
	xorl	%r8d, %edx
	subl	%esi, %edx
	cmpq	$623, %rcx
	movl	%edx, (%rax,%r12,4)
	ja	.L608
.L549:
	leaq	1(%rcx), %rax
	movl	64(%rsp,%rcx,4), %ecx
	movq	%rax, 2560(%rsp)
	movl	%ecx, %eax
	shrl	$11, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$18, %eax
	xorl	%eax, %ecx
	jmp	.L556
.L603:
	movq	%r10, 48(%rsp)
	movq	%rbp, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	2560(%rsp), %rcx
	movq	48(%rsp), %r10
	jmp	.L546
.L601:
	movq	%rbp, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	2560(%rsp), %rax
	jmp	.L541
.L557:
	movslq	60(%rsp), %r9
	movslq	56(%rsp), %r11
	movq	%rbx, %rsi
	movl	2800(%rsp), %ebx
	cmpq	%r11, %r9
	movq	%r11, %r13
	leaq	-1(%r9), %rdi
	setg	%bpl
	cmpl	$-1, %ebx
	setge	%r8b
	movl	%ebp, %ecx
	testq	%r9, %r9
	setg	%dl
	andl	%r8d, %ecx
	andb	%dl, %cl
	jne	.L559
	cmpq	%r11, %rdi
	setge	%cl
	andl	%edx, %r8d
	movl	%r8d, %edx
	andb	%cl, %dl
	jne	.L609
	xorl	%edx, %edx
	cmpq	%r11, %rdi
	movq	(%rsi), %r10
	jge	.L561
.L562:
	cmpq	%r11, %r9
	jg	.L610
.L563:
	cmpq	$1, %r9
	setg	%r15b
	cmpl	$-3, %ebx
	setge	%r14b
	testb	%r14b, %r15b
	je	.L564
	testb	%cl, %cl
	jne	.L611
.L564:
	cmpl	$1, %ebx
	setg	%bl
	testb	%bpl, %bl
	je	.L565
	testq	%r9, %r9
	jns	.L612
.L565:
	testb	%r8b, %r8b
	jne	.L613
.L566:
	testb	%bpl, %bpl
	je	.L567
	testb	%cl, %cl
	jne	.L614
.L567:
	xorl	%edx, %edx
	jmp	.L571
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L616:
	addq	$1, 48(%rsi)
.L569:
	cmpq	%rdx, %r12
	je	.L615
.L575:
	addq	$1, %rdx
.L571:
	movslq	(%rax,%rdx,4), %rcx
	movslq	(%r10,%rdx,4), %r8
	addq	%r8, %rcx
	cmpq	%rcx, %r9
	jle	.L616
	cmpq	%rcx, %r11
	jle	.L570
	addq	$1, 56(%rsi)
	cmpq	%rdx, %r12
	jne	.L575
.L615:
	vzeroupper
	movq	%rsi, %rax
	vmovups	2576(%rsp), %xmm6
	vmovups	2592(%rsp), %xmm7
	vmovups	2608(%rsp), %xmm8
	vmovups	2624(%rsp), %xmm9
	vmovups	2640(%rsp), %xmm10
	vmovups	2656(%rsp), %xmm11
	vmovups	2672(%rsp), %xmm12
	vmovups	2688(%rsp), %xmm13
	addq	$2712, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L570:
	addq	$1, 64(%rsi)
	jmp	.L569
.L608:
	movq	%r10, 48(%rsp)
	movq	%rbp, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	2560(%rsp), %rcx
	movq	48(%rsp), %r10
	jmp	.L549
.L607:
	movq	%rbp, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	2560(%rsp), %rax
	jmp	.L547
.L559:
	movq	(%rsi), %rdx
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	movl	%ecx, %r8d
	movl	%r11d, (%rdx)
	movl	$2, %edx
	movl	%r10d, (%rax)
	movq	(%rsi), %r10
	movl	%edi, 4(%r10)
	movl	%r14d, 4(%rax)
.L561:
	movl	%edi, (%r10,%rdx,4)
	movl	%edi, (%rax,%rdx,4)
	addq	$1, %rdx
	jmp	.L562
.L609:
	movq	(%rsi), %r10
	xorl	%r15d, %r15d
	movl	%edx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movl	%edi, (%r10)
	movl	%r15d, (%rax)
	jmp	.L561
.L614:
	movl	%r13d, (%r10,%rdx,4)
	movl	%edi, (%rax,%rdx,4)
	jmp	.L567
.L612:
	movl	%r13d, (%r10,%rdx,4)
	movl	$-1, (%rax,%rdx,4)
	addq	$1, %rdx
	jmp	.L565
.L611:
	movl	%edi, (%r10,%rdx,4)
	movl	$1, (%rax,%rdx,4)
	addq	$1, %rdx
	jmp	.L564
.L613:
	xorl	%r8d, %r8d
	movl	%r8d, (%r10,%rdx,4)
	movl	%r8d, (%rax,%rdx,4)
	addq	$1, %rdx
	jmp	.L566
.L610:
	movl	%r13d, (%r10,%rdx,4)
	movl	%r13d, (%rax,%rdx,4)
	addq	$1, %rdx
	jmp	.L563
.L576:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
	movq	%rbx, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14996:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14996-.LLSDACSB14996
.LLSDACSB14996:
	.uleb128 .LEHB7-.LFB14996
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L576-.LFB14996
	.uleb128 0
	.uleb128 .LEHB8-.LFB14996
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE14996:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC91:
	.ascii "Usage: \0"
.LC92:
	.ascii " [N>=8] [reps>0] [q>0]\12\0"
.LC93:
	.ascii "N must be a positive integer\12\0"
	.align 8
.LC94:
	.ascii "reps must be a positive integer\12\0"
.LC95:
	.ascii "q must be a positive integer\12\0"
.LC96:
	.ascii "N must be in [8, SIZE_MAX]\12\0"
	.align 8
.LC97:
	.ascii "reps must be in [1, INT32_MAX]\12\0"
.LC98:
	.ascii "q must be in [1, INT32_MAX]\12\0"
	.align 8
.LC99:
	.ascii "========================================\12\0"
	.align 8
.LC100:
	.ascii "Polynomial canonical modular-add benchmark\12\0"
.LC101:
	.ascii "Windows\0"
	.align 8
.LC102:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC103:
	.ascii "ProcessorNameString\0"
.LC104:
	.ascii "basic_string::append\0"
.LC105:
	.ascii "System Information:\12\0"
.LC106:
	.ascii "  Hostname: \0"
.LC107:
	.ascii "  OS: \0"
.LC108:
	.ascii "  CPU Model: \0"
.LC109:
	.ascii "  CPU MHz: \0"
.LC110:
	.ascii "  Memory: \0"
	.align 8
.LC111:
	.ascii "========================================\12\12\0"
.LC112:
	.ascii "N = \0"
.LC113:
	.ascii ", reps = \0"
	.align 8
.LC114:
	.ascii "Inputs are regenerated per q inside [-floor(q/2), ceil(q/2)).\12\0"
	.align 8
.LC115:
	.ascii "Boundary vectors are injected and correction rates are reported.\12\0"
	.align 8
.LC116:
	.ascii "SIMD status: portable scalar source only; an O3/SIMD-labelled binary relies on compiler auto-vectorization, not explicit intrinsics.\12\12\0"
.LC117:
	.ascii "PRECHECK\0"
.LC118:
	.ascii "POSTCHECK\0"
.LC119:
	.ascii "runtime\0"
.LC122:
	.ascii "compile_time\0"
.LC123:
	.ascii "results_poly_mod.csv\0"
	.align 8
.LC124:
	.ascii "ERROR: could not open results_poly_mod.csv for writing\12\0"
	.align 8
.LC125:
	.ascii "q,N,reps,classic,reist,speedup,mode,vectorization,upper_corrections,lower_corrections,no_corrections\12\0"
	.align 8
.LC126:
	.ascii "CSV written to results_poly_mod.csv\12\0"
.LC127:
	.ascii ",compiler_auto_only,\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB15126:
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
	subq	$1128, %rsp
	.seh_stackalloc	1128
	.seh_endprologue
	movl	%ecx, %r13d
	movq	%rdx, %rsi
	call	__main
	cmpl	$4, %r13d
	jg	.L998
	cmpl	$1, %r13d
	movq	$1024, 144(%rsp)
	movl	$50000, %r12d
	movl	$1024, %ebx
	movq	$50000, 152(%rsp)
	movq	$0, 160(%rsp)
	jg	.L999
.L631:
	movq	.refptr._ZSt4cout(%rip), %rbp
	movl	$41, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	256(%rsp), %r14
	leaq	320(%rsp), %r15
	movq	0(%rbp), %rax
	movq	%rbp, %rcx
	movq	-24(%rax), %rdx
	addq	%rbp, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC99(%rip), %rdx
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$43, %r8d
	leaq	.LC100(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC99(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE9:
	movl	$256, %ecx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	leaq	192(%rsp), %rax
	movq	%rdi, 280(%rsp)
	leaq	400(%rsp), %rdi
	movq	%rax, 72(%rsp)
	leaq	140(%rsp), %rdx
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	%rax, 208(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	%rax, 272(%rsp)
	xorl	%eax, %eax
	movq	%rax, 312(%rsp)
	xorl	%eax, %eax
	rep stosb
	leaq	400(%rsp), %rdi
	movq	%r10, 184(%rsp)
	movb	$0, 192(%rsp)
	movq	%rdi, %rcx
	movq	%r11, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	%r14, 240(%rsp)
	movq	%rsi, 248(%rsp)
	movb	$0, 256(%rsp)
	movb	$0, 288(%rsp)
	movq	%r15, 304(%rsp)
	movb	$0, 320(%rsp)
	movl	$256, 140(%rsp)
	movq	%rdi, 48(%rsp)
.LEHB10:
	call	*__imp_GetComputerNameA(%rip)
	testl	%eax, %eax
	jne	.L1000
.L632:
	leaq	304(%rsp), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	leaq	168(%rsp), %rax
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	movq	%rax, 32(%rsp)
	leaq	.LC102(%rip), %rdx
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L952
	leaq	656(%rsp), %rax
	movq	%rax, 56(%rsp)
.L633:
	leaq	660(%rsp), %rdi
	movl	$15, %ecx
	xorl	%eax, %eax
	rep stosl
	movq	56(%rsp), %rcx
	movl	$64, 656(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	je	.L635
	leaq	336(%rsp), %rcx
	movl	$20, %eax
	shrx	%rax, 664(%rsp), %rdx
	call	_ZNSt7__cxx119to_stringEy
	movq	344(%rsp), %rdi
	movabsq	$-9223372036854775804, %rax
	addq	%rdi, %rax
	cmpq	$2, %rax
	jbe	.L1001
	movq	336(%rsp), %r9
	leaq	352(%rsp), %rax
	leaq	3(%rdi), %r10
	movq	%rax, 64(%rsp)
	cmpq	%rax, %r9
	je	.L637
	movq	352(%rsp), %rsi
	cmpq	%r10, %rsi
	jb	.L638
.L785:
	movw	$19744, (%r9,%rdi)
	movb	$66, 2(%r9,%rdi)
.L639:
	movq	336(%rsp), %rax
	movq	%r10, 344(%rsp)
	leaq	384(%rsp), %rdx
	movb	$0, 3(%rax,%rdi)
	movq	336(%rsp), %rax
	cmpq	64(%rsp), %rax
	movq	%rdx, 368(%rsp)
	movq	344(%rsp), %r8
	je	.L1002
	movq	%rax, 368(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 384(%rsp)
.L644:
	movq	240(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%r8, 376(%rsp)
	movb	$0, 352(%rsp)
	cmpq	%r14, %rcx
	movq	%rax, 336(%rsp)
	je	.L1003
	movq	368(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L782
	vmovq	%r8, %xmm4
	testq	%rcx, %rcx
	vpinsrq	$1, 384(%rsp), %xmm4, %xmm0
	movq	256(%rsp), %r9
	movq	%rax, 240(%rsp)
	vmovdqu	%xmm0, 248(%rsp)
	je	.L651
	movq	%rcx, 368(%rsp)
	movq	%r9, 384(%rsp)
.L650:
	movq	368(%rsp), %rax
	movb	$0, (%rax)
	movq	368(%rsp), %rcx
	cmpq	%rdx, %rcx
	je	.L652
	movq	384(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L652:
	movq	336(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L635
	movq	352(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L635:
	movl	$20, %r8d
	leaq	.LC105(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC106(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	280(%rsp), %r8
	movq	272(%rsp), %rdx
	movq	%rbp, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$6, %r8d
	leaq	.LC107(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	312(%rsp), %r8
	movq	304(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$13, %r8d
	leaq	.LC108(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	184(%rsp), %r8
	movq	176(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$11, %r8d
	leaq	.LC109(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	216(%rsp), %r8
	movq	208(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$10, %r8d
	leaq	.LC110(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	248(%rsp), %r8
	movq	240(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE10:
	movq	304(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L654
	movq	320(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L654:
	movq	272(%rsp), %rcx
	cmpq	88(%rsp), %rcx
	je	.L655
	movq	288(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L655:
	movq	240(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L656
	movq	256(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L656:
	movq	208(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L657
	movq	224(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L657:
	movq	176(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L658
	movq	192(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L658:
	movl	$42, %r8d
	leaq	.LC111(%rip), %rdx
	movq	%rbp, %rcx
	movl	%r12d, %esi
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$4, %r8d
	leaq	.LC112(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$9, %r8d
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	movl	%r12d, %edx
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$62, %r8d
	leaq	.LC114(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$65, %r8d
	leaq	.LC115(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC116(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE11:
	cmpl	$4, %r13d
	je	.L1004
	movl	$288, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	48(%rsp), %rcx
	movq	%rax, %r13
	movl	$1000003, %r8d
	movq	%rbx, %rdx
	leaq	288(%rax), %rax
	movq	%rax, 64(%rsp)
.LEHB13:
	call	_ZN12_GLOBAL__N_1L13make_workloadEyi
.LEHE13:
	leaq	336(%rsp), %r14
	movq	%rbx, %rdx
	movq	%r14, %rcx
.LEHB14:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE14:
	leaq	368(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB15:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE15:
	movq	400(%rsp), %r15
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	336(%rsp), %r8
	movq	%r15, %rcx
	movq	%rdx, 72(%rsp)
	call	classic_poly_const_1000003
	movq	72(%rsp), %rdx
	movq	%rbx, %r9
	movq	%r15, %rcx
	movq	368(%rsp), %r8
	call	reist_poly_const_1000003
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	leaq	.LC117(%rip), %rax
	movl	$1000003, %r9d
	movq	%rax, 32(%rsp)
.LEHB16:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE16:
	testb	%al, %al
	jne	.L1005
.L695:
	movq	%r13, %r15
	xorl	%r12d, %r12d
.L705:
	movq	368(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L706
	movq	384(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L706:
	movq	336(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L707
	movq	352(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L707:
	movq	48(%rsp), %rcx
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
	testb	%r12b, %r12b
	je	.L977
	movq	48(%rsp), %rcx
	movl	$10000019, %r8d
	movq	%rbx, %rdx
.LEHB17:
	call	_ZN12_GLOBAL__N_1L13make_workloadEyi
.LEHE17:
	movq	%rbx, %rdx
	movq	%r14, %rcx
.LEHB18:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE18:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB19:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE19:
	movq	400(%rsp), %r12
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	336(%rsp), %r8
	movq	%r12, %rcx
	movq	%rdx, 72(%rsp)
	call	classic_poly_const_10000019
	movq	72(%rsp), %rdx
	movq	%rbx, %r9
	movq	%r12, %rcx
	movq	368(%rsp), %r8
	call	reist_poly_const_10000019
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	leaq	.LC117(%rip), %rax
	movl	$10000019, %r9d
	movq	%rax, 32(%rsp)
.LEHB20:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
	testb	%al, %al
	je	.L715
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	testl	%esi, %esi
	movq	%rax, 72(%rsp)
	jle	.L719
	.p2align 4,,10
	.p2align 3
.L716:
	movq	336(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	400(%rsp), %rcx
	call	classic_poly_const_10000019
	addl	$1, %r12d
	cmpl	%r12d, %esi
	jne	.L716
.L719:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	testl	%esi, %esi
	movq	%rbx, %r9
	movq	%rax, 88(%rsp)
	jle	.L718
	.p2align 4,,10
	.p2align 3
.L717:
	movq	368(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	reist_poly_const_10000019
	addl	$1, %r12d
	cmpl	%r12d, %esi
	jne	.L717
	movq	%r9, %rbx
.L718:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 104(%rsp)
	leaq	.LC118(%rip), %rax
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	movq	%rax, 32(%rsp)
	movl	$10000019, %r9d
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE20:
	testb	%al, %al
	movl	%eax, %r12d
	jne	.L1006
.L715:
	xorl	%r12d, %r12d
.L725:
	movq	368(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L726
	movq	384(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L726:
	movq	336(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L727
	movq	352(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L727:
	movq	48(%rsp), %rcx
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
	testb	%r12b, %r12b
	je	.L977
	movq	48(%rsp), %rcx
	movl	$100000007, %r8d
	movq	%rbx, %rdx
.LEHB21:
	call	_ZN12_GLOBAL__N_1L13make_workloadEyi
.LEHE21:
	movq	%rbx, %rdx
	movq	%r14, %rcx
.LEHB22:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE22:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB23:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE23:
	movq	400(%rsp), %r12
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	336(%rsp), %r8
	movq	%r12, %rcx
	movq	%rdx, 72(%rsp)
	call	classic_poly_const_100000007
	movq	72(%rsp), %rdx
	movq	%rbx, %r9
	movq	%r12, %rcx
	movq	368(%rsp), %r8
	call	reist_poly_const_100000007
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	leaq	.LC117(%rip), %rax
	movl	$100000007, %r9d
	movq	%rax, 32(%rsp)
.LEHB24:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE24:
	testb	%al, %al
	jne	.L1007
.L735:
	xorl	%r12d, %r12d
.L744:
	movq	368(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L745
	movq	384(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L745:
	movq	336(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L746
	movq	352(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L746:
	movq	48(%rsp), %rcx
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
	testb	%r12b, %r12b
	je	.L977
	movq	48(%rsp), %rcx
	movl	$1000000007, %r8d
	movq	%rbx, %rdx
.LEHB25:
	call	_ZN12_GLOBAL__N_1L13make_workloadEyi
.LEHE25:
	movq	%rbx, %rdx
	movq	%r14, %rcx
.LEHB26:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE26:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB27:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE27:
	movq	400(%rsp), %r12
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	336(%rsp), %r8
	movq	%r12, %rcx
	movq	%rdx, 72(%rsp)
	call	classic_poly_const_1000000007
	movq	72(%rsp), %rdx
	movq	%rbx, %r9
	movq	%r12, %rcx
	movq	368(%rsp), %r8
	call	reist_poly_const_1000000007
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	leaq	.LC117(%rip), %rax
	movl	$1000000007, %r9d
	movq	%rax, 32(%rsp)
.LEHB28:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
	testb	%al, %al
	je	.L754
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rax, 72(%rsp)
	jmp	.L755
.L756:
	movq	336(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	400(%rsp), %rcx
	call	classic_poly_const_1000000007
	addl	$1, %r12d
.L755:
	cmpl	%r12d, %esi
	jg	.L756
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rbx, %r9
	movq	%rax, 88(%rsp)
	jmp	.L757
.L758:
	movq	368(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	reist_poly_const_1000000007
	addl	$1, %r12d
.L757:
	cmpl	%r12d, %esi
	jg	.L758
	movq	%r9, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r12
	leaq	.LC118(%rip), %rax
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	movq	%rax, 32(%rsp)
	movl	$1000000007, %r9d
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE28:
	testb	%al, %al
	movl	%eax, %edi
	je	.L754
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	subq	88(%rsp), %r12
	vmovq	%r13, %xmm5
	movq	56(%rsp), %rdx
	movq	96(%rsp), %rcx
	movl	%eax, 676(%rsp)
	vmovdqu	%xmm0, 660(%rsp)
	leaq	.LC122(%rip), %rax
	movq	%rax, 696(%rsp)
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	movq	%rbx, 664(%rsp)
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vmovapd	%xmm0, %xmm1
	vcvtsi2sdq	%r12, %xmm4, %xmm0
	movq	464(%rsp), %rax
	vunpcklpd	%xmm0, %xmm1, %xmm0
	vmovddup	.LC121(%rip), %xmm1
	movl	$1000000007, 656(%rsp)
	movq	%rax, 720(%rsp)
	movq	64(%rsp), %rax
	vdivpd	%xmm1, %xmm0, %xmm0
	movl	%esi, 672(%rsp)
	movq	%rax, 320(%rsp)
	vmovupd	%xmm0, 680(%rsp)
	vmovdqu	448(%rsp), %xmm0
	vmovdqu	%xmm0, 704(%rsp)
	vpinsrq	$1, %r15, %xmm5, %xmm0
	vmovdqu	%xmm0, 304(%rsp)
.LEHB29:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
.LEHE29:
	movq	320(%rsp), %rax
	movq	304(%rsp), %r13
	movabsq	$-3750763034362895579, %r8
	movabsq	$1099511628211, %r9
	movq	312(%rsp), %r15
	movq	376(%rsp), %rcx
	movq	%rax, 64(%rsp)
	movq	368(%rsp), %rax
	jmp	.L759
	.p2align 5
.L760:
	movl	(%rax), %edx
	addq	$4, %rax
	xorq	%rdx, %r8
	imulq	%r9, %r8
.L759:
	cmpq	%rcx, %rax
	jne	.L760
	movq	336(%rsp), %rcx
	movq	344(%rsp), %r9
	movabsq	$-3750763034362895579, %rdx
	movabsq	$1099511628211, %r10
	jmp	.L761
	.p2align 5
.L762:
	movl	(%rcx), %eax
	addq	$4, %rcx
	xorq	%rax, %rdx
	imulq	%r10, %rdx
.L761:
	cmpq	%r9, %rcx
	jne	.L762
	movq	56(%rsp), %rcx
.LEHB30:
	call	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
.LEHE30:
	jmp	.L763
.L952:
	xorl	%eax, %eax
	leaq	656(%rsp), %rdi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$256, %ecx
	leaq	.LC103(%rip), %rdx
	movl	$256, 368(%rsp)
	rep stosb
	leaq	656(%rsp), %rdi
	leaq	368(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, 40(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%rdi, 32(%rsp)
.LEHB31:
	call	*__imp_RegQueryValueExA(%rip)
	testl	%eax, %eax
	jne	.L634
	leaq	176(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L634:
	movq	168(%rsp), %rcx
	call	*__imp_RegCloseKey(%rip)
	jmp	.L633
.L1000:
	leaq	272(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE31:
	jmp	.L632
.L999:
	movq	8(%rsi), %rcx
	leaq	144(%rsp), %rdx
.LEHB32:
	call	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
	testb	%al, %al
	je	.L1008
	cmpl	$2, %r13d
	je	.L623
	movq	16(%rsi), %rcx
	leaq	152(%rsp), %rdx
	call	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
	testb	%al, %al
	je	.L624
	cmpl	$4, %r13d
	jne	.L1009
	movq	24(%rsi), %rcx
	leaq	160(%rsp), %rdx
	call	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
	testb	%al, %al
	je	.L627
	movq	144(%rsp), %rbx
	cmpq	$7, %rbx
	jle	.L628
	movq	152(%rsp), %r12
	cmpq	$2147483647, %r12
	jg	.L629
	cmpq	$2147483647, 160(%rsp)
	jle	.L631
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE32:
	jmp	.L619
.L1005:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	movq	%rax, 72(%rsp)
	jle	.L699
	.p2align 4,,10
	.p2align 3
.L696:
	movq	336(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	400(%rsp), %rcx
	call	classic_poly_const_1000003
	addl	$1, %r15d
	cmpl	%r15d, %esi
	jne	.L696
.L699:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	testl	%esi, %esi
	movq	%rbx, %r9
	movq	%rax, %r15
	jle	.L698
	.p2align 4,,10
	.p2align 3
.L697:
	movq	368(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	reist_poly_const_1000003
	addl	$1, %r12d
	cmpl	%r12d, %esi
	jne	.L697
	movq	%r9, %rbx
.L698:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 88(%rsp)
	leaq	.LC118(%rip), %rax
	movq	48(%rsp), %rcx
	movq	%rdi, %r8
	movq	%r14, %rdx
	movq	%rax, 32(%rsp)
	movl	$1000003, %r9d
.LEHB33:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE33:
	testb	%al, %al
	movl	%eax, %r12d
	je	.L695
	vpxor	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovq	%r13, %xmm4
	xorl	%r8d, %r8d
	leaq	.LC122(%rip), %rax
	movq	56(%rsp), %rdx
	vmovdqu	%xmm0, 660(%rsp)
	movq	96(%rsp), %rcx
	movq	%rax, 696(%rsp)
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	movl	%r8d, 676(%rsp)
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	88(%rsp), %rax
	movl	$1000003, 656(%rsp)
	movq	%rbx, 664(%rsp)
	subq	%r15, %rax
	movl	%esi, 672(%rsp)
	vcvtsi2sdq	%rax, %xmm5, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC121(%rip), %xmm1
	movq	464(%rsp), %rax
	vdivpd	%xmm1, %xmm0, %xmm0
	movq	%rax, 720(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 320(%rsp)
	vmovupd	%xmm0, 680(%rsp)
	vmovdqu	448(%rsp), %xmm0
	vmovdqu	%xmm0, 704(%rsp)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, 304(%rsp)
.LEHB34:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
.LEHE34:
	movq	320(%rsp), %rax
	movq	376(%rsp), %rcx
	movabsq	$-3750763034362895579, %r8
	movq	304(%rsp), %r13
	movq	312(%rsp), %r15
	movq	%rax, 64(%rsp)
	movq	368(%rsp), %rax
	cmpq	%rcx, %rax
	je	.L701
	movabsq	$1099511628211, %r9
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L702:
	movl	(%rax), %edx
	addq	$4, %rax
	xorq	%rdx, %r8
	imulq	%r9, %r8
	cmpq	%rax, %rcx
	jne	.L702
.L701:
	movq	336(%rsp), %rcx
	movq	344(%rsp), %r9
	movabsq	$-3750763034362895579, %rdx
	cmpq	%r9, %rcx
	je	.L703
	movabsq	$1099511628211, %r10
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L704:
	movl	(%rcx), %eax
	addq	$4, %rcx
	xorq	%rax, %rdx
	imulq	%r10, %rdx
	cmpq	%rcx, %r9
	jne	.L704
.L703:
	movq	56(%rsp), %rcx
.LEHB35:
	call	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
.LEHE35:
	jmp	.L705
.L1009:
	movq	144(%rsp), %rbx
	cmpq	$7, %rbx
	jg	.L1010
.L628:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC96(%rip), %rdx
.LEHB36:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L619:
	movl	$2, %edi
.L617:
	movl	%edi, %eax
	addq	$1128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1010:
	movq	152(%rsp), %r12
	cmpq	$2147483647, %r12
	jle	.L631
.L629:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L619
.L977:
	movl	$1, %edi
.L686:
	testq	%r13, %r13
	je	.L617
	movq	64(%rsp), %rdx
	movq	%r13, %rcx
	subq	%r13, %rdx
	call	_ZdlPvy
	jmp	.L617
.L998:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$7, %r8d
	leaq	.LC91(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC92(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE36:
	jmp	.L619
.L1004:
	movl	$72, %ecx
.LEHB37:
	call	_Znwy
.LEHE37:
	movq	160(%rsp), %r12
	movq	48(%rsp), %rcx
	movq	%rax, %r13
	movq	%rbx, %rdx
	leaq	72(%rax), %rax
	movl	%r12d, %r8d
	movq	%rax, 64(%rsp)
.LEHB38:
	call	_ZN12_GLOBAL__N_1L13make_workloadEyi
.LEHE38:
	movq	%rbx, %rdx
	leaq	336(%rsp), %rcx
.LEHB39:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE39:
	movq	%rbx, %rdx
	leaq	368(%rsp), %rcx
.LEHB40:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE40:
	movq	400(%rsp), %r15
	movl	%r12d, 32(%rsp)
	movq	%rbx, %r9
	movq	424(%rsp), %rdx
	movq	336(%rsp), %r8
	movq	%r15, %rcx
	movq	%rdx, 72(%rsp)
	call	classic_poly_runtime_kernel
	movl	%r12d, 32(%rsp)
	movq	72(%rsp), %rdx
	movq	%r15, %rcx
	movq	368(%rsp), %r8
	call	reist_poly_runtime_kernel
	leaq	.LC117(%rip), %rax
	movl	%r12d, %r9d
	movq	48(%rsp), %rcx
	movq	%rax, 32(%rsp)
	leaq	368(%rsp), %r8
	leaq	336(%rsp), %rdx
.LEHB41:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
	testb	%al, %al
	je	.L672
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r15d, %r15d
	testl	%esi, %esi
	movq	%rbx, %r9
	movq	%rax, 72(%rsp)
	jle	.L676
	.p2align 4,,10
	.p2align 3
.L673:
	movl	%r12d, 32(%rsp)
	movq	336(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	classic_poly_runtime_kernel
	addl	$1, %r15d
	cmpl	%r15d, %esi
	jne	.L673
	movq	%r9, %rbx
.L676:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r15d, %r15d
	testl	%esi, %esi
	movq	%rbx, %r9
	movq	%rax, 88(%rsp)
	jle	.L675
	.p2align 4,,10
	.p2align 3
.L674:
	movl	%r12d, 32(%rsp)
	movq	368(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	reist_poly_runtime_kernel
	addl	$1, %r15d
	cmpl	%r15d, %esi
	jne	.L674
	movq	%r9, %rbx
.L675:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r15
	leaq	.LC118(%rip), %rax
	movq	48(%rsp), %rcx
	movl	%r12d, %r9d
	leaq	368(%rsp), %r8
	movq	%rax, 32(%rsp)
	leaq	336(%rsp), %rdx
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE41:
	testb	%al, %al
	movl	%eax, %edi
	jne	.L1011
.L672:
	movq	%r13, %r15
	xorl	%edi, %edi
.L763:
	movq	368(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L764
	movq	384(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L764:
	movq	336(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L765
	movq	352(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L765:
	movq	48(%rsp), %rcx
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
	testb	%dil, %dil
	je	.L977
	movq	56(%rsp), %rcx
	movl	$16, %r8d
	leaq	.LC123(%rip), %rdx
.LEHB42:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE42:
	movl	888(%rsp), %edi
	andl	$5, %edi
	jne	.L1012
	movq	56(%rsp), %rcx
	leaq	.LC125(%rip), %rdx
.LEHB43:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpq	%r15, %r13
	movq	%r13, %rbx
	je	.L778
	.p2align 4,,10
	.p2align 3
.L777:
	vmovsd	32(%rbx), %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%esi, %esi
	vcomisd	%xmm2, %xmm1
	jbe	.L775
	vmovsd	24(%rbx), %xmm0
	vdivsd	%xmm1, %xmm0, %xmm3
	vmovq	%xmm3, %rsi
.L775:
	movl	(%rbx), %edx
	movq	56(%rsp), %rcx
	call	_ZNSolsEi
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	8(%rbx), %rdx
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	16(%rbx), %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	vmovsd	24(%rbx), %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	vmovsd	32(%rbx), %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	vmovq	%rsi, %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	40(%rbx), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$20, %r8d
	leaq	.LC127(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	56(%rbx), %rdx
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	64(%rbx), %rdx
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addq	$72, %rbx
	cmpq	%rbx, %r15
	jne	.L777
.L778:
	leaq	.LC126(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L773:
	movq	56(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L686
.L1003:
	movq	368(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L782
	vmovq	%r8, %xmm4
	movq	%rax, 240(%rsp)
	vpinsrq	$1, 384(%rsp), %xmm4, %xmm0
	vmovdqu	%xmm0, 248(%rsp)
.L651:
	movq	%rdx, 368(%rsp)
	jmp	.L650
.L1012:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE43:
	movl	$1, %edi
	jmp	.L773
.L637:
	cmpq	$15, %r10
	jbe	.L785
	movq	$30, 104(%rsp)
.L786:
	movq	104(%rsp), %rax
	leaq	1(%rax), %rcx
	jmp	.L641
.L638:
	leaq	(%rsi,%rsi), %rax
	cmpq	%rax, %r10
	movq	%rax, 104(%rsp)
	jb	.L640
	movq	%r10, 104(%rsp)
	leaq	4(%rdi), %rcx
.L641:
	movq	%r9, 112(%rsp)
	movq	%r10, 120(%rsp)
.LEHB44:
	call	_Znwy
.LEHE44:
	movq	112(%rsp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	memcpy
	movq	112(%rsp), %r9
	cmpq	64(%rsp), %r9
	movw	$19744, (%rsi,%rdi)
	movb	$66, 2(%rsi,%rdi)
	movq	120(%rsp), %r10
	je	.L642
	movq	352(%rsp), %rax
	movq	%r9, %rcx
	movq	%r10, 112(%rsp)
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	movq	112(%rsp), %r10
.L642:
	movq	104(%rsp), %rax
	movq	%rsi, 336(%rsp)
	movq	%rax, 352(%rsp)
	jmp	.L639
.L1011:
	vxorpd	%xmm4, %xmm4, %xmm4
	vpxor	%xmm0, %xmm0, %xmm0
	subq	88(%rsp), %r15
	xorl	%r9d, %r9d
	vcvtsi2sdq	%r15, %xmm4, %xmm1
	movq	56(%rsp), %rdx
	leaq	.LC119(%rip), %rax
	vmovdqu	%xmm0, 660(%rsp)
	movq	%rax, 696(%rsp)
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	movq	96(%rsp), %rcx
	movl	%r9d, 676(%rsp)
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC121(%rip), %xmm1
	movq	464(%rsp), %rax
	vmovq	%r13, %xmm4
	movl	%r12d, 656(%rsp)
	vdivpd	%xmm1, %xmm0, %xmm0
	movq	%rax, 720(%rsp)
	movq	64(%rsp), %rax
	movq	%rbx, 664(%rsp)
	movl	%esi, 672(%rsp)
	movq	%rax, 320(%rsp)
	vmovupd	%xmm0, 680(%rsp)
	vmovdqu	448(%rsp), %xmm0
	vmovdqu	%xmm0, 704(%rsp)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, 304(%rsp)
.LEHB45:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
.LEHE45:
	movq	320(%rsp), %rax
	movq	304(%rsp), %r13
	movabsq	$-3750763034362895579, %r8
	movabsq	$1099511628211, %r9
	movq	312(%rsp), %r15
	movq	376(%rsp), %rcx
	movq	%rax, 64(%rsp)
	movq	368(%rsp), %rax
	jmp	.L678
	.p2align 5
.L679:
	movl	(%rax), %edx
	addq	$4, %rax
	xorq	%rdx, %r8
	imulq	%r9, %r8
.L678:
	cmpq	%rax, %rcx
	jne	.L679
	movq	336(%rsp), %rcx
	movq	344(%rsp), %r9
	movabsq	$-3750763034362895579, %rdx
	movabsq	$1099511628211, %r10
	jmp	.L680
	.p2align 5
.L681:
	movl	(%rcx), %eax
	addq	$4, %rcx
	xorq	%rax, %rdx
	imulq	%r10, %rdx
.L680:
	cmpq	%rcx, %r9
	jne	.L681
	movq	56(%rsp), %rcx
.LEHB46:
	call	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
.LEHE46:
	jmp	.L763
.L1007:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rax, 72(%rsp)
	jmp	.L736
.L737:
	movq	336(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	%rbx, %r9
	movq	400(%rsp), %rcx
	call	classic_poly_const_100000007
	addl	$1, %r12d
.L736:
	cmpl	%r12d, %esi
	jg	.L737
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rbx, %r9
	movq	%rax, 88(%rsp)
	jmp	.L738
.L739:
	movq	368(%rsp), %r8
	movq	424(%rsp), %rdx
	movq	400(%rsp), %rcx
	call	reist_poly_const_100000007
	addl	$1, %r12d
.L738:
	cmpl	%r12d, %esi
	jg	.L739
	movq	%r9, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 104(%rsp)
	leaq	.LC118(%rip), %rcx
	movl	$100000007, %r9d
	movq	%rdi, %r8
	movq	%r14, %rdx
	movq	%rcx, 32(%rsp)
	movq	48(%rsp), %rcx
.LEHB47:
	call	_ZN12_GLOBAL__N_1L14verify_outputsERKNS_8WorkloadERKSt6vectorIiSaIiEES7_iPKc
.LEHE47:
	testb	%al, %al
	movl	%eax, %r12d
	je	.L735
	vpxor	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	104(%rsp), %rax
	xorl	%edx, %edx
	leaq	.LC122(%rip), %rcx
	subq	88(%rsp), %rax
	vmovdqu	%xmm0, 660(%rsp)
	vmovq	%r13, %xmm5
	movq	%rcx, 696(%rsp)
	movq	80(%rsp), %rcx
	vcvtsi2sdq	%rax, %xmm3, %xmm1
	subq	72(%rsp), %rcx
	movq	464(%rsp), %rax
	movl	%edx, 676(%rsp)
	vcvtsi2sdq	%rcx, %xmm3, %xmm0
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC121(%rip), %xmm1
	movq	56(%rsp), %rdx
	movq	%rax, 720(%rsp)
	movq	96(%rsp), %rcx
	vdivpd	%xmm1, %xmm0, %xmm0
	movq	64(%rsp), %rax
	movl	$100000007, 656(%rsp)
	movq	%rbx, 664(%rsp)
	movl	%esi, 672(%rsp)
	movq	%rax, 320(%rsp)
	vmovupd	%xmm0, 680(%rsp)
	vmovdqu	448(%rsp), %xmm0
	vmovdqu	%xmm0, 704(%rsp)
	vpinsrq	$1, %r15, %xmm5, %xmm0
	vmovdqu	%xmm0, 304(%rsp)
.LEHB48:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
.LEHE48:
	movq	320(%rsp), %rax
	movq	304(%rsp), %r13
	movabsq	$-3750763034362895579, %r8
	movabsq	$1099511628211, %r9
	movq	312(%rsp), %r15
	movq	376(%rsp), %rcx
	movq	%rax, 64(%rsp)
	movq	368(%rsp), %rax
	jmp	.L740
	.p2align 5
.L741:
	movl	(%rax), %edx
	addq	$4, %rax
	xorq	%rdx, %r8
	imulq	%r9, %r8
.L740:
	cmpq	%rax, %rcx
	jne	.L741
	movq	336(%rsp), %rcx
	movq	344(%rsp), %r9
	movabsq	$-3750763034362895579, %rdx
	movabsq	$1099511628211, %r10
	jmp	.L742
	.p2align 5
.L743:
	movl	(%rcx), %eax
	addq	$4, %rcx
	xorq	%rax, %rdx
	imulq	%r10, %rdx
.L742:
	cmpq	%rcx, %r9
	jne	.L743
	movq	56(%rsp), %rcx
.LEHB49:
	call	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
.LEHE49:
	jmp	.L744
.L1006:
	vxorpd	%xmm5, %xmm5, %xmm5
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	movq	56(%rsp), %rdx
	leaq	.LC122(%rip), %rax
	vmovdqu	%xmm0, 660(%rsp)
	movq	%rax, 696(%rsp)
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	movl	%ecx, 676(%rsp)
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	104(%rsp), %rax
	subq	88(%rsp), %rax
	movl	$10000019, 656(%rsp)
	vcvtsi2sdq	%rax, %xmm5, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC121(%rip), %xmm1
	movq	464(%rsp), %rax
	vmovq	%r13, %xmm5
	movq	96(%rsp), %rcx
	movq	%rbx, 664(%rsp)
	vdivpd	%xmm1, %xmm0, %xmm0
	movq	%rax, 720(%rsp)
	movq	64(%rsp), %rax
	movl	%esi, 672(%rsp)
	movq	%rax, 320(%rsp)
	vmovupd	%xmm0, 680(%rsp)
	vmovdqu	448(%rsp), %xmm0
	vmovdqu	%xmm0, 704(%rsp)
	vpinsrq	$1, %r15, %xmm5, %xmm0
	vmovdqu	%xmm0, 304(%rsp)
.LEHB50:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE9push_backERKS1_
.LEHE50:
	movq	320(%rsp), %rax
	movq	304(%rsp), %r13
	movabsq	$-3750763034362895579, %r8
	movabsq	$1099511628211, %r9
	movq	312(%rsp), %r15
	movq	376(%rsp), %rcx
	movq	%rax, 64(%rsp)
	movq	368(%rsp), %rax
	jmp	.L721
	.p2align 5
.L722:
	movl	(%rax), %edx
	addq	$4, %rax
	xorq	%rdx, %r8
	imulq	%r9, %r8
.L721:
	cmpq	%rax, %rcx
	jne	.L722
	movq	336(%rsp), %rcx
	movq	344(%rsp), %r9
	movabsq	$-3750763034362895579, %rdx
	movabsq	$1099511628211, %r10
	jmp	.L723
	.p2align 5
.L724:
	movl	(%rcx), %eax
	addq	$4, %rcx
	xorq	%rax, %rdx
	imulq	%r10, %rdx
.L723:
	cmpq	%rcx, %r9
	jne	.L724
	movq	56(%rsp), %rcx
.LEHB51:
	call	_ZN12_GLOBAL__N_1L10print_caseERKNS_6ResultEyy
.LEHE51:
	jmp	.L725
.L782:
	testq	%r8, %r8
	je	.L647
	cmpq	$1, %r8
	je	.L1013
	movq	%rdx, 104(%rsp)
	call	memcpy
	movq	104(%rsp), %rdx
.L649:
	movq	376(%rsp), %r8
	movq	240(%rsp), %rcx
.L647:
	movq	%r8, 248(%rsp)
	movb	$0, (%rcx,%r8)
	jmp	.L650
.L1002:
	movq	64(%rsp), %rsi
	leal	1(%r8), %ecx
	movq	%rdx, %rdi
	rep movsb
	jmp	.L644
.L623:
	movq	144(%rsp), %rbx
	cmpq	$7, %rbx
	jle	.L628
	jmp	.L631
.L1008:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC93(%rip), %rdx
.LEHB52:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L619
.L624:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L619
.L754:
	xorl	%edi, %edi
	jmp	.L763
.L627:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L619
.L640:
	movabsq	$9223372036854775806, %rax
	cmpq	104(%rsp), %rax
	jnb	.L786
	movabsq	$9223372036854775807, %rcx
	movq	%rax, 104(%rsp)
	jmp	.L641
.L1013:
	movzbl	384(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.L649
.L812:
.L996:
	movq	%rax, %rbx
.L767:
	movq	368(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L975
	movq	384(%rsp), %rdx
	subq	%rcx, %rdx
	vzeroupper
	call	_ZdlPvy
	jmp	.L769
.L818:
.L997:
	movq	%rax, %rbx
	movq	320(%rsp), %rax
	movq	304(%rsp), %r13
	movq	%rax, 64(%rsp)
	jmp	.L767
.L817:
	jmp	.L997
.L806:
	jmp	.L996
.L815:
	jmp	.L996
.L819:
	jmp	.L997
.L823:
.L978:
	movq	%rax, %rbx
	vzeroupper
.L781:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE52:
.L802:
.L988:
	movq	%rax, %rbx
	vzeroupper
.L769:
	movq	336(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L771
	movq	352(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	jmp	.L771
.L801:
.L980:
	movq	%rax, %rbx
	vzeroupper
.L771:
	movq	48(%rsp), %rcx
	call	_ZN12_GLOBAL__N_18WorkloadD1Ev
.L671:
	testq	%r13, %r13
	je	.L781
	movq	64(%rsp), %rdx
	movq	%r13, %rcx
	subq	%r13, %rdx
	call	_ZdlPvy
	jmp	.L781
.L814:
	jmp	.L988
.L813:
	jmp	.L980
.L975:
	vzeroupper
	jmp	.L769
.L809:
	jmp	.L996
.L800:
	movq	336(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	movq	%rax, %rbx
	je	.L970
	movq	352(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L663:
	movq	304(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L664
	movq	320(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L664:
	movq	272(%rsp), %rcx
	cmpq	88(%rsp), %rcx
	je	.L665
	movq	288(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L665:
	movq	240(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L666
	movq	256(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L666:
	movq	208(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	jne	.L1014
.L667:
	movq	176(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L781
	movq	192(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L781
.L798:
	movq	56(%rsp), %rcx
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L671
.L820:
	jmp	.L997
.L970:
	vzeroupper
	jmp	.L663
.L816:
	jmp	.L997
.L803:
	jmp	.L996
.L811:
	jmp	.L988
.L810:
	jmp	.L980
.L808:
	jmp	.L988
.L807:
	jmp	.L980
.L822:
	jmp	.L978
.L821:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L671
.L1001:
	leaq	352(%rsp), %rax
	leaq	.LC104(%rip), %rcx
	movq	%rax, 64(%rsp)
.LEHB53:
	call	_ZSt20__throw_length_errorPKc
.LEHE53:
.L799:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L663
.L804:
	jmp	.L980
.L805:
	jmp	.L988
.L1014:
	movq	224(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L667
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15126:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15126-.LLSDACSB15126
.LLSDACSB15126:
	.uleb128 .LEHB9-.LFB15126
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB15126
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L799-.LFB15126
	.uleb128 0
	.uleb128 .LEHB11-.LFB15126
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB15126
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L822-.LFB15126
	.uleb128 0
	.uleb128 .LEHB13-.LFB15126
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB14-.LFB15126
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L804-.LFB15126
	.uleb128 0
	.uleb128 .LEHB15-.LFB15126
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L805-.LFB15126
	.uleb128 0
	.uleb128 .LEHB16-.LFB15126
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L806-.LFB15126
	.uleb128 0
	.uleb128 .LEHB17-.LFB15126
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB18-.LFB15126
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L807-.LFB15126
	.uleb128 0
	.uleb128 .LEHB19-.LFB15126
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L808-.LFB15126
	.uleb128 0
	.uleb128 .LEHB20-.LFB15126
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L809-.LFB15126
	.uleb128 0
	.uleb128 .LEHB21-.LFB15126
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB22-.LFB15126
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L810-.LFB15126
	.uleb128 0
	.uleb128 .LEHB23-.LFB15126
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L811-.LFB15126
	.uleb128 0
	.uleb128 .LEHB24-.LFB15126
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L812-.LFB15126
	.uleb128 0
	.uleb128 .LEHB25-.LFB15126
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB26-.LFB15126
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L813-.LFB15126
	.uleb128 0
	.uleb128 .LEHB27-.LFB15126
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L814-.LFB15126
	.uleb128 0
	.uleb128 .LEHB28-.LFB15126
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L815-.LFB15126
	.uleb128 0
	.uleb128 .LEHB29-.LFB15126
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L820-.LFB15126
	.uleb128 0
	.uleb128 .LEHB30-.LFB15126
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L815-.LFB15126
	.uleb128 0
	.uleb128 .LEHB31-.LFB15126
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L799-.LFB15126
	.uleb128 0
	.uleb128 .LEHB32-.LFB15126
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB15126
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L806-.LFB15126
	.uleb128 0
	.uleb128 .LEHB34-.LFB15126
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L817-.LFB15126
	.uleb128 0
	.uleb128 .LEHB35-.LFB15126
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L806-.LFB15126
	.uleb128 0
	.uleb128 .LEHB36-.LFB15126
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB15126
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L823-.LFB15126
	.uleb128 0
	.uleb128 .LEHB38-.LFB15126
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB39-.LFB15126
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L801-.LFB15126
	.uleb128 0
	.uleb128 .LEHB40-.LFB15126
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L802-.LFB15126
	.uleb128 0
	.uleb128 .LEHB41-.LFB15126
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L803-.LFB15126
	.uleb128 0
	.uleb128 .LEHB42-.LFB15126
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L821-.LFB15126
	.uleb128 0
	.uleb128 .LEHB43-.LFB15126
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L798-.LFB15126
	.uleb128 0
	.uleb128 .LEHB44-.LFB15126
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L800-.LFB15126
	.uleb128 0
	.uleb128 .LEHB45-.LFB15126
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L816-.LFB15126
	.uleb128 0
	.uleb128 .LEHB46-.LFB15126
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L803-.LFB15126
	.uleb128 0
	.uleb128 .LEHB47-.LFB15126
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L812-.LFB15126
	.uleb128 0
	.uleb128 .LEHB48-.LFB15126
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L819-.LFB15126
	.uleb128 0
	.uleb128 .LEHB49-.LFB15126
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L812-.LFB15126
	.uleb128 0
	.uleb128 .LEHB50-.LFB15126
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L818-.LFB15126
	.uleb128 0
	.uleb128 .LEHB51-.LFB15126
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L809-.LFB15126
	.uleb128 0
	.uleb128 .LEHB52-.LFB15126
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB15126
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L800-.LFB15126
	.uleb128 0
.LLSDACSE15126:
	.section	.text.startup,"x"
	.seh_endproc
	.globl	reist_poly_benchmark_sink
	.bss
	.align 4
reist_poly_benchmark_sink:
	.space 4
	.section .rdata,"dr"
	.align 8
.LC59:
	.long	0
	.long	1079574528
	.align 32
.LC71:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.quad	3544667369688283184
	.quad	3832902143785906737
	.align 32
.LC72:
	.quad	4121136918051239473
	.quad	3689066235924983858
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 32
.LC73:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.quad	3689629194468470836
	.quad	3977863968733803572
	.align 32
.LC74:
	.quad	3545793286775257140
	.quad	3834028060872880693
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 32
.LC75:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.quad	3834591019416367671
	.quad	4122825793681700407
	.align 32
.LC76:
	.quad	3690755111555444792
	.quad	3978989885820777528
	.quad	3546919203862231096
	.quad	3835153977959854649
	.align 8
.LC82:
	.long	-2147483648
	.long	-2147483648
	.align 8
.LC83:
	.long	2147483647
	.long	2147483647
	.align 8
.LC84:
	.long	1
	.long	1
	.align 8
.LC85:
	.long	-1727483681
	.long	-1727483681
	.align 8
.LC121:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
