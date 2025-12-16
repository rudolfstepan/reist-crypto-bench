	.file	"bench_modadd_suite.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB12314:
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
.LFB12315:
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
.LFB12316:
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
	.section	.text$_ZNSt7__cxx119to_stringEm,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt7__cxx119to_stringEm
	.def	_ZNSt7__cxx119to_stringEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEm
_ZNSt7__cxx119to_stringEm:
.LFB1384:
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
	cmpl	$9, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	jbe	.L34
	movl	%edx, %eax
	movl	$1, %ebx
	movl	$3518437209, %r8d
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L35:
	cmpl	$999, %eax
	jbe	.L47
	cmpl	$9999, %eax
	jbe	.L48
	leal	4(%rbx), %ecx
	movl	%eax, %edx
	imulq	%r8, %rdx
	shrq	$45, %rdx
	cmpl	$99999, %eax
	jbe	.L49
	movl	%ecx, %ebx
	movl	%edx, %eax
.L39:
	cmpl	$99, %eax
	ja	.L35
	leal	1(%rbx), %ecx
.L36:
	leaq	16(%rdi), %rax
	movl	%ecx, %ebp
	movb	$0, 16(%rdi)
	movq	%rdi, %rcx
	movq	%rax, (%rdi)
	movq	%rbp, %rdx
	movq	$0, 8(%rdi)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	leaq	32(%rsp), %rcx
	movl	$201, %r8d
	movq	(%rdi), %r12
	leaq	.LC1(%rip), %rdx
	call	memcpy
	cmpl	$99, %esi
	jbe	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	movl	%esi, %edx
	movl	%esi, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %ecx
	subl	%ecx, %eax
	movl	%esi, %ecx
	movl	%edx, %esi
	addl	%eax, %eax
	movl	%ebx, %edx
	leal	1(%rax), %r8d
	movzbl	32(%rsp,%rax), %eax
	movzbl	32(%rsp,%r8), %r8d
	movb	%r8b, (%r12,%rdx)
	leal	-1(%rbx), %edx
	subl	$2, %ebx
	cmpl	$9999, %ecx
	movb	%al, (%r12,%rdx)
	ja	.L41
	cmpl	$999, %ecx
	ja	.L40
.L42:
	addl	$48, %esi
.L43:
	movb	%sil, (%r12)
	movq	(%rdi), %rax
	movq	%rbp, 8(%rdi)
	movb	$0, (%rax,%rbp)
	movq	%rdi, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	addl	%esi, %esi
	leal	1(%rsi), %eax
	movzbl	32(%rsp,%rsi), %esi
	movzbl	32(%rsp,%rax), %eax
	movb	%al, 1(%r12)
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L47:
	leal	2(%rbx), %ecx
	addl	$1, %ebx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L48:
	leal	3(%rbx), %ecx
	addl	$2, %ebx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L49:
	addl	$3, %ebx
	jmp	.L36
.L34:
	leaq	16(%rcx), %rax
	movb	$0, 16(%rcx)
	movl	$1, %edx
	movl	$1, %ebp
	movq	%rax, (%rcx)
	movq	$0, 8(%rcx)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movq	(%rdi), %r12
	jmp	.L42
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1384:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1384-.LLSDACSB1384
.LLSDACSB1384:
.LLSDACSE1384:
	.section	.text$_ZNSt7__cxx119to_stringEm,"x"
	.linkonce discard
	.seh_endproc
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
	jbe	.L61
	movq	%rdx, %rcx
	movl	$1, %ebx
	movabsq	$3777893186295716171, %r8
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L52:
	cmpq	$999, %rcx
	jbe	.L66
	cmpq	$9999, %rcx
	jbe	.L67
	movq	%rcx, %rax
	addl	$4, %ebx
	mulq	%r8
	cmpq	$99999, %rcx
	jbe	.L68
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L55:
	cmpq	$99, %rcx
	ja	.L52
	leal	1(%rbx), %edi
	movq	%rdi, %rbx
.L51:
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
	jbe	.L56
	leal	-1(%rbx), %ecx
	movabsq	$2951479051793528259, %r9
	.p2align 4,,10
	.p2align 3
.L57:
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
	ja	.L57
.L56:
	leal	48(%rbp), %eax
	cmpq	$9, %rbp
	jbe	.L59
	movzbl	33(%rsp,%rbp,2), %eax
	movb	%al, 1(%r12)
	movzbl	32(%rsp,%rbp,2), %eax
.L59:
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
.L66:
	leal	2(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L67:
	leal	3(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L68:
	movl	%ebx, %edi
	jmp	.L51
.L61:
	movl	$1, %edi
	movl	$1, %ebx
	jmp	.L51
.L63:
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
	.uleb128 .L63-.LFB1389
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
.LFB11517:
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
	je	.L80
	call	*%rsi
.LEHE3:
	cmpl	$34, (%rax)
	je	.L81
	testq	%rdi, %rdi
	je	.L72
	movq	40(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%rdi)
.L72:
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L82
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
.L82:
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
.L81:
	movq	%r12, %rcx
.LEHB4:
	call	_ZSt20__throw_out_of_rangePKc
.L80:
	movq	%r12, %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L76:
	movq	%rax, %rbx
	call	*%rsi
	cmpl	$0, (%rax)
	je	.L83
.L75:
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L83:
	call	*%rsi
	movl	%r13d, (%rax)
	jmp	.L75
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11517:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11517-.LLSDACSB11517
.LLSDACSB11517:
	.uleb128 .LEHB2-.LFB11517
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11517
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L76-.LFB11517
	.uleb128 0
	.uleb128 .LEHB4-.LFB11517
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L76-.LFB11517
	.uleb128 0
	.uleb128 .LEHB5-.LFB11517
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE11517:
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
	.ascii "Windows\0"
	.align 8
.LC7:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC8:
	.ascii "ProcessorNameString\0"
.LC9:
	.ascii "~MHz\0"
.LC10:
	.ascii " MB\0"
	.align 8
.LC11:
	.ascii "========================================\12\0"
	.align 8
.LC12:
	.ascii "REIST modular-add benchmark suite\12\0"
.LC13:
	.ascii "System Information:\12\0"
.LC14:
	.ascii "  Hostname: \0"
.LC15:
	.ascii "\12\0"
.LC16:
	.ascii "  OS: \0"
.LC17:
	.ascii "  CPU Model: \0"
.LC18:
	.ascii "  CPU MHz: \0"
.LC19:
	.ascii "  Memory: \0"
	.align 8
.LC20:
	.ascii "========================================\12\12\0"
	.align 8
.LC21:
	.ascii "Total iterations per modulus N = \0"
.LC22:
	.ascii "step = \0"
.LC23:
	.ascii "\12\12\0"
.LC24:
	.ascii "Running benchmarks...\12\12\0"
.LC25:
	.ascii "Modulus B = \0"
.LC27:
	.ascii "classic_mod\0"
.LC28:
	.ascii "vector::_M_realloc_append\0"
.LC29:
	.ascii "reist_sym\0"
.LC30:
	.ascii "  classic_mod: \0"
.LC31:
	.ascii " s\12\0"
.LC32:
	.ascii "  reist_sym  : \0"
.LC33:
	.ascii "  speedup    : \0"
.LC34:
	.ascii "x (classic / REIST)\12\0"
.LC35:
	.ascii "  sinks: \0"
.LC36:
	.ascii " / \0"
.LC37:
	.ascii "results_modadd_suite.csv\0"
	.align 8
.LC38:
	.ascii "modulus,N,scenario,seconds,ops_per_sec\12\0"
.LC39:
	.ascii ",\0"
.LC40:
	.ascii "CSV written to \0"
	.align 8
.LC41:
	.ascii "WARNING: could not write CSV file \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11429:
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
	subq	$1208, %rsp
	.seh_stackalloc	1208
	movaps	%xmm6, 1152(%rsp)
	.seh_savexmm	%xmm6, 1152
	movaps	%xmm7, 1168(%rsp)
	.seh_savexmm	%xmm7, 1168
	movaps	%xmm8, 1184(%rsp)
	.seh_savexmm	%xmm8, 1184
	.seh_endprologue
	movl	$50000000, %r12d
	movl	%ecx, %ebx
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %ebx
	jg	.L259
.L85:
	movl	$48, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %rdi
	movl	$12, %ecx
	movq	%rax, 128(%rsp)
	addq	$48, %rax
	leaq	C.0.0(%rip), %rsi
	movq	%rax, 80(%rsp)
	movl	$384, %r14d
	rep movsl
	movq	$48, 136(%rsp)
.L88:
	movq	%r14, %rcx
.LEHB7:
	call	_Znwy
.LEHE7:
	movq	%rax, %rbp
	movq	$0, 168(%rsp)
	leaq	(%rax,%r14), %rax
	movb	$0, 176(%rsp)
	movq	%rax, 64(%rsp)
	leaq	176(%rsp), %rax
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
	movq	%rax, 112(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movb	$0, 208(%rsp)
	leaq	148(%rsp), %rdx
	movb	$0, 240(%rsp)
	leaq	416(%rsp), %rcx
	movq	$0, 200(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	$0, 296(%rsp)
	movb	$0, 304(%rsp)
	movl	$256, 148(%rsp)
	movq	%rax, 88(%rsp)
.LEHB8:
	call	*__imp_GetComputerNameA(%rip)
	leaq	256(%rsp), %rcx
	testl	%eax, %eax
	leaq	288(%rsp), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 112(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 88(%rsp)
	jne	.L260
	leaq	.LC5(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L93:
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	leaq	288(%rsp), %rcx
	movq	%rax, 96(%rsp)
	leaq	.LC6(%rip), %rdx
	movq	%rcx, 112(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	152(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, 88(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L237
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
.L94:
	leaq	224(%rsp), %rax
	movl	$64, 352(%rsp)
	leaq	352(%rsp), %rcx
	movq	%rax, 88(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	jne	.L239
	leaq	224(%rsp), %rax
	movq	%rax, 88(%rsp)
.L97:
	movq	.refptr._ZSt4cout(%rip), %rdi
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
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC14(%rip), %rdx
	movl	$12, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	264(%rsp), %r8
	movq	%rdi, %rcx
	movq	256(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC16(%rip), %rdx
	movl	$6, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	296(%rsp), %r8
	movq	%rdi, %rcx
	movq	288(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rdx
	movl	$13, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	168(%rsp), %r8
	movq	%rdi, %rcx
	movq	160(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rdx
	movl	$11, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	200(%rsp), %r8
	movq	%rdi, %rcx
	movq	192(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC19(%rip), %rdx
	movl	$10, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	232(%rsp), %r8
	movq	%rdi, %rcx
	movq	224(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC21(%rip), %rdx
	movl	$33, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC22(%rip), %rdx
	movl	$7, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$3, %edx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC23(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC24(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE8:
	movq	128(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	je	.L176
	movsd	.LC26(%rip), %xmm8
	movq	%rax, 56(%rsp)
	movq	%rbp, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L155:
	movq	56(%rsp), %rax
	movl	$12, %r8d
	movq	%rdi, %rcx
	leaq	.LC25(%rip), %rdx
	movq	(%rax), %rbx
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE9:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB10:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE10:
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE11:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, %r15
	xorl	%eax, %eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L106:
	addq	$3, %rax
	addq	$1, %r13
	cqto
	idivq	%rbx
	cmpq	%r13, %r12
	movq	%rdx, %rax
	jne	.L106
	movq	%rdx, %rsi
	pxor	%xmm7, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r15, %rax
	cmpq	%rbp, 64(%rsp)
	cvtsi2sdq	%rax, %xmm7
	divsd	%xmm8, %xmm7
	je	.L107
	movq	%rbx, %xmm0
	movq	%r12, %xmm2
	movsd	%xmm7, 24(%rbp)
	addq	$32, %rbp
	leaq	.LC27(%rip), %rax
	punpcklqdq	%xmm2, %xmm0
	movups	%xmm0, -32(%rbp)
	movq	%rax, -16(%rbp)
.L108:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rbx, %rdx
	xorl	%r14d, %r14d
	shrq	$63, %rdx
	movq	%rax, %r15
	xorl	%eax, %eax
	addq	%rbx, %rdx
	sarq	%rdx
	movq	%rdx, %rcx
	negq	%rcx
	jmp	.L117
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L262:
	addq	$1, %rax
	subq	%rbx, %r14
	cmpq	%rax, %r13
	je	.L261
.L117:
	addq	$3, %r14
	cmpq	%r14, %rdx
	jl	.L262
	leaq	(%r14,%rbx), %r8
	cmpq	%r14, %rcx
	cmovge	%r8, %r14
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.L117
.L261:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm6, %xmm6
	subq	%r15, %rax
	cmpq	%rbp, 64(%rsp)
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm8, %xmm6
	je	.L118
	movq	%rbx, %xmm0
	movq	%r13, %xmm3
	movsd	%xmm6, 24(%rbp)
	addq	$32, %rbp
	leaq	.LC29(%rip), %rax
	punpcklqdq	%xmm3, %xmm0
	movups	%xmm0, -32(%rbp)
	movq	%rax, -16(%rbp)
.L119:
	leaq	.LC30(%rip), %rdx
	movl	$15, %r8d
	movq	%rdi, %rcx
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE12:
	movapd	%xmm7, %xmm1
	movq	%rdi, %rcx
.LEHB13:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE13:
	leaq	.LC31(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE14:
	leaq	.LC32(%rip), %rdx
	movl	$15, %r8d
	movq	%rdi, %rcx
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE15:
	movapd	%xmm6, %xmm1
	movq	%rdi, %rcx
.LEHB16:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE16:
	leaq	.LC31(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
.LEHB17:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE17:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	jbe	.L138
	leaq	.LC33(%rip), %rdx
	movl	$15, %r8d
	movq	%rdi, %rcx
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE18:
	movapd	%xmm7, %xmm1
	movq	%rdi, %rcx
	divsd	%xmm6, %xmm1
.LEHB19:
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE19:
	leaq	.LC34(%rip), %rdx
	movl	$20, %r8d
	movq	%rax, %rcx
.LEHB20:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE20:
.L138:
	leaq	.LC35(%rip), %rdx
	movl	$9, %r8d
	movq	%rdi, %rcx
.LEHB21:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE21:
	movq	%rsi, %rdx
	movq	%rdi, %rcx
.LEHB22:
	call	_ZNSo9_M_insertIyEERSoT_
.LEHE22:
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	.LC36(%rip), %rdx
.LEHB23:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE23:
	movq	%r14, %rdx
	movq	%rbx, %rcx
.LEHB24:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE24:
	leaq	.LC23(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
.LEHB25:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE25:
	addq	$8, 56(%rsp)
	movq	56(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	jne	.L155
.L98:
	leaq	672(%rsp), %rsi
	movl	$16, %r8d
	leaq	.LC37(%rip), %rdx
	movq	%rsi, %rcx
.LEHB26:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE26:
	testb	$5, 920(%rsp)
	jne	.L158
	leaq	.LC38(%rip), %rdx
	movq	%rsi, %rcx
.LEHB27:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	72(%rsp), %rax
	cmpq	%rbp, %rax
	movq	%rax, %rbx
	je	.L166
	pxor	%xmm8, %xmm8
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L163:
	movq	%r13, %rcx
	call	strlen
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rax, %r8
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L164:
	leaq	.LC39(%rip), %rdx
	movl	$1, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$32, %rbx
	cmpq	%rbx, %rbp
	je	.L166
.L165:
	movsd	24(%rbx), %xmm6
	pxor	%xmm7, %xmm7
	comisd	%xmm8, %xmm6
	jbe	.L161
	pxor	%xmm7, %xmm7
	cvtsi2sdq	8(%rbx), %xmm7
	divsd	%xmm6, %xmm7
.L161:
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	8(%rbx), %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	16(%rbx), %r13
	testq	%r13, %r13
	jne	.L163
	movq	(%r12), %rax
	movq	-24(%rax), %rcx
	addq	%r12, %rcx
	movl	32(%rcx), %edx
	orl	$1, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE27:
	jmp	.L164
.L260:
	leaq	416(%rsp), %rdx
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE28:
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L118:
	movabsq	$288230376151711743, %rcx
	movq	64(%rsp), %rbp
	subq	72(%rsp), %rbp
	movq	%rbp, %rax
	sarq	$5, %rax
	cmpq	%rcx, %rax
	je	.L263
	testq	%rax, %rax
	movl	$1, %r15d
	cmovne	%rax, %r15
	addq	%rax, %r15
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %r15
	cmova	%rax, %r15
	salq	$5, %r15
	movq	%r15, %rcx
.LEHB29:
	call	_Znwy
.LEHE29:
	movq	%rbx, %xmm0
	testq	%rbp, %rbp
	movq	%rax, %r11
	movsd	%xmm6, 24(%rax,%rbp)
	leaq	.LC29(%rip), %rbx
	movq	%r13, %xmm5
	punpcklqdq	%xmm5, %xmm0
	movq	%rbx, 16(%rax,%rbp)
	movups	%xmm0, (%rax,%rbp)
	je	.L124
	movq	72(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	%rax, %r11
.L124:
	movq	72(%rsp), %rax
	leaq	32(%r11,%rbp), %rbp
	testq	%rax, %rax
	je	.L125
	movq	64(%rsp), %rdx
	movq	%rax, %rcx
	movq	%r11, 72(%rsp)
	subq	%rax, %rdx
	call	_ZdlPvy
	movq	72(%rsp), %r11
.L125:
	leaq	(%r11,%r15), %rax
	movq	%r11, 72(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L107:
	movabsq	$288230376151711743, %rcx
	movq	64(%rsp), %rbp
	subq	72(%rsp), %rbp
	movq	%rbp, %rax
	sarq	$5, %rax
	cmpq	%rcx, %rax
	je	.L264
	testq	%rax, %rax
	movl	$1, %r15d
	cmovne	%rax, %r15
	addq	%rax, %r15
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %r15
	cmova	%rax, %r15
	salq	$5, %r15
	movq	%r15, %rcx
.LEHB30:
	call	_Znwy
.LEHE30:
	movq	%rbx, %xmm0
	testq	%rbp, %rbp
	movq	%rax, %r14
	movsd	%xmm7, 24(%rax,%rbp)
	leaq	.LC27(%rip), %rcx
	movq	%r13, %xmm4
	punpcklqdq	%xmm4, %xmm0
	movq	%rcx, 16(%rax,%rbp)
	movups	%xmm0, (%rax,%rbp)
	je	.L113
	movq	72(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rax, %rcx
	call	memcpy
.L113:
	movq	72(%rsp), %rcx
	leaq	32(%r14,%rbp), %rbp
	testq	%rcx, %rcx
	je	.L114
	movq	64(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L114:
	leaq	(%r14,%r15), %rax
	movq	%r14, 72(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.L108
.L239:
	movq	360(%rsp), %rdx
	leaq	224(%rsp), %rax
	leaq	320(%rsp), %rcx
	movq	%rax, 88(%rsp)
	shrq	$20, %rdx
.LEHB31:
	call	_ZNSt7__cxx119to_stringEy
.LEHE31:
	leaq	.LC10(%rip), %rdx
	leaq	320(%rsp), %rcx
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE32:
	leaq	672(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	224(%rsp), %rax
	leaq	672(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	672(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	320(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L97
.L237:
	leaq	160(%rsp), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	152(%rsp), %rcx
	movq	%rax, 104(%rsp)
	leaq	192(%rsp), %rax
	movq	__imp_RegQueryValueExA(%rip), %rdi
	leaq	320(%rsp), %rbx
	movq	%rax, 96(%rsp)
	leaq	672(%rsp), %rsi
	movq	%rbx, 40(%rsp)
	leaq	224(%rsp), %rax
	movq	%rsi, 32(%rsp)
	leaq	.LC8(%rip), %rdx
	movq	%rax, 88(%rsp)
	movl	$256, 320(%rsp)
.LEHB33:
	call	*%rdi
	testl	%eax, %eax
	leaq	160(%rsp), %rax
	movq	%rax, 104(%rsp)
	jne	.L95
	leaq	192(%rsp), %rax
	movq	%rsi, %rdx
	movq	%rax, 96(%rsp)
	leaq	352(%rsp), %rcx
	leaq	224(%rsp), %rax
	movq	%rax, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	160(%rsp), %rax
	leaq	352(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 104(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L95:
	leaq	192(%rsp), %rax
	movq	%rbx, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 96(%rsp)
	leaq	224(%rsp), %rax
	movq	152(%rsp), %rcx
	movq	%rsi, 32(%rsp)
	leaq	.LC9(%rip), %rdx
	movl	$256, 320(%rsp)
	movq	%rax, 88(%rsp)
	call	*%rdi
	leaq	192(%rsp), %rsi
	testl	%eax, %eax
	movq	%rsi, 96(%rsp)
	je	.L265
.L96:
	leaq	224(%rsp), %rax
	movq	152(%rsp), %rcx
	movq	%rax, 88(%rsp)
	call	*__imp_RegCloseKey(%rip)
.LEHE33:
	jmp	.L94
.L166:
	movq	%rsi, %rcx
.LEHB34:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	leaq	.LC40(%rip), %rdx
	movl	$15, %r8d
	movq	%rdi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC37(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L256:
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rsi, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	112(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	104(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L168
	movq	64(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L168:
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
.L84:
	movaps	1152(%rsp), %xmm6
	movaps	1168(%rsp), %xmm7
	movaps	1184(%rsp), %xmm8
	addq	$1208, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L158:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$34, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC37(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE34:
	jmp	.L256
.L259:
	movq	8(%rdi), %rdx
	leaq	672(%rsp), %rsi
	movq	%rsi, %rcx
.LEHB35:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE35:
	movq	672(%rsp), %r8
	xorl	%r9d, %r9d
	movl	$10, 32(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB36:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE36:
	movq	%rax, %r12
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	testq	%r12, %r12
	jle	.L266
	cmpl	$2, %ebx
	je	.L85
	movq	16(%rdi), %rdx
	movq	%rsi, %rcx
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE37:
	movq	672(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC3(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB38:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	movl	$8, %ecx
	movq	%rax, %rbx
	call	_Znwy
.LEHE38:
	movq	%rbx, (%rax)
	movq	%rsi, %rcx
	movl	$64, %r14d
	movq	%rax, 128(%rsp)
	addq	$8, %rax
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	$8, 136(%rsp)
	jmp	.L88
.L265:
	movl	672(%rsp), %edx
	leaq	352(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	96(%rsp), %rcx
	leaq	352(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L96
.L176:
	movq	%rbp, 72(%rsp)
	jmp	.L98
.L266:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC4(%rip), %rdx
.LEHB39:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %eax
	jmp	.L84
.L179:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L206:
.L258:
	movq	72(%rsp), %rbp
.L101:
	movq	112(%rsp), %rcx
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	104(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	testq	%rbp, %rbp
	movq	56(%rsp), %rbx
	jne	.L267
.L174:
	movq	80(%rsp), %rdx
	movq	128(%rsp), %rcx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L91:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE39:
.L203:
	jmp	.L258
.L190:
	jmp	.L258
.L191:
	jmp	.L258
.L192:
	jmp	.L258
.L193:
	jmp	.L258
.L185:
	jmp	.L101
.L184:
	movq	%rax, %rbx
	jmp	.L174
.L205:
	jmp	.L258
.L181:
	leaq	320(%rsp), %rcx
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rax
	leaq	224(%rsp), %rsi
	movq	%rsi, 88(%rsp)
	jmp	.L101
.L194:
	jmp	.L258
.L187:
	jmp	.L258
.L267:
	movq	64(%rsp), %rdx
	movq	%rbp, %rcx
	subq	%rbp, %rdx
	call	_ZdlPvy
	jmp	.L174
.L180:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L91
.L183:
	movq	%rax, %rbx
	jmp	.L91
.L264:
	leaq	.LC28(%rip), %rcx
.LEHB40:
	call	_ZSt20__throw_length_errorPKc
.LEHE40:
.L207:
	jmp	.L258
.L204:
	jmp	.L258
.L195:
	jmp	.L258
.L196:
	jmp	.L258
.L188:
	jmp	.L258
.L197:
	jmp	.L258
.L198:
	jmp	.L258
.L200:
	jmp	.L258
.L189:
	jmp	.L258
.L199:
	jmp	.L258
.L186:
	jmp	.L258
.L182:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	jmp	.L258
.L263:
	leaq	.LC28(%rip), %rcx
.LEHB41:
	call	_ZSt20__throw_length_errorPKc
.LEHE41:
.L202:
	jmp	.L258
.L201:
	jmp	.L258
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11429-.LLSDACSB11429
.LLSDACSB11429:
	.uleb128 .LEHB6-.LFB11429
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L183-.LFB11429
	.uleb128 0
	.uleb128 .LEHB7-.LFB11429
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L184-.LFB11429
	.uleb128 0
	.uleb128 .LEHB8-.LFB11429
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L185-.LFB11429
	.uleb128 0
	.uleb128 .LEHB9-.LFB11429
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L205-.LFB11429
	.uleb128 0
	.uleb128 .LEHB10-.LFB11429
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L206-.LFB11429
	.uleb128 0
	.uleb128 .LEHB11-.LFB11429
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L203-.LFB11429
	.uleb128 0
	.uleb128 .LEHB12-.LFB11429
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L190-.LFB11429
	.uleb128 0
	.uleb128 .LEHB13-.LFB11429
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L191-.LFB11429
	.uleb128 0
	.uleb128 .LEHB14-.LFB11429
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L192-.LFB11429
	.uleb128 0
	.uleb128 .LEHB15-.LFB11429
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L193-.LFB11429
	.uleb128 0
	.uleb128 .LEHB16-.LFB11429
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L194-.LFB11429
	.uleb128 0
	.uleb128 .LEHB17-.LFB11429
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L187-.LFB11429
	.uleb128 0
	.uleb128 .LEHB18-.LFB11429
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L195-.LFB11429
	.uleb128 0
	.uleb128 .LEHB19-.LFB11429
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L196-.LFB11429
	.uleb128 0
	.uleb128 .LEHB20-.LFB11429
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L188-.LFB11429
	.uleb128 0
	.uleb128 .LEHB21-.LFB11429
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L197-.LFB11429
	.uleb128 0
	.uleb128 .LEHB22-.LFB11429
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L198-.LFB11429
	.uleb128 0
	.uleb128 .LEHB23-.LFB11429
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L200-.LFB11429
	.uleb128 0
	.uleb128 .LEHB24-.LFB11429
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L189-.LFB11429
	.uleb128 0
	.uleb128 .LEHB25-.LFB11429
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L199-.LFB11429
	.uleb128 0
	.uleb128 .LEHB26-.LFB11429
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L186-.LFB11429
	.uleb128 0
	.uleb128 .LEHB27-.LFB11429
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L182-.LFB11429
	.uleb128 0
	.uleb128 .LEHB28-.LFB11429
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L185-.LFB11429
	.uleb128 0
	.uleb128 .LEHB29-.LFB11429
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L202-.LFB11429
	.uleb128 0
	.uleb128 .LEHB30-.LFB11429
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L207-.LFB11429
	.uleb128 0
	.uleb128 .LEHB31-.LFB11429
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L185-.LFB11429
	.uleb128 0
	.uleb128 .LEHB32-.LFB11429
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L181-.LFB11429
	.uleb128 0
	.uleb128 .LEHB33-.LFB11429
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L185-.LFB11429
	.uleb128 0
	.uleb128 .LEHB34-.LFB11429
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L182-.LFB11429
	.uleb128 0
	.uleb128 .LEHB35-.LFB11429
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB11429
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L179-.LFB11429
	.uleb128 0
	.uleb128 .LEHB37-.LFB11429
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L183-.LFB11429
	.uleb128 0
	.uleb128 .LEHB38-.LFB11429
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L180-.LFB11429
	.uleb128 0
	.uleb128 .LEHB39-.LFB11429
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB11429
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L204-.LFB11429
	.uleb128 0
	.uleb128 .LEHB41-.LFB11429
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L201-.LFB11429
	.uleb128 0
.LLSDACSE11429:
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
.LC26:
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
