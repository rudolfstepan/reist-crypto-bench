	.file	"bench_modular.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB13378:
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
.LFB13379:
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
.LFB13380:
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
.LFB12604:
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
.LLSDA12604:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12604-.LLSDACSB12604
.LLSDACSB12604:
	.uleb128 .LEHB2-.LFB12604
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB12604
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L76-.LFB12604
	.uleb128 0
	.uleb128 .LEHB4-.LFB12604
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L76-.LFB12604
	.uleb128 0
	.uleb128 .LEHB5-.LFB12604
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE12604:
	.section	.text$_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
	.def	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv:
.LFB13330:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	movdqa	.LC5(%rip), %xmm4
	movq	$-2147483648, %r10
	movl	$2147483647, %r11d
	movq	%r10, %xmm7
	movl	$1, %r10d
	movq	%r11, %xmm6
	movdqa	%xmm4, %xmm8
	movq	%r10, %xmm5
	punpcklqdq	%xmm7, %xmm7
	punpcklqdq	%xmm6, %xmm6
	psrlq	$32, %xmm8
	punpcklqdq	%xmm5, %xmm5
	leaq	1248(%rcx), %rax
	movq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L85:
	movdqu	(%rdx), %xmm0
	addq	$16, %rdx
	movdqu	-8(%rdx), %xmm1
	movdqu	1232(%rdx), %xmm2
	pand	%xmm7, %xmm0
	pand	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm8, %xmm0
	psrlq	$32, %xmm1
	pmuludq	%xmm4, %xmm1
	pmuludq	%xmm4, %xmm3
	paddq	%xmm0, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm3
	movdqa	%xmm3, %xmm0
	pxor	%xmm2, %xmm0
	movups	%xmm0, -16(%rdx)
	cmpq	%rdx, %rax
	jne	.L85
	movl	$2147483647, %r8d
	movq	$-2147483648, %r11
	movl	$1, %r10d
	movq	%r8, %xmm6
	movq	%r11, %xmm7
	movabsq	$-5403634167711393303, %r8
	movq	%r8, %xmm4
	movq	%r10, %xmm5
	punpcklqdq	%xmm7, %xmm7
	punpcklqdq	%xmm6, %xmm6
	punpcklqdq	%xmm4, %xmm4
	movdqa	%xmm4, %xmm8
	punpcklqdq	%xmm5, %xmm5
	leaq	2480(%rcx), %rdx
	psrlq	$32, %xmm8
	.p2align 4,,10
	.p2align 3
.L86:
	movdqu	(%rax), %xmm0
	addq	$16, %rax
	movdqu	-8(%rax), %xmm1
	movdqu	-1264(%rax), %xmm2
	pand	%xmm7, %xmm0
	pand	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm8, %xmm0
	psrlq	$32, %xmm1
	pmuludq	%xmm4, %xmm1
	pmuludq	%xmm4, %xmm3
	paddq	%xmm0, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm3
	movdqa	%xmm3, %xmm0
	pxor	%xmm2, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L86
	movq	2488(%rcx), %r9
	movq	$0, 2496(%rcx)
	movq	2480(%rcx), %rax
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movq	%r9, %rdx
	andq	$-2147483648, %r9
	movaps	32(%rsp), %xmm8
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	xorq	1232(%rcx), %rdx
	negq	%rax
	andq	%r8, %rax
	xorq	%rdx, %rax
	movq	%rax, 2480(%rcx)
	movq	(%rcx), %rax
	andl	$2147483647, %eax
	orq	%r9, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	xorq	1240(%rcx), %rdx
	negq	%rax
	andq	%r8, %rax
	xorq	%rdx, %rax
	movq	%rax, 2488(%rcx)
	addq	$56, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "stoll\0"
.LC8:
	.ascii "Usage: \0"
.LC9:
	.ascii " [B>1] [N>0]\12\0"
.LC10:
	.ascii "Unknown\0"
.LC11:
	.ascii "Windows\0"
	.align 8
.LC12:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC13:
	.ascii "ProcessorNameString\0"
.LC14:
	.ascii "~MHz\0"
.LC15:
	.ascii " MB\0"
	.align 8
.LC16:
	.ascii "========================================\12\0"
.LC17:
	.ascii "Modular Benchmark\12\0"
.LC18:
	.ascii "System Information:\12\0"
.LC19:
	.ascii "  Hostname: \0"
.LC20:
	.ascii "\12\0"
.LC21:
	.ascii "  OS: \0"
.LC22:
	.ascii "  CPU Model: \0"
.LC23:
	.ascii "  CPU MHz: \0"
.LC24:
	.ascii "  Memory: \0"
	.align 8
.LC25:
	.ascii "========================================\12\12\0"
.LC26:
	.ascii "Benchmark with B = \0"
.LC27:
	.ascii ", N = \0"
.LC29:
	.ascii "\12--- Modular remainder ---\12\0"
.LC30:
	.ascii "classic  : \0"
.LC31:
	.ascii " s\12\0"
.LC32:
	.ascii "REIST    : \0"
.LC34:
	.ascii "Speedup  : \0"
.LC35:
	.ascii "x (classic / REIST)\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB12544:
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
	subq	$3416, %rsp
	.seh_stackalloc	3416
	movaps	%xmm6, 3376(%rsp)
	.seh_savexmm	%xmm6, 3376
	movaps	%xmm7, 3392(%rsp)
	.seh_savexmm	%xmm7, 3392
	.seh_endprologue
	movl	$5000000, %r12d
	movl	$257, %ebx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %esi
	jg	.L144
.L90:
	leaq	872(%rsp), %rcx
	movl	$1, %esi
	movq	$48879, 864(%rsp)
	movabsq	$6364136223846793005, %r8
	movl	$48879, %edx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L94:
	movq	%rdx, %rax
	addq	$8, %rcx
	shrq	$62, %rax
	xorq	%rdx, %rax
	imulq	%r8, %rax
	leaq	(%rsi,%rax), %rdx
	addq	$1, %rsi
	movq	%rdx, -8(%rcx)
	cmpq	$312, %rsi
	jne	.L94
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movb	$0, 144(%rsp)
	leaq	144(%rsp), %rax
	xorl	%r9d, %r9d
	movq	%rdx, 168(%rsp)
	movq	%rax, 128(%rsp)
	leaq	116(%rsp), %rdx
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 256(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	192(%rsp), %rax
	movq	%rcx, 200(%rsp)
	leaq	352(%rsp), %rcx
	movq	$312, 3360(%rsp)
	movb	$0, 176(%rsp)
	movb	$0, 208(%rsp)
	movq	%r8, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	%r9, 264(%rsp)
	movb	$0, 272(%rsp)
	movl	$256, 116(%rsp)
	movq	%rax, 56(%rsp)
.LEHB6:
	call	*__imp_GetComputerNameA(%rip)
	leaq	224(%rsp), %rcx
	testl	%eax, %eax
	leaq	256(%rsp), %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 88(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	jne	.L145
	leaq	.LC10(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L96:
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	leaq	256(%rsp), %rcx
	movq	%rax, 72(%rsp)
	leaq	.LC11(%rip), %rdx
	movq	%rcx, 88(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	leaq	120(%rsp), %rax
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 32(%rsp)
	leaq	128(%rsp), %rax
	movq	$-2147483646, %rcx
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	192(%rsp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, 56(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L139
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	leaq	608(%rsp), %rbp
	movq	%rax, 72(%rsp)
.L97:
	leaq	192(%rsp), %rax
	movq	%rbp, %rcx
	movl	$64, 608(%rsp)
	movq	%rax, 56(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	jne	.L141
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
.L100:
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
	leaq	.LC16(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	232(%rsp), %r8
	movq	224(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$6, %r8d
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	264(%rsp), %r8
	movq	256(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$13, %r8d
	leaq	.LC22(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	136(%rsp), %r8
	movq	128(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC23(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	168(%rsp), %r8
	movq	160(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$10, %r8d
	leaq	.LC24(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	200(%rsp), %r8
	movq	192(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$19, %r8d
	leaq	.LC26(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$6, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC27(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %r9
	movq	%r12, %rsi
	movabsq	$6148914691236517205, %rbp
	movq	%rax, 64(%rsp)
	xorl	%r12d, %r12d
	movabsq	$8202884508482404352, %r15
	movabsq	$-2270628950310912, %r13
	leaq	864(%rsp), %rax
	movabsq	$4611686018427387905, %r14
	movabsq	$4611686018427387900, %rdi
	movq	%rax, 48(%rsp)
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L102:
	movq	%rdx, %rax
	addq	$1, %r12
	cqto
	idivq	%rbx
	cmpq	%rsi, %r12
	movq	%rdx, 288(%rsp)
	movq	288(%rsp), %rax
	je	.L146
.L105:
	cmpq	$311, %r9
	ja	.L147
.L101:
	movq	864(%rsp,%r9,8), %rax
	leaq	1(%r9), %rcx
	movq	%rcx, 3360(%rsp)
	movq	%rcx, %r9
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%rbp, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%r14
	cmpq	%rax, %rdi
	jb	.L102
	cmpq	$311, %rcx
	movq	%rcx, %rax
	ja	.L148
	.p2align 4,,10
	.p2align 3
.L103:
	leaq	1(%rax), %rcx
	movq	864(%rsp,%rax,8), %rax
	movq	%rcx, 3360(%rsp)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%rbp, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%r14
	cmpq	%rax, %rdi
	jb	.L149
	cmpq	$311, %rcx
	movq	%rcx, %rax
	jbe	.L103
.L148:
	movq	48(%rsp), %rcx
	call	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
	movq	3360(%rsp), %rax
	jmp	.L103
.L145:
	leaq	352(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L149:
	movq	%rcx, %r9
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L147:
	movq	48(%rsp), %rcx
	call	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
	movq	3360(%rsp), %r9
	jmp	.L101
.L146:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	64(%rsp), %rax
	movq	%rsi, %r12
	pxor	%xmm0, %xmm0
	movabsq	$6148914691236517205, %r13
	movabsq	$8202884508482404352, %r14
	leaq	864(%rsp), %rbp
	movabsq	$-2270628950310912, %r15
	movabsq	$4611686018427387905, %rdi
	movabsq	$4611686018427387900, %rsi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC28(%rip), %xmm0
	movapd	%xmm0, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rbp, 48(%rsp)
	xorl	%ebp, %ebp
	movq	3360(%rsp), %r11
	movq	%rax, 104(%rsp)
	movq	%rbx, %rax
	sarq	%rax
	movq	%rax, 64(%rsp)
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L107:
	movq	%rdx, %rax
	cqto
	idivq	%rbx
	movq	%rdx, %rax
	subq	%rbx, %rax
	cmpq	64(%rsp), %rdx
	cmovle	%rdx, %rax
	addq	$1, %rbp
	cmpq	%r12, %rbp
	movq	%rax, 320(%rsp)
	movq	320(%rsp), %rax
	je	.L150
.L111:
	cmpq	$311, %r11
	ja	.L151
.L106:
	movq	864(%rsp,%r11,8), %rax
	leaq	1(%r11), %rcx
	movq	%rcx, 3360(%rsp)
	movq	%rcx, %r11
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rdi
	cmpq	%rax, %rsi
	jb	.L107
	cmpq	$311, %rcx
	movq	%rcx, %rax
	ja	.L152
	.p2align 4,,10
	.p2align 3
.L108:
	leaq	1(%rax), %rcx
	movq	864(%rsp,%rax,8), %rax
	movq	%rcx, 3360(%rsp)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rdi
	cmpq	%rax, %rsi
	jb	.L153
	cmpq	$311, %rcx
	movq	%rcx, %rax
	jbe	.L108
.L152:
	movq	48(%rsp), %rcx
	call	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
	movq	3360(%rsp), %rax
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L153:
	movq	%rcx, %r11
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L151:
	movq	48(%rsp), %rcx
	call	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EE11_M_gen_randEv
	movq	3360(%rsp), %r11
	jmp	.L106
.L150:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	pxor	%xmm6, %xmm6
	subq	104(%rsp), %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	.LC28(%rip), %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC30(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC32(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	jbe	.L112
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE6:
.L112:
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	xorl	%eax, %eax
.L89:
	movaps	3376(%rsp), %xmm6
	movaps	3392(%rsp), %xmm7
	addq	$3416, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L144:
	movq	8(%rdi), %rdx
	leaq	864(%rsp), %rbp
	movq	%rbp, %rcx
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE7:
	movq	864(%rsp), %r8
	xorl	%r9d, %r9d
	movl	$10, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB8:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE8:
	movq	%rbp, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, %esi
	je	.L142
	movq	16(%rdi), %rdx
	movq	%rbp, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE9:
	movq	864(%rsp), %r8
	xorl	%r9d, %r9d
	movl	$10, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	leaq	strtoll(%rip), %rcx
.LEHB10:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE10:
	movq	%rax, %r12
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	testq	%r12, %r12
	jle	.L93
.L142:
	cmpq	$1, %rbx
	jg	.L90
.L93:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$7, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rbx, %rcx
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rdi), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE11:
	movl	$1, %eax
	jmp	.L89
.L141:
	movq	616(%rsp), %rdx
	leaq	192(%rsp), %rax
	leaq	288(%rsp), %rcx
	movq	%rax, 56(%rsp)
	shrq	$20, %rdx
.LEHB12:
	call	_ZNSt7__cxx119to_stringEy
.LEHE12:
	leaq	.LC15(%rip), %rdx
	leaq	288(%rsp), %rcx
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE13:
	leaq	320(%rsp), %rbp
	movq	%rax, %rdx
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	192(%rsp), %rax
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	288(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L100
.L139:
	leaq	128(%rsp), %rax
	movq	120(%rsp), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 80(%rsp)
	leaq	160(%rsp), %rax
	movq	__imp_RegQueryValueExA(%rip), %r14
	leaq	288(%rsp), %rdi
	movq	%rax, 72(%rsp)
	leaq	608(%rsp), %rbp
	movq	%rdi, 40(%rsp)
	leaq	192(%rsp), %rax
	movq	%rbp, 32(%rsp)
	leaq	.LC13(%rip), %rdx
	movq	%rax, 56(%rsp)
	movl	$256, 288(%rsp)
.LEHB14:
	call	*%r14
	testl	%eax, %eax
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	je	.L140
.L98:
	movq	120(%rsp), %rcx
	movq	%rdi, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	leaq	160(%rsp), %rax
	movq	%rbp, 32(%rsp)
	movq	%rax, 72(%rsp)
	leaq	192(%rsp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, 56(%rsp)
	movl	$256, 288(%rsp)
	call	*%r14
	leaq	160(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 72(%rsp)
	je	.L154
.L99:
	leaq	192(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, 56(%rsp)
	call	*__imp_RegCloseKey(%rip)
	jmp	.L97
.L140:
	leaq	160(%rsp), %rax
	movq	%rbp, %rdx
	movq	%rax, 72(%rsp)
	leaq	320(%rsp), %rcx
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE14:
	leaq	128(%rsp), %rax
	leaq	320(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	320(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L98
.L154:
	movl	608(%rsp), %edx
	leaq	320(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	72(%rsp), %rcx
	leaq	320(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	320(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L99
.L127:
	leaq	288(%rsp), %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
.L117:
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
.L124:
.L143:
	movq	%rax, %rbx
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE15:
.L125:
	jmp	.L143
.L126:
	movq	%rax, %rbx
	jmp	.L117
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA12544:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12544-.LLSDACSB12544
.LLSDACSB12544:
	.uleb128 .LEHB6-.LFB12544
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L126-.LFB12544
	.uleb128 0
	.uleb128 .LEHB7-.LFB12544
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB12544
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L124-.LFB12544
	.uleb128 0
	.uleb128 .LEHB9-.LFB12544
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB12544
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L125-.LFB12544
	.uleb128 0
	.uleb128 .LEHB11-.LFB12544
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB12544
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L126-.LFB12544
	.uleb128 0
	.uleb128 .LEHB13-.LFB12544
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L127-.LFB12544
	.uleb128 0
	.uleb128 .LEHB14-.LFB12544
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L126-.LFB12544
	.uleb128 0
	.uleb128 .LEHB15-.LFB12544
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE12544:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC5:
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.align 8
.LC28:
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
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
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
