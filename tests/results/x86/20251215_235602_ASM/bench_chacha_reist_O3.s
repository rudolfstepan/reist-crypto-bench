	.file	"bench_chacha_reist.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB11697:
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
.LFB11698:
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
.LFB11699:
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
.LFB11700:
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
	.text
	.p2align 4
	.globl	_Z16chacha_block_stdPjPKj
	.def	_Z16chacha_block_stdPjPKj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16chacha_block_stdPjPKj
_Z16chacha_block_stdPjPKj:
.LFB11062:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rdx), %rax
	movq	(%rdx), %r10
	movq	%rdx, %r8
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	24(%rdx), %rdx
	movq	%r10, (%rsp)
	movq	48(%r8), %r9
	movq	32(%r8), %r11
	addl	%eax, %r10d
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	40(%r8), %rdx
	movq	%r9, 48(%rsp)
	xorl	%r10d, %r9d
	roll	$16, %r9d
	movq	%r11, 32(%rsp)
	addl	%r9d, %r11d
	movq	%rdx, 40(%rsp)
	movq	56(%r8), %rdx
	movq	%rdx, 56(%rsp)
	movl	%eax, %edx
	movl	%r9d, %eax
	xorl	%r11d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	leal	(%r11,%rax), %r9d
	leaq	-4(%rcx), %r11
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	subq	%r8, %r11
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	movl	%r10d, (%rsp)
	roll	$8, %eax
	addl	%eax, %r9d
	movl	%eax, 48(%rsp)
	xorl	%r9d, %edx
	movl	%r9d, 32(%rsp)
	roll	$7, %edx
	cmpq	$8, %r11
	movl	%edx, 16(%rsp)
	jbe	.L73
	movdqu	(%r8), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movdqu	16(%r8), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movdqu	32(%r8), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rcx)
	movdqu	48(%r8), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rcx)
	addq	$72, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	addl	(%r8), %r10d
	movl	%r10d, (%rcx)
	movl	4(%r8), %r10d
	addl	4(%rsp), %r10d
	movl	%r10d, 4(%rcx)
	movl	8(%r8), %r10d
	addl	8(%rsp), %r10d
	movl	%r10d, 8(%rcx)
	movl	12(%rsp), %r10d
	addl	12(%r8), %r10d
	movl	%r10d, 12(%rcx)
	addl	16(%r8), %edx
	movl	%edx, 16(%rcx)
	movl	20(%r8), %edx
	addl	20(%rsp), %edx
	movl	%edx, 20(%rcx)
	movl	24(%r8), %edx
	addl	24(%rsp), %edx
	movl	%edx, 24(%rcx)
	movl	28(%r8), %edx
	addl	28(%rsp), %edx
	movl	%edx, 28(%rcx)
	addl	32(%r8), %r9d
	movl	%r9d, 32(%rcx)
	movl	36(%r8), %edx
	addl	36(%rsp), %edx
	movl	%edx, 36(%rcx)
	movl	40(%r8), %edx
	addl	40(%rsp), %edx
	movl	%edx, 40(%rcx)
	movl	44(%r8), %edx
	addl	44(%rsp), %edx
	movl	%edx, 44(%rcx)
	addl	48(%r8), %eax
	movl	%eax, 48(%rcx)
	movl	52(%r8), %eax
	addl	52(%rsp), %eax
	movl	%eax, 52(%rcx)
	movl	56(%r8), %eax
	addl	56(%rsp), %eax
	movl	%eax, 56(%rcx)
	movl	60(%rsp), %eax
	addl	60(%r8), %eax
	movl	%eax, 60(%rcx)
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z18chacha_block_reistPjPKj
	.def	_Z18chacha_block_reistPjPKj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18chacha_block_reistPjPKj
_Z18chacha_block_reistPjPKj:
.LFB11063:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rdx), %rax
	movq	(%rdx), %r10
	movq	%rdx, %r8
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	24(%rdx), %rdx
	movq	%r10, (%rsp)
	movq	48(%r8), %r9
	movq	32(%r8), %r11
	addl	%eax, %r10d
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	40(%r8), %rdx
	movq	%r9, 48(%rsp)
	xorl	%r10d, %r9d
	roll	$16, %r9d
	movq	%r11, 32(%rsp)
	addl	%r9d, %r11d
	movq	%rdx, 40(%rsp)
	movq	56(%r8), %rdx
	movq	%rdx, 56(%rsp)
	movl	%eax, %edx
	movl	%r9d, %eax
	xorl	%r11d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	leal	(%r11,%rax), %r9d
	leaq	-4(%rcx), %r11
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$8, %eax
	addl	%eax, %r9d
	subq	%r8, %r11
	xorl	%r9d, %edx
	roll	$7, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	roll	$16, %eax
	addl	%eax, %r9d
	xorl	%r9d, %edx
	roll	$12, %edx
	addl	%edx, %r10d
	xorl	%r10d, %eax
	movl	%r10d, (%rsp)
	roll	$8, %eax
	addl	%eax, %r9d
	movl	%eax, 48(%rsp)
	xorl	%r9d, %edx
	movl	%r9d, 32(%rsp)
	roll	$7, %edx
	cmpq	$8, %r11
	movl	%edx, 16(%rsp)
	jbe	.L76
	movdqu	(%r8), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movdqu	16(%r8), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movdqu	32(%r8), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rcx)
	movdqu	48(%r8), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rcx)
	addq	$72, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	addl	(%r8), %r10d
	movl	%r10d, (%rcx)
	movl	4(%rsp), %r10d
	addl	4(%r8), %r10d
	movl	%r10d, 4(%rcx)
	movl	8(%rsp), %r10d
	addl	8(%r8), %r10d
	movl	%r10d, 8(%rcx)
	movl	12(%r8), %r10d
	addl	12(%rsp), %r10d
	movl	%r10d, 12(%rcx)
	addl	16(%r8), %edx
	movl	%edx, 16(%rcx)
	movl	20(%rsp), %edx
	addl	20(%r8), %edx
	movl	%edx, 20(%rcx)
	movl	24(%rsp), %edx
	addl	24(%r8), %edx
	movl	%edx, 24(%rcx)
	movl	28(%rsp), %edx
	addl	28(%r8), %edx
	movl	%edx, 28(%rcx)
	addl	32(%r8), %r9d
	movl	36(%rsp), %edx
	movl	%r9d, 32(%rcx)
	addl	36(%r8), %edx
	movl	%edx, 36(%rcx)
	movl	40(%rsp), %edx
	addl	40(%r8), %edx
	movl	%edx, 40(%rcx)
	movl	44(%rsp), %edx
	addl	44(%r8), %edx
	movl	%edx, 44(%rcx)
	addl	48(%r8), %eax
	movl	%eax, 48(%rcx)
	movl	52(%rsp), %eax
	addl	52(%r8), %eax
	movl	%eax, 52(%rcx)
	movl	56(%rsp), %eax
	addl	56(%r8), %eax
	movl	%eax, 56(%rcx)
	movl	60(%r8), %eax
	addl	60(%rsp), %eax
	movl	%eax, 60(%rcx)
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "stoi\0"
.LC3:
	.ascii "stoul\0"
.LC4:
	.ascii "Unknown\0"
.LC5:
	.ascii "Windows\0"
	.align 8
.LC6:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC7:
	.ascii "ProcessorNameString\0"
.LC8:
	.ascii "~MHz\0"
.LC9:
	.ascii " MB\0"
	.align 8
.LC10:
	.ascii "========================================\12\0"
.LC11:
	.ascii "ChaCha20 REIST Benchmark\12\0"
.LC12:
	.ascii "System Information:\12\0"
.LC13:
	.ascii "  Hostname: \0"
.LC14:
	.ascii "\12\0"
.LC15:
	.ascii "  OS: \0"
.LC16:
	.ascii "  CPU Model: \0"
.LC17:
	.ascii "  CPU MHz: \0"
.LC18:
	.ascii "  Memory: \0"
	.align 8
.LC20:
	.ascii "\12--- Modular Addition (32-bit) ---\12\0"
.LC21:
	.ascii "std_add    : \0"
.LC22:
	.ascii " s\12\0"
.LC23:
	.ascii "reist_add32: \0"
.LC25:
	.ascii "Speed ratio: \0"
.LC26:
	.ascii "x (std / REIST)\12\0"
	.align 8
.LC32:
	.ascii "\12--- ChaCha20-like Cipher-Speed ---\12\0"
.LC33:
	.ascii "Classic : \0"
.LC34:
	.ascii " s (\0"
.LC36:
	.ascii " MB/s)\12\0"
.LC37:
	.ascii "REIST   : \0"
.LC38:
	.ascii "x (classic / REIST)\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11065:
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
	subq	$968, %rsp
	.seh_stackalloc	968
	movaps	%xmm6, 896(%rsp)
	.seh_savexmm	%xmm6, 896
	movaps	%xmm7, 912(%rsp)
	.seh_savexmm	%xmm7, 912
	movaps	%xmm8, 928(%rsp)
	.seh_savexmm	%xmm8, 928
	movaps	%xmm9, 944(%rsp)
	.seh_savexmm	%xmm9, 944
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %r13
	call	__main
	cmpl	$1, %esi
	jle	.L112
	movq	8(%r13), %rdx
	leaq	640(%rsp), %rdi
	movq	%rdi, %rcx
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE2:
	movq	640(%rsp), %r14
	movq	__imp__errno(%rip), %rbp
.LEHB3:
	call	*%rbp
	movl	(%rax), %r15d
	call	*%rbp
.LEHE3:
	leaq	384(%rsp), %rbx
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movl	%ecx, (%rax)
	movq	%rbx, %rdx
	movq	%r14, %rcx
	call	strtol
	cmpq	384(%rsp), %r14
	movl	%eax, %r12d
	je	.L134
.LEHB4:
	call	*%rbp
.LEHE4:
	cmpl	$34, (%rax)
	je	.L135
	call	*%rbp
	cmpl	$0, (%rax)
	je	.L136
.L82:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, %esi
	jne	.L137
.L79:
	leaq	112(%rsp), %rax
	movq	%rbx, %rcx
	movq	$0, 104(%rsp)
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	96(%rsp), %rax
	movb	$0, 112(%rsp)
	leaq	84(%rsp), %rdx
	movb	$0, 144(%rsp)
	leaq	128(%rsp), %r14
	movb	$0, 176(%rsp)
	leaq	160(%rsp), %r13
	movq	$0, 136(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movl	$256, 84(%rsp)
	movq	%rax, 48(%rsp)
.LEHB5:
	call	*__imp_GetComputerNameA(%rip)
	leaq	192(%rsp), %rcx
	testl	%eax, %eax
	leaq	224(%rsp), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 56(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 48(%rsp)
	je	.L94
	movq	%rbx, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L95:
	leaq	224(%rsp), %rcx
	leaq	96(%rsp), %rax
	movq	%rcx, 56(%rsp)
	leaq	.LC5(%rip), %rdx
	movq	%rax, 48(%rsp)
	leaq	128(%rsp), %r14
	leaq	160(%rsp), %r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	leaq	88(%rsp), %rax
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 32(%rsp)
	leaq	96(%rsp), %rax
	movq	$-2147483646, %rcx
	leaq	.LC6(%rip), %rdx
	movq	%rax, 48(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L128
	leaq	96(%rsp), %rax
	leaq	256(%rsp), %rbx
	movq	%rax, 48(%rsp)
.L96:
	movl	$64, 256(%rsp)
	movq	%rbx, %rcx
	leaq	160(%rsp), %r13
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	je	.L99
	movq	264(%rsp), %rdx
	leaq	320(%rsp), %rbp
	leaq	160(%rsp), %r13
	movq	%rbp, %rcx
	shrq	$20, %rdx
	call	_ZNSt7__cxx119to_stringEy
.LEHE5:
	leaq	.LC9(%rip), %rdx
	movq	%rbp, %rcx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE6:
	leaq	640(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	640(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	640(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L99:
	movq	.refptr._ZSt4cout(%rip), %rsi
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movq	-24(%rax), %rdx
	addq	%rsi, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC10(%rip), %rdx
.LEHB7:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC11(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC10(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC12(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC13(%rip), %rdx
	movl	$12, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	200(%rsp), %r8
	movq	%rsi, %rcx
	movq	192(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC15(%rip), %rdx
	movl	$6, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	232(%rsp), %r8
	movq	%rsi, %rcx
	movq	224(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC16(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	104(%rsp), %r8
	movq	%rsi, %rcx
	movq	96(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rdx
	movl	$11, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	136(%rsp), %r8
	movq	%rsi, %rcx
	movq	128(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC18(%rip), %rdx
	movl	$10, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	168(%rsp), %r8
	movq	%rsi, %rcx
	movq	160(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC10(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movsd	.LC19(%rip), %xmm9
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm9, %xmm7
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	.LC20(%rip), %rdx
	movq	%rsi, %rcx
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm9, %xmm6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC21(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC23(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L138
.L101:
	movdqa	.LC27(%rip), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqa	.LC28(%rip), %xmm0
	movaps	%xmm0, 336(%rsp)
	movdqa	.LC29(%rip), %xmm0
	movaps	%xmm0, 352(%rsp)
	movdqa	.LC30(%rip), %xmm0
	movaps	%xmm0, 368(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	testl	%r12d, %r12d
	movq	%rax, %r15
	jle	.L103
	leaq	640(%rsp), %rdi
	xorl	%ebx, %ebx
	leaq	320(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L104:
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	addl	$1, %ebx
	call	_Z16chacha_block_stdPjPKj
	cmpl	%ebx, %r12d
	jne	.L104
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm8, %xmm8
	subq	%r15, %rax
	xorl	%r15d, %r15d
	cvtsi2sdq	%rax, %xmm8
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm9, %xmm8
	movq	%rax, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L105:
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	addl	$1, %r15d
	call	_Z18chacha_block_reistPjPKj
	cmpl	%ebx, %r15d
	jne	.L105
.L110:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %rcx
	subq	72(%rsp), %rax
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%r12d, %xmm6
	leaq	.LC32(%rip), %rdx
	mulsd	.LC31(%rip), %xmm6
	cvtsi2sdq	%rax, %xmm7
	divsd	%xmm9, %xmm7
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC33(%rip), %rdx
	movl	$10, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm8, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	.LC35(%rip), %xmm9
	movapd	%xmm6, %xmm1
	movq	%rbx, %rcx
	divsd	%xmm8, %xmm1
	divsd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC37(%rip), %rdx
	movl	$10, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	.LC34(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm7, %xmm6
	movq	%rbx, %rcx
	movapd	%xmm6, %xmm1
	divsd	%xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	jbe	.L106
	leaq	.LC25(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm8, %xmm1
	movq	%rsi, %rcx
	divsd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.L106:
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r14, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	nop
	movaps	896(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	912(%rsp), %xmm7
	movaps	928(%rsp), %xmm8
	movaps	944(%rsp), %xmm9
	addq	$968, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L128:
	leaq	96(%rsp), %rax
	movq	88(%rsp), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	leaq	256(%rsp), %rbx
	movq	%rax, 48(%rsp)
	movq	__imp_RegQueryValueExA(%rip), %rsi
	leaq	640(%rsp), %rdi
	movq	%rbx, 40(%rsp)
	movq	%rdi, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	movl	$256, 256(%rsp)
	leaq	128(%rsp), %r14
	leaq	160(%rsp), %r13
	call	*%rsi
	testl	%eax, %eax
	je	.L129
	leaq	96(%rsp), %rax
	movq	%rax, 48(%rsp)
.L97:
	movq	88(%rsp), %rcx
	movq	%rbx, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rdi, 32(%rsp)
	leaq	.LC8(%rip), %rdx
	movl	$256, 256(%rsp)
	leaq	128(%rsp), %r14
	leaq	160(%rsp), %r13
	call	*%rsi
	testl	%eax, %eax
	je	.L139
.L98:
	movq	88(%rsp), %rcx
	leaq	160(%rsp), %r13
	call	*__imp_RegCloseKey(%rip)
	jmp	.L96
.L94:
	leaq	.LC4(%rip), %rdx
	leaq	128(%rsp), %r14
	leaq	160(%rsp), %r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE7:
	jmp	.L95
.L137:
	movq	16(%r13), %rdx
	movq	%rdi, %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE8:
	movq	640(%rsp), %rsi
.LEHB9:
	call	*%rbp
	movl	(%rax), %r13d
	call	*%rbp
.LEHE9:
	xorl	%edx, %edx
	movl	$10, %r8d
	movq	%rsi, %rcx
	movl	%edx, (%rax)
	movq	%rbx, %rdx
	call	strtoul
	cmpq	384(%rsp), %rsi
	je	.L140
.LEHB10:
	call	*%rbp
.LEHE10:
	cmpl	$34, (%rax)
	je	.L141
	call	*%rbp
	cmpl	$0, (%rax)
	je	.L142
.L90:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L79
.L129:
	leaq	320(%rsp), %rbp
	movq	%rdi, %rdx
	leaq	96(%rsp), %rax
	movq	%rbp, %rcx
	movq	%rax, 48(%rsp)
	leaq	128(%rsp), %r14
	leaq	160(%rsp), %r13
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
	leaq	96(%rsp), %rax
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L97
.L138:
	leaq	.LC25(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm6, %xmm7
	movq	%rsi, %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE11:
	jmp	.L101
.L112:
	leaq	384(%rsp), %rbx
	movl	$1000000, %r12d
	jmp	.L79
.L136:
	call	*%rbp
	movl	%r15d, (%rax)
	jmp	.L82
.L142:
	call	*%rbp
	movl	%r13d, (%rax)
	jmp	.L90
.L139:
	movl	640(%rsp), %edx
	leaq	320(%rsp), %rbp
	movq	%rbp, %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	%r14, %rcx
	movq	%rbp, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L98
.L103:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm8, %xmm8
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm8
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm9, %xmm8
	movq	%rax, 72(%rsp)
	jmp	.L110
.L118:
	movq	%rax, %rbx
	call	*%rbp
	cmpl	$0, (%rax)
	je	.L143
.L93:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L135:
	leaq	.LC2(%rip), %rcx
.LEHB13:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE13:
.L143:
	call	*%rbp
	movl	%r13d, (%rax)
	jmp	.L93
.L116:
	leaq	160(%rsp), %r13
	movq	%rbp, %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L109:
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r14, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L115:
	movq	%rax, %rbx
	jmp	.L109
.L114:
.L133:
	movq	%rax, %rbx
	jmp	.L93
.L134:
	leaq	.LC2(%rip), %rcx
.LEHB15:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE15:
.L113:
	jmp	.L133
.L117:
	movq	%rax, %rbx
	call	*%rbp
	cmpl	$0, (%rax)
	jne	.L93
	call	*%rbp
	movl	%r15d, (%rax)
	jmp	.L93
.L141:
	leaq	.LC3(%rip), %rcx
.LEHB16:
	call	_ZSt20__throw_out_of_rangePKc
.L140:
	leaq	.LC3(%rip), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
	nop
.LEHE16:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11065:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11065-.LLSDACSB11065
.LLSDACSB11065:
	.uleb128 .LEHB2-.LFB11065
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11065
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L113-.LFB11065
	.uleb128 0
	.uleb128 .LEHB4-.LFB11065
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L117-.LFB11065
	.uleb128 0
	.uleb128 .LEHB5-.LFB11065
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L115-.LFB11065
	.uleb128 0
	.uleb128 .LEHB6-.LFB11065
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L116-.LFB11065
	.uleb128 0
	.uleb128 .LEHB7-.LFB11065
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L115-.LFB11065
	.uleb128 0
	.uleb128 .LEHB8-.LFB11065
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB11065
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L114-.LFB11065
	.uleb128 0
	.uleb128 .LEHB10-.LFB11065
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L118-.LFB11065
	.uleb128 0
	.uleb128 .LEHB11-.LFB11065
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L115-.LFB11065
	.uleb128 0
	.uleb128 .LEHB12-.LFB11065
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB11065
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L117-.LFB11065
	.uleb128 0
	.uleb128 .LEHB14-.LFB11065
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB11065
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L117-.LFB11065
	.uleb128 0
	.uleb128 .LEHB16-.LFB11065
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L118-.LFB11065
	.uleb128 0
.LLSDACSE11065:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.long	0
	.long	1104006501
	.align 16
.LC27:
	.long	0
	.long	-1640531527
	.long	1013904242
	.long	-626627285
	.align 16
.LC28:
	.long	2027808484
	.long	387276957
	.long	-1253254570
	.long	1401181199
	.align 16
.LC29:
	.long	-239350328
	.long	-1879881855
	.long	774553914
	.long	-865977613
	.align 16
.LC30:
	.long	1788458156
	.long	147926629
	.long	-1492604898
	.long	1161830871
	.align 8
.LC31:
	.long	0
	.long	1078984704
	.align 8
.LC35:
	.long	0
	.long	1093567616
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
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	strtoul;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
