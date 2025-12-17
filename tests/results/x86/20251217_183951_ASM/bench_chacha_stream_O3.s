	.file	"bench_chacha_stream.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB12136:
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
.LFB12137:
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
.LFB12139:
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
.LFB12140:
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
.LFB11435:
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
.LFB11436:
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
	.ascii "stoull\0"
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
.LC14:
	.ascii "========================================\12\0"
.LC15:
	.ascii "ChaCha20 Stream Benchmark\12\0"
.LC16:
	.ascii "System Information:\12\0"
.LC17:
	.ascii "  Hostname: \0"
.LC18:
	.ascii "\12\0"
.LC19:
	.ascii "  OS: \0"
.LC20:
	.ascii "  CPU Model: \0"
.LC21:
	.ascii "  CPU MHz: \0"
.LC22:
	.ascii "  Memory: \0"
	.align 8
.LC23:
	.ascii "========================================\12\12\0"
	.align 8
.LC26:
	.ascii "ChaCha20-like keystream benchmark (\0"
.LC28:
	.ascii " MB total)\12\12\0"
.LC29:
	.ascii "Classic : \0"
.LC30:
	.ascii " s (\0"
.LC32:
	.ascii " MB/s)\12\0"
.LC33:
	.ascii "REIST   : \0"
	.align 8
.LC35:
	.ascii "Speed ratio (classic / REIST): \0"
.LC36:
	.ascii "x\12\0"
.LC37:
	.ascii "\12Sink XOR: \0"
.LC38:
	.ascii " \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11438:
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
	subq	$1064, %rsp
	.seh_stackalloc	1064
	movaps	%xmm6, 976(%rsp)
	.seh_savexmm	%xmm6, 976
	movaps	%xmm7, 992(%rsp)
	.seh_savexmm	%xmm7, 992
	movaps	%xmm8, 1008(%rsp)
	.seh_savexmm	%xmm8, 1008
	movaps	%xmm9, 1024(%rsp)
	.seh_savexmm	%xmm9, 1024
	movaps	%xmm10, 1040(%rsp)
	.seh_savexmm	%xmm10, 1040
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rbp
	call	__main
	cmpl	$1, %esi
	jle	.L111
	movq	8(%rbp), %rdx
	leaq	720(%rsp), %rdi
	movq	%rdi, %rcx
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE2:
	movq	720(%rsp), %r14
	movq	__imp__errno(%rip), %r13
.LEHB3:
	call	*%r13
	movl	(%rax), %r15d
	call	*%r13
.LEHE3:
	leaq	464(%rsp), %rbx
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movl	%ecx, (%rax)
	movq	%rbx, %rdx
	movq	%r14, %rcx
	call	strtoull
	cmpq	464(%rsp), %r14
	movq	%rax, 80(%rsp)
	je	.L134
.LEHB4:
	call	*%r13
.LEHE4:
	cmpl	$34, (%rax)
	je	.L135
	call	*%r13
	cmpl	$0, (%rax)
	je	.L136
.L82:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, %esi
	jne	.L83
	movl	$-889275714, %eax
	movd	%eax, %xmm6
.L79:
	leaq	192(%rsp), %rax
	movq	%rbx, %rcx
	movq	$0, 184(%rsp)
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 272(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	240(%rsp), %rax
	movb	$0, 192(%rsp)
	leaq	164(%rsp), %rdx
	movq	$0, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	$0, 248(%rsp)
	movb	$0, 256(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movl	$256, 164(%rsp)
	movq	%rax, 48(%rsp)
.LEHB5:
	call	*__imp_GetComputerNameA(%rip)
	leaq	272(%rsp), %rcx
	testl	%eax, %eax
	leaq	304(%rsp), %rax
	movq	%rcx, 88(%rsp)
	movq	%rax, 72(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 48(%rsp)
	je	.L93
	movq	%rbx, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L94:
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	leaq	304(%rsp), %rcx
	movq	%rax, 56(%rsp)
	leaq	.LC5(%rip), %rdx
	movq	%rcx, 72(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	leaq	168(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	240(%rsp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, 48(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L129
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	leaq	336(%rsp), %rbx
	movq	%rax, 56(%rsp)
.L95:
	leaq	240(%rsp), %rax
	movq	%rbx, %rcx
	movl	$64, 336(%rsp)
	movq	%rax, 48(%rsp)
	call	*__imp_GlobalMemoryStatusEx(%rip)
	leaq	240(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 48(%rsp)
	jne	.L137
.L98:
	movdqa	.LC10(%rip), %xmm2
	pshufd	$0, %xmm6, %xmm0
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	movl	$64, %ecx
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC11(%rip), %xmm2
	movaps	%xmm3, 400(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC12(%rip), %xmm2
	movaps	%xmm3, 416(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC13(%rip), %xmm2
	movaps	%xmm3, 432(%rsp)
	pmuludq	%xmm2, %xmm0
	psrlq	$32, %xmm2
	pmuludq	%xmm2, %xmm1
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movaps	%xmm0, 448(%rsp)
	call	_Znwy
.LEHE5:
	movq	.refptr._ZSt4cout(%rip), %rsi
	movq	%rax, %rbx
	movl	$0, (%rax)
	movl	$7, %ecx
	leaq	4(%rbx), %rdi
	xorl	%eax, %eax
	rep stosq
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movq	-24(%rax), %rdx
	movl	$0, (%rdi)
	addq	%rsi, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC14(%rip), %rdx
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC15(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC14(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC16(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rdx
	movl	$12, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	280(%rsp), %r8
	movq	%rsi, %rcx
	movq	272(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC19(%rip), %rdx
	movl	$6, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	312(%rsp), %r8
	movq	%rsi, %rcx
	movq	304(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC20(%rip), %rdx
	movl	$13, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	184(%rsp), %r8
	movq	%rsi, %rcx
	movq	176(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC21(%rip), %rdx
	movl	$11, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	216(%rsp), %r8
	movq	%rsi, %rcx
	movq	208(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC22(%rip), %rdx
	movl	$10, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	248(%rsp), %r8
	movq	%rsi, %rcx
	movq	240(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC23(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	80(%rsp), %r12
	movq	%rax, %r15
	testq	%r12, %r12
	je	.L99
	leaq	400(%rsp), %r13
	pxor	%xmm2, %xmm2
	xorl	%ebp, %ebp
	movdqa	%xmm2, %xmm8
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm3
	movq	%r13, 96(%rsp)
	.p2align 4,,10
	.p2align 3
.L100:
	movq	%r13, %rdx
	addq	$1, %rbp
	movaps	%xmm2, 720(%rsp)
	leaq	720(%rsp), %rcx
	movaps	%xmm4, 752(%rsp)
	movaps	%xmm8, 736(%rsp)
	movaps	%xmm3, 768(%rsp)
	call	_Z16chacha_block_stdPjPKj
	movdqu	16(%rbx), %xmm6
	cmpq	%rbp, %r12
	movdqu	32(%rbx), %xmm5
	movdqu	48(%rbx), %xmm1
	movdqu	(%rbx), %xmm7
	movdqa	720(%rsp), %xmm2
	movdqa	736(%rsp), %xmm8
	movdqa	752(%rsp), %xmm4
	pxor	%xmm2, %xmm7
	movups	%xmm7, (%rbx)
	movdqa	768(%rsp), %xmm3
	pxor	%xmm8, %xmm6
	movups	%xmm6, 16(%rbx)
	pxor	%xmm4, %xmm5
	movups	%xmm5, 32(%rbx)
	pxor	%xmm3, %xmm1
	movups	%xmm1, 48(%rbx)
	jne	.L100
	movaps	%xmm4, 144(%rsp)
	pxor	%xmm6, %xmm6
	leaq	16(%rbx), %r13
	movaps	%xmm3, 128(%rsp)
	leaq	32(%rbx), %r12
	movaps	%xmm2, 112(%rsp)
	leaq	48(%rbx), %r14
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movsd	.LC24(%rip), %xmm7
	subq	%r15, %rax
	xorl	%r15d, %r15d
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm7, %xmm6
	movapd	%xmm7, %xmm10
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	96(%rsp), %rdi
	leaq	720(%rsp), %rcx
	movdqa	144(%rsp), %xmm4
	movq	%rax, 104(%rsp)
	movdqa	128(%rsp), %xmm3
	movdqa	112(%rsp), %xmm2
	movapd	%xmm6, %xmm9
	.p2align 4,,10
	.p2align 3
.L101:
	movq	%rdi, %rdx
	movaps	%xmm2, 720(%rsp)
	addq	$1, %r15
	movaps	%xmm8, 736(%rsp)
	movaps	%xmm4, 752(%rsp)
	movaps	%xmm3, 768(%rsp)
	call	_Z18chacha_block_reistPjPKj
	movdqu	0(%r13), %xmm6
	cmpq	%r15, %rbp
	movdqu	(%r12), %xmm1
	movdqu	(%r14), %xmm5
	movdqu	(%rbx), %xmm7
	movdqa	720(%rsp), %xmm2
	movdqa	736(%rsp), %xmm8
	movdqa	752(%rsp), %xmm4
	pxor	%xmm2, %xmm7
	movups	%xmm7, (%rbx)
	movdqa	768(%rsp), %xmm3
	pxor	%xmm8, %xmm6
	movups	%xmm6, 0(%r13)
	pxor	%xmm4, %xmm1
	movups	%xmm1, (%r12)
	pxor	%xmm3, %xmm5
	movups	%xmm5, (%r14)
	jne	.L101
	movapd	%xmm9, %xmm6
	movapd	%xmm10, %xmm7
.L110:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	104(%rsp), %rax
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%rax, %xmm8
	movq	80(%rsp), %rax
	divsd	%xmm7, %xmm8
	testq	%rax, %rax
	js	.L102
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%rax, %xmm7
.L103:
	leaq	.LC26(%rip), %rdx
	movl	$35, %r8d
	movq	%rsi, %rcx
	mulsd	.LC25(%rip), %xmm7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	.LC27(%rip), %xmm1
	movq	%rsi, %rcx
	mulsd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC29(%rip), %rdx
	movl	$10, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	leaq	.LC30(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rdi, %rcx
	divsd	%xmm6, %xmm1
	divsd	.LC31(%rip), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
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
	movq	%rax, %rdi
	leaq	.LC30(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm8, %xmm7
	movq	%rdi, %rcx
	movapd	%xmm7, %xmm1
	divsd	.LC31(%rip), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm8
	jbe	.L104
	leaq	.LC35(%rip), %rdx
	movl	$31, %r8d
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm8, %xmm6
	movq	%rsi, %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.L104:
	leaq	.LC37(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	64(%rbx), %rdi
	movq	%rbx, %rbp
	.p2align 4,,10
	.p2align 3
.L106:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movq	-24(%rax), %rdx
	addq	%rsi, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	movl	0(%rbp), %edx
	call	_ZNSo9_M_insertImEERSoT_
	leaq	.LC38(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$4, %rbp
	cmpq	%rbp, %rdi
	jne	.L106
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movq	-24(%rax), %rdx
	addq	%rsi, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC18(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE6:
	movl	$64, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	nop
	movaps	976(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	992(%rsp), %xmm7
	movaps	1008(%rsp), %xmm8
	movaps	1024(%rsp), %xmm9
	movaps	1040(%rsp), %xmm10
	addq	$1064, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L83:
	movq	16(%rbp), %rdx
	movq	%rdi, %rcx
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE7:
	movq	720(%rsp), %rsi
.LEHB8:
	call	*%r13
	movl	(%rax), %ebp
	call	*%r13
.LEHE8:
	xorl	%edx, %edx
	movl	$10, %r8d
	movq	%rsi, %rcx
	movl	%edx, (%rax)
	movq	%rbx, %rdx
	call	strtoul
	cmpq	464(%rsp), %rsi
	movd	%eax, %xmm6
	je	.L138
.LEHB9:
	call	*%r13
.LEHE9:
	cmpl	$34, (%rax)
	je	.L139
	call	*%r13
	cmpl	$0, (%rax)
	je	.L140
.L89:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L79
.L129:
	leaq	176(%rsp), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	168(%rsp), %rcx
	movq	%rax, 64(%rsp)
	leaq	208(%rsp), %rax
	movq	__imp_RegQueryValueExA(%rip), %rsi
	leaq	336(%rsp), %rbx
	movq	%rax, 56(%rsp)
	leaq	720(%rsp), %rdi
	movq	%rbx, 40(%rsp)
	leaq	240(%rsp), %rax
	movq	%rdi, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	movq	%rax, 48(%rsp)
	movl	$256, 336(%rsp)
.LEHB10:
	call	*%rsi
	testl	%eax, %eax
	je	.L130
	leaq	176(%rsp), %rax
	movq	%rax, 64(%rsp)
.L96:
	leaq	208(%rsp), %rax
	movq	%rbx, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 56(%rsp)
	leaq	240(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rdi, 32(%rsp)
	leaq	.LC8(%rip), %rdx
	movl	$256, 336(%rsp)
	movq	%rax, 48(%rsp)
	call	*%rsi
	leaq	208(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 56(%rsp)
	je	.L141
.L97:
	leaq	240(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, 48(%rsp)
	call	*__imp_RegCloseKey(%rip)
	jmp	.L95
.L93:
	leaq	.LC4(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	jmp	.L94
.L111:
	movq	$1000000, 80(%rsp)
	movl	$-889275714, %eax
	leaq	464(%rsp), %rbx
	movd	%eax, %xmm6
	jmp	.L79
.L102:
	movq	80(%rsp), %rdi
	pxor	%xmm7, %xmm7
	movq	%rdi, %rax
	andl	$1, %edi
	shrq	%rax
	orq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm7
	addsd	%xmm7, %xmm7
	jmp	.L103
.L137:
	movq	344(%rsp), %rdx
	leaq	400(%rsp), %rsi
	movq	%rsi, %rcx
	movq	%rsi, 96(%rsp)
	shrq	$20, %rdx
	call	_ZNSt7__cxx119to_stringEy
.LEHE10:
	leaq	.LC9(%rip), %rdx
	movq	%rsi, %rcx
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE11:
	leaq	720(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	240(%rsp), %rax
	leaq	720(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	720(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L98
.L130:
	leaq	176(%rsp), %rcx
	movq	%rdi, %rdx
	movq	%rcx, 64(%rsp)
	leaq	208(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	leaq	240(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	leaq	400(%rsp), %rcx
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.isra.0
.LEHE12:
	leaq	176(%rsp), %rcx
	leaq	400(%rsp), %rdx
	movq	%rcx, 64(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	400(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L96
.L136:
	call	*%r13
	movl	%r15d, (%rax)
	jmp	.L82
.L140:
	call	*%r13
	movl	%ebp, (%rax)
	jmp	.L89
.L141:
	movl	720(%rsp), %edx
	leaq	400(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	56(%rsp), %rcx
	leaq	400(%rsp), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	400(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L97
.L99:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movsd	.LC24(%rip), %xmm7
	pxor	%xmm6, %xmm6
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	divsd	%xmm7, %xmm6
	movq	%rax, 104(%rsp)
	jmp	.L110
.L113:
.L133:
	movq	%rax, %rbx
.L92:
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB13:
	call	_Unwind_Resume
.LEHE13:
.L117:
	movq	%rax, %rbx
	call	*%r13
	cmpl	$0, (%rax)
	jne	.L92
	call	*%r13
	movl	%r15d, (%rax)
	jmp	.L92
.L134:
	leaq	.LC2(%rip), %rcx
.LEHB14:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE14:
.L114:
	movq	%rax, %rbx
	jmp	.L108
.L116:
	movq	%rbx, %rcx
	movl	$64, %edx
	movq	%rax, %rbx
	call	_ZdlPvy
.L108:
	movq	72(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	88(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	56(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	64(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L135:
	leaq	.LC2(%rip), %rcx
.LEHB16:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE16:
.L112:
	jmp	.L133
.L115:
	movq	96(%rsp), %rcx
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leaq	240(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L108
.L139:
	leaq	.LC3(%rip), %rcx
.LEHB17:
	call	_ZSt20__throw_out_of_rangePKc
.L138:
	leaq	.LC3(%rip), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE17:
.L118:
	movq	%rax, %rbx
	call	*%r13
	cmpl	$0, (%rax)
	jne	.L92
	call	*%r13
	movl	%ebp, (%rax)
	jmp	.L92
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11438-.LLSDACSB11438
.LLSDACSB11438:
	.uleb128 .LEHB2-.LFB11438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB11438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L112-.LFB11438
	.uleb128 0
	.uleb128 .LEHB4-.LFB11438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L117-.LFB11438
	.uleb128 0
	.uleb128 .LEHB5-.LFB11438
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L114-.LFB11438
	.uleb128 0
	.uleb128 .LEHB6-.LFB11438
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L116-.LFB11438
	.uleb128 0
	.uleb128 .LEHB7-.LFB11438
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB11438
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L113-.LFB11438
	.uleb128 0
	.uleb128 .LEHB9-.LFB11438
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L118-.LFB11438
	.uleb128 0
	.uleb128 .LEHB10-.LFB11438
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L114-.LFB11438
	.uleb128 0
	.uleb128 .LEHB11-.LFB11438
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L115-.LFB11438
	.uleb128 0
	.uleb128 .LEHB12-.LFB11438
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L114-.LFB11438
	.uleb128 0
	.uleb128 .LEHB13-.LFB11438
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB11438
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L117-.LFB11438
	.uleb128 0
	.uleb128 .LEHB15-.LFB11438
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB11438
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L117-.LFB11438
	.uleb128 0
	.uleb128 .LEHB17-.LFB11438
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L118-.LFB11438
	.uleb128 0
.LLSDACSE11438:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC10:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC11:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 16
.LC12:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 16
.LC13:
	.long	12
	.long	13
	.long	14
	.long	15
	.align 8
.LC24:
	.long	0
	.long	1104006501
	.align 8
.LC25:
	.long	0
	.long	1078984704
	.align 8
.LC27:
	.long	0
	.long	1051721728
	.align 8
.LC31:
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
	.def	strtoull;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	strtoul;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
