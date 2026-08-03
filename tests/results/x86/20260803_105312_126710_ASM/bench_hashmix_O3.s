	.file	"bench_hashmix.cpp"
	.text
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
.LFB8016:
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
	je	.L11
	movq	%rdx, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rsi
	ja	.L12
	cmpq	$1, %rax
	je	.L13
	testq	%rax, %rax
	jne	.L4
.L6:
	movq	(%rbx), %rax
	movq	%rsi, 8(%rbx)
	movb	$0, (%rax,%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L13:
	movzbl	(%rdi), %eax
	movb	%al, 16(%rbx)
	jmp	.L6
.L12:
	leaq	1(%rax), %rcx
	call	_Znwy
	movq	%rsi, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rbp
.L4:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	call	memcpy
	jmp	.L6
.L11:
	leaq	.LC0(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	.def	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_:
.LFB5857:
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
	movq	__imp__errno(%rip), %rsi
	movq	%r8, %rbx
	movq	%rdx, 104(%rsp)
	movq	%rcx, %rbp
	movq	%r9, %rdi
.LEHB0:
	call	*%rsi
	movl	(%rax), %r12d
	call	*%rsi
.LEHE0:
	movl	128(%rsp), %r8d
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movl	$0, (%rax)
.LEHB1:
	call	*%rbp
	cmpq	%rbx, 40(%rsp)
	movq	%rax, %rbp
	je	.L25
	call	*%rsi
.LEHE1:
	cmpl	$34, (%rax)
	je	.L26
	testq	%rdi, %rdi
	je	.L17
	movq	40(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%rdi)
.L17:
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L27
	movq	%rbp, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	call	*%rsi
	movl	%r12d, (%rax)
	movq	%rbp, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L26:
	movq	104(%rsp), %rcx
.LEHB2:
	call	_ZSt20__throw_out_of_rangePKc
.L25:
	movq	104(%rsp), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE2:
.L21:
	vzeroupper
	movq	%rax, %rbx
	call	*%rsi
	cmpl	$0, (%rax)
	je	.L28
.L20:
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L28:
	call	*%rsi
	movl	%r12d, (%rax)
	jmp	.L20
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5857-.LLSDACSB5857
.LLSDACSB5857:
	.uleb128 .LEHB0-.LFB5857
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB5857
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB5857
	.uleb128 0
	.uleb128 .LEHB2-.LFB5857
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB5857
	.uleb128 0
	.uleb128 .LEHB3-.LFB5857
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE5857:
	.section	.text$_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "stoull\0"
.LC3:
	.ascii "Usage: \0"
.LC4:
	.ascii " [N>0] [M>0]\12\0"
.LC8:
	.ascii "M must be in 1..\0"
	.align 8
.LC9:
	.ascii " so both recurrences remain overflow-free.\12\0"
	.align 8
.LC11:
	.ascii "===================================================\12\0"
	.align 8
.LC12:
	.ascii "Hash-mixing negative control (runtime modulus)\12\0"
	.align 8
.LC13:
	.ascii "Both paths implement the same exact recurrence.\12\0"
	.align 8
.LC14:
	.ascii "The centered path still uses remainder division; it is\12\0"
	.align 8
.LC15:
	.ascii "not a division-free REIST accumulation benchmark.\12\0"
.LC16:
	.ascii "Iterations N = \0"
.LC17:
	.ascii "\12\12\0"
	.align 8
.LC18:
	.ascii "REIST modulus B must be positive\0"
.LC19:
	.ascii "Preflight failed for M=\0"
.LC20:
	.ascii " at iteration \0"
.LC21:
	.ascii ": \0"
.LC22:
	.ascii " / \0"
.LC23:
	.ascii "Final-state mismatch for M=\0"
.LC24:
	.ascii "M = \0"
.LC26:
	.ascii "  classic  : \0"
.LC27:
	.ascii " s\12\0"
.LC28:
	.ascii "  centered : \0"
.LC30:
	.ascii "  ratio    : \0"
.LC31:
	.ascii "x (classic / centered)\12\0"
.LC32:
	.ascii "  sinks    : \0"
	.align 8
.LC33:
	.ascii "Invalid argument or benchmark failure: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB5710:
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
	subq	$232, %rsp
	.seh_stackalloc	232
	vmovups	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	vmovups	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	vmovups	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	vmovups	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	.seh_endprologue
	movl	%ecx, %ebx
	movq	%rdx, %rdi
	call	__main
	movl	$32, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	vmovdqu	.LC1(%rip), %ymm0
	leaq	32(%rax), %rsi
	cmpl	$1, %ebx
	movq	%rax, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movl	$100000000, %esi
	vmovdqu	%ymm0, (%rax)
	jg	.L121
.L30:
	movq	88(%rsp), %rax
	movq	96(%rsp), %rdi
	cmpq	%rdi, %rax
	je	.L37
	subq	%rdi, %rax
	movq	%rdi, %rdx
	leaq	-8(%rax), %rcx
	cmpq	$96, %rcx
	jbe	.L38
	andl	$7, %eax
	jne	.L38
	shrq	$3, %rdx
	negq	%rdx
	movq	%rdx, %r9
	andl	$3, %r9d
	je	.L87
	movabsq	$5541143591017, %r10
	movq	(%rdi), %rdi
	leaq	-1(%rdi), %r8
	movq	%rdi, 56(%rsp)
	cmpq	%r8, %r10
	jb	.L40
	movq	96(%rsp), %rdi
	andb	$2, %dl
	leaq	8(%rdi), %r10
	je	.L39
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %r10
	cmpq	$3, %r9
	cmovne	%rdx, %r10
.L39:
	shrq	$3, %rcx
	movq	96(%rsp), %rdi
	vmovq	%r10, %xmm5
	vmovdqu	.LC7(%rip), %ymm3
	subq	%r9, %rcx
	vpbroadcastq	%xmm5, %ymm1
	vmovdqu	.LC36(%rip), %ymm2
	vpaddq	.LC5(%rip), %ymm1, %ymm1
	leaq	1(%rcx), %r11
	vmovdqu	.LC10(%rip), %ymm5
	leaq	(%rdi,%r9,8), %rcx
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	movq	%r11, %r8
	shrq	$2, %r8
	jmp	.L47
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L44:
	addq	$1, %rax
	vpaddq	%ymm5, %ymm1, %ymm1
	cmpq	%r8, %rax
	je	.L122
.L47:
	movq	%rax, %rdx
	salq	$5, %rdx
	vpaddq	(%rcx,%rdx), %ymm4, %ymm0
	vpsubq	%ymm3, %ymm0, %ymm0
	vpcmpgtq	%ymm2, %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	je	.L44
	vmovq	%xmm1, %rax
.L45:
	movabsq	$5541143591017, %rdx
	movq	(%rax), %rdi
	leaq	-1(%rdi), %rcx
	cmpq	%rcx, %rdx
	jb	.L40
	movq	88(%rsp), %rdi
	leaq	8(%rax), %rcx
	cmpq	%rcx, %rdi
	je	.L37
	movq	8(%rax), %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rcx, %rdx
	jb	.L40
	leaq	16(%rax), %rcx
	cmpq	%rcx, %rdi
	je	.L37
	movq	16(%rax), %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rcx, %rdx
	jb	.L40
	leaq	24(%rax), %rcx
	cmpq	%rcx, %rdi
	je	.L37
	movq	24(%rax), %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rcx, %rdx
	jb	.L40
	leaq	32(%rax), %rcx
	cmpq	%rcx, %rdi
	je	.L37
	movq	32(%rax), %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rcx, %rdx
	jb	.L40
	leaq	40(%rax), %rdx
	cmpq	%rdx, %rdi
	je	.L37
	movabsq	$5541143591017, %rcx
	movq	40(%rax), %rbx
	leaq	-1(%rbx), %rdx
	cmpq	%rdx, %rcx
	jb	.L40
	leaq	48(%rax), %rdx
	cmpq	%rdx, %rdi
	je	.L37
	movq	48(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rcx
	jb	.L40
.L37:
	movq	.refptr._ZSt4cout(%rip), %rdi
	movl	$52, %r8d
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	movq	-24(%rax), %rdx
	addq	%rdi, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC11(%rip), %rdx
	vzeroupper
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$47, %r8d
	leaq	.LC12(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$52, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$48, %r8d
	leaq	.LC13(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$55, %r8d
	leaq	.LC14(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$50, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$15, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$4096, %eax
	cmpq	%rax, %rsi
	cmovbe	%rsi, %rax
	movq	%rax, 104(%rsp)
	movq	96(%rsp), %rax
	cmpq	%rax, 88(%rsp)
	movq	%rax, 56(%rsp)
	je	.L77
	vmovsd	.LC25(%rip), %xmm8
	vxorps	%xmm9, %xmm9, %xmm9
	.p2align 4,,10
	.p2align 3
.L75:
	movq	56(%rsp), %rax
	xorl	%edx, %edx
	movq	(%rax), %rbp
	movabsq	$1311768467294899695, %rax
	divq	%rbp
	testq	%rbp, %rbp
	movq	%rdx, %r14
	jle	.L123
	movq	%rdx, %rax
	movq	%rbp, %r11
	movq	%rbp, %r8
	movq	%r14, %rcx
	cqto
	sarq	%r11
	andl	$1, %r8d
	idivq	%rbp
	addq	%r11, %r8
	movq	%rdx, %r9
	subq	%rbp, %r9
	cmpq	%rdx, %r8
	cmovle	%r9, %rdx
	xorl	%r13d, %r13d
	movq	%rdx, %r15
	movq	%rdx, %rbx
.L60:
	imulq	$1664525, %rcx, %rax
	xorl	%edx, %edx
	addq	$1013904223, %rax
	divq	%rbp
	imulq	$1664525, %rbx, %rax
	addq	$1013904223, %rax
	movq	%rdx, %r12
	movq	%rdx, %rcx
	cqto
	idivq	%rbp
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	js	.L124
	cmpq	%rdx, %r8
	jg	.L57
	subq	%rbp, %rbx
.L56:
	testq	%rbx, %rbx
	js	.L55
.L57:
	cmpq	%rbx, %r12
	jne	.L58
	leaq	-1(%rbp), %rax
	sarq	%rax
	cmpq	%r12, %rax
	jge	.L59
.L58:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$23, %r8d
	leaq	.LC19(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$14, %r8d
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$2, %r8d
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	(%rax), %rdx
	movb	$10, 127(%rsp)
	movq	-24(%rdx), %rdx
	cmpq	$0, 16(%rax,%rdx)
	je	.L62
	leaq	127(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L64:
	movl	$3, %ebx
	.p2align 4,,10
	.p2align 3
.L36:
	movq	96(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	nop
.L29:
	vmovups	160(%rsp), %xmm6
	movl	%ebx, %eax
	vmovups	176(%rsp), %xmm7
	vmovups	192(%rsp), %xmm8
	vmovups	208(%rsp), %xmm9
	addq	$232, %rsp
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
.L124:
	leaq	0(%rbp,%rdx), %rax
	cmpq	%rax, %r8
	jle	.L55
	movq	%rax, %rbx
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L55:
	leaq	(%rbx,%rbp), %rax
	cmpq	%rax, %r12
	jne	.L58
	movq	%r11, %rax
	negq	%rax
	cmpq	%rax, %rbx
	jl	.L58
.L59:
	addq	$1, %r13
	cmpq	104(%rsp), %r13
	jb	.L60
	movq	%r8, 64(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	64(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rax, 72(%rsp)
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L65:
	imulq	$1664525, %r14, %rax
	xorl	%edx, %edx
	addq	$1, %rcx
	addq	$1013904223, %rax
	divq	%rbp
	cmpq	%rsi, %rcx
	movq	%rdx, %r14
	jb	.L65
	movq	%r8, 64(%rsp)
	movq	%rdx, %rbx
	movq	%rdx, _ZN12_GLOBAL__N_1L14benchmark_sinkE(%rip)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r13
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	64(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rax, 80(%rsp)
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L68:
	imulq	$1664525, %r15, %rax
	addq	$1013904223, %rax
	cqto
	idivq	%rbp
	testq	%rdx, %rdx
	leaq	(%rdx,%rbp), %r15
	cmovns	%rdx, %r15
	movq	%r15, %rax
	subq	%rbp, %rax
	cmpq	%r8, %r15
	cmovge	%rax, %r15
	addq	$1, %rcx
	cmpq	%rsi, %rcx
	jb	.L68
	movq	%r15, _ZN12_GLOBAL__N_1L14benchmark_sinkE(%rip)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	testq	%r15, %r15
	movq	%rax, %r12
	leaq	(%r15,%rbp), %rax
	cmovns	%r15, %rax
	cmpq	%rbx, %rax
	jne	.L125
	movl	$4, %r8d
	leaq	.LC24(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movb	$10, 128(%rsp)
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r14,%rax)
	je	.L71
	leaq	128(%rsp), %rdx
	movl	$1, %r8d
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %r14
.L72:
	subq	72(%rsp), %r13
	subq	80(%rsp), %r12
	movl	$13, %r8d
	movq	%r14, %rcx
	leaq	.LC26(%rip), %rdx
	vcvtsi2sdq	%r13, %xmm9, %xmm7
	vcvtsi2sdq	%r12, %xmm9, %xmm6
	vdivsd	%xmm8, %xmm7, %xmm7
	vdivsd	%xmm8, %xmm6, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm7, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$13, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm6, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm0, %xmm0, %xmm0
	vcomisd	%xmm0, %xmm6
	jbe	.L73
	movl	$13, %r8d
	leaq	.LC30(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rcx
	vdivsd	%xmm6, %xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L73:
	movl	$13, %r8d
	leaq	.LC32(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r15, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$2, %r8d
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$8, 56(%rsp)
	movq	56(%rsp), %rax
	cmpq	%rax, 88(%rsp)
	jne	.L75
.L77:
	xorl	%ebx, %ebx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZNSo3putEc
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L71:
	movl	$10, %edx
	movq	%r14, %rcx
	call	_ZNSo3putEc
	jmp	.L72
.L121:
	movq	8(%rdi), %rdx
	leaq	128(%rsp), %rcx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE5:
	movl	$10, 32(%rsp)
	movq	128(%rsp), %r8
	xorl	%r9d, %r9d
	leaq	.LC2(%rip), %rdx
	leaq	strtoull(%rip), %rcx
.LEHB6:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE6:
	movq	128(%rsp), %rcx
	leaq	144(%rsp), %rbp
	movq	%rax, %rsi
	cmpq	%rbp, %rcx
	je	.L31
	movq	144(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L31:
	cmpl	$2, %ebx
	jne	.L126
.L32:
	testq	%rsi, %rsi
	jne	.L30
.L34:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$7, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rsi, %rcx
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rdi), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L46:
	movl	$2, %ebx
	jmp	.L36
.L38:
	movabsq	$5541143591017, %rcx
	movq	88(%rsp), %r8
	jmp	.L48
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L127:
	addq	$8, %rdx
	cmpq	%rdx, %r8
	je	.L37
.L48:
	movq	(%rdx), %rax
	subq	$1, %rax
	cmpq	%rax, %rcx
	jnb	.L127
.L40:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$16, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movabsq	$5541143591018, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L46
.L126:
	movq	16(%rdi), %rdx
	leaq	128(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE7:
	movl	$10, 32(%rsp)
	movq	128(%rsp), %r8
	xorl	%r9d, %r9d
	leaq	.LC2(%rip), %rdx
	leaq	strtoull(%rip), %rcx
.LEHB8:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE8:
	movq	96(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	128(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L33
	movq	144(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L33:
	cmpl	$3, %ebx
	jne	.L34
	movq	96(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 88(%rsp)
	jmp	.L32
.L122:
	testb	$3, %r11b
	je	.L37
	andq	$-4, %r11
	leaq	(%r10,%r11,8), %rax
	jmp	.L45
.L87:
	movq	96(%rsp), %r10
	jmp	.L39
.L125:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$27, %r8d
	leaq	.LC23(%rip), %rdx
	movq	%rsi, %rcx
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE9:
	jmp	.L64
.L89:
	movq	128(%rsp), %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	leaq	144(%rsp), %rax
	cmpq	%rax, %rcx
	jne	.L119
.L118:
	vzeroupper
	jmp	.L52
.L123:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE10:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rdi, %rcx
.LEHB11:
	call	__cxa_throw
.LEHE11:
.L91:
	movq	128(%rsp), %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	cmpq	%rbp, %rcx
	je	.L118
.L119:
	movq	144(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
	jmp	.L52
.L93:
	movq	%rdi, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	call	__cxa_free_exception
.L52:
	movq	96(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	jmp	.L82
.L90:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
	jmp	.L52
.L88:
	movq	%rax, %rcx
	movq	%rdx, %rsi
	vzeroupper
.L82:
	subq	$1, %rsi
	jne	.L120
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$39, %r8d
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rbx
	movq	%rsi, %rcx
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	call	*16(%rax)
	movq	%rsi, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE12:
	call	__cxa_end_catch
	movl	$2, %ebx
	jmp	.L29
.L92:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
.L120:
.LEHB13:
	call	_Unwind_Resume
	nop
.LEHE13:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5710:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5710-.LLSDATTD5710
.LLSDATTD5710:
	.byte	0x1
	.uleb128 .LLSDACSE5710-.LLSDACSB5710
.LLSDACSB5710:
	.uleb128 .LEHB4-.LFB5710
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L88-.LFB5710
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB5710
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L90-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB5710
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L89-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB7-.LFB5710
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L90-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB8-.LFB5710
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L91-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB5710
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L90-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB10-.LFB5710
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L93-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB11-.LFB5710
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L90-.LFB5710
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB5710
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L92-.LFB5710
	.uleb128 0
	.uleb128 .LEHB13-.LFB5710
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE5710:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	.LDFCM0-.
.LLSDATT5710:
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
.LC1:
	.byte	67
	.byte	66
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-109
	.byte	-106
	.byte	-104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-31
	.byte	-11
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-54
	.byte	-102
	.byte	59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align 32
.LC5:
	.quad	0
	.quad	8
	.quad	16
	.quad	24
	.align 32
.LC7:
	.quad	-9223372036854775808
	.quad	-9223372036854775808
	.quad	-9223372036854775808
	.quad	-9223372036854775808
	.align 32
.LC10:
	.quad	32
	.quad	32
	.quad	32
	.quad	32
	.align 8
.LC25:
	.long	0
	.long	1104006501
	.align 32
.LC36:
	.quad	-9223366495711184791
	.quad	-9223366495711184791
	.quad	-9223366495711184791
	.quad	-9223366495711184791
	.data
	.align 8
.LDFCM0:
	.quad	_ZTISt9exception
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	strtoull;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt16invalid_argumentD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt16invalid_argumentD1Ev
	.linkonce	discard
.refptr._ZNSt16invalid_argumentD1Ev:
	.quad	_ZNSt16invalid_argumentD1Ev
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
	.section	.rdata$.refptr.strtoull, "dr"
	.p2align	3, 0
	.globl	.refptr.strtoull
	.linkonce	discard
.refptr.strtoull:
	.quad	strtoull
