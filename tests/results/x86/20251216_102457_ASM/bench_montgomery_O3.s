	.file	"bench_montgomery.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB12209:
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
.LFB12210:
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
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB12211:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	je	.L24
	movq	%rdx, %rcx
	movq	%rdx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L24:
	movq	(%rcx), %rax
	addq	-24(%rax), %rbx
	movl	32(%rbx), %edx
	movq	%rbx, %rcx
	orl	$1, %edx
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
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
.LFB12213:
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
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0:
.LFB12216:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L38
	movq	%rcx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rax, %r8
	addq	$56, %rsp
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L38:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$1, %edx
	addq	$56, %rsp
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
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
	jbe	.L40
	movl	%edx, %eax
	movl	$1, %ebx
	movl	$3518437209, %r8d
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L41:
	cmpl	$999, %eax
	jbe	.L53
	cmpl	$9999, %eax
	jbe	.L54
	leal	4(%rbx), %ecx
	movl	%eax, %edx
	imulq	%r8, %rdx
	shrq	$45, %rdx
	cmpl	$99999, %eax
	jbe	.L55
	movl	%ecx, %ebx
	movl	%edx, %eax
.L45:
	cmpl	$99, %eax
	ja	.L41
	leal	1(%rbx), %ecx
.L42:
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
	jbe	.L46
	.p2align 4,,10
	.p2align 3
.L47:
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
	ja	.L47
	cmpl	$999, %ecx
	ja	.L46
.L48:
	addl	$48, %esi
.L49:
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
.L46:
	addl	%esi, %esi
	leal	1(%rsi), %eax
	movzbl	32(%rsp,%rsi), %esi
	movzbl	32(%rsp,%rax), %eax
	movb	%al, 1(%r12)
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L53:
	leal	2(%rbx), %ecx
	addl	$1, %ebx
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L54:
	leal	3(%rbx), %ecx
	addl	$2, %ebx
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L55:
	addl	$3, %ebx
	jmp	.L42
.L40:
	leaq	16(%rcx), %rax
	movb	$0, 16(%rcx)
	movl	$1, %edx
	movl	$1, %ebp
	movq	%rax, (%rcx)
	movq	$0, 8(%rcx)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movq	(%rdi), %r12
	jmp	.L48
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
	jbe	.L67
	movq	%rdx, %rcx
	movl	$1, %ebx
	movabsq	$3777893186295716171, %r8
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L58:
	cmpq	$999, %rcx
	jbe	.L72
	cmpq	$9999, %rcx
	jbe	.L73
	movq	%rcx, %rax
	addl	$4, %ebx
	mulq	%r8
	cmpq	$99999, %rcx
	jbe	.L74
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L61:
	cmpq	$99, %rcx
	ja	.L58
	leal	1(%rbx), %edi
	movq	%rdi, %rbx
.L57:
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
	jbe	.L62
	leal	-1(%rbx), %ecx
	movabsq	$2951479051793528259, %r9
	.p2align 4,,10
	.p2align 3
.L63:
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
	ja	.L63
.L62:
	leal	48(%rbp), %eax
	cmpq	$9, %rbp
	jbe	.L65
	movzbl	33(%rsp,%rbp,2), %eax
	movb	%al, 1(%r12)
	movzbl	32(%rsp,%rbp,2), %eax
.L65:
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
.L72:
	leal	2(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L73:
	leal	3(%rbx), %edi
	movq	%rdi, %rbx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L74:
	movl	%ebx, %edi
	jmp	.L57
.L67:
	movl	$1, %edi
	movl	$1, %ebx
	jmp	.L57
.L69:
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
	.uleb128 .L69-.LFB1389
	.uleb128 0
	.uleb128 .LEHB1-.LFB1389
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1389:
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.seh_endproc
	.text
	.p2align 4
	.globl	_Z14classic_modmulyyy
	.def	_Z14classic_modmulyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14classic_modmulyyy
_Z14classic_modmulyyy:
.LFB11437:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r8, 32(%rsp)
	movq	$0, 40(%rsp)
	mulq	%rdx
	leaq	48(%rsp), %rcx
	movq	%rdx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	__umodti3
	movq	%xmm0, %rax
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z14classic_modaddyyy
	.def	_Z14classic_modaddyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14classic_modaddyyy
_Z14classic_modaddyyy:
.LFB11438:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z12reist_modaddxxx
	.def	_Z12reist_modaddxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12reist_modaddxxx
_Z12reist_modaddxxx:
.LFB11439:
	.seh_endprologue
	movq	%r8, %rax
	addq	%rdx, %rcx
	xorl	%edx, %edx
	shrq	$63, %rax
	movq	%rdx, %r10
	movq	%rcx, %r9
	addq	%r8, %rax
	sarq	%rax
	cmpq	%rcx, %rax
	cmovl	%r8, %r10
	negq	%rax
	subq	%r10, %r9
	cmpq	%rcx, %rax
	cmovl	%rdx, %r8
	leaq	(%r8,%r9), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z12reist_modmulxxx
	.def	_Z12reist_modmulxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12reist_modmulxxx
_Z12reist_modmulxxx:
.LFB11440:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r8, %rbx
	movq	%r8, 32(%rsp)
	imulq	%rdx
	leaq	48(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%r8, %rax
	sarq	$63, %rax
	movq	%rdx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 40(%rsp)
	call	__modti3
	movq	%rbx, %rdx
	shrq	$63, %rdx
	movq	%xmm0, %rax
	addq	%rbx, %rdx
	sarq	%rdx
	cmpq	%rdx, %rax
	jle	.L79
	subq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	negq	%rdx
	addq	%rax, %rbx
	cmpq	%rax, %rdx
	cmovge	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "stoll\0"
.LC3:
	.ascii "N must be > 0\12\0"
.LC4:
	.ascii "stoull\0"
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
	.ascii "REIST vs Montgomery Arithmetic Benchmark\12\0"
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
	.ascii "Total operations per modulus N = \0"
.LC22:
	.ascii "\12\12\0"
.LC23:
	.ascii "Testing scenarios:\12\0"
.LC24:
	.ascii "  1. Modular Addition\12\0"
.LC25:
	.ascii "  2. Modular Multiplication\12\0"
	.align 8
.LC26:
	.ascii "  3. Montgomery Multiplication (with conversion overhead)\12\12\0"
.LC27:
	.ascii "Running benchmarks...\12\12\0"
.LC28:
	.ascii "Modulus = \0"
.LC29:
	.ascii "\12--- Modular Addition ---\12\0"
.LC31:
	.ascii "  Classic     : \0"
.LC32:
	.ascii " s\12\0"
.LC33:
	.ascii "  REIST       : \0"
.LC34:
	.ascii "  Montgomery  : \0"
	.align 8
.LC35:
	.ascii "  REIST speedup vs Classic    : \0"
.LC36:
	.ascii "x\12\0"
	.align 8
.LC37:
	.ascii "  Montgomery speedup vs Classic: \0"
	.align 8
.LC38:
	.ascii "  REIST speedup vs Montgomery : \0"
.LC39:
	.ascii "  Sinks: \0"
.LC40:
	.ascii " / \0"
	.align 8
.LC41:
	.ascii "\12--- Modular Multiplication ---\12\0"
	.align 8
.LC42:
	.ascii "\12--- Combined REIST Add + Montgomery Mul ---\12\0"
.LC43:
	.ascii "  Combined time : \0"
.LC44:
	.ascii "  Sink: \0"
	.align 8
.LC45:
	.ascii "  Reference (Classic add + classic mul): \0"
	.align 8
.LC46:
	.ascii "\12--- Montgomery Multiplication (with conversion) ---\12\0"
.LC47:
	.ascii "  Montgomery (full cycle): \0"
.LC48:
	.ascii "  Overhead: \0"
.LC51:
	.ascii "% vs Classic\12\0"
	.align 8
.LC52:
	.ascii "  Note: Montgomery is efficient when staying in Montgomery form\12\0"
	.align 8
.LC53:
	.ascii "        for multiple operations (e.g., modular exponentiation)\12\0"
	.align 8
.LC54:
	.ascii "  Note: REIST produces centered residues [-N/2, N/2),\12\0"
	.align 8
.LC55:
	.ascii "        Montgomery operates in [0, N) domain.\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11442:
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
	movaps	%xmm6, 1008(%rsp)
	.seh_savexmm	%xmm6, 1008
	movaps	%xmm7, 1024(%rsp)
	.seh_savexmm	%xmm7, 1024
	movaps	%xmm8, 1040(%rsp)
	.seh_savexmm	%xmm8, 1040
	movaps	%xmm9, 1056(%rsp)
	.seh_savexmm	%xmm9, 1056
	movaps	%xmm10, 1072(%rsp)
	.seh_savexmm	%xmm10, 1072
	movaps	%xmm11, 1088(%rsp)
	.seh_savexmm	%xmm11, 1088
	movaps	%xmm12, 1104(%rsp)
	.seh_savexmm	%xmm12, 1104
	.seh_endprologue
	movl	%ecx, %edi
	movq	%rdx, %rbp
	call	__main
	cmpl	$1, %edi
	movq	$10000000, 120(%rsp)
	jg	.L164
.L82:
	movl	$48, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rax, %rdi
	movq	%rax, 200(%rsp)
	addq	$48, %rax
	movl	$12, %ecx
	leaq	C.0.0(%rip), %rsi
	movq	%rax, 160(%rsp)
	rep movsl
	movq	$48, 216(%rsp)
	leaq	496(%rsp), %rsi
.L99:
	leaq	288(%rsp), %rax
	movq	%rsi, %rcx
	movq	$0, 280(%rsp)
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
	movq	%rax, 208(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	336(%rsp), %rax
	movb	$0, 288(%rsp)
	leaq	260(%rsp), %rdx
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	$0, 408(%rsp)
	movb	$0, 416(%rsp)
	movl	$256, 260(%rsp)
	movq	%rax, 168(%rsp)
.LEHB3:
	call	*__imp_GetComputerNameA(%rip)
	leaq	368(%rsp), %rcx
	testl	%eax, %eax
	leaq	400(%rsp), %rax
	movq	%rcx, 208(%rsp)
	movq	%rax, 192(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 168(%rsp)
	jne	.L165
	leaq	.LC5(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L104:
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	leaq	400(%rsp), %rcx
	movq	%rax, 176(%rsp)
	leaq	.LC6(%rip), %rdx
	movq	%rcx, 192(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 168(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	264(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	336(%rsp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, 168(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L161
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	leaq	752(%rsp), %rbx
	movq	%rax, 176(%rsp)
.L105:
	leaq	336(%rsp), %rax
	movq	%rbx, %rcx
	movl	$64, 752(%rsp)
	movq	%rax, 168(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	jne	.L163
	leaq	336(%rsp), %rax
	movq	%rax, 168(%rsp)
.L108:
	movq	.refptr._ZSt4cout(%rip), %rax
	leaq	.LC11(%rip), %rcx
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC12(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC11(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC13(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC14(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	376(%rsp), %r8
	movq	368(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$6, %r8d
	leaq	.LC16(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	408(%rsp), %r8
	movq	400(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$13, %r8d
	leaq	.LC17(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	280(%rsp), %r8
	movq	272(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC18(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	312(%rsp), %r8
	movq	304(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$10, %r8d
	leaq	.LC19(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	344(%rsp), %r8
	movq	336(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC20(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$33, %r8d
	leaq	.LC21(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	120(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC23(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC24(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC25(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC26(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC27(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movq	200(%rsp), %rax
	cmpq	160(%rsp), %rax
	movq	%rax, 88(%rsp)
	je	.L128
	movsd	.LC30(%rip), %xmm7
	movsd	.LC49(%rip), %xmm8
	movsd	.LC50(%rip), %xmm9
	.p2align 4,,10
	.p2align 3
.L127:
	movq	88(%rsp), %rax
	movl	$41, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movq	(%rax), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$10, %r8d
	leaq	.LC28(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %eax
	movq	%rbx, %r8
	movq	%rbx, 224(%rsp)
	leaq	224(%rsp), %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	$0, 232(%rsp)
	subq	%rbx, %rdx
	movq	%rsi, 48(%rsp)
	imulq	%rdx, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rdx, %rcx
	movq	%rax, %rdx
	imulq	%rcx, %r8
	subq	%r8, %rdx
	movq	%rbx, %r8
	imulq	%rcx, %rdx
	movq	%rax, %rcx
	imulq	%rdx, %r8
	subq	%r8, %rcx
	movq	%rbx, %r8
	imulq	%rdx, %rcx
	movq	%rax, %rdx
	imulq	%rcx, %r8
	subq	%r8, %rdx
	imulq	%rcx, %rdx
	movq	%rbx, %rcx
	imulq	%rdx, %rcx
	subq	%rcx, %rax
	imulq	%rdx, %rax
	xorl	%edx, %edx
	leaq	240(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	%rax, 104(%rsp)
	movq	$-1, %rax
	divq	%rbx
	leaq	1(%rdx), %rax
	mulq	%rax
	movq	%rdx, 248(%rsp)
	movq	%rsi, %rdx
	movq	%rax, 240(%rsp)
	call	__umodti3
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$26, %r8d
	leaq	.LC29(%rip), %rdx
	movq	%xmm0, 72(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12345, %eax
	xorl	%edx, %edx
	divq	%rbx
	movl	$67890, %eax
	movq	%rdx, 112(%rsp)
	movq	%rdx, %rdi
	movq	%rdx, 96(%rsp)
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r15
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	120(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	movq	%rdi, %rax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L110:
	addq	%r15, %rax
	xorl	%edx, %edx
	movq	%rcx, %r13
	leaq	1(%rcx), %rcx
	divq	%rbx
	movq	%rdx, %rax
	cmpq	%rcx, %r8
	jne	.L110
	movq	%rdx, 128(%rsp)
	pxor	%xmm6, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	112(%rsp), %r12
	subq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm6
	xorl	%edx, %edx
	movq	%rax, %rsi
	movq	%rbx, %rax
	movq	120(%rsp), %rbp
	shrq	$63, %rax
	movq	%r12, %rdi
	addq	%rbx, %rax
	sarq	%rax
	movq	%rax, %r10
	movq	%rax, %r11
	movq	%rax, 80(%rsp)
	xorl	%eax, %eax
	negq	%r10
	movq	%rbp, 144(%rsp)
	movq	%r10, 64(%rsp)
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L111:
	leaq	(%r15,%r12), %rcx
	movq	%rdx, %r9
	cmpq	%rcx, %r11
	movq	%rcx, %r8
	cmovl	%rbx, %r9
	subq	%r9, %r8
	cmpq	%rcx, %r10
	movq	%rdx, %rcx
	cmovge	%rbx, %rcx
	addq	$1, %rax
	cmpq	%rbp, %rax
	leaq	(%r8,%rcx), %r12
	jne	.L111
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm10, %xmm10
	movq	%rbx, 224(%rsp)
	movq	$0, 232(%rsp)
	subq	%rsi, %rax
	movq	56(%rsp), %rsi
	cvtsi2sdq	%rax, %xmm10
	movq	72(%rsp), %rax
	mulq	112(%rsp)
	movq	%rsi, %rcx
	movq	%rdx, 248(%rsp)
	movq	48(%rsp), %rdx
	movq	%rax, 240(%rsp)
	call	__umodti3
	movq	72(%rsp), %rax
	movq	%rsi, %rcx
	movq	%xmm0, %r14
	movq	%r14, %rbp
	divsd	%xmm7, %xmm10
	mulq	%r15
	movq	%rdx, 248(%rsp)
	movq	48(%rsp), %rdx
	movq	%rax, 240(%rsp)
	call	__umodti3
	movq	%xmm0, 136(%rsp)
	movq	%xmm0, %rsi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L132:
	addq	$1, %rax
.L116:
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	addq	%rsi, %rdx
	setc	%cl
	cmpq	%rbx, %rdx
	movq	%rdx, %r14
	jnb	.L143
	testq	%rcx, %rcx
	je	.L114
.L143:
	subq	%rbx, %rdx
	movq	%rdx, %r14
.L114:
	cmpq	%rax, %r13
	jne	.L132
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$16, %r8d
	subq	152(%rsp), %rax
	pxor	%xmm11, %xmm11
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	cvtsi2sdq	%rax, %xmm11
	divsd	%xmm7, %xmm11
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$16, %r8d
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
	movl	$16, %r8d
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC35(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$33, %r8d
	leaq	.LC37(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC38(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm11, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$9, %r8d
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	128(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	movl	$3, %r8d
	movq	%rax, 128(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	128(%rsp), %rcx
	movq	%r12, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC40(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r14, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC41(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	96(%rsp), %rdx
	movq	%rsi, 128(%rsp)
	xorl	%esi, %esi
	movq	144(%rsp), %r14
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L117:
	movq	%r15, %rax
	movq	56(%rsp), %rcx
	addq	$1, %rsi
	movq	%rbx, 224(%rsp)
	movq	$0, 232(%rsp)
	mulq	%rdx
	movq	%rdx, 248(%rsp)
	movq	48(%rsp), %rdx
	movq	%rax, 240(%rsp)
	call	__umodti3
	cmpq	%r14, %rsi
	movq	%xmm0, %rdx
	jne	.L117
	movq	128(%rsp), %rsi
	movq	%xmm0, 96(%rsp)
	pxor	%xmm10, %xmm10
	movq	%rdi, %r14
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm10
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm10
	movq	80(%rsp), %r12
	movq	%rax, 128(%rsp)
	movq	%rsi, %rdi
	movq	112(%rsp), %rax
	xorl	%esi, %esi
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L167:
	subq	%rbx, %rax
	cmpq	%rsi, %r13
	je	.L166
.L133:
	addq	$1, %rsi
.L120:
	imulq	%r15
	movq	56(%rsp), %rcx
	movq	%rbx, 224(%rsp)
	movq	%rdx, 248(%rsp)
	movq	48(%rsp), %rdx
	movq	%rax, 240(%rsp)
	movq	%rbx, %rax
	sarq	$63, %rax
	movq	%rax, 232(%rsp)
	call	__modti3
	movq	%xmm0, %rax
	cmpq	%rax, %r12
	jl	.L167
	cmpq	%rax, 64(%rsp)
	leaq	(%rax,%rbx), %rdx
	cmovge	%rdx, %rax
	cmpq	%rsi, %r13
	jne	.L133
.L166:
	movq	%rdi, %rsi
	movq	%r14, %rdi
	movq	%rax, %r14
	pxor	%xmm11, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	128(%rsp), %rax
	cvtsi2sdq	%rax, %xmm11
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm11
	xorl	%ecx, %ecx
	movq	104(%rsp), %r10
	movq	%rax, %r12
	movq	136(%rsp), %r11
	jmp	.L122
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L134:
	addq	$1, %rcx
.L122:
	movq	%r11, %rax
	mulq	%rbp
	movq	%rax, %r8
	movq	%r10, %rax
	movq	%rdx, %r9
	imulq	%r8, %rax
	mulq	%rbx
	addq	%r8, %rax
	adcq	%r9, %rdx
	movq	%rdx, %rax
	movq	%rdx, %rbp
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	cmovnb	%rax, %rbp
	cmpq	%rcx, %r13
	jne	.L134
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$16, %r8d
	pxor	%xmm12, %xmm12
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm12
	divsd	%xmm7, %xmm12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$16, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$16, %r8d
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC35(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm10, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$33, %r8d
	leaq	.LC37(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm10, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm12, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC38(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$9, %r8d
	leaq	.LC39(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	96(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC40(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r14, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %r12
	leaq	.LC40(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$45, %r8d
	leaq	.LC42(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r13, %r14
	xorl	%ebp, %ebp
	movq	104(%rsp), %r13
	movq	%rax, 96(%rsp)
	movq	%rsi, %rax
	xorl	%r12d, %r12d
	movq	%rbx, %rsi
	movq	%rax, %rbx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L135:
	addq	$1, %r12
.L125:
	addq	%r15, %rdi
	cmpq	%rdi, 80(%rsp)
	movq	%rbp, %rdx
	movq	%rsi, 224(%rsp)
	movq	%rdi, %rax
	movq	56(%rsp), %rcx
	movq	$0, 232(%rsp)
	cmovl	%rsi, %rdx
	subq	%rdx, %rax
	cmpq	%rdi, 64(%rsp)
	movq	%rbp, %rdi
	cmovge	%rsi, %rdi
	addq	%rax, %rdi
	leaq	(%rdi,%rsi), %rax
	cmovns	%rdi, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	mulq	%rdx
	movq	%rdx, 248(%rsp)
	movq	48(%rsp), %rdx
	movq	%rax, 240(%rsp)
	call	__umodti3
	movq	%xmm0, %rax
	mulq	%rbx
	movq	%rax, %r8
	movq	%r13, %rax
	movq	%rdx, %r9
	imulq	%r8, %rax
	mulq	%rsi
	addq	%rax, %r8
	adcq	%rdx, %r9
	movq	%r9, %r8
	xorl	%r9d, %r9d
	cmpq	%rsi, %r8
	movq	%r8, %rbx
	jb	.L124
	subq	%rsi, %rbx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
.L124:
	cmpq	%r12, %r14
	jne	.L135
	movq	%rbx, %rax
	movq	%rsi, %rbx
	movq	104(%rsp), %rsi
	movq	96(%rsp), %r12
	imulq	%rax, %rsi
	movq	%rsi, %rax
	mulq	%rbx
	addq	%r8, %rax
	adcq	%r9, %rdx
	movq	%rdx, %rax
	movq	%rdx, %rsi
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	cmovnb	%rax, %rsi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC43(%rip), %rdx
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm7, %xmm1
	movsd	%xmm1, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movsd	48(%rsp), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$8, %r8d
	leaq	.LC44(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rsi, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC15(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC45(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addsd	%xmm10, %xmm6
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$53, %r8d
	leaq	.LC46(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm6, %xmm6
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$27, %r8d
	leaq	.LC47(%rip), %rdx
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm7, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$12, %r8d
	leaq	.LC48(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm10, %xmm6
	movapd	%xmm6, %xmm1
	subsd	%xmm8, %xmm1
	mulsd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC51(%rip), %rdx
	movl	$13, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$64, %r8d
	leaq	.LC52(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$63, %r8d
	leaq	.LC53(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$54, %r8d
	leaq	.LC54(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$46, %r8d
	leaq	.LC55(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$8, 88(%rsp)
	movq	88(%rsp), %rax
	cmpq	%rax, 160(%rsp)
	jne	.L127
.L128:
	movq	192(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	208(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	168(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	176(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	184(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	216(%rsp), %rdx
	movq	200(%rsp), %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
.L81:
	movaps	1008(%rsp), %xmm6
	movaps	1024(%rsp), %xmm7
	movaps	1040(%rsp), %xmm8
	movaps	1056(%rsp), %xmm9
	movaps	1072(%rsp), %xmm10
	movaps	1088(%rsp), %xmm11
	movaps	1104(%rsp), %xmm12
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
.L165:
	movq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	jmp	.L104
.L163:
	movq	760(%rsp), %rdx
	leaq	432(%rsp), %rsi
	leaq	336(%rsp), %rax
	movq	%rsi, %rcx
	movq	%rax, 168(%rsp)
	shrq	$20, %rdx
	call	_ZNSt7__cxx119to_stringEy
.LEHE3:
	leaq	.LC10(%rip), %rdx
	movq	%rsi, %rcx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE4:
	leaq	464(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	336(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 168(%rsp)
	leaq	464(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L108
.L161:
	leaq	272(%rsp), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	264(%rsp), %rcx
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	__imp_RegQueryValueExA(%rip), %rdi
	leaq	432(%rsp), %rsi
	movq	%rax, 176(%rsp)
	leaq	752(%rsp), %rbx
	movq	%rsi, 40(%rsp)
	leaq	336(%rsp), %rax
	movq	%rbx, 32(%rsp)
	leaq	.LC8(%rip), %rdx
	movq	%rax, 168(%rsp)
	movl	$256, 432(%rsp)
.LEHB5:
	call	*%rdi
	testl	%eax, %eax
	je	.L162
	leaq	272(%rsp), %rax
	movq	%rax, 184(%rsp)
.L106:
	leaq	304(%rsp), %rax
	movq	%rsi, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 176(%rsp)
	leaq	336(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rbx, 32(%rsp)
	leaq	.LC9(%rip), %rdx
	movl	$256, 432(%rsp)
	movq	%rax, 168(%rsp)
	call	*%rdi
	leaq	304(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 176(%rsp)
	je	.L168
.L107:
	leaq	336(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rax, 168(%rsp)
	call	*__imp_RegCloseKey(%rip)
.LEHE5:
	jmp	.L105
.L164:
	movq	8(%rbp), %rdx
	leaq	752(%rsp), %rbx
	movq	%rbx, %rcx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE6:
	movq	752(%rsp), %r13
	movq	__imp__errno(%rip), %r12
.LEHB7:
	call	*%r12
	movl	(%rax), %r14d
	call	*%r12
.LEHE7:
	leaq	496(%rsp), %rsi
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movl	%ecx, (%rax)
	movq	%rsi, %rdx
	movq	%r13, %rcx
	call	strtoll
	cmpq	496(%rsp), %r13
	movq	%rax, 120(%rsp)
	je	.L169
.LEHB8:
	call	*%r12
.LEHE8:
	cmpl	$34, (%rax)
	je	.L170
	call	*%r12
	cmpl	$0, (%rax)
	je	.L171
.L85:
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpq	$0, 120(%rsp)
	jle	.L172
	cmpl	$2, %edi
	je	.L82
	movq	16(%rbp), %rdx
	movq	%rbx, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE9:
	movq	752(%rsp), %rdi
.LEHB10:
	call	*%r12
	movl	(%rax), %r13d
	call	*%r12
.LEHE10:
	xorl	%edx, %edx
	movl	$10, %r8d
	movq	%rdi, %rcx
	movl	%edx, (%rax)
	movq	%rsi, %rdx
	call	strtoull
	cmpq	496(%rsp), %rdi
	movq	%rax, %rbp
	je	.L173
.LEHB11:
	call	*%r12
.LEHE11:
	cmpl	$34, (%rax)
	je	.L174
	call	*%r12
	cmpl	$0, (%rax)
	je	.L175
.L94:
	movl	$8, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	%rbp, (%rax)
	movq	%rbx, %rcx
	movq	%rax, 200(%rsp)
	addq	$8, %rax
	movq	%rax, 160(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	$8, 216(%rsp)
	jmp	.L99
.L162:
	leaq	272(%rsp), %rax
	movq	%rbx, %rdx
	leaq	464(%rsp), %rbp
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	%rbp, %rcx
	movq	%rax, 176(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 168(%rsp)
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE13:
	leaq	272(%rsp), %rax
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movq	%rax, 184(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L106
.L168:
	movl	752(%rsp), %edx
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	176(%rsp), %rcx
	leaq	464(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L107
.L175:
	call	*%r12
	movl	%r13d, (%rax)
	jmp	.L94
.L171:
	call	*%r12
	movl	%r14d, (%rax)
	jmp	.L85
.L172:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC3(%rip), %rdx
.LEHB14:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$1, %eax
	jmp	.L81
.L138:
	movq	%rax, %rbx
.L130:
	movq	192(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	208(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	168(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	176(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	184(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	160(%rsp), %rdx
	movq	200(%rsp), %rcx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L102:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L136:
	movq	%rax, %rsi
.L90:
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE14:
.L169:
	leaq	.LC2(%rip), %rcx
.LEHB15:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE15:
.L140:
	movq	%rax, %rsi
	call	*%r12
	cmpl	$0, (%rax)
	jne	.L90
	call	*%r12
	movl	%r14d, (%rax)
	jmp	.L90
.L170:
	leaq	.LC2(%rip), %rcx
.LEHB16:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE16:
.L141:
	movq	%rax, %rsi
	call	*%r12
	cmpl	$0, (%rax)
	jne	.L98
	call	*%r12
	movl	%r13d, (%rax)
.L98:
	movq	%rbx, %rcx
	movq	%rsi, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L102
.L174:
	leaq	.LC4(%rip), %rcx
.LEHB17:
	call	_ZSt20__throw_out_of_rangePKc
.L142:
	movq	%rax, %rbx
	jmp	.L102
.L139:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	336(%rsp), %rax
	movq	%rax, 168(%rsp)
	jmp	.L130
.L137:
	movq	%rax, %rsi
	jmp	.L98
.L173:
	leaq	.LC4(%rip), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
	nop
.LEHE17:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11442:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11442-.LLSDACSB11442
.LLSDACSB11442:
	.uleb128 .LEHB2-.LFB11442
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L142-.LFB11442
	.uleb128 0
	.uleb128 .LEHB3-.LFB11442
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L138-.LFB11442
	.uleb128 0
	.uleb128 .LEHB4-.LFB11442
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L139-.LFB11442
	.uleb128 0
	.uleb128 .LEHB5-.LFB11442
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L138-.LFB11442
	.uleb128 0
	.uleb128 .LEHB6-.LFB11442
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB11442
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L136-.LFB11442
	.uleb128 0
	.uleb128 .LEHB8-.LFB11442
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L140-.LFB11442
	.uleb128 0
	.uleb128 .LEHB9-.LFB11442
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L142-.LFB11442
	.uleb128 0
	.uleb128 .LEHB10-.LFB11442
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L137-.LFB11442
	.uleb128 0
	.uleb128 .LEHB11-.LFB11442
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L141-.LFB11442
	.uleb128 0
	.uleb128 .LEHB12-.LFB11442
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L137-.LFB11442
	.uleb128 0
	.uleb128 .LEHB13-.LFB11442
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L138-.LFB11442
	.uleb128 0
	.uleb128 .LEHB14-.LFB11442
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB11442
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L140-.LFB11442
	.uleb128 0
	.uleb128 .LEHB16-.LFB11442
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L140-.LFB11442
	.uleb128 0
	.uleb128 .LEHB17-.LFB11442
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L141-.LFB11442
	.uleb128 0
.LLSDACSE11442:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 32
C.0.0:
	.quad	257
	.quad	65537
	.quad	1000003
	.quad	10000019
	.quad	1000000007
	.quad	1000000000039
	.align 8
.LC30:
	.long	0
	.long	1104006501
	.align 8
.LC49:
	.long	0
	.long	1072693248
	.align 8
.LC50:
	.long	0
	.long	1079574528
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__modti3;	.scl	2;	.type	32;	.endef
	.def	__umodti3;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	strtoull;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
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
