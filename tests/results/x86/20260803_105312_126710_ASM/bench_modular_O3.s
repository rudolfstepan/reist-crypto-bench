	.file	"bench_modular.cpp"
	.text
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0:
.LFB9578:
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
	.align 8
.LC0:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0:
.LFB9579:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	16(%rcx), %rbp
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%rbp, (%rcx)
	je	.L15
	movq	%rdx, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rsi
	ja	.L16
	cmpq	$1, %rax
	je	.L17
	testq	%rax, %rax
	jne	.L9
.L11:
	movq	(%rbx), %rax
	movq	%rsi, 8(%rbx)
	movb	$0, (%rax,%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L17:
	movzbl	(%rdi), %eax
	movb	%al, 16(%rbx)
	jmp	.L11
.L16:
	leaq	1(%rax), %rcx
	call	_Znwy
	movq	%rsi, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rbp
.L9:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	call	memcpy
	jmp	.L11
.L15:
	leaq	.LC0(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "REIST modulus B must be positive\0"
	.section	.text$_ZN5reist6detail24require_positive_modulusEx,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN5reist6detail24require_positive_modulusEx
	.def	_ZN5reist6detail24require_positive_modulusEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5reist6detail24require_positive_modulusEx
_ZN5reist6detail24require_positive_modulusEx:
.LFB7136:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L23
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L23:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB0:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE0:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB1:
	call	__cxa_throw
.L21:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7136:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7136-.LLSDACSB7136
.LLSDACSB7136:
	.uleb128 .LEHB0-.LFB7136
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB7136
	.uleb128 0
	.uleb128 .LEHB1-.LFB7136
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE7136:
	.section	.text$_ZN5reist6detail24require_positive_modulusEx,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "stoll\0"
.LC3:
	.ascii "Usage: \0"
.LC4:
	.ascii "stoull\0"
.LC5:
	.ascii " [B>0] [N>0]\12\0"
	.align 8
.LC6:
	.ascii "cannot create std::vector larger than max_size()\0"
.LC11:
	.ascii "Preflight failed for T=\0"
.LC12:
	.ascii ", B=\0"
.LC13:
	.ascii ", classic=\0"
.LC14:
	.ascii ", centered=\0"
	.align 8
.LC16:
	.ascii "========================================\12\0"
	.align 8
.LC17:
	.ascii "Pure remainder control (runtime modulus)\12\0"
.LC18:
	.ascii "B = \0"
.LC19:
	.ascii ", N = \0"
.LC20:
	.ascii "\12\0"
	.align 8
.LC21:
	.ascii "Input domain: deterministic full-width signed int64\12\0"
	.align 8
.LC22:
	.ascii "RNG and allocation are outside the timed regions.\12\12\0"
.LC23:
	.ascii "classic  : \0"
.LC24:
	.ascii " s\12\0"
.LC25:
	.ascii "centered : \0"
.LC27:
	.ascii "Ratio    : \0"
.LC28:
	.ascii "x (classic / centered)\12\0"
.LC29:
	.ascii "sinks    : \0"
.LC30:
	.ascii " / \0"
	.align 8
.LC31:
	.ascii "Invalid argument or benchmark failure: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7156:
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
	subq	$2648, %rsp
	.seh_stackalloc	2648
	vmovups	%xmm6, 2592(%rsp)
	.seh_savexmm	%xmm6, 2592
	vmovups	%xmm7, 2608(%rsp)
	.seh_savexmm	%xmm7, 2608
	vmovups	%xmm8, 2624(%rsp)
	.seh_savexmm	%xmm8, 2624
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rbp
	call	__main
	cmpl	$1, %esi
	jg	.L118
	movl	$5000000, %r13d
	movl	$257, %ebx
	leaq	80(%rsp), %rdi
.L25:
	leaq	88(%rsp), %rcx
	movl	$48879, %edx
	movl	$1, %esi
	movq	$48879, 80(%rsp)
	movabsq	$6364136223846793005, %r8
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rdx, %rax
	addq	$8, %rcx
	shrq	$62, %rax
	xorq	%rdx, %rax
	imulq	%r8, %rax
	leaq	(%rax,%rsi), %rdx
	addq	$1, %rsi
	movq	%rdx, -8(%rcx)
	cmpq	$312, %rsi
	jne	.L46
	movq	%r13, %rax
	shrq	$60, %rax
	jne	.L119
	leaq	0(,%r13,8), %rax
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
.LEHB2:
	call	_Znwy
	xorl	%edx, %edx
	movq	%rax, %rbp
	leaq	8(%rax), %r15
	movq	%rdx, (%rax)
	movq	%r13, %rax
	subq	$1, %rax
	je	.L48
	leaq	(%r15,%rax,8), %r14
	movq	%r15, %rcx
	xorl	%edx, %edx
	subq	%rbp, %r14
	leaq	-8(%r14), %r8
	leaq	0(%rbp,%r14), %r15
	call	memset
.L48:
	cmpq	%r15, %rbp
	je	.L49
	movabsq	$-5403634167711393303, %r8
	vmovdqu	.LC7(%rip), %ymm5
	vmovdqu	.LC8(%rip), %ymm4
	movq	%rbp, %rcx
	movabsq	$6148914691236517205, %r11
	vmovq	%r8, %xmm3
	movabsq	$8202884508482404352, %r10
	movabsq	$-2270628950310912, %r9
	vpbroadcastq	%xmm3, %ymm2
	vpsrlq	$32, %ymm2, %ymm3
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L121:
	movq	80(%rsp,%rsi,8), %rdx
	addq	$1, %rsi
.L51:
	movq	%rdx, %rax
	addq	$8, %rcx
	shrq	$29, %rax
	andq	%r11, %rax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r10, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r9, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	movq	%rax, -8(%rcx)
	cmpq	%rcx, %r15
	je	.L120
.L55:
	cmpq	$312, %rsi
	jne	.L121
	vpbroadcastq	.LC35(%rip), %ymm8
	leaq	1248(%rdi), %rax
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L52:
	vpand	(%rdx), %ymm4, %ymm1
	vpand	8(%rdx), %ymm5, %ymm0
	addq	$32, %rdx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm6
	vpand	%ymm8, %ymm0, %ymm0
	vpxor	1216(%rdx), %ymm6, %ymm6
	vpsrlq	$32, %ymm0, %ymm1
	vpmuludq	%ymm2, %ymm0, %ymm7
	vpmuludq	%ymm2, %ymm1, %ymm1
	vpmuludq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$32, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm7, %ymm0
	vpxor	%ymm0, %ymm6, %ymm0
	vmovdqu	%ymm0, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L52
	vpbroadcastq	.LC35(%rip), %ymm8
	leaq	2464(%rdi), %rdx
	.p2align 4,,10
	.p2align 3
.L53:
	vpand	(%rax), %ymm4, %ymm1
	vpand	8(%rax), %ymm5, %ymm0
	addq	$32, %rax
	vpor	%ymm1, %ymm0, %ymm0
	vpsrlq	$1, %ymm0, %ymm6
	vpand	%ymm8, %ymm0, %ymm0
	vpxor	-1280(%rax), %ymm6, %ymm6
	vpsrlq	$32, %ymm0, %ymm1
	vpmuludq	%ymm2, %ymm0, %ymm7
	vpmuludq	%ymm2, %ymm1, %ymm1
	vpmuludq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	vpsllq	$32, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm7, %ymm0
	vpxor	%ymm0, %ymm6, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rdx, %rax
	jne	.L53
	movq	2552(%rsp), %rsi
	movq	2544(%rsp), %rax
	movq	2560(%rsp), %r14
	movq	%rsi, %rdx
	andq	$-2147483648, %rax
	andq	$-2147483648, %rsi
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	1296(%rsp), %rdx
	andq	%r8, %rax
	xorq	%rax, %rdx
	movq	%r14, %rax
	andq	$-2147483648, %r14
	andl	$2147483647, %eax
	movq	%rdx, 2544(%rsp)
	orq	%rax, %rsi
	movq	%rsi, %rax
	andl	$1, %esi
	negq	%rsi
	shrq	%rax
	xorq	1304(%rsp), %rax
	andq	%r8, %rsi
	xorq	%rsi, %rax
	movq	%rax, 2552(%rsp)
	movq	2568(%rsp), %rax
	movq	%rax, %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%r14, %rdx
	movq	%rdx, %rsi
	andl	$1, %edx
	negq	%rdx
	shrq	%rsi
	xorq	1312(%rsp), %rsi
	andq	%r8, %rdx
	xorq	%rdx, %rsi
	movq	80(%rsp), %rdx
	movq	%rsi, 2560(%rsp)
	movq	%rdx, %rsi
	andl	$2147483647, %esi
	orq	%rsi, %rax
	movq	%rax, %rsi
	shrq	%rsi
	xorq	1320(%rsp), %rsi
	andl	$1, %eax
	cmovne	%r8, %rax
	xorq	%rsi, %rax
	movl	$1, %esi
	movq	%rax, 2568(%rsp)
	jmp	.L51
.L118:
	leaq	80(%rsp), %rdi
	movq	8(%rbp), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE2:
	movq	80(%rsp), %r14
	movq	__imp__errno(%rip), %r12
.LEHB3:
	call	*%r12
	movl	(%rax), %r15d
	call	*%r12
.LEHE3:
	xorl	%r8d, %r8d
	leaq	72(%rsp), %rdx
	movq	%r14, %rcx
	movl	%r8d, (%rax)
	movl	$10, %r8d
	call	strtoll
	cmpq	72(%rsp), %r14
	movq	%rax, %rbx
	je	.L122
.LEHB4:
	call	*%r12
.LEHE4:
	cmpl	$34, (%rax)
	je	.L123
	call	*%r12
	cmpl	$0, (%rax)
	je	.L124
.L28:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %r14
	cmpq	%r14, %rcx
	je	.L29
	movq	96(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L29:
	cmpl	$2, %esi
	jne	.L34
	testq	%rbx, %rbx
	movl	$5000000, %r13d
	jg	.L25
.L44:
	movq	.refptr._ZSt4cerr(%rip), %r13
	movl	$7, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%r13, %rcx
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	0(%rbp), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE5:
.L115:
	movl	$2, %ebx
.L24:
	vmovups	2592(%rsp), %xmm6
	movl	%ebx, %eax
	vmovups	2608(%rsp), %xmm7
	vmovups	2624(%rsp), %xmm8
	addq	$2648, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L120:
	vzeroupper
.L49:
	movq	%rbp, %r12
	movq	%rbp, %r14
.L56:
	cmpq	%r14, %r15
	je	.L125
	movq	(%r14), %rdi
	movq	%rbx, %rcx
	movq	%rdi, 48(%rsp)
.LEHB6:
	call	_ZN5reist6detail24require_positive_modulusEx
	movq	%rdi, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	movq	%rdx, %rsi
	js	.L126
	movq	%rbx, %rax
	movq	%rbx, %rcx
	movq	%rdx, %rdi
	sarq	%rax
	andl	$1, %ecx
	addq	%rax, %rcx
	cmpq	%rcx, %rdx
	jge	.L127
.L79:
	movq	%rbx, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN5reist6detail24require_positive_modulusEx
	movq	40(%rsp), %rax
	negq	%rax
	cmpq	%rax, %rdi
	jl	.L61
	leaq	-1(%rbx), %rax
	addq	$8, %r14
	sarq	%rax
	cmpq	%rax, %rdi
	jle	.L56
.L61:
	movq	.refptr._ZSt4cerr(%rip), %r13
	movl	$23, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$4, %r8d
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$10, %r8d
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$11, %r8d
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE6:
	movl	$3, %ebx
.L62:
	movq	56(%rsp), %rdx
	movq	%rbp, %rcx
	call	_ZdlPvy
	jmp	.L24
.L34:
	movq	16(%rbp), %rdx
	movq	%rdi, %rcx
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE7:
	movq	80(%rsp), %r15
.LEHB8:
	call	*%r12
	movl	(%rax), %eax
	movl	%eax, 40(%rsp)
	call	*%r12
.LEHE8:
	xorl	%ecx, %ecx
	movl	$10, %r8d
	leaq	72(%rsp), %rdx
	movl	%ecx, (%rax)
	movq	%r15, %rcx
	call	strtoull
	cmpq	72(%rsp), %r15
	movq	%rax, %r13
	je	.L128
.LEHB9:
	call	*%r12
.LEHE9:
	cmpl	$34, (%rax)
	je	.L129
	call	*%r12
	cmpl	$0, (%rax)
	je	.L130
.L38:
	movq	80(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L39
	movq	96(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L39:
	cmpl	$3, %esi
	jne	.L44
	testq	%rbx, %rbx
	jle	.L44
	testq	%r13, %r13
	je	.L44
	jmp	.L25
.L127:
	movq	%rdx, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %rdi
	js	.L131
.L60:
	cmpq	%rcx, %rsi
	je	.L79
	jmp	.L61
.L130:
	call	*%r12
	movl	40(%rsp), %ecx
	movl	%ecx, (%rax)
	jmp	.L38
.L126:
	movq	%rbx, %rax
	movq	%rbx, %rcx
	leaq	(%rbx,%rdx), %rdi
	sarq	%rax
	andl	$1, %ecx
	addq	%rax, %rcx
	cmpq	%rcx, %rdi
	jl	.L113
	movq	%rdx, %rcx
.L58:
	movq	%rdi, %rsi
	movq	%rcx, %rdi
	addq	%rbx, %rcx
	jmp	.L60
.L125:
	vxorps	%xmm6, %xmm6, %xmm6
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	cmpq	%r15, %rbp
	movq	%rax, 40(%rsp)
	je	.L64
	movq	%rbp, %r14
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rbx, %rcx
	movq	(%r14), %rsi
.LEHB10:
	call	_ZN5reist6detail24require_positive_modulusEx
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	leaq	(%rdx,%rbx), %rax
	cmovns	%rdx, %rax
	addq	$8, %r14
	addq	%rax, %rdi
	cmpq	%r14, %r15
	jne	.L66
	movq	%rdi, _ZN12_GLOBAL__N_1L14benchmark_sinkE(%rip)
	xorl	%esi, %esi
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	vmovsd	.LC15(%rip), %xmm8
	subq	40(%rsp), %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm7
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rbx, %rcx
	movq	%rax, %r14
	movq	%rbx, %rax
	sarq	%rcx
	andl	$1, %eax
	addq	%rax, %rcx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L69:
	movq	(%r12), %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	leaq	(%rdx,%rbx), %rax
	cmovs	%rax, %rdx
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	%rdx, %rcx
	cmovle	%rax, %rdx
	addq	$8, %r12
	addq	%rdx, %rsi
	cmpq	%r12, %r15
	jne	.L69
.L80:
	movq	%rsi, _ZN12_GLOBAL__N_1L14benchmark_sinkE(%rip)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movl	$41, %r8d
	subq	%r14, %rax
	movq	.refptr._ZSt4cout(%rip), %r14
	vcvtsi2sdq	%rax, %xmm6, %xmm6
	vdivsd	%xmm8, %xmm6, %xmm6
	movq	(%r14), %rax
	movq	%r14, %rcx
	movq	-24(%rax), %rdx
	addq	%r14, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC16(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$41, %r8d
	leaq	.LC17(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$41, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$4, %r8d
	leaq	.LC18(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$6, %r8d
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$52, %r8d
	leaq	.LC21(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$51, %r8d
	leaq	.LC22(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$11, %r8d
	leaq	.LC23(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm7, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$11, %r8d
	leaq	.LC25(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm6, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vxorpd	%xmm0, %xmm0, %xmm0
	vcomisd	%xmm0, %xmm6
	jbe	.L70
	movl	$11, %r8d
	leaq	.LC27(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	%xmm6, %xmm7, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L70:
	movl	$11, %r8d
	leaq	.LC29(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE10:
	xorl	%ebx, %ebx
	jmp	.L62
.L124:
	call	*%r12
	movl	%r15d, (%rax)
	jmp	.L28
.L113:
	testq	%rdi, %rdi
	movq	%rdi, %rsi
	js	.L61
	jmp	.L79
.L64:
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rax, _ZN12_GLOBAL__N_1L14benchmark_sinkE(%rip)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	vmovsd	.LC15(%rip), %xmm8
	subq	40(%rsp), %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm7
	vdivsd	%xmm8, %xmm7, %xmm7
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.L80
.L131:
	movq	%rdx, %rdi
	jmp	.L58
.L122:
	leaq	.LC2(%rip), %rcx
.LEHB11:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE11:
.L94:
	vzeroupper
	movq	%rax, %rbx
	movq	%rdx, %rsi
	call	*%r12
	cmpl	$0, (%rax)
	jne	.L33
	call	*%r12
	movl	%r15d, (%rax)
.L33:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L74
.L117:
	movq	96(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L74:
	movq	%rbx, %rcx
	movq	%rsi, %rax
	jmp	.L73
.L123:
	leaq	.LC2(%rip), %rcx
.LEHB12:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE12:
.L119:
	leaq	.LC6(%rip), %rcx
.LEHB13:
	call	_ZSt20__throw_length_errorPKc
.LEHE13:
.L129:
	leaq	.LC4(%rip), %rcx
.LEHB14:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE14:
.L90:
	movq	%rax, %rcx
	movq	%rdx, %rax
	vzeroupper
.L73:
	subq	$1, %rax
	jne	.L116
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %r13
	movl	$39, %r8d
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rbx
	movq	%r13, %rcx
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	call	*16(%rax)
	movq	%r13, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE15:
	call	__cxa_end_catch
	jmp	.L115
.L89:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	jmp	.L33
.L92:
	movq	%rdx, %rsi
	movq	56(%rsp), %rdx
	movq	%rax, %rbx
	movq	%rbp, %rcx
	vzeroupper
	call	_ZdlPvy
	movq	%rbx, %rcx
	movq	%rsi, %rax
	jmp	.L73
.L93:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
.L116:
.LEHB16:
	call	_Unwind_Resume
.LEHE16:
.L128:
	leaq	.LC4(%rip), %rcx
.LEHB17:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE17:
.L91:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
.L43:
	movq	80(%rsp), %rcx
	cmpq	%r14, %rcx
	jne	.L117
	jmp	.L74
.L95:
	vzeroupper
	movq	%rax, %rbx
	movq	%rdx, %rsi
	call	*%r12
	cmpl	$0, (%rax)
	jne	.L43
	call	*%r12
	movl	40(%rsp), %edi
	movl	%edi, (%rax)
	jmp	.L43
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7156:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7156-.LLSDATTD7156
.LLSDATTD7156:
	.byte	0x1
	.uleb128 .LLSDACSE7156-.LLSDACSB7156
.LLSDACSB7156:
	.uleb128 .LEHB2-.LFB7156
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L90-.LFB7156
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB7156
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L89-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB4-.LFB7156
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L94-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB5-.LFB7156
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L90-.LFB7156
	.uleb128 0x1
	.uleb128 .LEHB6-.LFB7156
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L92-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB7-.LFB7156
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L90-.LFB7156
	.uleb128 0x1
	.uleb128 .LEHB8-.LFB7156
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L91-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB7156
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L95-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB10-.LFB7156
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L92-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB11-.LFB7156
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L94-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB7156
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L94-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB13-.LFB7156
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L90-.LFB7156
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB7156
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L95-.LFB7156
	.uleb128 0x3
	.uleb128 .LEHB15-.LFB7156
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L93-.LFB7156
	.uleb128 0
	.uleb128 .LEHB16-.LFB7156
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB7156
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L95-.LFB7156
	.uleb128 0x3
.LLSDACSE7156:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	.LDFCM0-.
.LLSDATT7156:
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
.lcomm _ZN12_GLOBAL__N_1L14benchmark_sinkE,8,8
	.section .rdata,"dr"
	.align 32
.LC7:
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.align 32
.LC8:
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.align 8
.LC15:
	.long	0
	.long	1104006501
	.align 8
.LC35:
	.quad	1
	.data
	.align 8
.LDFCM0:
	.quad	_ZTISt9exception
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	strtoull;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZNSt16invalid_argumentD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt16invalid_argumentD1Ev
	.linkonce	discard
.refptr._ZNSt16invalid_argumentD1Ev:
	.quad	_ZNSt16invalid_argumentD1Ev
