	.file	"bench_poly_mod.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB13561:
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
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB13562:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	je	.L5
	movq	%rdx, %rcx
	movq	%rdx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L5:
	movq	(%rcx), %rax
	addq	-24(%rax), %rbx
	movl	32(%rbx), %edx
	movq	%rbx, %rcx
	orl	$1, %edx
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB13564:
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
	je	.L23
	cmpq	%rdx, %rax
	je	.L8
	movq	%rdx, (%r10)
	testq	%rcx, %rcx
	movq	16(%r10), %r11
	movq	%r8, 8(%r10)
	movq	16(%r9), %rdx
	movq	%rdx, 16(%r10)
	je	.L15
	movq	%rcx, (%r9)
	movq	%rcx, %rdx
	movq	%r11, 16(%r9)
.L11:
	movq	$0, 8(%r9)
	movb	$0, (%rdx)
	addq	$40, %rsp
	ret
.L23:
	cmpq	%rdx, %rax
	je	.L8
	movq	%rdx, (%r10)
	movq	%r8, 8(%r10)
	movq	16(%r9), %rdx
	movq	%rdx, 16(%r10)
.L15:
	movq	%rax, (%r9)
	movq	%rax, %rdx
	jmp	.L11
.L8:
	cmpq	%r9, %r10
	je	.L11
	testq	%r8, %r8
	je	.L12
	cmpq	$1, %r8
	je	.L24
	movq	%r9, 56(%rsp)
	movq	%r10, 48(%rsp)
	call	memcpy
	movq	56(%rsp), %r9
	movq	48(%rsp), %r10
.L14:
	movq	8(%r9), %r8
	movq	(%r10), %rcx
.L12:
	movq	%r8, 8(%r10)
	movb	$0, (%rcx,%r8)
	movq	(%r9), %rdx
	jmp	.L11
.L24:
	movzbl	(%rdx), %eax
	movb	%al, (%rcx)
	jmp	.L14
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
.LFB13565:
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
	je	.L34
	movq	%rdx, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %r9
	movq	%rax, 56(%rsp)
	ja	.L35
	cmpq	$1, %rax
	jne	.L29
	movzbl	(%rsi), %eax
	movb	%al, 16(%rbx)
.L30:
	movq	56(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L29:
	testq	%rax, %rax
	je	.L30
	jmp	.L28
.L35:
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
.L28:
	movq	%r9, %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	memcpy
	jmp	.L30
.L34:
	leaq	.LC0(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "cannot create std::vector larger than max_size()\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0:
.LFB13567:
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
	jb	.L43
	testq	%rdx, %rdx
	je	.L44
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
	je	.L39
	leaq	-4(%rsi), %r8
	xorl	%edx, %edx
	movq	%r10, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	memset
	movq	40(%rsp), %r10
	leaq	-4(%r10,%rax), %rcx
	subq	32(%rsp), %rcx
.L39:
	movq	%rcx, 8(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L44:
	xorl	%ecx, %ecx
	movq	%rcx, (%rbx)
	movq	%rcx, 16(%rbx)
	xorl	%ecx, %ecx
	jmp	.L39
.L43:
	leaq	.LC1(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
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
	jbe	.L46
	movl	%edx, %eax
	movl	$1, %ebx
	movl	$3518437209, %r8d
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	cmpl	$999, %eax
	jbe	.L59
	cmpl	$9999, %eax
	jbe	.L60
	leal	4(%rbx), %ecx
	movl	%eax, %edx
	imulq	%r8, %rdx
	shrq	$45, %rdx
	cmpl	$99999, %eax
	jbe	.L61
	movl	%ecx, %ebx
	movl	%edx, %eax
.L51:
	cmpl	$99, %eax
	ja	.L47
	leal	1(%rbx), %ecx
.L48:
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
	leaq	.LC2(%rip), %rdx
	call	memcpy
	cmpl	$99, %esi
	jbe	.L52
	.p2align 4,,10
	.p2align 3
.L53:
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
	ja	.L53
	cmpl	$999, %ecx
	ja	.L52
.L54:
	addl	$48, %esi
.L55:
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
.L52:
	addl	%esi, %esi
	leal	1(%rsi), %eax
	movzbl	32(%rsp,%rsi), %esi
	movzbl	32(%rsp,%rax), %eax
	movb	%al, 1(%r12)
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L59:
	leal	2(%rbx), %ecx
	addl	$1, %ebx
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L60:
	leal	3(%rbx), %ecx
	addl	$2, %ebx
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L61:
	addl	$3, %ebx
	jmp	.L48
.L46:
	leaq	16(%rcx), %rax
	movb	$0, 16(%rcx)
	movl	$1, %edx
	movl	$1, %ebp
	movq	%rax, (%rcx)
	movq	$0, 8(%rcx)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movq	(%rdi), %r12
	jmp	.L54
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
	jbe	.L73
	movq	%rdx, %rcx
	movl	$1, %ebx
	movabsq	$3777893186295716171, %r8
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L64:
	cmpq	$999, %rcx
	jbe	.L78
	cmpq	$9999, %rcx
	jbe	.L79
	movq	%rcx, %rax
	addl	$4, %ebx
	mulq	%r8
	cmpq	$99999, %rcx
	jbe	.L80
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L67:
	cmpq	$99, %rcx
	ja	.L64
	leal	1(%rbx), %edi
	movq	%rdi, %rbx
.L63:
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
	leaq	.LC2(%rip), %rdx
	call	memcpy
	cmpq	$99, %rbp
	jbe	.L68
	leal	-1(%rbx), %ecx
	movabsq	$2951479051793528259, %r9
	.p2align 4,,10
	.p2align 3
.L69:
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
	ja	.L69
.L68:
	leal	48(%rbp), %eax
	cmpq	$9, %rbp
	jbe	.L71
	movzbl	33(%rsp,%rbp,2), %eax
	movb	%al, 1(%r12)
	movzbl	32(%rsp,%rbp,2), %eax
.L71:
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
.L78:
	leal	2(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L79:
	leal	3(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L80:
	movl	%ebx, %edi
	jmp	.L63
.L73:
	movl	$1, %edi
	movl	$1, %ebx
	jmp	.L63
.L75:
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
	.uleb128 .L75-.LFB1389
	.uleb128 0
	.uleb128 .LEHB1-.LFB1389
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1389:
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	.def	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_:
.LFB12590:
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
	movl	%eax, %ebp
	je	.L92
	call	*%rsi
.LEHE3:
	cmpl	$34, (%rax)
	je	.L93
	testq	%rdi, %rdi
	je	.L84
	movq	40(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%rdi)
.L84:
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L94
	movl	%ebp, %eax
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
.L94:
	call	*%rsi
	movl	%r13d, (%rax)
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L93:
	movq	%r12, %rcx
.LEHB4:
	call	_ZSt20__throw_out_of_rangePKc
.L92:
	movq	%r12, %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L88:
	movq	%rax, %rbx
	call	*%rsi
	cmpl	$0, (%rax)
	je	.L95
.L87:
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L95:
	call	*%rsi
	movl	%r13d, (%rax)
	jmp	.L87
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA12590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12590-.LLSDACSB12590
.LLSDACSB12590:
	.uleb128 .LEHB2-.LFB12590
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB12590
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L88-.LFB12590
	.uleb128 0
	.uleb128 .LEHB4-.LFB12590
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L88-.LFB12590
	.uleb128 0
	.uleb128 .LEHB5-.LFB12590
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE12590:
	.section	.text$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	.def	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv:
.LFB13480:
	subq	$24, %rsp
	.seh_stackalloc	24
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	.seh_endprologue
	pcmpeqd	%xmm3, %xmm3
	movdqa	%xmm3, %xmm5
	movdqa	%xmm3, %xmm4
	pslld	$31, %xmm5
	psrld	$1, %xmm4
	psrld	$31, %xmm3
	leaq	896(%rcx), %rdx
	movq	%rcx, %rax
	.p2align 4,,10
	.p2align 3
.L97:
	movdqu	(%rax), %xmm1
	addq	$16, %rax
	movdqu	-12(%rax), %xmm0
	movdqu	1572(%rax), %xmm2
	pand	%xmm5, %xmm1
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pand	%xmm3, %xmm1
	psrld	$1, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	pslld	$3, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$9, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$5, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$2, %xmm0
	psubd	%xmm1, %xmm0
	pslld	$3, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm6
	pslld	$4, %xmm6
	paddd	%xmm6, %xmm0
	pslld	$5, %xmm0
	psubd	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movups	%xmm2, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L97
	movl	900(%rcx), %eax
	pcmpeqd	%xmm3, %xmm3
	movdqa	%xmm3, %xmm5
	movdqa	%xmm3, %xmm4
	movl	896(%rcx), %edx
	pslld	$31, %xmm5
	psrld	$1, %xmm4
	psrld	$31, %xmm3
	movl	%eax, %r8d
	andl	$-2147483648, %eax
	andl	$2147483647, %r8d
	andl	$-2147483648, %edx
	orl	%r8d, %edx
	movl	%edx, %r8d
	andl	$1, %edx
	shrl	%r8d
	xorl	2484(%rcx), %r8d
	negl	%edx
	andl	$-1727483681, %edx
	xorl	%r8d, %edx
	movl	904(%rcx), %r8d
	movl	%edx, 896(%rcx)
	movl	%r8d, %edx
	andl	$-2147483648, %r8d
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	andl	$1, %eax
	shrl	%edx
	xorl	2488(%rcx), %edx
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%edx, %eax
	movl	%eax, 900(%rcx)
	movl	908(%rcx), %eax
	andl	$2147483647, %eax
	orl	%r8d, %eax
	movl	%eax, %edx
	andl	$1, %eax
	shrl	%edx
	xorl	2492(%rcx), %edx
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%edx, %eax
	movl	%eax, 904(%rcx)
	leaq	2492(%rcx), %rdx
	leaq	908(%rcx), %rax
	.p2align 4,,10
	.p2align 3
.L98:
	movdqu	(%rax), %xmm1
	addq	$16, %rax
	movdqu	-12(%rax), %xmm0
	movdqu	-924(%rax), %xmm2
	pand	%xmm5, %xmm1
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pand	%xmm3, %xmm1
	psrld	$1, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	pslld	$3, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$9, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$5, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$2, %xmm0
	psubd	%xmm1, %xmm0
	pslld	$3, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm6
	pslld	$4, %xmm6
	paddd	%xmm6, %xmm0
	pslld	$5, %xmm0
	psubd	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movups	%xmm2, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L98
	movq	$0, 2496(%rcx)
	movl	(%rcx), %edx
	movl	2492(%rcx), %eax
	movaps	(%rsp), %xmm6
	andl	$2147483647, %edx
	andl	$-2147483648, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	andl	$1, %eax
	shrl	%edx
	xorl	1584(%rcx), %edx
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%edx, %eax
	movl	%eax, 2492(%rcx)
	addq	$24, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "stoi\0"
.LC7:
	.ascii "Unknown\0"
.LC8:
	.ascii "Windows\0"
	.align 8
.LC9:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC10:
	.ascii "ProcessorNameString\0"
.LC11:
	.ascii "~MHz\0"
.LC12:
	.ascii " MB\0"
	.align 8
.LC13:
	.ascii "========================================\12\0"
	.align 8
.LC14:
	.ascii "Polynomial Modular Add Benchmark (NTRU-style, large q)\12\0"
.LC15:
	.ascii "System Information:\12\0"
.LC16:
	.ascii "  Hostname: \0"
.LC17:
	.ascii "\12\0"
.LC18:
	.ascii "  OS: \0"
.LC19:
	.ascii "  CPU Model: \0"
.LC20:
	.ascii "  CPU MHz: \0"
.LC21:
	.ascii "  Memory: \0"
	.align 8
.LC22:
	.ascii "========================================\12\12\0"
.LC23:
	.ascii "N = \0"
.LC24:
	.ascii ", reps = \0"
.LC25:
	.ascii "\12\12\0"
.LC26:
	.ascii "results_poly_mod.csv\0"
	.align 8
.LC27:
	.ascii "ERROR: could not open results_poly_mod.csv for writing\12\0"
	.align 8
.LC28:
	.ascii "q,N,reps,classic,reist,speedup\12\0"
.LC30:
	.ascii "q = \0"
.LC31:
	.ascii "  classic : \0"
.LC32:
	.ascii " s\12\0"
.LC33:
	.ascii "  REIST   : \0"
.LC34:
	.ascii "  speedup : \0"
.LC35:
	.ascii "x\12\12\0"
.LC36:
	.ascii ",\0"
	.align 8
.LC37:
	.ascii "CSV written to results_poly_mod.csv\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB12543:
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
	subq	$3880, %rsp
	.seh_stackalloc	3880
	movaps	%xmm6, 3776(%rsp)
	.seh_savexmm	%xmm6, 3776
	movaps	%xmm7, 3792(%rsp)
	.seh_savexmm	%xmm7, 3792
	movaps	%xmm8, 3808(%rsp)
	.seh_savexmm	%xmm8, 3808
	movaps	%xmm9, 3824(%rsp)
	.seh_savexmm	%xmm9, 3824
	movaps	%xmm10, 3840(%rsp)
	.seh_savexmm	%xmm10, 3840
	movaps	%xmm11, 3856(%rsp)
	.seh_savexmm	%xmm11, 3856
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rbx
	call	__main
	cmpl	$1, %esi
	movl	$50000, 80(%rsp)
	movl	$1024, 84(%rsp)
	jg	.L238
.L102:
	movl	$16, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movabsq	$42949754565378627, %rsi
	movq	%rax, 88(%rsp)
	addq	$16, %rax
	movq	%rsi, -16(%rax)
	leaq	1264(%rsp), %rbp
	movabsq	$4294967326164771079, %rsi
	movq	%rsi, -8(%rax)
	movq	$16, 160(%rsp)
	movq	%rax, 104(%rsp)
.L103:
	movl	$12345, 1264(%rsp)
	movl	$1, %ecx
	movl	$12345, %edx
	leaq	1268(%rsp), %r8
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L107:
	movl	%edx, %eax
	addq	$4, %r8
	shrl	$30, %eax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rcx), %edx
	addq	$1, %rcx
	movl	%edx, -4(%r8)
	cmpq	$624, %rcx
	jne	.L107
	leaq	288(%rsp), %rax
	movb	$0, 288(%rsp)
	movq	%rax, 272(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	384(%rsp), %rax
	movq	%rax, 368(%rsp)
	leaq	416(%rsp), %rax
	movq	%rax, 400(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	304(%rsp), %rax
	movb	$0, 320(%rsp)
	leaq	196(%rsp), %rdx
	movq	$624, 3760(%rsp)
	leaq	528(%rsp), %rcx
	movb	$0, 352(%rsp)
	leaq	336(%rsp), %r13
	movq	$0, 280(%rsp)
	movq	$0, 312(%rsp)
	movq	$0, 344(%rsp)
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	$0, 408(%rsp)
	movb	$0, 416(%rsp)
	movl	$256, 196(%rsp)
	movq	%rax, 48(%rsp)
.LEHB7:
	call	*__imp_GetComputerNameA(%rip)
	leaq	368(%rsp), %rcx
	testl	%eax, %eax
	leaq	400(%rsp), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 96(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 48(%rsp)
	je	.L108
	leaq	528(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L109:
	leaq	272(%rsp), %rax
	leaq	400(%rsp), %rcx
	movq	%rax, 56(%rsp)
	leaq	.LC8(%rip), %rdx
	movq	%rcx, 96(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	336(%rsp), %r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	200(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	304(%rsp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, 48(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L227
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 48(%rsp)
.L110:
	movl	$64, 464(%rsp)
	leaq	464(%rsp), %rcx
	leaq	336(%rsp), %r13
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	je	.L113
	movq	472(%rsp), %rdx
	leaq	432(%rsp), %rcx
	leaq	336(%rsp), %r13
	shrq	$20, %rdx
	call	_ZNSt7__cxx119to_stringEy
.LEHE7:
	leaq	.LC12(%rip), %rdx
	leaq	432(%rsp), %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE8:
	leaq	784(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	784(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	784(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	432(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L113:
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
	leaq	.LC13(%rip), %rdx
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC16(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	376(%rsp), %r8
	movq	368(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$6, %r8d
	leaq	.LC18(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	408(%rsp), %r8
	movq	400(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$13, %r8d
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	280(%rsp), %r8
	movq	272(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC20(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	312(%rsp), %r8
	movq	304(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$10, %r8d
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	344(%rsp), %r8
	movq	336(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$4, %r8d
	leaq	.LC23(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	84(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movl	$9, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	.LC24(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	80(%rsp), %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	784(%rsp), %rax
	movl	$16, %r8d
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE9:
	movl	1032(%rsp), %eax
	andl	$5, %eax
	movl	%eax, 172(%rsp)
	jne	.L239
	movq	72(%rsp), %rcx
	leaq	.LC28(%rip), %rdx
.LEHB10:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movslq	84(%rsp), %r15
	leaq	208(%rsp), %rcx
	movq	%r15, %rdx
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE10:
	movq	224(%rsp), %rax
	leaq	240(%rsp), %rcx
	movq	%r15, %rdx
	movq	208(%rsp), %rsi
	movq	216(%rsp), %r12
	movq	%rax, 152(%rsp)
.LEHB11:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE11:
	movq	256(%rsp), %rax
	leaq	432(%rsp), %rcx
	movq	%r15, %rdx
	movq	240(%rsp), %rbx
	movq	%rax, 136(%rsp)
.LEHB12:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_.isra.0
.LEHE12:
	movq	448(%rsp), %rax
	movq	88(%rsp), %rdx
	cmpq	%rdx, 104(%rsp)
	movq	432(%rsp), %rdi
	movq	%rax, 144(%rsp)
	je	.L148
	movq	88(%rsp), %rax
	subq	%rsi, %r12
	pcmpeqd	%xmm8, %xmm8
	psrld	$1, %xmm8
	sarq	$2, %r12
	movsd	.LC29(%rip), %xmm7
	movq	%rax, 112(%rsp)
	leaq	(%rbx,%r15,4), %rax
	movq	%rax, 176(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 168(%rsp)
	leaq	-4(%rdi), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	cmpq	$8, %rdx
	seta	%dl
	subq	%rbx, %rax
	cmpq	$8, %rax
	seta	%al
	andl	%eax, %edx
	movb	%dl, 191(%rsp)
.L147:
	movl	84(%rsp), %edx
	movq	112(%rsp), %rax
	testl	%edx, %edx
	movl	(%rax), %r15d
	jle	.L133
	movq	%rbx, %r14
	movq	%rbx, 128(%rsp)
	movq	3760(%rsp), %r10
	movq	176(%rsp), %rbx
	movq	%rdi, 64(%rsp)
	movq	%rbp, %rdi
	movq	%rsi, %rbp
.L132:
	cmpq	$623, %r10
	ja	.L240
.L121:
	movl	1264(%rsp,%r10,4), %eax
	leaq	1(%r10), %rdx
	movq	%rdx, 3760(%rsp)
	movl	%eax, %r8d
	shrl	$11, %r8d
	xorl	%r8d, %eax
	movl	%eax, %r8d
	sall	$7, %r8d
	andl	$-1658038656, %r8d
	xorl	%r8d, %eax
	movl	%eax, %r8d
	sall	$15, %r8d
	andl	$-272236544, %r8d
	xorl	%r8d, %eax
	movl	%eax, %r8d
	shrl	$18, %r8d
	xorl	%r8d, %eax
	imulq	$1000001, %rax, %rax
	cmpl	$963001, %eax
	jbe	.L124
.L122:
	shrq	$32, %rax
	subl	$500000, %eax
	cmpq	$623, %rdx
	movl	%eax, (%rsi)
	ja	.L241
.L125:
	movl	1264(%rsp,%rdx,4), %eax
	leaq	1(%rdx), %r10
	movq	%r10, 3760(%rsp)
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
	imulq	$1000001, %rax, %rax
	cmpl	$963001, %eax
	ja	.L126
	pcmpeqd	%xmm4, %xmm4
	pcmpeqd	%xmm3, %xmm3
	leaq	896(%rdi), %r8
	pslld	$31, %xmm4
	psrld	$31, %xmm3
	leaq	2492(%rdi), %rdx
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L243:
	movl	1264(%rsp,%r10,4), %ecx
	addq	$1, %r10
.L128:
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
	imulq	$1000001, %rax, %rax
	cmpl	$963001, %eax
	ja	.L242
.L131:
	cmpq	$623, %r10
	jbe	.L243
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L129:
	movdqu	4(%rax), %xmm1
	addq	$16, %rax
	movdqa	-16(%rax), %xmm0
	pand	%xmm8, %xmm1
	movdqu	1572(%rax), %xmm5
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm2
	pslld	$3, %xmm0
	pxor	%xmm5, %xmm2
	paddd	%xmm1, %xmm0
	pslld	$9, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$5, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$2, %xmm0
	psubd	%xmm1, %xmm0
	pslld	$3, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$4, %xmm5
	paddd	%xmm5, %xmm0
	pslld	$5, %xmm0
	psubd	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movaps	%xmm2, -16(%rax)
	cmpq	%r8, %rax
	jne	.L129
	movl	2164(%rsp), %ecx
	movl	2160(%rsp), %eax
	movl	%ecx, %r9d
	andl	$-2147483648, %ecx
	andl	$2147483647, %r9d
	andl	$-2147483648, %eax
	orl	%r9d, %eax
	movl	%eax, %r9d
	andl	$1, %eax
	shrl	%r9d
	xorl	3748(%rsp), %r9d
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%r9d, %eax
	movl	2168(%rsp), %r9d
	movl	%eax, 2160(%rsp)
	movl	%r9d, %eax
	andl	$-2147483648, %r9d
	andl	$2147483647, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	andl	$1, %eax
	shrl	%ecx
	xorl	3752(%rsp), %ecx
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%ecx, %eax
	movl	%eax, 2164(%rsp)
	movl	2172(%rsp), %eax
	andl	$2147483647, %eax
	orl	%r9d, %eax
	movl	%eax, %ecx
	andl	$1, %eax
	shrl	%ecx
	xorl	3756(%rsp), %ecx
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%ecx, %eax
	movl	%eax, 2168(%rsp)
	leaq	908(%rdi), %rax
	.p2align 4,,10
	.p2align 3
.L130:
	movdqa	4(%rax), %xmm1
	addq	$16, %rax
	movdqu	-16(%rax), %xmm0
	pand	%xmm8, %xmm1
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm2
	pxor	-924(%rax), %xmm2
	pslld	$3, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$9, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$5, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$2, %xmm0
	psubd	%xmm1, %xmm0
	pslld	$3, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$4, %xmm5
	paddd	%xmm5, %xmm0
	pslld	$5, %xmm0
	psubd	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movups	%xmm2, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L130
	movl	1264(%rsp), %ecx
	movl	$1, %r10d
	movl	3756(%rsp), %eax
	movl	%ecx, %r9d
	andl	$2147483647, %r9d
	andl	$-2147483648, %eax
	orl	%r9d, %eax
	movl	%eax, %r9d
	andl	$1, %eax
	shrl	%r9d
	xorl	2848(%rsp), %r9d
	negl	%eax
	andl	$-1727483681, %eax
	xorl	%r9d, %eax
	movl	%eax, 3756(%rsp)
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L244:
	movq	%rdi, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3760(%rsp), %rax
.L123:
	leaq	1(%rax), %rdx
	movl	1264(%rsp,%rax,4), %eax
	movq	%rdx, 3760(%rsp)
	movl	%eax, %ecx
	shrl	$11, %ecx
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
	imulq	$1000001, %rax, %rax
	cmpl	$963001, %eax
	ja	.L122
.L124:
	cmpq	$623, %rdx
	movq	%rdx, %rax
	jbe	.L123
	jmp	.L244
.L242:
	movq	%r10, 3760(%rsp)
.L126:
	shrq	$32, %rax
	addq	$4, %r14
	addq	$4, %rsi
	subl	$500000, %eax
	movl	%eax, -4(%r14)
	cmpq	%r14, %rbx
	jne	.L132
	movq	%rbp, %rsi
	movq	128(%rsp), %rbx
	movq	%rdi, %rbp
	movq	64(%rsp), %rdi
.L133:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r9d, %r9d
	movl	80(%rsp), %r10d
	movq	%rax, %r14
	movl	168(%rsp), %eax
	leaq	1(%rax), %r8
	movl	80(%rsp), %eax
	testl	%eax, %eax
	jle	.L135
.L119:
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	jle	.L245
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L137:
	movl	(%rbx,%rcx,4), %eax
	addl	(%rsi,%rcx,4), %eax
	cltd
	idivl	%r15d
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jne	.L137
.L138:
	addl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L119
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm9, %xmm9
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm9
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm9
	movq	%rax, %r9
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	movl	%eax, %r11d
	negl	%eax
	testl	%r12d, %r12d
	movl	%eax, 64(%rsp)
	jle	.L164
	xorl	%r8d, %r8d
	cmpl	$3, 168(%rsp)
	jbe	.L140
	cmpb	$0, 191(%rsp)
	je	.L140
	movd	%r15d, %xmm4
	movl	%r12d, %ecx
	pshufd	$0, %xmm4, %xmm3
	movd	%r11d, %xmm4
	andl	$-4, %ecx
	pshufd	$0, %xmm4, %xmm10
	leal	1(%rcx), %r14d
	movd	%eax, %xmm4
	movl	%ecx, %edx
	movl	%r12d, %eax
	addl	$2, %ecx
	salq	$2, %rdx
	movl	%r14d, 128(%rsp)
	shrl	$2, %eax
	movl	%ecx, 184(%rsp)
	pshufd	$0, %xmm4, %xmm5
	pxor	%xmm4, %xmm4
	salq	$4, %rax
.L142:
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L141:
	movdqu	(%rsi,%rcx), %xmm2
	movdqu	(%rbx,%rcx), %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm5, %xmm0
	pcmpgtd	%xmm10, %xmm2
	pcmpeqd	%xmm4, %xmm0
	pand	%xmm3, %xmm2
	psubd	%xmm2, %xmm1
	pand	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%rdi,%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rax
	jne	.L141
	testb	$3, %r12b
	je	.L146
	movl	(%rbx,%rdx), %ecx
	xorl	%r14d, %r14d
	addl	(%rsi,%rdx), %ecx
	cmpl	%ecx, %r11d
	movl	%ecx, %r10d
	cmovl	%r15d, %r14d
	subl	%r14d, %r10d
	cmpl	%ecx, 64(%rsp)
	movl	$0, %ecx
	cmovge	%r15d, %ecx
	addl	%ecx, %r10d
	cmpl	128(%rsp), %r12d
	movl	%r10d, (%rdi,%rdx)
	jle	.L146
	movl	4(%rbx,%rdx), %ecx
	xorl	%r10d, %r10d
	addl	4(%rsi,%rdx), %ecx
	cmpl	%ecx, %r11d
	cmovl	%r15d, %r10d
	movl	%r10d, %r14d
	movl	%ecx, %r10d
	subl	%r14d, %r10d
	cmpl	%ecx, 64(%rsp)
	movl	$0, %ecx
	cmovge	%r15d, %ecx
	addl	%r10d, %ecx
	cmpl	%r12d, 184(%rsp)
	movl	%ecx, 4(%rdi,%rdx)
	jge	.L146
	movl	8(%rsi,%rdx), %ecx
	xorl	%r10d, %r10d
	addl	8(%rbx,%rdx), %ecx
	cmpl	%ecx, %r11d
	cmovl	%r15d, %r10d
	movl	%r10d, %r14d
	movl	%ecx, %r10d
	subl	%r14d, %r10d
	cmpl	%ecx, 64(%rsp)
	movl	$0, %ecx
	cmovge	%r15d, %ecx
	addl	%r10d, %ecx
	movl	%ecx, 8(%rdi,%rdx)
.L146:
	addl	$1, %r8d
	cmpl	%r8d, 80(%rsp)
	jne	.L142
.L164:
	movq	%r9, 64(%rsp)
	pxor	%xmm10, %xmm10
	movapd	%xmm9, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	64(%rsp), %rax
	movl	$4, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	cvtsi2sdq	%rax, %xmm10
	divsd	%xmm7, %xmm10
	divsd	%xmm10, %xmm11
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%r15d, %edx
	call	_ZNSolsEi
	leaq	.LC17(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC31(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC35(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	72(%rsp), %rcx
	movl	%r15d, %edx
	call	_ZNSolsEi
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r15
	leaq	.LC36(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	84(%rsp), %edx
	movq	%r15, %rcx
	call	_ZNSolsEi
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r15
	leaq	.LC36(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	80(%rsp), %edx
	movq	%r15, %rcx
	call	_ZNSolsEi
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r15
	leaq	.LC36(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm9, %xmm1
	movq	%r15, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r15
	leaq	.LC36(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm10, %xmm1
	movq	%r15, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %r15
	leaq	.LC36(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm11, %xmm1
	movq	%r15, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC17(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$4, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	%rax, 104(%rsp)
	jne	.L147
.L148:
	movq	72(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE13:
	testq	%rdi, %rdi
	je	.L149
	movq	144(%rsp), %rdx
	movq	%rdi, %rcx
	subq	%rdi, %rdx
	call	_ZdlPvy
.L149:
	testq	%rbx, %rbx
	je	.L150
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	subq	%rbx, %rdx
	call	_ZdlPvy
.L150:
	testq	%rsi, %rsi
	je	.L115
	movq	152(%rsp), %rdx
	movq	%rsi, %rcx
	subq	%rsi, %rdx
	call	_ZdlPvy
.L115:
	movq	72(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	160(%rsp), %rdx
	movq	88(%rsp), %rcx
	call	_ZdlPvy
	movl	172(%rsp), %eax
	movaps	3776(%rsp), %xmm6
	movaps	3792(%rsp), %xmm7
	movaps	3808(%rsp), %xmm8
	movaps	3824(%rsp), %xmm9
	movaps	3840(%rsp), %xmm10
	movaps	3856(%rsp), %xmm11
	addq	$3880, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L240:
	movq	%rdi, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3760(%rsp), %r10
	jmp	.L121
.L241:
	movq	%rdi, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3760(%rsp), %rdx
	jmp	.L125
.L245:
	addl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L138
.L135:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm9, %xmm9
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm9
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm9
	movq	%rax, %r9
	jmp	.L164
.L140:
	movl	168(%rsp), %eax
	movq	%r9, 128(%rsp)
	movl	%r8d, %r9d
	movq	%rbp, %r8
	movl	64(%rsp), %ebp
	xorl	%ecx, %ecx
	leaq	1(%rax), %r10
.L145:
	xorl	%eax, %eax
	movl	%r9d, 64(%rsp)
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L144:
	movl	(%rsi,%rax,4), %edx
	movl	%ecx, %r14d
	addl	(%rbx,%rax,4), %edx
	cmpl	%edx, %r11d
	movl	%edx, %r9d
	cmovl	%r15d, %r14d
	subl	%r14d, %r9d
	cmpl	%edx, %ebp
	movl	%ecx, %edx
	cmovge	%r15d, %edx
	addl	%r9d, %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r10
	jne	.L144
	movl	64(%rsp), %r9d
	addl	$1, %r9d
	cmpl	%r9d, 80(%rsp)
	jne	.L145
	movq	128(%rsp), %r9
	movq	%r8, %rbp
	jmp	.L164
.L227:
	leaq	784(%rsp), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	200(%rsp), %rcx
	movq	%rax, 72(%rsp)
	leaq	432(%rsp), %rbx
	movq	__imp_RegQueryValueExA(%rip), %rdi
	movq	%rax, 32(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	304(%rsp), %rax
	movq	%rbx, 40(%rsp)
	leaq	.LC10(%rip), %rdx
	movq	%rax, 48(%rsp)
	leaq	336(%rsp), %r13
	movl	$256, 432(%rsp)
.LEHB14:
	call	*%rdi
	testl	%eax, %eax
	leaq	272(%rsp), %rax
	movq	%rax, 56(%rsp)
	jne	.L111
	movq	72(%rsp), %rdx
	leaq	304(%rsp), %rax
	leaq	464(%rsp), %rcx
	movq	%rax, 48(%rsp)
	leaq	336(%rsp), %r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	272(%rsp), %rax
	leaq	464(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L111:
	movq	72(%rsp), %rax
	movq	%rbx, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	200(%rsp), %rcx
	leaq	.LC11(%rip), %rdx
	movl	$256, 432(%rsp)
	leaq	336(%rsp), %r13
	movq	%rax, 32(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 48(%rsp)
	call	*%rdi
	leaq	304(%rsp), %rsi
	testl	%eax, %eax
	movq	%rsi, 48(%rsp)
	je	.L246
.L112:
	movq	200(%rsp), %rcx
	leaq	336(%rsp), %r13
	call	*__imp_RegCloseKey(%rip)
	jmp	.L110
.L108:
	leaq	.LC7(%rip), %rdx
	leaq	336(%rsp), %r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE14:
	jmp	.L109
.L239:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC27(%rip), %rdx
.LEHB15:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE15:
	movl	$1, 172(%rsp)
	jmp	.L115
.L238:
	movq	8(%rbx), %rdx
	leaq	1264(%rsp), %rbp
	movq	%rbp, %rcx
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE16:
	movq	1264(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rdx
	leaq	strtol(%rip), %rcx
.LEHB17:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE17:
	movq	%rbp, %rcx
	movl	%eax, 84(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, %esi
	movl	$50000, 80(%rsp)
	je	.L102
	movq	16(%rbx), %rdx
	movq	%rbp, %rcx
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE18:
	movq	1264(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rdx
	leaq	strtol(%rip), %rcx
.LEHB19:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE19:
	movq	%rbp, %rcx
	movl	%eax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$3, %esi
	je	.L102
	movq	24(%rbx), %rdx
	movq	%rbp, %rcx
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE20:
	movq	1264(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rdx
	leaq	strtol(%rip), %rcx
.LEHB21:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	movl	$4, %ecx
	movl	%eax, %ebx
	call	_Znwy
.LEHE21:
	movl	%ebx, (%rax)
	movq	%rbp, %rcx
	movq	%rax, 88(%rsp)
	addq	$4, %rax
	movq	%rax, 104(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	$4, 160(%rsp)
	jmp	.L103
.L246:
	movl	784(%rsp), %edx
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	48(%rsp), %rcx
	leaq	464(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L112
.L173:
.L237:
	movq	%rbp, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L106:
	movq	%rbx, %rcx
.LEHB22:
	call	_Unwind_Resume
.LEHE22:
.L174:
	jmp	.L237
.L181:
	movq	%rax, %rbx
	jmp	.L106
.L179:
	movq	%rax, %rbp
.L159:
	testq	%rbx, %rbx
	je	.L160
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	subq	%rbx, %rdx
	call	_ZdlPvy
.L160:
	movq	%rbp, %rbx
.L161:
	testq	%rsi, %rsi
	jne	.L247
.L163:
	movq	72(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L156:
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	104(%rsp), %rdx
	movq	88(%rsp), %rcx
	subq	%rcx, %rdx
	call	_ZdlPvy
	jmp	.L106
.L178:
	movq	%rax, %rbx
	jmp	.L161
.L180:
	testq	%rdi, %rdi
	movq	%rax, %rbp
	je	.L159
	movq	144(%rsp), %rdx
	movq	%rdi, %rcx
	subq	%rdi, %rdx
	call	_ZdlPvy
	jmp	.L159
.L247:
	movq	152(%rsp), %rdx
	movq	%rsi, %rcx
	subq	%rsi, %rdx
	call	_ZdlPvy
	jmp	.L163
.L177:
	movq	%rax, %rbx
	jmp	.L163
.L176:
	leaq	432(%rsp), %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	336(%rsp), %r13
	jmp	.L156
.L175:
	movq	%rax, %rbx
	jmp	.L156
.L172:
	jmp	.L237
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA12543:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12543-.LLSDACSB12543
.LLSDACSB12543:
	.uleb128 .LEHB6-.LFB12543
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L181-.LFB12543
	.uleb128 0
	.uleb128 .LEHB7-.LFB12543
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L175-.LFB12543
	.uleb128 0
	.uleb128 .LEHB8-.LFB12543
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L176-.LFB12543
	.uleb128 0
	.uleb128 .LEHB9-.LFB12543
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L175-.LFB12543
	.uleb128 0
	.uleb128 .LEHB10-.LFB12543
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L177-.LFB12543
	.uleb128 0
	.uleb128 .LEHB11-.LFB12543
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L178-.LFB12543
	.uleb128 0
	.uleb128 .LEHB12-.LFB12543
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L179-.LFB12543
	.uleb128 0
	.uleb128 .LEHB13-.LFB12543
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L180-.LFB12543
	.uleb128 0
	.uleb128 .LEHB14-.LFB12543
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L175-.LFB12543
	.uleb128 0
	.uleb128 .LEHB15-.LFB12543
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L177-.LFB12543
	.uleb128 0
	.uleb128 .LEHB16-.LFB12543
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L181-.LFB12543
	.uleb128 0
	.uleb128 .LEHB17-.LFB12543
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L172-.LFB12543
	.uleb128 0
	.uleb128 .LEHB18-.LFB12543
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L181-.LFB12543
	.uleb128 0
	.uleb128 .LEHB19-.LFB12543
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L173-.LFB12543
	.uleb128 0
	.uleb128 .LEHB20-.LFB12543
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L181-.LFB12543
	.uleb128 0
	.uleb128 .LEHB21-.LFB12543
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L174-.LFB12543
	.uleb128 0
	.uleb128 .LEHB22-.LFB12543
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE12543:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC29:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.strtol, "dr"
	.p2align	3, 0
	.globl	.refptr.strtol
	.linkonce	discard
.refptr.strtol:
	.quad	strtol
