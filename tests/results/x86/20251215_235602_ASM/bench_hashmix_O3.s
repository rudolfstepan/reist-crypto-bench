	.file	"bench_hashmix.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB12184:
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
.LFB12185:
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
.LFB12187:
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
.LFB12188:
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
	jbe	.L37
	movl	%edx, %eax
	movl	$1, %ebx
	movl	$3518437209, %r8d
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L38:
	cmpl	$999, %eax
	jbe	.L50
	cmpl	$9999, %eax
	jbe	.L51
	leal	4(%rbx), %ecx
	movl	%eax, %edx
	imulq	%r8, %rdx
	shrq	$45, %rdx
	cmpl	$99999, %eax
	jbe	.L52
	movl	%ecx, %ebx
	movl	%edx, %eax
.L42:
	cmpl	$99, %eax
	ja	.L38
	leal	1(%rbx), %ecx
.L39:
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
	jbe	.L43
	.p2align 4,,10
	.p2align 3
.L44:
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
	ja	.L44
	cmpl	$999, %ecx
	ja	.L43
.L45:
	addl	$48, %esi
.L46:
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
.L43:
	addl	%esi, %esi
	leal	1(%rsi), %eax
	movzbl	32(%rsp,%rsi), %esi
	movzbl	32(%rsp,%rax), %eax
	movb	%al, 1(%r12)
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L50:
	leal	2(%rbx), %ecx
	addl	$1, %ebx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L51:
	leal	3(%rbx), %ecx
	addl	$2, %ebx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L52:
	addl	$3, %ebx
	jmp	.L39
.L37:
	leaq	16(%rcx), %rax
	movb	$0, 16(%rcx)
	movl	$1, %edx
	movl	$1, %ebp
	movq	%rax, (%rcx)
	movq	$0, 8(%rcx)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movq	(%rdi), %r12
	jmp	.L45
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
	jbe	.L64
	movq	%rdx, %rcx
	movl	$1, %ebx
	movabsq	$3777893186295716171, %r8
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L55:
	cmpq	$999, %rcx
	jbe	.L69
	cmpq	$9999, %rcx
	jbe	.L70
	movq	%rcx, %rax
	addl	$4, %ebx
	mulq	%r8
	cmpq	$99999, %rcx
	jbe	.L71
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L58:
	cmpq	$99, %rcx
	ja	.L55
	leal	1(%rbx), %edi
	movq	%rdi, %rbx
.L54:
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
	jbe	.L59
	leal	-1(%rbx), %ecx
	movabsq	$2951479051793528259, %r9
	.p2align 4,,10
	.p2align 3
.L60:
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
	ja	.L60
.L59:
	leal	48(%rbp), %eax
	cmpq	$9, %rbp
	jbe	.L62
	movzbl	33(%rsp,%rbp,2), %eax
	movb	%al, 1(%r12)
	movzbl	32(%rsp,%rbp,2), %eax
.L62:
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
.L69:
	leal	2(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L70:
	leal	3(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L71:
	movl	%ebx, %edi
	jmp	.L54
.L64:
	movl	$1, %edi
	movl	$1, %ebx
	jmp	.L54
.L66:
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
	.uleb128 .L66-.LFB1389
	.uleb128 0
	.uleb128 .LEHB1-.LFB1389
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1389:
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	.def	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_:
.LFB11512:
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
	je	.L83
	call	*%rsi
.LEHE3:
	cmpl	$34, (%rax)
	je	.L84
	testq	%rdi, %rdi
	je	.L75
	movq	40(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%rdi)
.L75:
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L85
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
.L85:
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
.L84:
	movq	%r12, %rcx
.LEHB4:
	call	_ZSt20__throw_out_of_rangePKc
.L83:
	movq	%r12, %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L79:
	movq	%rax, %rbx
	call	*%rsi
	cmpl	$0, (%rax)
	je	.L86
.L78:
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L86:
	call	*%rsi
	movl	%r13d, (%rax)
	jmp	.L78
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11512:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11512-.LLSDACSB11512
.LLSDACSB11512:
	.uleb128 .LEHB2-.LFB11512
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11512
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L79-.LFB11512
	.uleb128 0
	.uleb128 .LEHB4-.LFB11512
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L79-.LFB11512
	.uleb128 0
	.uleb128 .LEHB5-.LFB11512
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE11512:
	.section	.text$_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "stoull\0"
.LC3:
	.ascii "Unknown\0"
.LC4:
	.ascii "Windows\0"
	.align 8
.LC5:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC6:
	.ascii "ProcessorNameString\0"
.LC7:
	.ascii "~MHz\0"
.LC8:
	.ascii " MB\0"
	.align 8
.LC9:
	.ascii "========================================\12\0"
	.align 8
.LC10:
	.ascii "Hashmix benchmark (classic % vs REIST reduction)\12\0"
.LC11:
	.ascii "System Information:\12\0"
.LC12:
	.ascii "  Hostname: \0"
.LC13:
	.ascii "\12\0"
.LC14:
	.ascii "  OS: \0"
.LC15:
	.ascii "  CPU Model: \0"
.LC16:
	.ascii "  CPU MHz: \0"
.LC17:
	.ascii "  Memory: \0"
	.align 8
.LC18:
	.ascii "========================================\12\12\0"
.LC19:
	.ascii "Iterations N = \0"
.LC21:
	.ascii "M = \0"
.LC22:
	.ascii "\0"
.LC23:
	.ascii "  classic : \0"
.LC24:
	.ascii "  REIST   : \0"
.LC26:
	.ascii "  speedup : \0"
.LC27:
	.ascii "x (classic / REIST)\0"
.LC28:
	.ascii "  sink values: \0"
.LC29:
	.ascii " / \0"
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
	subq	$936, %rsp
	.seh_stackalloc	936
	movaps	%xmm6, 880(%rsp)
	.seh_savexmm	%xmm6, 880
	movaps	%xmm7, 896(%rsp)
	.seh_savexmm	%xmm7, 896
	movaps	%xmm8, 912(%rsp)
	.seh_savexmm	%xmm8, 912
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %esi
	jg	.L139
	movabsq	$1442695040888963407, %rbp
	movl	$100000000, %r14d
.L88:
	movl	$32, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	$1000003, (%rax)
	movq	$10000019, 8(%rax)
	movq	$100000007, 16(%rax)
	movq	$1000000007, 24(%rax)
	movq	%rax, 104(%rsp)
	addq	$32, %rax
	movq	%rax, 64(%rsp)
	movq	$32, 120(%rsp)
.L89:
	leaq	160(%rsp), %rax
	movq	$0, 152(%rsp)
	movq	%rax, 144(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 272(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	208(%rsp), %rax
	movb	$0, 160(%rsp)
	leaq	132(%rsp), %rdx
	movb	$0, 192(%rsp)
	leaq	368(%rsp), %rcx
	movq	$0, 184(%rsp)
	movq	$0, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	$0, 248(%rsp)
	movb	$0, 256(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movl	$256, 132(%rsp)
	movq	%rax, 72(%rsp)
.LEHB7:
	call	*__imp_GetComputerNameA(%rip)
	leaq	240(%rsp), %rcx
	testl	%eax, %eax
	leaq	272(%rsp), %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
	je	.L93
	leaq	368(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L94:
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	leaq	272(%rsp), %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC4(%rip), %rdx
	movq	%rcx, 96(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	208(%rsp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, 72(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L134
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	leaq	624(%rsp), %rbx
	movq	%rax, 80(%rsp)
.L95:
	leaq	208(%rsp), %rax
	movq	%rbx, %rcx
	movl	$64, 624(%rsp)
	movq	%rax, 72(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	jne	.L136
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
.L98:
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
	leaq	.LC9(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC10(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC9(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC11(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC12(%rip), %rdx
	movl	$12, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	248(%rsp), %r8
	movq	%r13, %rcx
	movq	240(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC14(%rip), %rdx
	movl	$6, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	280(%rsp), %r8
	movq	%r13, %rcx
	movq	272(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC15(%rip), %rdx
	movl	$13, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	152(%rsp), %r8
	movq	%r13, %rcx
	movq	144(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC16(%rip), %rdx
	movl	$11, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	184(%rsp), %r8
	movq	%r13, %rcx
	movq	176(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rdx
	movl	$10, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	216(%rsp), %r8
	movq	%r13, %rcx
	movq	208(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC18(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC19(%rip), %rdx
	movl	$15, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r14, %rdx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	104(%rsp), %rsi
	cmpq	%rsi, 64(%rsp)
	je	.L106
	movsd	.LC20(%rip), %xmm8
	movq	%rsi, %r15
	movabsq	$6364136223846793005, %r12
	.p2align 4,,10
	.p2align 3
.L105:
	movq	(%r15), %rdi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	testq	%r14, %r14
	movq	%rax, %rbx
	je	.L100
	movabsq	$1311768467294899695, %rdx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L101:
	imulq	%r12, %rdx
	addq	$1, %rcx
	leaq	(%rdx,%rbp), %rax
	xorl	%edx, %edx
	divq	%rdi
	cmpq	%rcx, %r14
	jne	.L101
	movq	%rcx, 56(%rsp)
	movq	%rdx, %rsi
	pxor	%xmm7, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rdi, %r11
	xorl	%r8d, %r8d
	divsd	%xmm8, %xmm7
	shrq	$63, %r11
	movq	56(%rsp), %rcx
	xorl	%r9d, %r9d
	addq	%rdi, %r11
	movq	%rax, 48(%rsp)
	movabsq	$1311768467294899695, %rax
	sarq	%r11
	movq	%r11, %r10
	negq	%r10
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L102:
	imulq	%r12, %rax
	movq	%r9, %rbx
	addq	%rbp, %rax
	cqto
	idivq	%rdi
	cmpq	%rdx, %r11
	movq	%rdx, %rax
	cmovl	%rdi, %rbx
	subq	%rbx, %rax
	cmpq	%rdx, %r10
	movq	%r9, %rdx
	cmovge	%rdi, %rdx
	addq	$1, %r8
	addq	%rdx, %rax
	cmpq	%rcx, %r8
	jne	.L102
	movq	%rax, %rbx
.L112:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	48(%rsp), %rax
	movq	%r13, %rcx
	pxor	%xmm6, %xmm6
	movl	$4, %r8d
	leaq	.LC21(%rip), %rdx
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm8, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC22(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC23(%rip), %rdx
	movl	$12, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC24(%rip), %rdx
	movl	$12, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	jbe	.L103
	leaq	.LC26(%rip), %rdx
	movl	$12, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r13, %rcx
	divsd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC27(%rip), %rdx
	movl	$19, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L103:
	leaq	.LC28(%rip), %rdx
	movl	$15, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	0(%r13), %rax
	movq	%r13, %rcx
	movq	-24(%rax), %rdx
	addq	%r13, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	movq	%rsi, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	xorl	%r8d, %r8d
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC22(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$8, %r15
	cmpq	%r15, 64(%rsp)
	jne	.L105
.L106:
	movq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	112(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	120(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZdlPvy
	nop
	movaps	880(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	896(%rsp), %xmm7
	movaps	912(%rsp), %xmm8
	addq	$936, %rsp
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
.L100:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm7, %xmm7
	movabsq	$1311768467294899695, %rsi
	subq	%rbx, %rax
	movq	%rsi, %rbx
	cvtsi2sdq	%rax, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm8, %xmm7
	movq	%rax, 48(%rsp)
	jmp	.L112
.L136:
	movq	632(%rsp), %rdx
	leaq	208(%rsp), %rax
	leaq	304(%rsp), %rcx
	movq	%rax, 72(%rsp)
	shrq	$20, %rdx
	call	_ZNSt7__cxx119to_stringEy
.LEHE7:
	leaq	.LC8(%rip), %rdx
	leaq	304(%rsp), %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE8:
	leaq	336(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	208(%rsp), %rax
	leaq	336(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	336(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	304(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L98
.L93:
	leaq	.LC3(%rip), %rdx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	jmp	.L94
.L134:
	leaq	144(%rsp), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	136(%rsp), %rcx
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	movq	__imp_RegQueryValueExA(%rip), %rdi
	leaq	304(%rsp), %rsi
	movq	%rax, 80(%rsp)
	leaq	624(%rsp), %rbx
	movq	%rsi, 40(%rsp)
	leaq	208(%rsp), %rax
	movq	%rbx, 32(%rsp)
	leaq	.LC6(%rip), %rdx
	movq	%rax, 72(%rsp)
	movl	$256, 304(%rsp)
	call	*%rdi
	testl	%eax, %eax
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	jne	.L96
	leaq	176(%rsp), %rax
	movq	%rbx, %rdx
	movq	%rax, 80(%rsp)
	leaq	336(%rsp), %rcx
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	144(%rsp), %rax
	leaq	336(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	336(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L96:
	leaq	176(%rsp), %rax
	movq	%rsi, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 80(%rsp)
	leaq	208(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rbx, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	movl	$256, 304(%rsp)
	movq	%rax, 72(%rsp)
	call	*%rdi
	leaq	176(%rsp), %rsi
	testl	%eax, %eax
	movq	%rsi, 80(%rsp)
	je	.L140
.L97:
	leaq	208(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rax, 72(%rsp)
	call	*__imp_RegCloseKey(%rip)
.LEHE9:
	jmp	.L95
.L139:
	movq	8(%rdi), %rdx
	leaq	624(%rsp), %rbx
	movq	%rbx, %rcx
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE10:
	movq	624(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC2(%rip), %rdx
	leaq	strtoull(%rip), %rcx
.LEHB11:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE11:
	movabsq	$1442695040888963407, %rbp
	movq	%rbx, %rcx
	movq	%rax, %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, %esi
	je	.L88
	movq	16(%rdi), %rdx
	movq	%rbx, %rcx
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE12:
	movq	624(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC2(%rip), %rdx
	leaq	strtoull(%rip), %rcx
.LEHB13:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
.LEHE13:
	movq	%rbx, %rcx
	movq	%rax, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$3, %esi
	je	.L88
	movq	24(%rdi), %rdx
	movq	%rbx, %rcx
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE14:
	movq	624(%rsp), %r8
	movl	$10, 32(%rsp)
	xorl	%r9d, %r9d
	leaq	.LC2(%rip), %rdx
	leaq	strtoull(%rip), %rcx
.LEHB15:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_
	movl	$8, %ecx
	movq	%rax, %rsi
	call	_Znwy
.LEHE15:
	movq	%rsi, (%rax)
	movq	%rbx, %rcx
	movq	%rax, 104(%rsp)
	addq	$8, %rax
	movq	%rax, 64(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	$8, 120(%rsp)
	jmp	.L89
.L140:
	movl	624(%rsp), %edx
	leaq	336(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	80(%rsp), %rcx
	leaq	336(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	336(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L97
.L119:
	leaq	304(%rsp), %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
.L111:
	movq	96(%rsp), %rcx
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	112(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	80(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L92:
	movq	%rsi, %rcx
.LEHB16:
	call	_Unwind_Resume
.LEHE16:
.L115:
.L138:
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L92
.L116:
	jmp	.L138
.L117:
	jmp	.L138
.L118:
	movq	%rax, %rbx
	jmp	.L111
.L120:
	movq	%rax, %rsi
	jmp	.L92
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
	.uleb128 .L120-.LFB11429
	.uleb128 0
	.uleb128 .LEHB7-.LFB11429
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L118-.LFB11429
	.uleb128 0
	.uleb128 .LEHB8-.LFB11429
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L119-.LFB11429
	.uleb128 0
	.uleb128 .LEHB9-.LFB11429
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L118-.LFB11429
	.uleb128 0
	.uleb128 .LEHB10-.LFB11429
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L120-.LFB11429
	.uleb128 0
	.uleb128 .LEHB11-.LFB11429
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L115-.LFB11429
	.uleb128 0
	.uleb128 .LEHB12-.LFB11429
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L120-.LFB11429
	.uleb128 0
	.uleb128 .LEHB13-.LFB11429
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L116-.LFB11429
	.uleb128 0
	.uleb128 .LEHB14-.LFB11429
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L120-.LFB11429
	.uleb128 0
	.uleb128 .LEHB15-.LFB11429
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L117-.LFB11429
	.uleb128 0
	.uleb128 .LEHB16-.LFB11429
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE11429:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
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
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	strtoull;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr.strtoull, "dr"
	.p2align	3, 0
	.globl	.refptr.strtoull
	.linkonce	discard
.refptr.strtoull:
	.quad	strtoull
