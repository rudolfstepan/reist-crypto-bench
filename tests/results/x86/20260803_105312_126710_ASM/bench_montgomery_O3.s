	.file	"bench_montgomery.cpp"
	.text
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0:
.LFB7906:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rcx,%rax)
	movb	%dl, 56(%rsp)
	je	.L2
	leaq	56(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
.L4:
	addq	$40, %rsp
	ret
.L2:
	movsbl	56(%rsp), %edx
	call	_ZNSo3putEc
	jmp	.L4
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Preflight failed for \0"
.LC1:
	.ascii ": N=\0"
.LC2:
	.ascii ", a=\0"
.LC3:
	.ascii ", b=\0"
.LC4:
	.ascii ", expected=\0"
.LC5:
	.ascii ", actual=\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0:
.LFB7908:
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
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movq	%rcx, %rsi
	movq	%rdx, %r12
	movq	%rbx, %rcx
	movq	%r8, %rbp
	leaq	.LC0(%rip), %rdx
	movl	$21, %r8d
	movq	%r9, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	call	strlen
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %r8
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$4, %r8d
	movq	%rbx, %rcx
	leaq	.LC1(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%r12, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$4, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$11, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	128(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$9, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movb	$10, 47(%rsp)
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	cmpq	$0, 16(%rax,%rdx)
	je	.L7
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZNSo3putEc
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "basic_string: construction from null is not valid\0"
.LC7:
	.ascii "stoll\0"
	.align 8
.LC8:
	.ascii "Operation count must be positive.\12\0"
	.align 8
.LC10:
	.ascii "Montgomery modulus must be odd and satisfy 3 <= N < 2^63\0"
	.align 8
.LC11:
	.ascii "failed to compute -N^{-1} modulo 2^64\0"
.LC13:
	.ascii "vector::_M_realloc_append\0"
	.align 8
.LC14:
	.ascii "Montgomery REDC low limb did not cancel\0"
	.align 8
.LC15:
	.ascii "Montgomery-domain value must be reduced\0"
.LC16:
	.ascii "Montgomery round trip\0"
.LC17:
	.ascii "Montgomery encoding\0"
	.align 8
.LC18:
	.ascii "Montgomery addition operands must be reduced\0"
.LC19:
	.ascii "Montgomery addition\0"
.LC20:
	.ascii "Montgomery multiplication\0"
	.align 8
.LC21:
	.ascii "REIST add_centered operands must be canonical representatives\0"
.LC22:
	.ascii "REIST centered addition\0"
.LC23:
	.ascii "centered product reference\0"
	.align 8
.LC24:
	.ascii "========================================\12\0"
	.align 8
.LC25:
	.ascii "Validated centered vs Montgomery benchmark\12\0"
	.align 8
.LC26:
	.ascii "Preflight: passed for all moduli\12\0"
.LC27:
	.ascii "Operations per modulus = \0"
.LC28:
	.ascii "\12\0"
	.align 8
.LC29:
	.ascii "Montgomery product operands must be reduced\0"
	.align 8
.LC30:
	.ascii "Postflight addition mismatch for N=\0"
	.align 8
.LC31:
	.ascii "Montgomery REDC high-limb overflow\0"
	.align 8
.LC32:
	.ascii "Montgomery REDC carry overflow\0"
	.align 8
.LC33:
	.ascii "Postflight multiplication mismatch for N=\0"
	.align 8
.LC34:
	.ascii "Postflight full-cycle mismatch for N=\0"
.LC36:
	.ascii "\12Modulus = \0"
	.align 8
.LC37:
	.ascii "\12--- Modular addition, one dependent stream ---\0"
.LC38:
	.ascii "\12Classic       : \0"
.LC39:
	.ascii " s\0"
.LC40:
	.ascii "\12REIST centered: \0"
.LC41:
	.ascii "\12Montgomery    : \0"
	.align 8
.LC42:
	.ascii "\12--- Modular multiplication, one dependent stream ---\0"
.LC43:
	.ascii "\12Classic %                 : \0"
.LC44:
	.ascii "\12Centered % (not REIST)    : \0"
.LC45:
	.ascii "\12Montgomery-domain multiply: \0"
	.align 8
.LC46:
	.ascii "\12--- Dependent full cycle with per-step conversion ---\0"
.LC47:
	.ascii "\12Classic full   : \0"
.LC48:
	.ascii "\12Montgomery full: \0"
.LC49:
	.ascii "\12Conversion overhead: \0"
.LC52:
	.ascii " %\12\0"
.LC53:
	.ascii "\12Sink: \0"
.LC54:
	.ascii "Invalid operation count: \0"
	.align 8
.LC55:
	.ascii "Montgomery preflight raised an exception: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB5579:
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
	subq	$600, %rsp
	.seh_stackalloc	600
	vmovups	%xmm6, 432(%rsp)
	.seh_savexmm	%xmm6, 432
	vmovups	%xmm7, 448(%rsp)
	.seh_savexmm	%xmm7, 448
	vmovups	%xmm8, 464(%rsp)
	.seh_savexmm	%xmm8, 464
	vmovups	%xmm9, 480(%rsp)
	.seh_savexmm	%xmm9, 480
	vmovups	%xmm10, 496(%rsp)
	.seh_savexmm	%xmm10, 496
	vmovups	%xmm11, 512(%rsp)
	.seh_savexmm	%xmm11, 512
	vmovups	%xmm12, 528(%rsp)
	.seh_savexmm	%xmm12, 528
	vmovups	%xmm13, 544(%rsp)
	.seh_savexmm	%xmm13, 544
	vmovups	%xmm14, 560(%rsp)
	.seh_savexmm	%xmm14, 560
	vmovups	%xmm15, 576(%rsp)
	.seh_savexmm	%xmm15, 576
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rbx
	call	__main
	cmpl	$1, %esi
	jle	.L256
	movq	8(%rbx), %rsi
	leaq	368(%rsp), %rdi
	movq	%rdi, 352(%rsp)
	testq	%rsi, %rsi
	je	.L395
	movq	%rsi, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	ja	.L396
	cmpq	$1, %rax
	je	.L397
	testq	%rax, %rax
	jne	.L398
.L16:
	movq	352(%rsp), %rax
	movq	%rbx, 360(%rsp)
	movq	__imp__errno(%rip), %rbp
	movb	$0, (%rax,%rbx)
	movq	352(%rsp), %rbx
.LEHB0:
	call	*%rbp
	movl	(%rax), %r12d
	call	*%rbp
.LEHE0:
	xorl	%edx, %edx
	movl	$10, %r8d
	movq	%rbx, %rcx
	movl	%edx, (%rax)
	leaq	344(%rsp), %rdx
	call	strtoll
	cmpq	344(%rsp), %rbx
	movq	%rax, 208(%rsp)
	je	.L399
.LEHB1:
	call	*%rbp
.LEHE1:
	cmpl	$34, (%rax)
	je	.L400
	call	*%rbp
	cmpl	$0, (%rax)
	je	.L401
.L19:
	movq	352(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L20
	movq	368(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L20:
	cmpq	$0, 208(%rsp)
	jle	.L402
.L11:
	movl	$48, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	vmovdqu	.LC9(%rip), %ymm0
	movabsq	$1000000000039, %rdx
	vmovdqu	.LC12(%rip), %xmm6
	movq	%rax, %rbx
	movq	%rax, 296(%rsp)
	vmovdqu	%ymm0, (%rax)
	movl	$1000000007, %eax
	movq	%rax, 32(%rbx)
	movq	%rbx, %rax
	movq	%rdx, 40(%rbx)
	movq	%rbx, 176(%rsp)
	leaq	48(%rbx), %rbx
	movq	%rbx, 192(%rsp)
	movq	%rax, 136(%rsp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	136(%rsp), %rax
	movq	(%rax), %rbx
	cmpq	$2, %rbx
	jbe	.L27
	movabsq	$-9223372036854775807, %rax
	andq	%rbx, %rax
	cmpq	$1, %rax
	movq	%rax, 200(%rsp)
	jne	.L27
	movl	$2, %ecx
	movq	%rbx, %r8
	movl	$2, %eax
	movq	%rbx, %r12
	subq	%rbx, %rcx
	imulq	%rcx, %r8
	subq	%r8, %rax
	movq	%rbx, %r8
	imulq	%rcx, %rax
	movl	$2, %ecx
	imulq	%rax, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rcx, %rax
	movl	$2, %ecx
	imulq	%rax, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rax, %rcx
	movl	$2, %eax
	imulq	%rcx, %r8
	subq	%r8, %rax
	imulq	%rcx, %rax
	imulq	%rax, %r12
	subq	$2, %r12
	imulq	%rax, %r12
	movq	%r12, %rax
	movq	%r12, 112(%rsp)
	imulq	%rbx, %rax
	cmpq	$-1, %rax
	jne	.L403
	movq	%rbx, %rax
	leaq	-2(%rbx), %rdi
	movq	$2, 368(%rsp)
	movl	$72, %ecx
	shrq	%rax
	vmovq	%rdi, %xmm1
	leaq	-1(%rbx), %rdi
	vmovdqu	%xmm6, 352(%rsp)
	leaq	1(%rax), %rdx
	vmovq	%rax, %xmm2
	movl	$1234567, %eax
	movq	%rdi, 120(%rsp)
	vpinsrq	$1, %rdx, %xmm2, %xmm0
	xorl	%edx, %edx
	vpinsrq	$1, %rdi, %xmm1, %xmm1
	divq	%rbx
	movl	$89101112, %eax
	vinserti128	$0x1, %xmm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 376(%rsp)
	movq	%rdx, 408(%rsp)
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, 416(%rsp)
	vzeroupper
.LEHB3:
	call	_Znwy
.LEHE3:
	vmovdqu	352(%rsp), %ymm0
	movq	%rax, %rbp
	leaq	72(%rax), %rsi
	movabsq	$-7046029254386353131, %r13
	xorq	%rbx, %r13
	movq	%rsi, %rdi
	movl	$2048, %r14d
	movabsq	$6364136223846793005, %r12
	movabsq	$1442695040888963407, %r10
	vmovdqu	%ymm0, (%rax)
	vmovdqu	384(%rsp), %ymm0
	vmovdqu	%ymm0, 32(%rax)
	movq	416(%rsp), %rax
	movq	%rax, 64(%rbp)
	vzeroupper
	jmp	.L39
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L405:
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	subl	$1, %r14d
	je	.L404
.L39:
	imulq	%r12, %r13
	xorl	%edx, %edx
	addq	%r10, %r13
	movq	%r13, %rax
	divq	%rbx
	cmpq	%rsi, %rdi
	jne	.L405
	movabsq	$1152921504606846975, %rcx
	movq	%rdi, %rsi
	subq	%rbp, %rsi
	movq	%rsi, %rax
	sarq	$3, %rax
	cmpq	%rcx, %rax
	je	.L406
	testq	%rax, %rax
	movl	$1, %r15d
	movq	%rdx, 56(%rsp)
	cmovne	%rax, %r15
	addq	%rax, %r15
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r15
	cmova	%rax, %r15
	salq	$3, %r15
	movq	%r15, %rcx
.LEHB4:
	call	_Znwy
	movq	56(%rsp), %rdx
	testq	%rsi, %rsi
	movq	%rax, %r11
	movabsq	$1442695040888963407, %r10
	movq	%rdx, (%rax,%rsi)
	je	.L37
	movq	%rsi, %r8
	movq	%rbp, %rdx
	movq	%rax, %rcx
	call	memcpy
	movabsq	$1442695040888963407, %r10
	movq	%rax, %r11
.L37:
	testq	%rbp, %rbp
	leaq	8(%r11,%rsi), %rsi
	je	.L38
	subq	%rbp, %rdi
	movq	%rbp, %rcx
	movq	%r11, 56(%rsp)
	movq	%rdi, %rdx
	call	_ZdlPvy
	movq	56(%rsp), %r11
	movabsq	$1442695040888963407, %r10
.L38:
	subl	$1, %r14d
	leaq	(%r11,%r15), %rdi
	movq	%r11, %rbp
	jne	.L39
	.p2align 4,,10
	.p2align 3
.L404:
	cmpq	%rbp, %rsi
	je	.L40
	leaq	320(%rsp), %r14
	leaq	304(%rsp), %r15
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r14, %rcx
	movq	%rdx, 328(%rsp)
	movq	%r15, %rdx
	movq	%r14, 64(%rsp)
	movq	%rax, 320(%rsp)
	movq	%rbx, 304(%rsp)
	movq	%r15, 56(%rsp)
	movq	$0, 312(%rsp)
	call	__umodti3
	movq	%r14, %rcx
	vmovq	%xmm0, %r12
	movq	%r12, %rdx
	mulx	%r12, %rax, %rdx
	movq	%rdx, 328(%rsp)
	movq	%r15, %rdx
	movq	%rax, 320(%rsp)
	call	__umodti3
	movq	%rdi, 80(%rsp)
	movq	112(%rsp), %r13
	movq	%rbx, %rdi
	vmovq	%xmm0, %rax
	movq	%rbp, 96(%rsp)
	movq	%rsi, %rbx
	vmovq	%xmm0, 72(%rsp)
	movq	%rax, %r14
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L344:
	movq	%rsi, %rdx
	movq	64(%rsp), %rcx
	movq	%rdi, 304(%rsp)
	mulx	%r12, %rax, %rdx
	movq	$0, 312(%rsp)
	movq	%rdx, 328(%rsp)
	movq	56(%rsp), %rdx
	movq	%rax, 320(%rsp)
	call	__umodti3
	vmovq	%xmm0, %rax
	cmpq	%r15, %rax
	jne	.L407
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	je	.L408
.L60:
	movq	0(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%rdi
	mulx	%r14, %rcx, %r11
	movq	%rcx, %rax
	imulq	%r13, %rax
	movq	%rax, %rdx
	xorl	%eax, %eax
	mulx	%rdi, %r9, %r10
	addq	%r9, %rcx
	setc	%al
	testq	%rcx, %rcx
	jne	.L409
	addq	%r10, %r11
	leaq	(%rax,%r11), %r15
	cmpq	%rdi, %r15
	jb	.L44
	subq	%rdi, %r15
	cmpq	%rdi, %r15
	jnb	.L410
.L44:
	movq	%r13, %rax
	imulq	%r15, %rax
	mulq	%rdi
	movq	%rdx, %rcx
	xorl	%edx, %edx
	addq	%r15, %rax
	setc	%dl
	testq	%rax, %rax
	jne	.L411
	leaq	(%rdx,%rcx), %rax
	movq	%rax, %rdx
	subq	%rdi, %rdx
	cmpq	%rdi, %rax
	cmovnb	%rdx, %rax
	cmpq	%rax, %rsi
	je	.L344
	movq	%rax, 40(%rsp)
	movq	%rdi, %rdx
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	96(%rsp), %rbp
	movq	80(%rsp), %rdi
	movq	%rsi, 32(%rsp)
	leaq	.LC16(%rip), %rcx
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
.L391:
	testq	%rbp, %rbp
	je	.L57
.L381:
	subq	%rbp, %rdi
	movq	%rbp, %rcx
	movq	%rdi, %rdx
	call	_ZdlPvy
.L57:
	movl	$2, %ebx
.L87:
	movq	296(%rsp), %rcx
	movl	$48, %edx
	call	_ZdlPvy
	nop
.L10:
	vmovups	432(%rsp), %xmm6
	movl	%ebx, %eax
	vmovups	448(%rsp), %xmm7
	vmovups	464(%rsp), %xmm8
	vmovups	480(%rsp), %xmm9
	vmovups	496(%rsp), %xmm10
	vmovups	512(%rsp), %xmm11
	vmovups	528(%rsp), %xmm12
	vmovups	544(%rsp), %xmm13
	vmovups	560(%rsp), %xmm14
	vmovups	576(%rsp), %xmm15
	addq	$600, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L407:
	movq	%r15, 40(%rsp)
	movq	%rdi, %rdx
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	vmovq	%xmm0, 32(%rsp)
	movq	96(%rsp), %rbp
	movq	80(%rsp), %rdi
	leaq	.LC17(%rip), %rcx
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
.LEHE4:
	jmp	.L391
.L408:
	movq	96(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	movq	80(%rsp), %rdi
	subq	%rbp, %rsi
	cmpq	$8, %rsi
	jle	.L412
	movq	%rbx, %rax
	movq	0(%rbp), %rcx
	sarq	$3, %rsi
	movq	%rdi, 184(%rsp)
	sarq	%rax
	movq	%rsi, 152(%rsp)
	movq	200(%rsp), %r14
	leaq	1(%rax), %r11
	negq	%rax
	movq	%rcx, %rsi
	movq	%rax, 128(%rsp)
	movq	120(%rsp), %rax
	movq	%r11, %r15
	movq	%rbp, 120(%rsp)
	movq	112(%rsp), %rbp
	sarq	%rax
	movq	%r11, 160(%rsp)
	movq	%rax, 144(%rsp)
	movq	%r11, %rax
	sarq	$63, %rax
	movq	%rax, 168(%rsp)
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L427:
	cmpq	%rbx, %r11
	jnb	.L380
.L74:
	leaq	(%r11,%rax), %r9
	cmpq	%rbx, %r9
	jb	.L76
	subq	%rbx, %r9
	cmpq	%rbx, %r9
	jnb	.L413
.L76:
	xorl	%r13d, %r13d
	movq	%rsi, %rdx
	movq	%r9, 96(%rsp)
	movq	%rsi, %r12
	addq	%rdi, %rdx
	movq	%r13, %rcx
	movq	%rax, 80(%rsp)
	adcq	$0, %rcx
	movq	%rdx, 320(%rsp)
	movq	56(%rsp), %rdx
	movq	%rcx, 328(%rsp)
	movq	64(%rsp), %rcx
	movq	%r11, 112(%rsp)
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	call	__umodti3
	movq	96(%rsp), %r9
	movq	%rbp, %rdx
	movq	80(%rsp), %rax
	vmovq	%xmm0, %r8
	imulq	%r9, %rdx
	movq	%r8, %r10
	mulx	%rbx, %rdx, %rcx
	addq	%r9, %rdx
	setc	%r9b
	testq	%rdx, %rdx
	movzbl	%r9b, %r9d
	jne	.L414
	addq	%rcx, %r9
	movq	%r9, %rdx
	subq	%rbx, %rdx
	cmpq	%rbx, %r9
	cmovnb	%rdx, %r9
	cmpq	%r9, %r8
	jne	.L415
	mulq	112(%rsp)
	movq	%rbp, %r8
	imulq	%rax, %r8
	movq	%rdx, %r11
	movq	%r8, %rdx
	mulx	%rbx, %r8, %r9
	addq	%r8, %rax
	setc	%r8b
	testq	%rax, %rax
	movzbl	%r8b, %r8d
	jne	.L416
	leaq	(%r11,%r9), %rax
	addq	%r8, %rax
	cmpq	%rbx, %rax
	jb	.L91
	subq	%rbx, %rax
	cmpq	%rbx, %rax
	jnb	.L417
.L91:
	movq	%r12, %rdx
	movq	64(%rsp), %rcx
	movq	%r10, 80(%rsp)
	mulx	%rdi, %r12, %r13
	movq	56(%rsp), %rdx
	movq	%rax, 112(%rsp)
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	movq	%r13, 328(%rsp)
	movq	%r12, 320(%rsp)
	call	__umodti3
	movq	112(%rsp), %rax
	movq	%rbp, %r8
	movq	80(%rsp), %r10
	vmovq	%xmm0, %rcx
	imulq	%rax, %r8
	movq	%rcx, %r13
	movq	%r8, %rdx
	mulx	%rbx, %r8, %r9
	addq	%rax, %r8
	setc	%al
	testq	%r8, %r8
	movzbl	%al, %eax
	jne	.L418
	leaq	(%r9,%rax), %rdx
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	cmovnb	%rax, %rdx
	cmpq	%rdx, %rcx
	jne	.L419
	movq	%rdi, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	leaq	(%rdx,%rbx), %rax
	movq	%rdx, %rcx
	cmovs	%rax, %rcx
	movq	%rcx, %rax
	subq	%rbx, %rax
	cmpq	%rcx, %r15
	cmovle	%rax, %rcx
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	leaq	(%rdx,%rbx), %rax
	cmovs	%rax, %rdx
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	%rdx, %r15
	cmovle	%rax, %rdx
	movq	128(%rsp), %rax
	cmpq	%rax, %rcx
	jl	.L106
	movq	144(%rsp), %r9
	cmpq	%r9, %rdx
	setle	%r8b
	cmpq	%rax, %rdx
	setge	%al
	testb	%al, %r8b
	je	.L106
	cmpq	%r9, %rcx
	jg	.L106
	leaq	(%rcx,%rdx), %rax
	cmpq	%rax, %r9
	jge	.L420
	subq	%rbx, %rax
	testq	%rax, %rax
	leaq	(%rax,%rbx), %r8
	cmovs	%r8, %rax
	cmpq	%r10, %rax
	jne	.L421
.L113:
	movq	%rcx, %rax
	movq	64(%rsp), %rcx
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	imulq	%rdx
	movq	%rdx, 328(%rsp)
	movq	56(%rsp), %rdx
	movq	%rax, 320(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %r9
	vmovq	%xmm0, %r8
	testq	%r9, %r9
	js	.L422
	movq	%r9, %rax
	cmpq	%r15, %r8
	sbbq	168(%rsp), %rax
	movq	%r8, %rax
	jl	.L118
	subq	%rbx, %rax
.L115:
	testq	%rax, %rax
	js	.L116
.L118:
	cmpq	%rax, %r13
	jne	.L423
.L119:
	addq	$1, %r14
	cmpq	152(%rsp), %r14
	jnb	.L424
.L122:
	movq	120(%rsp), %rax
	movq	%rsi, %rdi
	xorl	%edx, %edx
	xorl	%r11d, %r11d
	movq	(%rax,%r14,8), %rsi
	movq	%rdi, %rax
	divq	%rbx
	mulx	72(%rsp), %rax, %r10
	movq	%rax, %r8
	imulq	%rbp, %r8
	movq	%r8, %rdx
	mulx	%rbx, %r8, %r9
	addq	%r8, %rax
	setc	%r11b
	testq	%rax, %rax
	jne	.L425
	leaq	(%r10,%r9), %rax
	addq	%rax, %r11
	movq	%r11, %rax
	subq	%rbx, %rax
	cmpq	%rbx, %r11
	cmovnb	%rax, %r11
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%rbx
	mulx	72(%rsp), %rax, %rcx
	movq	%rax, %rdx
	imulq	%rbp, %rdx
	mulx	%rbx, %r12, %r13
	addq	%r12, %rax
	movq	%rax, %rdx
	setc	%al
	testq	%rdx, %rdx
	movzbl	%al, %eax
	jne	.L426
	addq	%r13, %rcx
	addq	%rcx, %rax
	cmpq	%rbx, %rax
	jb	.L427
	subq	%rbx, %rax
	cmpq	%rax, %r11
	movq	%rax, %rdx
	cmovnb	%r11, %rdx
	cmpq	%rbx, %rdx
	jb	.L74
.L380:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB5:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE5:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB6:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L420:
	leaq	(%rax,%rbx), %r8
	cmpq	128(%rsp), %rax
	cmovl	%r8, %rax
	testq	%rax, %rax
	leaq	(%rax,%rbx), %r8
	cmovs	%r8, %rax
	cmpq	%r10, %rax
	je	.L113
.L421:
	movq	%rax, 40(%rsp)
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rbx, %rdx
	movq	%r10, 32(%rsp)
	leaq	.LC22(%rip), %rcx
	movq	120(%rsp), %rbp
	movq	184(%rsp), %rdi
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L422:
	movq	%r8, %rax
	movq	%r9, %rdx
	addq	%rbx, %rax
	adcq	$0, %rdx
	cmpq	%r15, %rax
	movq	%rdx, %rcx
	sbbq	168(%rsp), %rcx
	jl	.L115
	movq	%r8, %rax
.L116:
	addq	%rbx, %rax
	cmpq	%rax, %r13
	je	.L119
.L423:
	movq	%rax, 40(%rsp)
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rbx, %rdx
	movq	%r13, 32(%rsp)
	leaq	.LC23(%rip), %rcx
	movq	120(%rsp), %rbp
	movq	184(%rsp), %rdi
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
	jmp	.L381
.L419:
	movq	%rdx, 40(%rsp)
	movq	%rdi, %r14
	movq	%rsi, %r9
	movq	%rbx, %rdx
	vmovq	%xmm0, 32(%rsp)
	movq	%r14, %r8
	leaq	.LC20(%rip), %rcx
	movq	120(%rsp), %rbp
	movq	184(%rsp), %rdi
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
	jmp	.L381
.L415:
	movq	%r9, 40(%rsp)
	movq	%rdi, %r14
	movq	%rsi, %r9
	movq	%rbx, %rdx
	vmovq	%xmm0, 32(%rsp)
	movq	%r14, %r8
	leaq	.LC19(%rip), %rcx
	movq	120(%rsp), %rbp
	movq	184(%rsp), %rdi
	call	_ZN12_GLOBAL__N_1L15report_mismatchEPKcyyyyy.isra.0
.LEHE6:
	jmp	.L381
.L424:
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
.L40:
	subq	%rbp, %rdi
	movq	%rbp, %rcx
	movq	%rdi, %rdx
	call	_ZdlPvy
	addq	$8, 136(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rax, 192(%rsp)
	jne	.L26
.L125:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$41, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$9, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC24(%rip), %rdx
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$43, %r8d
	leaq	.LC25(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC24(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$33, %r8d
	leaq	.LC26(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$25, %r8d
	leaq	.LC27(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	208(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	vmovsd	.LC35(%rip), %xmm7
	vxorps	%xmm8, %xmm8, %xmm8
.L247:
	movq	176(%rsp), %rax
	movq	(%rax), %rbx
	cmpq	$2, %rbx
	jbe	.L127
	movabsq	$-9223372036854775807, %rax
	andq	%rbx, %rax
	cmpq	$1, %rax
	jne	.L127
	movl	$2, %eax
	movq	%rbx, %r8
	movl	$2, %ecx
	subq	%rbx, %rax
	imulq	%rax, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rax, %rcx
	movl	$2, %eax
	imulq	%rcx, %r8
	subq	%r8, %rax
	movq	%rbx, %r8
	imulq	%rcx, %rax
	movl	$2, %ecx
	imulq	%rax, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rcx, %rax
	movl	$2, %ecx
	imulq	%rax, %r8
	subq	%r8, %rcx
	imulq	%rcx, %rax
	movq	%rbx, %rcx
	imulq	%rax, %rcx
	subq	$2, %rcx
	imulq	%rax, %rcx
	movq	%rbx, %rax
	imulq	%rcx, %rax
	movq	%rcx, %r15
	cmpq	$-1, %rax
	jne	.L428
	leaq	320(%rsp), %rdi
	leaq	304(%rsp), %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%rdi, %rcx
	movq	%rdx, 328(%rsp)
	movq	%rsi, %rdx
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rax, 320(%rsp)
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	call	__umodti3
	movq	%rdi, %rcx
	vmovq	%xmm0, %rax
	mulq	%rax
	movq	%rdx, 328(%rsp)
	movq	%rsi, %rdx
	movq	%rax, 320(%rsp)
	call	__umodti3
	xorl	%edx, %edx
	movl	$1234567, %eax
	movq	%rbx, %rcx
	vmovq	%xmm0, 128(%rsp)
	sarq	%rcx
	vmovq	%xmm0, %r14
	divq	%rbx
	movl	$89101112, %eax
	addq	$1, %rcx
	movq	%rdx, %rdi
	movq	%rdx, 160(%rsp)
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdi, 72(%rsp)
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rdx, 120(%rsp)
	movq	%rdx, 184(%rsp)
	cqto
	idivq	%rbx
	movq	%rsi, %rax
	movq	%rdx, %r8
	cqto
	idivq	%rbx
	movq	%r8, %rdi
	subq	%rbx, %rdi
	cmpq	%rcx, %r8
	cmovge	%rdi, %r8
	movq	%rdx, %rdi
	movq	%rdx, %r9
	subq	%rbx, %rdi
	cmpq	%rcx, %rdx
	movq	72(%rsp), %rdx
	cmovge	%rdi, %r9
	xorl	%esi, %esi
	mulx	%r14, %rax, %rdi
	movq	%rax, %r10
	imulq	%r15, %r10
	movq	%r10, %rdx
	mulx	%rbx, %r10, %r11
	addq	%r10, %rax
	setc	%sil
	testq	%rax, %rax
	jne	.L429
	movq	$0, 104(%rsp)
	leaq	(%rdi,%r11), %rdx
	addq	%rdx, %rsi
	movq	120(%rsp), %rdx
	movq	%rsi, %rax
	subq	%rbx, %rax
	cmpq	%rbx, %rsi
	movq	%rdx, 96(%rsp)
	cmovnb	%rax, %rsi
	xorl	%ebp, %ebp
	mulx	128(%rsp), %rax, %rdi
	movq	%rax, %r10
	imulq	%r15, %r10
	movq	%r10, %rdx
	mulx	%rbx, %r10, %r11
	addq	%r10, %rax
	setc	%bpl
	testq	%rax, %rax
	jne	.L430
	leaq	(%rdi,%r11), %rdx
	movq	%r8, 152(%rsp)
	addq	%rdx, %rbp
	movq	%r9, 112(%rsp)
	movq	%rbp, %rax
	subq	%rbx, %rax
	cmpq	%rbx, %rbp
	cmovnb	%rax, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r15, 80(%rsp)
	movq	72(%rsp), %rdx
	movq	%rax, 200(%rsp)
	movq	208(%rsp), %rdi
	movq	%rbp, 136(%rsp)
	movq	96(%rsp), %r14
	movq	104(%rsp), %r15
	movq	152(%rsp), %r12
	movq	%rsi, 144(%rsp)
	xorl	%esi, %esi
	movq	56(%rsp), %rbp
	movq	64(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L146:
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r13, %rcx
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	addq	%rdx, %r10
	movq	%rbp, %rdx
	adcq	$0, %r11
	movq	%r10, 320(%rsp)
	movq	%r11, 328(%rsp)
	call	__umodti3
	movq	%rsi, %rcx
	leaq	1(%rsi), %rsi
	vmovq	%xmm0, %rax
	cmpq	%rsi, %rdi
	movq	%rax, %rdx
	jne	.L146
	movq	112(%rsp), %r9
	movq	80(%rsp), %r15
	movq	%rcx, 112(%rsp)
	movq	%rax, %r13
	movq	136(%rsp), %rbp
	vmovq	%xmm0, 80(%rsp)
	movq	144(%rsp), %rsi
	movq	%r9, 152(%rsp)
	movq	%r12, 136(%rsp)
	movq	%rcx, %r12
	vmovq	%xmm0, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 216(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	152(%rsp), %r9
	movq	80(%rsp), %r11
	movq	%rax, 224(%rsp)
	movq	%rbx, %rax
	movq	136(%rsp), %r8
	shrq	$63, %rax
	addq	%rbx, %rax
	movq	%r8, %r14
	sarq	%rax
	movq	%rax, %rdi
	leaq	-1(%rbx), %rax
	negq	%rdi
	cmpq	%rdi, %r9
	setge	%r10b
	xorl	%edx, %edx
	sarq	%rax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L149:
	subq	%rbx, %r14
	cmpq	%r12, %rdx
	je	.L431
.L257:
	addq	$1, %rdx
.L152:
	cmpq	%r14, %rdi
	jg	.L148
	cmpq	%rax, %r9
	setle	%cl
	testb	%r10b, %cl
	je	.L148
	cmpq	%r14, %rax
	jl	.L148
	addq	%r9, %r14
	cmpq	%r14, %rax
	jl	.L149
	cmpq	%r14, %rdi
	leaq	(%r14,%rbx), %rcx
	cmovg	%rcx, %r14
	cmpq	%r12, %rdx
	jne	.L257
.L431:
	testq	%r14, %r14
	leaq	(%r14,%rbx), %rax
	movq	%r11, 144(%rsp)
	cmovs	%rax, %r14
	movq	%r8, 136(%rsp)
	movq	%r9, 80(%rsp)
	movq	%r14, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 232(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	80(%rsp), %r9
	movq	%rsi, %rcx
	movq	136(%rsp), %r8
	movq	%rax, 240(%rsp)
	movq	112(%rsp), %r10
	xorl	%eax, %eax
	movq	144(%rsp), %r11
	jmp	.L158
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L258:
	movq	%r12, %rax
.L158:
	cmpq	%rbp, %rcx
	movq	%rbp, %rdx
	cmovnb	%rcx, %rdx
	cmpq	%rbx, %rdx
	jnb	.L432
	addq	%rbp, %rcx
	leaq	1(%rax), %r12
	movq	%rcx, %rdx
	subq	%rbx, %rdx
	cmpq	%rbx, %rcx
	cmovnb	%rdx, %rcx
	cmpq	%r10, %rax
	jne	.L258
	cmpq	%rbx, %rcx
	jnb	.L433
	movq	%r15, %rax
	imulq	%rcx, %rax
	mulq	%rbx
	movq	%rax, 80(%rsp)
	xorl	%eax, %eax
	addq	80(%rsp), %rcx
	setc	%al
	testq	%rcx, %rcx
	movq	%rdx, 88(%rsp)
	movq	88(%rsp), %rdx
	jne	.L434
	addq	%rax, %rdx
	movq	%r8, 144(%rsp)
	movq	%rdx, %rax
	movq	%r11, 152(%rsp)
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	movq	%r9, 136(%rsp)
	cmovnb	%rax, %rdx
	movq	%rdx, _ZL6g_sink(%rip)
	movq	%rdx, 80(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	152(%rsp), %r14
	movq	144(%rsp), %r8
	movq	%rax, 248(%rsp)
	jne	.L166
	cmpq	80(%rsp), %r13
	jne	.L166
	movq	%r8, 256(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	72(%rsp), %rdx
	movq	56(%rsp), %r13
	movq	%rdi, 264(%rsp)
	movq	%rax, 80(%rsp)
	movq	64(%rsp), %r14
	movq	%rsi, 152(%rsp)
	movq	96(%rsp), %rsi
	movq	%rbp, 144(%rsp)
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L170:
	mulx	%rsi, %rax, %rdx
	movq	%r14, %rcx
	movq	%rbx, 304(%rsp)
	addq	$1, %rbp
	movq	$0, 312(%rsp)
	movq	%rdx, 328(%rsp)
	movq	%r13, %rdx
	movq	%rax, 320(%rsp)
	call	__umodti3
	cmpq	%r12, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, %rdx
	jne	.L170
	movq	136(%rsp), %r9
	movq	256(%rsp), %r8
	movq	%rax, %r14
	vmovq	%xmm0, 280(%rsp)
	movq	144(%rsp), %rbp
	movq	152(%rsp), %rsi
	vmovq	%xmm0, _ZL6g_sink(%rip)
	movq	264(%rsp), %rdi
	movq	%r9, 272(%rsp)
	movq	%r8, 288(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 96(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r15, 144(%rsp)
	movq	112(%rsp), %r13
	movq	%rax, 136(%rsp)
	movl	$1, %eax
	subq	%rdi, %rax
	movq	%rbp, 152(%rsp)
	movq	272(%rsp), %rdi
	cqto
	movq	%r14, 256(%rsp)
	movq	56(%rsp), %rbp
	movq	%rax, %r14
	movq	%r12, 264(%rsp)
	movq	%rdx, %r15
	movq	288(%rsp), %rax
	movq	%rsi, 272(%rsp)
	movq	64(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L259:
	addq	$1, %rsi
.L173:
	imulq	%rdi
	movq	%r12, %rcx
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	movq	%rdx, 328(%rsp)
	movq	%rbp, %rdx
	movq	%rax, 320(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L171
	addq	%rbx, %rax
	adcq	$0, %rdx
.L171:
	cmpq	%r14, %rax
	movq	%rdx, %rcx
	sbbq	%r15, %rcx
	jl	.L172
	subq	%rbx, %rax
.L172:
	cmpq	%r13, %rsi
	jne	.L259
	movq	%rax, %r8
	leaq	(%rax,%rbx), %rax
	movq	280(%rsp), %r11
	movq	256(%rsp), %r14
	testq	%r8, %r8
	movq	264(%rsp), %r12
	movq	144(%rsp), %r15
	cmovs	%rax, %r8
	movq	%r11, 264(%rsp)
	movq	152(%rsp), %rbp
	movq	272(%rsp), %rsi
	movq	%r8, _ZL6g_sink(%rip)
	movq	%r8, 256(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 144(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	112(%rsp), %rdi
	xorl	%r10d, %r10d
	movq	%rbx, %r9
	movq	%rax, 152(%rsp)
	movq	256(%rsp), %r8
	movq	264(%rsp), %r11
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L260:
	addq	$1, %r10
.L183:
	cmpq	%r9, %rsi
	jnb	.L435
	movq	%rsi, %rdx
	movq	%r15, %rcx
	mulx	%rbp, %rax, %rsi
	imulq	%rax, %rcx
	movq	%rcx, %rdx
	mulx	%r9, %rdx, %rbx
	addq	%rdx, %rax
	jc	.L177
	testq	%rax, %rax
	jne	.L179
	addq	%rbx, %rsi
.L180:
	movq	%rsi, %rax
	subq	%r9, %rax
	cmpq	%r9, %rsi
	cmovnb	%rax, %rsi
	cmpq	%rdi, %r10
	jne	.L260
	cmpq	%r9, %rsi
	movq	%r9, %rbx
	jnb	.L436
	movq	%r15, %rax
	imulq	%rsi, %rax
	movq	%rax, %rdx
	xorl	%eax, %eax
	mulx	%r9, %rdi, %rbp
	addq	%rdi, %rsi
	setc	%al
	testq	%rsi, %rsi
	jne	.L437
	leaq	(%rax,%rbp), %rsi
	movq	%r11, 272(%rsp)
	movq	%rsi, %rax
	movq	%r8, 264(%rsp)
	subq	%r9, %rax
	cmpq	%r9, %rsi
	cmovnb	%rax, %rsi
	movq	%rsi, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	272(%rsp), %r11
	cmpq	%r11, 264(%rsp)
	movq	%rax, 256(%rsp)
	jne	.L192
	cmpq	%rsi, %r14
	jne	.L192
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	120(%rsp), %rsi
	movq	56(%rsp), %r14
	xorl	%r13d, %r13d
	movq	%rax, 120(%rsp)
	movq	64(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L197:
	addq	$1, %rsi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	$0, 328(%rsp)
	movq	%rsi, 320(%rsp)
	movq	%rbx, 304(%rsp)
	movq	$0, 312(%rsp)
	call	__umodti3
	movq	72(%rsp), %rdx
	movq	%rbp, %rcx
	vmovq	%xmm0, %rsi
	mulx	%rsi, %rax, %rdx
	movq	%rdx, 328(%rsp)
	movq	%r14, %rdx
	movq	%rax, 320(%rsp)
	call	__umodti3
	movq	%rbp, %rcx
	vmovq	%xmm0, %rax
	vpextrq	$1, %xmm0, %rdx
	addq	$1, %rax
	adcq	$0, %rdx
	addq	$1, %r13
	movq	%rax, 320(%rsp)
	movq	%rdx, 328(%rsp)
	movq	%r14, %rdx
	call	__umodti3
	cmpq	%r12, %r13
	vmovq	%xmm0, %rax
	vmovq	%xmm0, 72(%rsp)
	jne	.L197
	movq	120(%rsp), %rdi
	movq	%rax, %r13
	vmovq	%xmm0, _ZL6g_sink(%rip)
	xorl	%esi, %esi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 72(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r13, 120(%rsp)
	movq	56(%rsp), %r14
	movq	%rax, %r12
	movq	%rdi, 56(%rsp)
	movq	%rbx, %rdi
	movq	128(%rsp), %r13
	movq	160(%rsp), %rax
	movq	%r12, 128(%rsp)
	movq	%r15, %r12
	movq	184(%rsp), %rbx
	movq	64(%rsp), %r15
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L441:
	cmpq	%rdi, %rbp
	jnb	.L214
.L215:
	movq	%rbp, %rdx
	movq	%r12, %rax
	mulx	%r11, %rbp, %rcx
	imulq	%rbp, %rax
	movq	%rax, %rdx
	mulx	%rdi, %r9, %rdx
	addq	%r9, %rbp
	jc	.L218
	testq	%rbp, %rbp
	jne	.L220
	addq	%rdx, %rcx
	jc	.L223
.L224:
	cmpq	%rdi, %rcx
	jb	.L231
	subq	%rdi, %rcx
	cmpq	%rdi, %rcx
	jnb	.L438
.L231:
	movq	%r12, %rax
	imulq	%rcx, %rax
	movq	%rax, %rdx
	xorl	%eax, %eax
	mulx	%rdi, %r9, %r10
	addq	%r9, %rcx
	setc	%al
	testq	%rcx, %rcx
	jne	.L439
	addq	%r10, %rax
	movq	%r15, %rcx
	movq	%rdi, 304(%rsp)
	movq	$0, 312(%rsp)
	movq	%rax, %rdx
	subq	%rdi, %rdx
	cmpq	%rdi, %rax
	cmovnb	%rdx, %rax
	xorl	%edx, %edx
	addq	$1, %rax
	adcq	$0, %rdx
	movq	%rax, 320(%rsp)
	movq	%rdx, 328(%rsp)
	movq	%r14, %rdx
	call	__umodti3
	cmpq	112(%rsp), %rsi
	vmovq	%xmm0, %rdx
	movq	%rdx, %rbp
	movq	%rdx, %rax
	je	.L440
	addq	$1, %rsi
.L241:
	xorl	%edx, %edx
	divq	%rdi
	movq	%r12, %rax
	mulx	%r13, %rcx, %rbp
	imulq	%rcx, %rax
	movq	%rax, %rdx
	mulx	%rdi, %r9, %rdx
	addq	%r9, %rcx
	jc	.L199
	testq	%rcx, %rcx
	jne	.L201
	addq	%rdx, %rbp
.L202:
	leaq	1(%rbx), %r9
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	$0, 328(%rsp)
	movq	%r9, 320(%rsp)
	movq	%rdi, 304(%rsp)
	movq	$0, 312(%rsp)
	call	__umodti3
	movq	%rbp, %rax
	subq	%rdi, %rax
	vmovq	%xmm0, %rbx
	cmpq	%rdi, %rbp
	cmovnb	%rax, %rbp
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rdi
	movq	%r12, %rax
	mulx	%r13, %rcx, %r11
	imulq	%rcx, %rax
	movq	%rax, %rdx
	mulx	%rdi, %r9, %rdx
	addq	%r9, %rcx
	jc	.L206
	testq	%rcx, %rcx
	jne	.L210
	addq	%rdx, %r11
.L211:
	cmpq	%rdi, %r11
	jb	.L441
	subq	%rdi, %r11
	cmpq	%r11, %rbp
	movq	%r11, %rax
	cmovnb	%rbp, %rax
	cmpq	%rdi, %rax
	jb	.L215
.L214:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB8:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE8:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB9:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L440:
	movq	120(%rsp), %r13
	movq	128(%rsp), %r12
	movq	%rdi, %rbx
	vmovq	%xmm0, _ZL6g_sink(%rip)
	movq	56(%rsp), %rdi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	%rbp, %r13
	jne	.L442
	movq	.refptr._ZSt4cout(%rip), %rcx
	subq	%r12, %rax
	movq	216(%rsp), %rdx
	movl	$11, %r8d
	subq	200(%rsp), %rdx
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	232(%rsp), %rdx
	vdivsd	%xmm7, %xmm0, %xmm15
	subq	224(%rsp), %rdx
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	248(%rsp), %rdx
	subq	240(%rsp), %rdx
	vdivsd	%xmm7, %xmm0, %xmm14
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	96(%rsp), %rdx
	subq	80(%rsp), %rdx
	vdivsd	%xmm7, %xmm0, %xmm13
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	144(%rsp), %rdx
	subq	136(%rsp), %rdx
	vdivsd	%xmm7, %xmm0, %xmm12
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	256(%rsp), %rdx
	subq	152(%rsp), %rdx
	vdivsd	%xmm7, %xmm0, %xmm11
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	movq	72(%rsp), %rdx
	subq	%rdi, %rdx
	vdivsd	%xmm7, %xmm0, %xmm10
	vcvtsi2sdq	%rdx, %xmm8, %xmm0
	leaq	.LC36(%rip), %rdx
	vdivsd	%xmm7, %xmm0, %xmm9
	vcvtsi2sdq	%rax, %xmm8, %xmm0
	vdivsd	%xmm7, %xmm0, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$47, %r8d
	leaq	.LC37(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$17, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm15, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$17, %r8d
	leaq	.LC40(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm14, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$17, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm13, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$53, %r8d
	leaq	.LC42(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$29, %r8d
	leaq	.LC43(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm12, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$29, %r8d
	leaq	.LC44(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm11, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$29, %r8d
	leaq	.LC45(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm10, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$54, %r8d
	leaq	.LC46(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$18, %r8d
	leaq	.LC47(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm9, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$18, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm6, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$22, %r8d
	leaq	.LC49(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	%xmm9, %xmm6, %xmm1
	movq	%rbx, %rcx
	vsubsd	.LC50(%rip), %xmm1, %xmm1
	vmulsd	.LC51(%rip), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$8, 176(%rsp)
	movq	192(%rsp), %rbx
	cmpq	%rbx, 176(%rsp)
	jne	.L247
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$7, %r8d
	leaq	.LC53(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	_ZL6g_sink(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE9:
	xorl	%ebx, %ebx
	jmp	.L87
.L256:
	movq	$10000000, 208(%rsp)
	jmp	.L11
.L412:
	testq	%rbp, %rbp
	jne	.L40
	addq	$8, 136(%rsp)
	movq	192(%rsp), %rbx
	cmpq	%rbx, 136(%rsp)
	jne	.L26
	jmp	.L125
.L396:
	leaq	1(%rax), %rcx
.LEHB10:
	call	_Znwy
.LEHE10:
	movq	%rax, 352(%rsp)
	movq	%rax, %rcx
	movq	%rbx, 368(%rsp)
.L14:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	memcpy
	jmp	.L16
.L401:
	call	*%rbp
	movl	%r12d, (%rax)
	jmp	.L19
.L397:
	movzbl	(%rsi), %eax
	movb	%al, 368(%rsp)
	jmp	.L16
.L192:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$41, %r8d
	leaq	.LC33(%rip), %rdx
	movq	%rsi, %rcx
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L393:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
	movl	$3, %ebx
	jmp	.L87
.L166:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$35, %r8d
	leaq	.LC30(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE11:
	jmp	.L393
.L402:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC8(%rip), %rdx
.LEHB12:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE12:
.L25:
	movl	$1, %ebx
	jmp	.L10
.L442:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$37, %r8d
	leaq	.LC34(%rip), %rdx
	movq	%rsi, %rcx
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE13:
	jmp	.L393
.L398:
	movq	%rdi, %rcx
	jmp	.L14
.L410:
	movl	$16, %ecx
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB14:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE14:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB15:
	call	__cxa_throw
.LEHE15:
.L413:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB16:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE16:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB17:
	call	__cxa_throw
.LEHE17:
.L417:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB18:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE18:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB19:
	call	__cxa_throw
.LEHE19:
.L177:
	testq	%rax, %rax
	jne	.L179
	leaq	1(%rsi,%rbx), %rsi
	jmp	.L180
.L206:
	testq	%rcx, %rcx
	jne	.L210
	leaq	1(%r11,%rdx), %r11
	jmp	.L211
.L218:
	testq	%rbp, %rbp
	jne	.L220
	addq	%rdx, %rcx
	jc	.L223
	addq	$1, %rcx
	jnc	.L224
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB20:
	call	_ZNSt14overflow_errorC1EPKc
.LEHE20:
	leaq	_ZNSt14overflow_errorD1Ev(%rip), %r8
	leaq	_ZTISt14overflow_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB21:
	call	__cxa_throw
.LEHE21:
.L199:
	testq	%rcx, %rcx
	jne	.L201
	leaq	1(%rbp,%rdx), %rbp
	jmp	.L202
.L272:
.L382:
	movq	%r12, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	call	__cxa_free_exception
.L47:
	testq	%rbp, %rbp
	je	.L32
	jmp	.L71
.L276:
.L383:
	movq	%r12, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	call	__cxa_free_exception
.L71:
	subq	%rbp, %rdi
	movq	%rbp, %rcx
	movq	%rdi, %rdx
	call	_ZdlPvy
.L32:
	subq	$1, %rsi
	jne	.L133
	movq	%rbx, %rcx
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$42, %r8d
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rbx
	movq	%rsi, %rcx
.LEHB22:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	call	*16(%rax)
	movq	%rsi, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE22:
	call	__cxa_end_catch
	jmp	.L57
.L280:
	jmp	.L383
.L277:
	jmp	.L383
.L300:
.L388:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_free_exception
.L133:
	movq	296(%rsp), %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L267:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	jmp	.L133
.L438:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB24:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE24:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB25:
	call	__cxa_throw
.LEHE25:
.L436:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB26:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE26:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB27:
	call	__cxa_throw
.LEHE27:
.L301:
	jmp	.L388
.L293:
	jmp	.L388
.L437:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB28:
	call	_ZNSt11logic_errorC1EPKc
.LEHE28:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB29:
	call	__cxa_throw
.LEHE29:
.L426:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB30:
	call	_ZNSt11logic_errorC1EPKc
.LEHE30:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB31:
	call	__cxa_throw
.LEHE31:
.L294:
	jmp	.L388
.L275:
	jmp	.L383
.L414:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB32:
	call	_ZNSt11logic_errorC1EPKc
.LEHE32:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB33:
	call	__cxa_throw
.LEHE33:
.L411:
	movl	$16, %ecx
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB34:
	call	_ZNSt11logic_errorC1EPKc
.LEHE34:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB35:
	call	__cxa_throw
.LEHE35:
.L278:
	jmp	.L383
.L273:
	jmp	.L382
.L425:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB36:
	call	_ZNSt11logic_errorC1EPKc
.LEHE36:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB37:
	call	__cxa_throw
.LEHE37:
.L409:
	movl	$16, %ecx
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB38:
	call	_ZNSt11logic_errorC1EPKc
.LEHE38:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB39:
	call	__cxa_throw
.LEHE39:
.L274:
	jmp	.L383
.L271:
	jmp	.L382
.L262:
	movq	%rax, %rcx
	movq	%rdx, %rsi
	vzeroupper
.L250:
	subq	$1, %rsi
	jne	.L389
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$25, %r8d
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rbx
	movq	%rsi, %rcx
.LEHB40:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	call	*16(%rax)
	movq	%rsi, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE40:
	call	__cxa_end_catch
	jmp	.L25
.L429:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB41:
	call	_ZNSt11logic_errorC1EPKc
.LEHE41:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB42:
	call	__cxa_throw
.LEHE42:
.L264:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
.L389:
.LEHB43:
	call	_Unwind_Resume
.LEHE43:
.L439:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB44:
	call	_ZNSt11logic_errorC1EPKc
.LEHE44:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB45:
	call	__cxa_throw
.LEHE45:
.L304:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	jmp	.L71
.L302:
	jmp	.L388
.L266:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L133
.L127:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB46:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE46:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB47:
	call	__cxa_throw
.LEHE47:
.L428:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB48:
	call	_ZNSt11logic_errorC1EPKc
.LEHE48:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB49:
	call	__cxa_throw
.LEHE49:
.L106:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB50:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE50:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB51:
	call	__cxa_throw
.LEHE51:
.L418:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB52:
	call	_ZNSt11logic_errorC1EPKc
.LEHE52:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB53:
	call	__cxa_throw
.LEHE53:
.L416:
	movl	$16, %ecx
	movq	184(%rsp), %rdi
	movq	120(%rsp), %rbp
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB54:
	call	_ZNSt11logic_errorC1EPKc
.LEHE54:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB55:
	call	__cxa_throw
.LEHE55:
.L284:
	jmp	.L388
.L283:
	jmp	.L388
.L281:
	jmp	.L383
.L282:
	jmp	.L383
.L279:
	jmp	.L383
.L179:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB56:
	call	_ZNSt11logic_errorC1EPKc
.LEHE56:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB57:
	call	__cxa_throw
.LEHE57:
.L263:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
.L24:
	movq	352(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L249
	movq	368(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L249:
	movq	%rbx, %rcx
	jmp	.L250
.L292:
	jmp	.L388
.L399:
	leaq	.LC7(%rip), %rcx
.LEHB58:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE58:
.L268:
	vzeroupper
	movq	%rax, %rbx
	movq	%rdx, %rsi
	call	*%rbp
	cmpl	$0, (%rax)
	jne	.L24
	call	*%rbp
	movl	%r12d, (%rax)
	jmp	.L24
.L400:
	leaq	.LC7(%rip), %rcx
.LEHB59:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE59:
.L303:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	jmp	.L47
.L223:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB60:
	call	_ZNSt14overflow_errorC1EPKc
.LEHE60:
	leaq	_ZNSt14overflow_errorD1Ev(%rip), %r8
	leaq	_ZTISt14overflow_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB61:
	call	__cxa_throw
.LEHE61:
.L395:
	leaq	.LC6(%rip), %rcx
.LEHB62:
	call	_ZSt19__throw_logic_errorPKc
.LEHE62:
.L299:
	jmp	.L388
.L201:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB63:
	call	_ZNSt11logic_errorC1EPKc
.LEHE63:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB64:
	call	__cxa_throw
.LEHE64:
.L27:
	movl	$16, %ecx
	vzeroupper
	call	__cxa_allocate_exception
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB65:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE65:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rdi, %rcx
.LEHB66:
	call	__cxa_throw
.LEHE66:
.L295:
	jmp	.L388
.L270:
.L387:
	movq	%rdi, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	call	__cxa_free_exception
	jmp	.L32
.L403:
	movl	$16, %ecx
	vzeroupper
	call	__cxa_allocate_exception
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB67:
	call	_ZNSt11logic_errorC1EPKc
.LEHE67:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rdi, %rcx
.LEHB68:
	call	__cxa_throw
.LEHE68:
.L265:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	jmp	.L32
.L269:
	jmp	.L387
.L406:
	leaq	.LC13(%rip), %rcx
.LEHB69:
	call	_ZSt20__throw_length_errorPKc
.LEHE69:
.L210:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB70:
	call	_ZNSt11logic_errorC1EPKc
.LEHE70:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB71:
	call	__cxa_throw
.LEHE71:
.L220:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB72:
	call	_ZNSt11logic_errorC1EPKc
.LEHE72:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB73:
	call	__cxa_throw
.LEHE73:
.L296:
	jmp	.L388
.L297:
	jmp	.L388
.L298:
	jmp	.L388
.L432:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB74:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE74:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB75:
	call	__cxa_throw
.LEHE75:
.L433:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB76:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE76:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB77:
	call	__cxa_throw
.LEHE77:
.L288:
	jmp	.L388
.L289:
	jmp	.L388
.L434:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB78:
	call	_ZNSt11logic_errorC1EPKc
.LEHE78:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB79:
	call	__cxa_throw
.LEHE79:
.L435:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB80:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE80:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB81:
	call	__cxa_throw
.LEHE81:
.L290:
	jmp	.L388
.L291:
	jmp	.L388
.L430:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB82:
	call	_ZNSt11logic_errorC1EPKc
.LEHE82:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB83:
	call	__cxa_throw
.LEHE83:
.L148:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB84:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE84:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB85:
	call	__cxa_throw
.LEHE85:
.L286:
	jmp	.L388
.L287:
	jmp	.L388
.L285:
	jmp	.L388
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5579:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5579-.LLSDATTD5579
.LLSDATTD5579:
	.byte	0x1
	.uleb128 .LLSDACSE5579-.LLSDACSB5579
.LLSDACSB5579:
	.uleb128 .LEHB0-.LFB5579
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L263-.LFB5579
	.uleb128 0x3
	.uleb128 .LEHB1-.LFB5579
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L268-.LFB5579
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB5579
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB5579
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L265-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB5579
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L303-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB5-.LFB5579
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L276-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB6-.LFB5579
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB7-.LFB5579
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB8-.LFB5579
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L297-.LFB5579
	.uleb128 0
	.uleb128 .LEHB9-.LFB5579
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB10-.LFB5579
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L262-.LFB5579
	.uleb128 0x1
	.uleb128 .LEHB11-.LFB5579
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB12-.LFB5579
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB5579
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB14-.LFB5579
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L272-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB15-.LFB5579
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L303-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB16-.LFB5579
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L277-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB17-.LFB5579
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB18-.LFB5579
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L280-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB19-.LFB5579
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB20-.LFB5579
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L300-.LFB5579
	.uleb128 0
	.uleb128 .LEHB21-.LFB5579
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB22-.LFB5579
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L267-.LFB5579
	.uleb128 0
	.uleb128 .LEHB23-.LFB5579
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB5579
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L301-.LFB5579
	.uleb128 0
	.uleb128 .LEHB25-.LFB5579
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB26-.LFB5579
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L293-.LFB5579
	.uleb128 0
	.uleb128 .LEHB27-.LFB5579
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB28-.LFB5579
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L294-.LFB5579
	.uleb128 0
	.uleb128 .LEHB29-.LFB5579
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB30-.LFB5579
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L275-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB31-.LFB5579
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB32-.LFB5579
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L278-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB33-.LFB5579
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB34-.LFB5579
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L273-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB35-.LFB5579
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L303-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB36-.LFB5579
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L274-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB37-.LFB5579
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB38-.LFB5579
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L271-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB39-.LFB5579
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L303-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB40-.LFB5579
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L264-.LFB5579
	.uleb128 0
	.uleb128 .LEHB41-.LFB5579
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L285-.LFB5579
	.uleb128 0
	.uleb128 .LEHB42-.LFB5579
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB43-.LFB5579
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB5579
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L302-.LFB5579
	.uleb128 0
	.uleb128 .LEHB45-.LFB5579
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB46-.LFB5579
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L284-.LFB5579
	.uleb128 0
	.uleb128 .LEHB47-.LFB5579
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB48-.LFB5579
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L283-.LFB5579
	.uleb128 0
	.uleb128 .LEHB49-.LFB5579
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB50-.LFB5579
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L282-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB51-.LFB5579
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB52-.LFB5579
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L281-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB53-.LFB5579
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB54-.LFB5579
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L279-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB55-.LFB5579
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L304-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB56-.LFB5579
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L292-.LFB5579
	.uleb128 0
	.uleb128 .LEHB57-.LFB5579
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB58-.LFB5579
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L268-.LFB5579
	.uleb128 0x3
	.uleb128 .LEHB59-.LFB5579
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L268-.LFB5579
	.uleb128 0x3
	.uleb128 .LEHB60-.LFB5579
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L299-.LFB5579
	.uleb128 0
	.uleb128 .LEHB61-.LFB5579
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB62-.LFB5579
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L262-.LFB5579
	.uleb128 0x1
	.uleb128 .LEHB63-.LFB5579
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L295-.LFB5579
	.uleb128 0
	.uleb128 .LEHB64-.LFB5579
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB65-.LFB5579
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L270-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB66-.LFB5579
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L265-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB67-.LFB5579
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L269-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB68-.LFB5579
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L265-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB69-.LFB5579
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L303-.LFB5579
	.uleb128 0x7
	.uleb128 .LEHB70-.LFB5579
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L296-.LFB5579
	.uleb128 0
	.uleb128 .LEHB71-.LFB5579
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB72-.LFB5579
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L298-.LFB5579
	.uleb128 0
	.uleb128 .LEHB73-.LFB5579
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB74-.LFB5579
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L288-.LFB5579
	.uleb128 0
	.uleb128 .LEHB75-.LFB5579
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB76-.LFB5579
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L289-.LFB5579
	.uleb128 0
	.uleb128 .LEHB77-.LFB5579
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB78-.LFB5579
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L290-.LFB5579
	.uleb128 0
	.uleb128 .LEHB79-.LFB5579
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB80-.LFB5579
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L291-.LFB5579
	.uleb128 0
	.uleb128 .LEHB81-.LFB5579
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB82-.LFB5579
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L286-.LFB5579
	.uleb128 0
	.uleb128 .LEHB83-.LFB5579
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L266-.LFB5579
	.uleb128 0
	.uleb128 .LEHB84-.LFB5579
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L287-.LFB5579
	.uleb128 0
	.uleb128 .LEHB85-.LFB5579
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L266-.LFB5579
	.uleb128 0
.LLSDACSE5579:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	.LDFCM0-.
.LLSDATT5579:
	.section	.text.startup,"x"
	.seh_endproc
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt11logic_error
	.section	.rdata$_ZTSSt11logic_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt11logic_error:
	.ascii "St11logic_error\0"
	.globl	_ZTISt11logic_error
	.section	.rdata$_ZTISt11logic_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt16invalid_argument
	.section	.rdata$_ZTSSt16invalid_argument,"dr"
	.linkonce same_size
	.align 16
_ZTSSt16invalid_argument:
	.ascii "St16invalid_argument\0"
	.globl	_ZTISt16invalid_argument
	.section	.rdata$_ZTISt16invalid_argument,"dr"
	.linkonce same_size
	.align 8
_ZTISt16invalid_argument:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16invalid_argument
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt14overflow_error
	.section	.rdata$_ZTSSt14overflow_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt14overflow_error:
	.ascii "St14overflow_error\0"
	.globl	_ZTISt14overflow_error
	.section	.rdata$_ZTISt14overflow_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt14overflow_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt14overflow_error
	.quad	_ZTISt13runtime_error
.lcomm _ZL6g_sink,8,8
	.section .rdata,"dr"
	.align 32
.LC9:
	.quad	257
	.quad	65537
	.quad	1000003
	.quad	10000019
	.align 16
.LC12:
	.quad	0
	.quad	1
	.align 8
.LC35:
	.long	0
	.long	1104006501
	.align 8
.LC50:
	.long	0
	.long	1072693248
	.align 8
.LC51:
	.long	0
	.long	1079574528
	.data
	.align 8
.LDFCM0:
	.quad	_ZTISt9exception
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__modti3;	.scl	2;	.type	32;	.endef
	.def	__umodti3;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14overflow_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14overflow_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt11logic_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt11logic_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt14overflow_errorD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt14overflow_errorD1Ev
	.linkonce	discard
.refptr._ZNSt14overflow_errorD1Ev:
	.quad	_ZNSt14overflow_errorD1Ev
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZNSt11logic_errorD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt11logic_errorD1Ev
	.linkonce	discard
.refptr._ZNSt11logic_errorD1Ev:
	.quad	_ZNSt11logic_errorD1Ev
	.section	.rdata$.refptr._ZNSt16invalid_argumentD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt16invalid_argumentD1Ev
	.linkonce	discard
.refptr._ZNSt16invalid_argumentD1Ev:
	.quad	_ZNSt16invalid_argumentD1Ev
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
