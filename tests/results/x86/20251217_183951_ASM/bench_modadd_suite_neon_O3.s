	.file	"bench_modadd_suite_neon.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB12321:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rdx, %rsi
	call	strlen
	movq	%rsi, %r9
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB12322:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %r8
	movq	%rcx, %r10
	movq	(%rcx), %rcx
	movq	%rdx, %r9
	leaq	16(%r10), %rax
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	leaq	16(%r9), %rax
	je	.L20
	cmpq	%rdx, %rax
	je	.L5
	movq	%rdx, (%r10)
	testq	%rcx, %rcx
	movq	16(%r10), %r11
	movq	%r8, 8(%r10)
	movq	16(%r9), %rdx
	movq	%rdx, 16(%r10)
	je	.L12
	movq	%rcx, (%r9)
	movq	%rcx, %rdx
	movq	%r11, 16(%r9)
.L8:
	movq	$0, 8(%r9)
	movb	$0, (%rdx)
	addq	$40, %rsp
	ret
.L20:
	cmpq	%rdx, %rax
	je	.L5
	movq	%rdx, (%r10)
	movq	%r8, 8(%r10)
	movq	16(%r9), %rdx
	movq	%rdx, 16(%r10)
.L12:
	movq	%rax, (%r9)
	movq	%rax, %rdx
	jmp	.L8
.L5:
	cmpq	%r9, %r10
	je	.L8
	testq	%r8, %r8
	je	.L9
	cmpq	$1, %r8
	je	.L21
	movq	%r9, 56(%rsp)
	movq	%r10, 48(%rsp)
	call	memcpy
	movq	56(%rsp), %r9
	movq	48(%rsp), %r10
.L11:
	movq	8(%r9), %r8
	movq	(%r10), %rcx
.L9:
	movq	%r8, 8(%r10)
	movb	$0, (%rcx,%r8)
	movq	(%r9), %rdx
	jmp	.L8
.L21:
	movzbl	(%rdx), %eax
	movb	%al, (%rcx)
	jmp	.L11
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
.LFB12323:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	16(%rcx), %rdi
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%rdi, (%rcx)
	je	.L31
	movq	%rdx, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %r9
	movq	%rax, 56(%rsp)
	ja	.L32
	cmpq	$1, %rax
	jne	.L26
	movzbl	(%rsi), %eax
	movb	%al, 16(%rbx)
.L27:
	movq	56(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	testq	%rax, %rax
	je	.L27
	jmp	.L25
.L32:
	leaq	56(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	40(%rsp), %r9
	movq	%rax, %rdi
	movq	%rax, (%rbx)
	movq	56(%rsp), %rax
	movq	%rax, 16(%rbx)
.L25:
	movq	%r9, %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	memcpy
	jmp	.L27
.L31:
	leaq	.LC0(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt7__cxx119to_stringEy
	.def	_ZNSt7__cxx119to_stringEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEy
_ZNSt7__cxx119to_stringEy:
.LFB1389:
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
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	cmpq	$9, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	jbe	.L44
	movq	%rdx, %rcx
	movl	$1, %ebx
	movabsq	$3777893186295716171, %r8
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L35:
	cmpq	$999, %rcx
	jbe	.L49
	cmpq	$9999, %rcx
	jbe	.L50
	movq	%rcx, %rax
	addl	$4, %ebx
	mulq	%r8
	cmpq	$99999, %rcx
	jbe	.L51
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L38:
	cmpq	$99, %rcx
	ja	.L35
	leal	1(%rbx), %edi
	movq	%rdi, %rbx
.L34:
	leaq	16(%rsi), %rax
	movb	$0, 16(%rsi)
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	%rax, (%rsi)
	movq	$0, 8(%rsi)
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
.LEHE0:
	leaq	32(%rsp), %rcx
	movl	$201, %r8d
	movq	(%rsi), %r12
	leaq	.LC1(%rip), %rdx
	call	memcpy
	cmpq	$99, %rbp
	jbe	.L39
	leal	-1(%rbx), %ecx
	movabsq	$2951479051793528259, %r9
	.p2align 4,,10
	.p2align 3
.L40:
	movq	%rbp, %rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%r9
	movq	%rbp, %rax
	shrq	$2, %rdx
	imulq	$100, %rdx, %r8
	subq	%r8, %rax
	movq	%rbp, %r8
	movq	%rdx, %rbp
	movzbl	33(%rsp,%rax,2), %r10d
	movl	%ecx, %edx
	movzbl	32(%rsp,%rax,2), %eax
	movb	%r10b, (%r12,%rdx)
	leal	-1(%rcx), %edx
	subl	$2, %ecx
	cmpq	$9999, %r8
	movb	%al, (%r12,%rdx)
	ja	.L40
.L39:
	leal	48(%rbp), %eax
	cmpq	$9, %rbp
	jbe	.L42
	movzbl	33(%rsp,%rbp,2), %eax
	movb	%al, 1(%r12)
	movzbl	32(%rsp,%rbp,2), %eax
.L42:
	movb	%al, (%r12)
	movq	(%rsi), %rax
	movq	%rdi, 8(%rsi)
	movb	$0, (%rax,%rdi)
	movq	%rsi, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	leal	2(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L50:
	leal	3(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L51:
	movl	%ebx, %edi
	jmp	.L34
.L44:
	movl	$1, %edi
	movl	$1, %ebx
	jmp	.L34
.L46:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1389-.LLSDACSB1389
.LLSDACSB1389:
	.uleb128 .LEHB0-.LFB1389
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L46-.LFB1389
	.uleb128 0
	.uleb128 .LEHB1-.LFB1389
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1389:
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	.def	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_:
.LFB11519:
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
	movq	__imp__errno(%rip), %rsi
	movq	%r8, %rbx
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%r9, %rdi
.LEHB2:
	call	*%rsi
	movl	(%rax), %r13d
	call	*%rsi
.LEHE2:
	movl	144(%rsp), %r8d
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movl	$0, (%rax)
.LEHB3:
	call	*%rbp
	cmpq	%rbx, 40(%rsp)
	movq	%rax, %rbp
	je	.L63
	call	*%rsi
.LEHE3:
	cmpl	$34, (%rax)
	je	.L64
	testq	%rdi, %rdi
	je	.L55
	movq	40(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%rdi)
.L55:
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L65
	movq	%rbp, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	call	*%rsi
	movl	%r13d, (%rax)
	movq	%rbp, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L64:
	movq	%r12, %rcx
.LEHB4:
	call	_ZSt20__throw_out_of_rangePKc
.L63:
	movq	%r12, %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L59:
	movq	%rax, %rbx
	call	*%rsi
	cmpl	$0, (%rax)
	je	.L66
.L58:
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L66:
	call	*%rsi
	movl	%r13d, (%rax)
	jmp	.L58
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11519:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11519-.LLSDACSB11519
.LLSDACSB11519:
	.uleb128 .LEHB2-.LFB11519
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11519
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB11519
	.uleb128 0
	.uleb128 .LEHB4-.LFB11519
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L59-.LFB11519
	.uleb128 0
	.uleb128 .LEHB5-.LFB11519
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE11519:
	.section	.text$_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "stoll\0"
.LC4:
	.ascii "N must be > 0\12\0"
.LC5:
	.ascii "Unknown\0"
.LC6:
	.ascii "r\0"
.LC7:
	.ascii "ver\0"
.LC8:
	.ascii "Windows\0"
	.align 8
.LC9:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC10:
	.ascii "ProcessorNameString\0"
.LC11:
	.ascii " MB\0"
	.align 8
.LC12:
	.ascii "========================================\12\0"
	.align 8
.LC13:
	.ascii "REIST modular-add benchmark suite (NEON)\12\0"
.LC14:
	.ascii "System Information:\12\0"
.LC15:
	.ascii "  Hostname: \0"
.LC16:
	.ascii "\12\0"
.LC17:
	.ascii "  OS: \0"
.LC18:
	.ascii "  CPU Model: \0"
.LC19:
	.ascii "  CPU MHz: \0"
.LC20:
	.ascii "  Memory: \0"
	.align 8
.LC21:
	.ascii "========================================\12\12\0"
	.align 8
.LC22:
	.ascii "Total iterations per modulus N = \0"
.LC23:
	.ascii "step = \0"
.LC24:
	.ascii "\12\12\0"
	.align 8
.LC25:
	.ascii "Running benchmarks (with NEON vectorization)...\12\12\0"
.LC26:
	.ascii "Modulus B = \0"
.LC28:
	.ascii "classic_mod\0"
.LC29:
	.ascii "vector::_M_realloc_append\0"
.LC30:
	.ascii "reist_sym_scalar\0"
.LC31:
	.ascii "reist_sym_neon\0"
.LC32:
	.ascii "  classic_mod        : \0"
.LC33:
	.ascii " s\12\0"
.LC34:
	.ascii "  reist_sym (scalar) : \0"
.LC35:
	.ascii "  reist_sym (NEON)   : \0"
	.align 8
.LC36:
	.ascii "  speedup (classic / scalar) : \0"
.LC37:
	.ascii "x\12\0"
	.align 8
.LC38:
	.ascii "  speedup (classic / NEON)   : \0"
	.align 8
.LC39:
	.ascii "  NEON speedup (scalar / NEON): \0"
.LC40:
	.ascii "  sinks: \0"
.LC41:
	.ascii " / \0"
.LC42:
	.ascii "results_modadd_suite_neon.csv\0"
	.align 8
.LC43:
	.ascii "modulus,N,scenario,seconds,ops_per_sec\12\0"
.LC44:
	.ascii ",\0"
.LC45:
	.ascii "CSV written to \0"
	.align 8
.LC46:
	.ascii "WARNING: could not write CSV file \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11430:
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
	subq	$1240, %rsp
	.seh_stackalloc	1240
	movaps	%xmm6, 1152(%rsp)
	.seh_savexmm	%xmm6, 1152
	movaps	%xmm7, 1168(%rsp)
	.seh_savexmm	%xmm7, 1168
	movaps	%xmm8, 1184(%rsp)
	.seh_savexmm	%xmm8, 1184
	movaps	%xmm9, 1200(%rsp)
	.seh_savexmm	%xmm9, 1200
	movaps	%xmm10, 1216(%rsp)
	.seh_savexmm	%xmm10, 1216
	.seh_endprologue
	movl	$50000000, %ebp
	movl	%ecx, %ebx
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %ebx
	jg	.L316
.L68:
	movl	$48, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %rdi
	movq	%rax, 112(%rsp)
	addq	$48, %rax
	movl	$12, %ecx
	leaq	C.0.0(%rip), %rsi
	movq	%rax, 88(%rsp)
	rep movsl
	movq	$48, 136(%rsp)
	movl	$576, %esi
.L71:
	movq	88(%rsp), %rdi
	cmpq	%rdi, 112(%rsp)
	jne	.L317
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	movq	%rax, 48(%rsp)
.L75:
	leaq	176(%rsp), %rax
	movq	$0, 168(%rsp)
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 256(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 288(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movb	$0, 176(%rsp)
	leaq	148(%rsp), %rdx
	movb	$0, 208(%rsp)
	leaq	416(%rsp), %rcx
	movq	$0, 200(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	$0, 296(%rsp)
	movb	$0, 304(%rsp)
	movl	$256, 148(%rsp)
	movq	%rax, 80(%rsp)
.LEHB7:
	call	*__imp_GetComputerNameA(%rip)
	leaq	256(%rsp), %rcx
	testl	%eax, %eax
	leaq	288(%rsp), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 104(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	je	.L76
	leaq	416(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L77:
	leaq	288(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, 80(%rsp)
	leaq	.LC7(%rip), %rcx
	call	*__imp__popen(%rip)
	movq	%rax, %rbx
	leaq	288(%rsp), %rax
	testq	%rbx, %rbx
	movq	%rax, 104(%rsp)
	je	.L78
	leaq	160(%rsp), %rax
	movq	%rbx, %r8
	movl	$128, %edx
	movq	%rax, 96(%rsp)
	leaq	672(%rsp), %rcx
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	call	fgets
	testq	%rax, %rax
	leaq	288(%rsp), %rax
	movq	%rax, 104(%rsp)
	je	.L80
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	672(%rsp), %rdx
	leaq	224(%rsp), %rax
	leaq	352(%rsp), %rcx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	288(%rsp), %rax
	leaq	352(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 104(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	296(%rsp), %rax
	testq	%rax, %rax
	je	.L80
	movq	288(%rsp), %rcx
	leaq	-1(%rax), %rdx
	cmpb	$10, -1(%rcx,%rax)
	je	.L318
.L80:
	leaq	160(%rsp), %rax
	movq	%rbx, %rcx
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	call	*__imp__pclose(%rip)
.L78:
	movq	104(%rsp), %rcx
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	.LC8(%rip), %rdx
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	152(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, 80(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L287
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
.L82:
	leaq	224(%rsp), %rax
	movl	$64, 352(%rsp)
	leaq	352(%rsp), %rcx
	movq	%rax, 80(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	jne	.L289
	leaq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
.L84:
	movq	.refptr._ZSt4cout(%rip), %r13
	movq	0(%r13), %rax
	movq	%r13, %rcx
	movq	-24(%rax), %rdx
	addq	%r13, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC12(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC14(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC15(%rip), %rdx
	movl	$12, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	264(%rsp), %r8
	movq	%r13, %rcx
	movq	256(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rdx
	movl	$6, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	296(%rsp), %r8
	movq	%r13, %rcx
	movq	288(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rdx
	movl	$13, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	168(%rsp), %r8
	movq	%r13, %rcx
	movq	160(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC19(%rip), %rdx
	movl	$11, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	200(%rsp), %r8
	movq	%r13, %rcx
	movq	192(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rdx
	movl	$10, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	232(%rsp), %r8
	movq	%r13, %rcx
	movq	224(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC21(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC22(%rip), %rdx
	movl	$33, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC23(%rip), %rdx
	movl	$7, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$3, %edx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC25(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	movq	112(%rsp), %rax
	cmpq	88(%rsp), %rax
	je	.L199
	movsd	.LC27(%rip), %xmm10
	movq	%rax, 56(%rsp)
	movq	%r15, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L177:
	movq	56(%rsp), %rax
	movl	$12, %r8d
	movq	%r13, %rcx
	leaq	.LC26(%rip), %rdx
	movq	(%rax), %rdi
.LEHB8:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE8:
	movq	%rdi, %rdx
	movq	%r13, %rcx
.LEHB9:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE9:
	leaq	.LC16(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE10:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%ecx, %ecx
	movq	%rax, %rbx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L93:
	addq	$3, %rax
	addq	$1, %rcx
	cqto
	idivq	%rdi
	cmpq	%rbp, %rcx
	movq	%rdx, %rax
	jne	.L93
	movq	%rdx, %r12
	pxor	%xmm8, %xmm8
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbx, %rax
	cmpq	48(%rsp), %r15
	cvtsi2sdq	%rax, %xmm8
	divsd	%xmm10, %xmm8
	je	.L94
	movq	%rdi, %xmm9
	movq	%rbp, %xmm2
	movsd	%xmm8, 24(%r15)
	leaq	.LC28(%rip), %rax
	punpcklqdq	%xmm2, %xmm9
	movups	%xmm9, (%r15)
	movq	%rax, 16(%r15)
	leaq	32(%r15), %rbx
.L95:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rdi, %r9
	xorl	%esi, %esi
	shrq	$63, %r9
	movq	%rax, %r15
	xorl	%eax, %eax
	addq	%rdi, %r9
	sarq	%r9
	movq	%r9, %rcx
	movq	%r9, %r14
	negq	%rcx
	jmp	.L104
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L320:
	addq	$1, %rax
	subq	%rdi, %rsi
	cmpq	%rbp, %rax
	je	.L319
.L104:
	addq	$3, %rsi
	cmpq	%rsi, %r14
	jl	.L320
	leaq	(%rsi,%rdi), %rdx
	cmpq	%rcx, %rsi
	cmovle	%rdx, %rsi
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L104
.L319:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm6, %xmm6
	subq	%r15, %rax
	cmpq	48(%rsp), %rbx
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm10, %xmm6
	je	.L105
	leaq	.LC30(%rip), %rax
	movups	%xmm9, (%rbx)
	movq	%rax, 16(%rbx)
	leaq	32(%rbx), %r15
	movsd	%xmm6, 24(%rbx)
.L106:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r14, %rcx
	xorl	%ebx, %ebx
	movq	%rax, 72(%rsp)
	negq	%rcx
	xorl	%eax, %eax
	jmp	.L115
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L322:
	addq	$1, %rax
	subq	%rdi, %rbx
	cmpq	%rbp, %rax
	je	.L321
.L115:
	addq	$3, %rbx
	cmpq	%r14, %rbx
	jg	.L322
	leaq	(%rbx,%rdi), %rdx
	cmpq	%rcx, %rbx
	cmovle	%rdx, %rbx
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L115
.L321:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	72(%rsp), %rax
	pxor	%xmm7, %xmm7
	cmpq	%r15, 48(%rsp)
	cvtsi2sdq	%rax, %xmm7
	divsd	%xmm10, %xmm7
	je	.L116
	leaq	.LC31(%rip), %rax
	movups	%xmm9, (%r15)
	addq	$32, %r15
	movq	%rax, -16(%r15)
	movsd	%xmm7, -8(%r15)
.L117:
	leaq	.LC32(%rip), %rdx
	movl	$23, %r8d
	movq	%r13, %rcx
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE11:
	movapd	%xmm8, %xmm1
	movq	%r13, %rcx
.LEHB12:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE12:
	leaq	.LC33(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE13:
	leaq	.LC34(%rip), %rdx
	movl	$23, %r8d
	movq	%r13, %rcx
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE14:
	movapd	%xmm6, %xmm1
	movq	%r13, %rcx
.LEHB15:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE15:
	leaq	.LC33(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
.LEHB16:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE16:
	leaq	.LC35(%rip), %rdx
	movl	$23, %r8d
	movq	%r13, %rcx
.LEHB17:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE17:
	movapd	%xmm7, %xmm1
	movq	%r13, %rcx
.LEHB18:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE18:
	leaq	.LC33(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
.LEHB19:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE19:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L323
.L142:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L324
.L149:
	leaq	.LC40(%rip), %rdx
	movl	$9, %r8d
	movq	%r13, %rcx
.LEHB20:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE20:
	movq	%r12, %rdx
	movq	%r13, %rcx
.LEHB21:
	call	_ZNSo9_M_insertIyEERSoT_
.LEHE21:
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC41(%rip), %rdx
.LEHB22:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE22:
	movq	%rsi, %rdx
	movq	%rdi, %rcx
.LEHB23:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE23:
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rdx
.LEHB24:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE24:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
.LEHB25:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE25:
	leaq	.LC24(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
.LEHB26:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE26:
	addq	$8, 56(%rsp)
	movq	56(%rsp), %rax
	cmpq	%rax, 88(%rsp)
	jne	.L177
.L85:
	leaq	672(%rsp), %rsi
	movl	$16, %r8d
	leaq	.LC42(%rip), %rdx
	movq	%rsi, %rcx
.LEHB27:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE27:
	testb	$5, 920(%rsp)
	jne	.L180
	leaq	.LC43(%rip), %rdx
	movq	%rsi, %rcx
.LEHB28:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	64(%rsp), %rax
	cmpq	%r15, %rax
	movq	%rax, %rbx
	je	.L188
	pxor	%xmm8, %xmm8
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L185:
	movq	%rbp, %rcx
	call	strlen
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	movq	%rax, %r8
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L186:
	leaq	.LC44(%rip), %rdx
	movl	$1, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC44(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC16(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$32, %rbx
	cmpq	%rbx, %r15
	je	.L188
.L187:
	movsd	24(%rbx), %xmm6
	pxor	%xmm7, %xmm7
	comisd	%xmm8, %xmm6
	jbe	.L183
	pxor	%xmm7, %xmm7
	cvtsi2sdq	8(%rbx), %xmm7
	divsd	%xmm6, %xmm7
.L183:
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC44(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	8(%rbx), %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC44(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.L185
	movq	(%rdi), %rax
	movq	-24(%rax), %rcx
	addq	%rdi, %rcx
	movl	32(%rcx), %edx
	orl	$1, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE28:
	jmp	.L186
.L317:
	movq	%rsi, %rcx
.LEHB29:
	call	_Znwy
.LEHE29:
	movq	%rax, %r15
	leaq	(%rax,%rsi), %rax
	movq	%rax, 48(%rsp)
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L324:
	leaq	.LC38(%rip), %rdx
	movl	$31, %r8d
	movq	%r13, %rcx
.LEHB30:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE30:
	movapd	%xmm8, %xmm1
	movq	%r13, %rcx
	divsd	%xmm7, %xmm1
.LEHB31:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE31:
	leaq	.LC37(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
.LEHB32:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE32:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	jbe	.L149
	leaq	.LC39(%rip), %rdx
	movl	$32, %r8d
	movq	%r13, %rcx
.LEHB33:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE33:
	movapd	%xmm6, %xmm1
	movq	%r13, %rcx
	divsd	%xmm7, %xmm1
.LEHB34:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE34:
	leaq	.LC37(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
.LEHB35:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE35:
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L323:
	leaq	.LC36(%rip), %rdx
	movl	$31, %r8d
	movq	%r13, %rcx
.LEHB36:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE36:
	movapd	%xmm8, %xmm1
	movq	%r13, %rcx
	divsd	%xmm6, %xmm1
.LEHB37:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE37:
	leaq	.LC37(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
.LEHB38:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE38:
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L116:
	movabsq	$288230376151711743, %rdi
	movq	48(%rsp), %r15
	subq	64(%rsp), %r15
	movq	%r15, %rax
	sarq	$5, %rax
	cmpq	%rdi, %rax
	je	.L325
	testq	%rax, %rax
	movl	$1, %edi
	cmovne	%rax, %rdi
	addq	%rax, %rdi
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %rdi
	cmova	%rax, %rdi
	salq	$5, %rdi
	movq	%rdi, %rcx
.LEHB39:
	call	_Znwy
.LEHE39:
	leaq	.LC31(%rip), %rdx
	testq	%r15, %r15
	movq	%rax, %r9
	movups	%xmm9, (%rax,%r15)
	movq	%rdx, 16(%rax,%r15)
	movsd	%xmm7, 24(%rax,%r15)
	je	.L122
	movq	64(%rsp), %rdx
	movq	%r15, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	%rax, %r9
.L122:
	movq	64(%rsp), %rax
	leaq	32(%r9,%r15), %r15
	testq	%rax, %rax
	je	.L123
	movq	48(%rsp), %rdx
	movq	%rax, %rcx
	movq	%r9, 64(%rsp)
	subq	%rax, %rdx
	call	_ZdlPvy
	movq	64(%rsp), %r9
.L123:
	leaq	(%r9,%rdi), %rax
	movq	%r9, 64(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L105:
	movabsq	$288230376151711743, %rbx
	movq	48(%rsp), %r8
	subq	64(%rsp), %r8
	movq	%r8, %rax
	sarq	$5, %rax
	cmpq	%rbx, %rax
	je	.L326
	testq	%rax, %rax
	movl	$1, %r15d
	movq	%r8, 128(%rsp)
	cmovne	%rax, %r15
	addq	%rax, %r15
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %r15
	cmova	%rax, %r15
	salq	$5, %r15
	movq	%r15, %rcx
	movq	%r15, 72(%rsp)
.LEHB40:
	call	_Znwy
.LEHE40:
	movq	128(%rsp), %r8
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rbx
	testq	%r8, %r8
	movups	%xmm9, (%rax,%r8)
	movq	%rdx, 16(%rax,%r8)
	movsd	%xmm6, 24(%rax,%r8)
	je	.L111
	movq	64(%rsp), %rdx
	movq	%rax, %rcx
	movq	%r8, 128(%rsp)
	call	memcpy
	movq	128(%rsp), %r8
.L111:
	movq	64(%rsp), %rcx
	leaq	32(%rbx,%r8), %r15
	testq	%rcx, %rcx
	je	.L112
	movq	48(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L112:
	movq	72(%rsp), %rax
	movq	%rbx, 64(%rsp)
	addq	%rbx, %rax
	movq	%rax, 48(%rsp)
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L94:
	movabsq	$288230376151711743, %rsi
	movq	%r15, %rbx
	subq	64(%rsp), %rbx
	movq	%rbx, %rax
	sarq	$5, %rax
	cmpq	%rsi, %rax
	je	.L327
	testq	%rax, %rax
	movl	$1, %esi
	cmovne	%rax, %rsi
	addq	%rax, %rsi
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %rsi
	cmova	%rax, %rsi
	salq	$5, %rsi
	movq	%rsi, %rcx
.LEHB41:
	call	_Znwy
.LEHE41:
	movq	%rdi, %xmm9
	testq	%rbx, %rbx
	movq	%rax, %r15
	movsd	%xmm8, 24(%rax,%rbx)
	leaq	.LC28(%rip), %rdx
	movq	%rbp, %xmm3
	punpcklqdq	%xmm3, %xmm9
	movq	%rdx, 16(%rax,%rbx)
	movups	%xmm9, (%rax,%rbx)
	je	.L100
	movq	64(%rsp), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	call	memcpy
.L100:
	movq	64(%rsp), %rcx
	leaq	32(%r15,%rbx), %rbx
	testq	%rcx, %rcx
	je	.L101
	movq	48(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L101:
	leaq	(%r15,%rsi), %rax
	movq	%r15, 64(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.L95
.L289:
	movq	360(%rsp), %rdx
	leaq	224(%rsp), %rax
	leaq	320(%rsp), %rcx
	movq	%rax, 80(%rsp)
	shrq	$20, %rdx
.LEHB42:
	call	_ZNSt7__cxx119to_stringEy
.LEHE42:
	leaq	.LC11(%rip), %rdx
	leaq	320(%rsp), %rcx
.LEHB43:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE43:
	leaq	672(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	224(%rsp), %rax
	leaq	672(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	672(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	320(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L84
.L188:
	movq	%rsi, %rcx
.LEHB44:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	leaq	.LC45(%rip), %rdx
	movl	$15, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC42(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L313:
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rsi, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	104(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	192(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L190
	movq	48(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L190:
	movq	136(%rsp), %rdx
	movq	112(%rsp), %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
.L67:
	movaps	1152(%rsp), %xmm6
	movaps	1168(%rsp), %xmm7
	movaps	1184(%rsp), %xmm8
	movaps	1200(%rsp), %xmm9
	movaps	1216(%rsp), %xmm10
	addq	$1240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L180:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$34, %r8d
	leaq	.LC46(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC42(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE44:
	jmp	.L313
.L287:
	leaq	320(%rsp), %rax
	xorl	%r9d, %r9d
	movq	152(%rsp), %rcx
	movl	$256, 320(%rsp)
	movq	%rax, 40(%rsp)
	leaq	160(%rsp), %rax
	xorl	%r8d, %r8d
	leaq	672(%rsp), %rsi
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movq	%rsi, 32(%rsp)
	leaq	.LC10(%rip), %rdx
	movq	%rax, 80(%rsp)
.LEHB45:
	call	*__imp_RegQueryValueExA(%rip)
	testl	%eax, %eax
	leaq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	jne	.L83
	leaq	224(%rsp), %rax
	movq	%rsi, %rdx
	leaq	352(%rsp), %rcx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	160(%rsp), %rax
	leaq	352(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L83:
	leaq	224(%rsp), %rax
	movq	152(%rsp), %rcx
	movq	%rax, 80(%rsp)
	call	*__imp_RegCloseKey(%rip)
	jmp	.L82
.L76:
	leaq	.LC5(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE45:
	jmp	.L77
.L316:
	movq	8(%rdi), %rdx
	leaq	672(%rsp), %rsi
	movq	%rsi, %rcx
.LEHB46:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE46:
	movq	672(%rsp), %r8
	xorl	%r9d, %r9d
	movl	$10, 32(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB47:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE47:
	movq	%rax, %rbp
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	testq	%rbp, %rbp
	jle	.L328
	cmpl	$2, %ebx
	je	.L68
	movq	16(%rdi), %rdx
	movq	%rsi, %rcx
.LEHB48:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE48:
	movq	672(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC3(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB49:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	movl	$8, %ecx
	movq	%rax, %rbx
	call	_Znwy
.LEHE49:
	movq	%rbx, (%rax)
	movq	%rsi, %rcx
	movl	$96, %esi
	movq	%rax, 112(%rsp)
	addq	$8, %rax
	movq	%rax, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	$8, 136(%rsp)
	jmp	.L71
.L199:
	movq	%r15, 64(%rsp)
	jmp	.L85
.L328:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC4(%rip), %rdx
.LEHB50:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE50:
	movl	$1, %eax
	jmp	.L67
.L318:
	movq	104(%rsp), %rcx
	movl	$1, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEyy
	jmp	.L80
.L230:
.L315:
	movq	64(%rsp), %r15
.L88:
	movq	104(%rsp), %rcx
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	192(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	testq	%r15, %r15
	movq	56(%rsp), %rbx
	je	.L196
	movq	48(%rsp), %rdx
	movq	%r15, %rcx
	subq	%r15, %rdx
	call	_ZdlPvy
.L196:
	movq	88(%rsp), %rdx
	movq	112(%rsp), %rcx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L74:
	movq	%rbx, %rcx
.LEHB51:
	call	_Unwind_Resume
.LEHE51:
.L231:
	jmp	.L315
.L233:
	jmp	.L315
.L204:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	jmp	.L315
.L223:
	jmp	.L315
.L224:
	jmp	.L315
.L209:
	jmp	.L315
.L232:
	jmp	.L315
.L208:
	jmp	.L315
.L210:
	jmp	.L315
.L226:
	jmp	.L315
.L227:
	jmp	.L315
.L215:
	jmp	.L315
.L225:
	jmp	.L315
.L205:
	movq	%rax, %rbx
	jmp	.L74
.L207:
	jmp	.L88
.L202:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L74
.L206:
	movq	%rax, %rbx
	jmp	.L196
.L325:
	leaq	.LC29(%rip), %rcx
.LEHB52:
	call	_ZSt20__throw_length_errorPKc
.LEHE52:
.L235:
	jmp	.L315
.L234:
	jmp	.L315
.L326:
	leaq	.LC29(%rip), %rcx
.LEHB53:
	call	_ZSt20__throw_length_errorPKc
.LEHE53:
.L236:
	jmp	.L315
.L237:
	jmp	.L315
.L327:
	leaq	.LC29(%rip), %rcx
.LEHB54:
	call	_ZSt20__throw_length_errorPKc
.LEHE54:
.L242:
	jmp	.L315
.L239:
	jmp	.L315
.L203:
	leaq	320(%rsp), %rcx
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rax
	leaq	224(%rsp), %rsi
	movq	%rsi, 80(%rsp)
	jmp	.L88
.L201:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB55:
	call	_Unwind_Resume
.LEHE55:
.L240:
	jmp	.L315
.L241:
	jmp	.L315
.L220:
	jmp	.L315
.L218:
	jmp	.L315
.L219:
	jmp	.L315
.L212:
	jmp	.L315
.L228:
	jmp	.L315
.L229:
	jmp	.L315
.L238:
	jmp	.L315
.L214:
	jmp	.L315
.L222:
	jmp	.L315
.L213:
	jmp	.L315
.L216:
	jmp	.L315
.L217:
	jmp	.L315
.L211:
	jmp	.L315
.L221:
	jmp	.L315
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11430:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11430-.LLSDACSB11430
.LLSDACSB11430:
	.uleb128 .LEHB6-.LFB11430
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L205-.LFB11430
	.uleb128 0
	.uleb128 .LEHB7-.LFB11430
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L207-.LFB11430
	.uleb128 0
	.uleb128 .LEHB8-.LFB11430
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L240-.LFB11430
	.uleb128 0
	.uleb128 .LEHB9-.LFB11430
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L241-.LFB11430
	.uleb128 0
	.uleb128 .LEHB10-.LFB11430
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L238-.LFB11430
	.uleb128 0
	.uleb128 .LEHB11-.LFB11430
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L214-.LFB11430
	.uleb128 0
	.uleb128 .LEHB12-.LFB11430
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L215-.LFB11430
	.uleb128 0
	.uleb128 .LEHB13-.LFB11430
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L225-.LFB11430
	.uleb128 0
	.uleb128 .LEHB14-.LFB11430
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L216-.LFB11430
	.uleb128 0
	.uleb128 .LEHB15-.LFB11430
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L217-.LFB11430
	.uleb128 0
	.uleb128 .LEHB16-.LFB11430
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L220-.LFB11430
	.uleb128 0
	.uleb128 .LEHB17-.LFB11430
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L218-.LFB11430
	.uleb128 0
	.uleb128 .LEHB18-.LFB11430
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L219-.LFB11430
	.uleb128 0
	.uleb128 .LEHB19-.LFB11430
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L212-.LFB11430
	.uleb128 0
	.uleb128 .LEHB20-.LFB11430
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L228-.LFB11430
	.uleb128 0
	.uleb128 .LEHB21-.LFB11430
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L229-.LFB11430
	.uleb128 0
	.uleb128 .LEHB22-.LFB11430
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L230-.LFB11430
	.uleb128 0
	.uleb128 .LEHB23-.LFB11430
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L231-.LFB11430
	.uleb128 0
	.uleb128 .LEHB24-.LFB11430
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L233-.LFB11430
	.uleb128 0
	.uleb128 .LEHB25-.LFB11430
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L210-.LFB11430
	.uleb128 0
	.uleb128 .LEHB26-.LFB11430
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L232-.LFB11430
	.uleb128 0
	.uleb128 .LEHB27-.LFB11430
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L208-.LFB11430
	.uleb128 0
	.uleb128 .LEHB28-.LFB11430
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L204-.LFB11430
	.uleb128 0
	.uleb128 .LEHB29-.LFB11430
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L206-.LFB11430
	.uleb128 0
	.uleb128 .LEHB30-.LFB11430
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L223-.LFB11430
	.uleb128 0
	.uleb128 .LEHB31-.LFB11430
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L224-.LFB11430
	.uleb128 0
	.uleb128 .LEHB32-.LFB11430
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L209-.LFB11430
	.uleb128 0
	.uleb128 .LEHB33-.LFB11430
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L226-.LFB11430
	.uleb128 0
	.uleb128 .LEHB34-.LFB11430
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L227-.LFB11430
	.uleb128 0
	.uleb128 .LEHB35-.LFB11430
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L211-.LFB11430
	.uleb128 0
	.uleb128 .LEHB36-.LFB11430
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L221-.LFB11430
	.uleb128 0
	.uleb128 .LEHB37-.LFB11430
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L222-.LFB11430
	.uleb128 0
	.uleb128 .LEHB38-.LFB11430
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L213-.LFB11430
	.uleb128 0
	.uleb128 .LEHB39-.LFB11430
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L235-.LFB11430
	.uleb128 0
	.uleb128 .LEHB40-.LFB11430
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L236-.LFB11430
	.uleb128 0
	.uleb128 .LEHB41-.LFB11430
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L242-.LFB11430
	.uleb128 0
	.uleb128 .LEHB42-.LFB11430
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L207-.LFB11430
	.uleb128 0
	.uleb128 .LEHB43-.LFB11430
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L203-.LFB11430
	.uleb128 0
	.uleb128 .LEHB44-.LFB11430
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L204-.LFB11430
	.uleb128 0
	.uleb128 .LEHB45-.LFB11430
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L207-.LFB11430
	.uleb128 0
	.uleb128 .LEHB46-.LFB11430
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB11430
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L201-.LFB11430
	.uleb128 0
	.uleb128 .LEHB48-.LFB11430
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L205-.LFB11430
	.uleb128 0
	.uleb128 .LEHB49-.LFB11430
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L202-.LFB11430
	.uleb128 0
	.uleb128 .LEHB50-.LFB11430
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB11430
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB11430
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L234-.LFB11430
	.uleb128 0
	.uleb128 .LEHB53-.LFB11430
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L237-.LFB11430
	.uleb128 0
	.uleb128 .LEHB54-.LFB11430
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L239-.LFB11430
	.uleb128 0
	.uleb128 .LEHB55-.LFB11430
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
.LLSDACSE11430:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 32
C.0.0:
	.quad	257
	.quad	997
	.quad	10007
	.quad	1000003
	.quad	10000019
	.quad	1000000007
	.align 8
.LC27:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.strtoll, "dr"
	.p2align	3, 0
	.globl	.refptr.strtoll
	.linkonce	discard
.refptr.strtoll:
	.quad	strtoll
