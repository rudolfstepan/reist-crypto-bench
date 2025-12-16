	.file	"bench_chacha_reist.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1757:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1757:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, @function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB3416:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L7
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, 8(%rsp)
	call	strlen@PLT
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movq	%rbx, %rdi
	movq	%rax, %rdx
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L7:
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	.cfi_endproc
.LFE3416:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3417:
	.cfi_startproc
	movq	%rdi, %r8
	movq	(%rdi), %rdi
	movq	%rsi, %rcx
	movq	8(%rsi), %rdx
	leaq	16(%r8), %rax
	movq	(%rsi), %rsi
	cmpq	%rax, %rdi
	leaq	16(%rcx), %rax
	je	.L29
	cmpq	%rsi, %rax
	je	.L10
	movq	%rsi, (%r8)
	movq	16(%r8), %r9
	movq	%rdx, 8(%r8)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%r8)
	testq	%rdi, %rdi
	je	.L19
	movq	%rdi, (%rcx)
	movq	%r9, 16(%rcx)
.L27:
	movq	$0, 8(%rcx)
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	cmpq	%rsi, %rax
	je	.L10
	movq	%rsi, (%r8)
	movq	%rax, %rdi
	movq	%rdx, 8(%r8)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%r8)
.L17:
	movq	%rdi, (%rcx)
	movq	$0, 8(%rcx)
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	cmpq	%rcx, %r8
	je	.L18
	testq	%rdx, %rdx
	jne	.L30
.L25:
	movq	%rdx, 8(%r8)
	movb	$0, (%rdi,%rdx)
	movq	(%rcx), %rdi
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%rax, %rdi
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L30:
	cmpq	$1, %rdx
	je	.L31
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %r8
	movq	8(%rcx), %rdx
	movq	(%r8), %rdi
	movq	%rdx, 8(%r8)
	movb	$0, (%rdi,%rdx)
	movq	(%rcx), %rdi
	movq	$0, 8(%rcx)
	movb	$0, (%rdi)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rcx), %rdx
	movq	(%r8), %rdi
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rsi, %rdi
	jmp	.L27
	.cfi_endproc
.LFE3417:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.p2align 4
	.globl	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, @function
_Z16chacha_block_stdPjPKj:
.LFB2737:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movdqu	16(%rsi), %xmm0
	movl	(%rsi), %r8d
	leaq	-4(%rdi), %r9
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	48(%rsi), %eax
	movl	32(%rsi), %ecx
	movd	%xmm0, %edx
	movdqu	(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movaps	%xmm0, 16(%rsp)
	addl	%edx, %r8d
	movdqu	48(%rsi), %xmm3
	xorl	%r8d, %eax
	movaps	%xmm1, (%rsp)
	roll	$16, %eax
	movaps	%xmm2, 32(%rsp)
	addl	%eax, %ecx
	movaps	%xmm3, 48(%rsp)
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	subq	%rsi, %r9
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	movl	%r8d, (%rsp)
	roll	$8, %eax
	addl	%eax, %ecx
	movl	%eax, 48(%rsp)
	xorl	%ecx, %edx
	movl	%ecx, 32(%rsp)
	roll	$7, %edx
	movl	%edx, 16(%rsp)
	cmpq	$8, %r9
	jbe	.L33
	movdqu	(%rsi), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rsi), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rsi), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rsi), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rdi)
.L32:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L37
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	addl	(%rsi), %r8d
	movl	%r8d, (%rdi)
	movl	4(%rsi), %r8d
	addl	4(%rsp), %r8d
	movl	%r8d, 4(%rdi)
	movl	8(%rsi), %r8d
	addl	8(%rsp), %r8d
	movl	%r8d, 8(%rdi)
	movl	12(%rsp), %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 12(%rdi)
	addl	16(%rsi), %edx
	movl	%edx, 16(%rdi)
	movl	20(%rsi), %edx
	addl	20(%rsp), %edx
	movl	%edx, 20(%rdi)
	movl	24(%rsi), %edx
	addl	24(%rsp), %edx
	movl	%edx, 24(%rdi)
	movl	28(%rsi), %edx
	addl	28(%rsp), %edx
	movl	%edx, 28(%rdi)
	addl	32(%rsi), %ecx
	movl	%ecx, 32(%rdi)
	movl	36(%rsi), %edx
	addl	36(%rsp), %edx
	movl	%edx, 36(%rdi)
	movl	40(%rsi), %edx
	addl	40(%rsp), %edx
	movl	%edx, 40(%rdi)
	movl	44(%rsi), %edx
	addl	44(%rsp), %edx
	movl	%edx, 44(%rdi)
	addl	48(%rsi), %eax
	movl	%eax, 48(%rdi)
	movl	52(%rsi), %eax
	addl	52(%rsp), %eax
	movl	%eax, 52(%rdi)
	movl	56(%rsi), %eax
	addl	56(%rsp), %eax
	movl	%eax, 56(%rdi)
	movl	60(%rsp), %eax
	addl	60(%rsi), %eax
	movl	%eax, 60(%rdi)
	jmp	.L32
.L37:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2737:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.p2align 4
	.globl	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, @function
_Z18chacha_block_reistPjPKj:
.LFB2738:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movdqu	16(%rsi), %xmm0
	movl	(%rsi), %r8d
	leaq	-4(%rdi), %r9
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	48(%rsi), %eax
	movl	32(%rsi), %ecx
	movd	%xmm0, %edx
	movdqu	(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movaps	%xmm0, 16(%rsp)
	addl	%edx, %r8d
	movdqu	48(%rsi), %xmm3
	xorl	%r8d, %eax
	movaps	%xmm1, (%rsp)
	roll	$16, %eax
	movaps	%xmm2, 32(%rsp)
	addl	%eax, %ecx
	movaps	%xmm3, 48(%rsp)
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	subq	%rsi, %r9
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %ecx
	xorl	%ecx, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	movl	%r8d, (%rsp)
	roll	$8, %eax
	addl	%eax, %ecx
	movl	%eax, 48(%rsp)
	xorl	%ecx, %edx
	movl	%ecx, 32(%rsp)
	roll	$7, %edx
	movl	%edx, 16(%rsp)
	cmpq	$8, %r9
	jbe	.L39
	movdqu	(%rsi), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rsi), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rsi), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rsi), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rdi)
.L38:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L43
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
	addl	(%rsi), %r8d
	movl	%r8d, (%rdi)
	movl	4(%rsp), %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, 4(%rdi)
	movl	8(%rsp), %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, 8(%rdi)
	movl	12(%rsi), %r8d
	addl	12(%rsp), %r8d
	movl	%r8d, 12(%rdi)
	addl	16(%rsi), %edx
	movl	%edx, 16(%rdi)
	movl	20(%rsp), %edx
	addl	20(%rsi), %edx
	movl	%edx, 20(%rdi)
	movl	24(%rsp), %edx
	addl	24(%rsi), %edx
	movl	%edx, 24(%rdi)
	movl	28(%rsp), %edx
	addl	28(%rsi), %edx
	movl	%edx, 28(%rdi)
	addl	32(%rsi), %ecx
	movl	%ecx, 32(%rdi)
	movl	36(%rsp), %edx
	addl	36(%rsi), %edx
	movl	%edx, 36(%rdi)
	movl	40(%rsp), %edx
	addl	40(%rsi), %edx
	movl	%edx, 40(%rdi)
	movl	44(%rsp), %edx
	addl	44(%rsi), %edx
	movl	%edx, 44(%rdi)
	addl	48(%rsi), %eax
	movl	%eax, 48(%rdi)
	movl	52(%rsp), %eax
	addl	52(%rsi), %eax
	movl	%eax, 52(%rdi)
	movl	56(%rsp), %eax
	addl	56(%rsi), %eax
	movl	%eax, 56(%rdi)
	movl	60(%rsi), %eax
	addl	60(%rsp), %eax
	movl	%eax, 60(%rdi)
	jmp	.L38
.L43:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2738:
	.size	_Z18chacha_block_reistPjPKj, .-_Z18chacha_block_reistPjPKj
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3051:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rbp
	movq	%rbp, 24(%rsp)
	leaq	16(%rdi), %rbp
	movq	%rbp, (%rdi)
	testq	%rsi, %rsi
	je	.L57
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	cmpq	$15, %rax
	ja	.L58
	cmpq	$1, %rax
	jne	.L49
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L50:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L56
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L50
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L58:
	leaq	16(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	8(%rsp), %rcx
	movq	%rax, (%rbx)
	movq	%rax, %rbp
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbx)
.L48:
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	.L50
.L57:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L46
.L56:
	call	__stack_chk_fail@PLT
.L46:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3051:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"stoi"
.LC2:
	.string	"stoul"
.LC3:
	.string	"/proc/cpuinfo"
.LC4:
	.string	"model name"
.LC5:
	.string	":"
.LC6:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC8:
	.string	"cpu MHz"
.LC9:
	.string	"/proc/meminfo"
.LC10:
	.string	"MemTotal"
.LC11:
	.string	"r"
.LC12:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"========================================\n"
	.section	.rodata.str1.1
.LC14:
	.string	"ChaCha20 REIST Benchmark\n"
.LC15:
	.string	"System Information:\n"
.LC16:
	.string	"  Hostname: "
.LC17:
	.string	"\n"
.LC18:
	.string	"  OS: "
.LC19:
	.string	"  CPU Model: "
.LC20:
	.string	"  CPU MHz: "
.LC21:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"\n--- Modular Addition (32-bit) ---\n"
	.section	.rodata.str1.1
.LC24:
	.string	"std_add    : "
.LC25:
	.string	" s\n"
.LC26:
	.string	"reist_add32: "
.LC28:
	.string	"Speed ratio: "
.LC29:
	.string	"x (std / REIST)\n"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"\n--- ChaCha20-like Cipher-Speed ---\n"
	.section	.rodata.str1.1
.LC36:
	.string	"Classic : "
.LC37:
	.string	" s ("
.LC39:
	.string	" MB/s)\n"
.LC40:
	.string	"REIST   : "
.LC41:
	.string	"x (classic / REIST)\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB42:
	.section	.text.startup,"ax",@progbits
.LHOTB42:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2740:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2740
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$1256, %rsp
	.cfi_def_cfa_offset 1312
	movq	%fs:40, %rax
	movq	%rax, 1240(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L136
	leaq	55(%rsp), %rax
	movq	%rsi, %r13
	movq	8(%rsi), %rsi
	movl	%edi, %r12d
	leaq	320(%rsp), %rbp
	movq	%rax, %rdx
	movq	%rax, 16(%rsp)
	movq	%rbp, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	movq	320(%rsp), %r15
	call	__errno_location@PLT
	xorl	%edx, %edx
	movq	%rax, %rbx
	movl	(%rax), %eax
	movq	%r15, %rdi
	movl	%edx, (%rbx)
	movl	$10, %edx
	movl	%eax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
	call	__isoc23_strtol@PLT
	movq	%rax, %r14
	cmpq	56(%rsp), %r15
	je	.L182
	movl	(%rbx), %edx
	cmpl	$34, %edx
	je	.L63
	movl	$2147483648, %eax
	addq	%r14, %rax
	shrq	$32, %rax
	jne	.L63
	testl	%edx, %edx
	jne	.L66
	movl	8(%rsp), %eax
	movl	%eax, (%rbx)
.L66:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %r12d
	jne	.L197
.L60:
	leaq	112(%rsp), %rax
	leaq	80(%rsp), %r13
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%rax, 96(%rsp)
	leaq	.LC3(%rip), %rsi
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	leaq	192(%rsp), %r15
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%r13, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	%rax, 24(%rsp)
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE1:
	leaq	240(%rsp), %rax
	movb	$0, 240(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, 224(%rsp)
	movq	$0, 232(%rsp)
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L202:
	movsbl	67(%r12), %edx
.L107:
	leaq	224(%rsp), %rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L198
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC4(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L81
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	232(%rsp), %rcx
	addq	$2, %rax
	cmpq	%rax, %rcx
	jb	.L185
	movq	224(%rsp), %r9
	leaq	272(%rsp), %r15
	subq	%rax, %rcx
	movq	%r15, 256(%rsp)
	movq	%rcx, 56(%rsp)
	addq	%rax, %r9
	cmpq	$15, %rcx
	ja	.L199
	cmpq	$1, %rcx
	jne	.L86
	movzbl	(%r9), %eax
	movb	%al, 272(%rsp)
.L88:
	movq	%r15, %rax
.L87:
	movq	%rcx, 264(%rsp)
	movb	$0, (%rax,%rcx)
	movq	64(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%r13, %rax
	je	.L200
	movq	256(%rsp), %rcx
	movq	264(%rsp), %rdx
	cmpq	%r15, %rcx
	je	.L128
	movq	80(%rsp), %rsi
	movq	%rdx, %xmm0
	movq	%rcx, 64(%rsp)
	movhps	272(%rsp), %xmm0
	movups	%xmm0, 72(%rsp)
	testq	%rax, %rax
	je	.L101
	movq	%rax, 256(%rsp)
	movq	%rsi, 272(%rsp)
.L100:
	movb	$0, (%rax)
	movq	256(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L81
	movq	272(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L81:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L201
.L103:
	movq	320(%rsp), %rax
	movq	-24(%rax), %rax
	movq	560(%rsp,%rax), %r12
	testq	%r12, %r12
	je	.L186
	cmpb	$0, 56(%r12)
	jne	.L202
	movq	%r12, %rdi
	leaq	224(%rsp), %rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rbx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rbx, %rax
	je	.L107
	leaq	224(%rsp), %rbx
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L86:
	testq	%rcx, %rcx
	je	.L88
	movq	%r15, %rdi
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L199:
	leaq	56(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r9, 16(%rsp)
	leaq	256(%rsp), %rdi
	movq	%rcx, 8(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	movq	%rax, 256(%rsp)
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r9
	movq	%rax, 272(%rsp)
.L85:
	movq	%rcx, %rdx
	movq	%r9, %rsi
	call	memcpy@PLT
	movq	56(%rsp), %rcx
	movq	256(%rsp), %rax
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L200:
	movq	256(%rsp), %rax
	movq	264(%rsp), %rdx
	cmpq	%r15, %rax
	je	.L128
	movq	264(%rsp), %xmm0
	movq	%rax, 64(%rsp)
	movhps	272(%rsp), %xmm0
	movups	%xmm0, 72(%rsp)
.L101:
	movq	%r15, 256(%rsp)
	leaq	272(%rsp), %r15
	movq	%r15, %rax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L128:
	testq	%rdx, %rdx
	je	.L91
	cmpq	$1, %rdx
	je	.L203
	movl	%edx, %eax
	cmpl	$8, %edx
	jb	.L204
	movq	272(%rsp), %rax
	movq	%r15, %rdi
	movq	%rax, (%rsi)
	movl	%edx, %eax
	movq	-8(%r15,%rax), %rcx
	movq	%rcx, -8(%rsi,%rax)
	leaq	8(%rsi), %rcx
	movq	%rsi, %rax
	andq	$-8, %rcx
	subq	%rcx, %rax
	subq	%rax, %rdi
	addl	%edx, %eax
	andl	$-8, %eax
	cmpl	$8, %eax
	jb	.L195
	andl	$-8, %eax
	xorl	%edx, %edx
.L98:
	movl	%edx, %esi
	addl	$8, %edx
	movq	(%rdi,%rsi), %r9
	movq	%r9, (%rcx,%rsi)
	cmpl	%eax, %edx
	jb	.L98
.L195:
	movq	64(%rsp), %rsi
	movq	264(%rsp), %rdx
	.p2align 4
	.p2align 3
.L91:
	movq	%rdx, 72(%rsp)
	movb	$0, (%rsi,%rdx)
	movq	256(%rsp), %rax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L198:
	movq	%rbx, %rdi
	leaq	192(%rsp), %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%rax, 16(%rsp)
	leaq	.LC9(%rip), %rsi
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	movq	32(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	%rax, 224(%rsp)
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE4:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L109
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	128(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 16(%rsp)
	jne	.L205
.L110:
	movq	%rbx, %rdi
	leaq	976(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L190
.L196:
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.L111:
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	leaq	192(%rsp), %r15
.LEHB5:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L112
	movq	%rax, %rdx
	movl	$128, %esi
	leaq	848(%rsp), %rdi
	leaq	192(%rsp), %r15
	call	fgets@PLT
	testq	%rax, %rax
	je	.L114
	leaq	56(%rsp), %rdx
	leaq	848(%rsp), %rsi
	movq	%rbp, %rdi
	leaq	192(%rsp), %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	200(%rsp), %rax
	testq	%rax, %rax
	jne	.L206
.L114:
	movq	%rbx, %rdi
	call	pclose@PLT
.L112:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC15(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	testl	%r14d, %r14d
	jle	.L116
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movsd	.LC22(%rip), %xmm7
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm7, 8(%rsp)
	movq	%xmm0, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
.L132:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	32(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L207
.L117:
	movdqa	.LC30(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC31(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC32(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC33(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r13
	testl	%r14d, %r14d
	jle	.L119
	xorl	%ebx, %ebx
	leaq	256(%rsp), %r12
	.p2align 4
	.p2align 3
.L120:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	addl	$1, %ebx
	call	_Z16chacha_block_stdPjPKj
	cmpl	%ebx, %r14d
	jne	.L120
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%r13, %rax
	xorl	%r13d, %r13d
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	.p2align 4
	.p2align 3
.L121:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	addl	$1, %r13d
	call	_Z18chacha_block_reistPjPKj
	cmpl	%ebx, %r13d
	jne	.L121
.L131:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC34(%rip), %xmm4
	subq	40(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	mulsd	%xmm0, %xmm4
	leaq	.LC35(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%xmm4, %rbx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	movq	%rbx, %xmm5
	divsd	32(%rsp), %xmm5
	movapd	%xmm5, %xmm0
	divsd	.LC38(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	movq	%rbx, %xmm6
	divsd	8(%rsp), %xmm6
	movapd	%xmm6, %xmm0
	divsd	.LC38(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	8(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L122
	movl	$13, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	32(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE5:
.L122:
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L208
	addq	$1256, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L201:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	256(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB6:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE6:
	leaq	96(%rsp), %rdi
	leaq	256(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	256(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L103
.L109:
	movq	%rbx, %rdi
	leaq	976(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L209
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	168(%rsp), %rdx
	movq	%rax, %r8
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L133
.L206:
	movq	192(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	jne	.L114
	movl	$1, %edx
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L114
.L204:
	testb	$4, %dl
	jne	.L210
	testl	%eax, %eax
	je	.L91
	movzbl	272(%rsp), %edx
	movb	%dl, (%rsi)
	testb	$2, %al
	je	.L195
	movzwl	-2(%r15,%rax), %edx
	movw	%dx, -2(%rsi,%rax)
	movq	64(%rsp), %rsi
	movq	264(%rsp), %rdx
	jmp	.L91
.L197:
	movq	16(%r13), %rsi
	movq	16(%rsp), %rdx
	movq	%rbp, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE7:
	xorl	%eax, %eax
	movl	(%rbx), %r12d
	movq	24(%rsp), %rsi
	movq	320(%rsp), %r13
	movl	%eax, (%rbx)
	movl	$10, %edx
	movq	%r13, %rdi
	call	__isoc23_strtoul@PLT
	cmpq	56(%rsp), %r13
	je	.L183
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L184
	testl	%eax, %eax
	jne	.L76
	movl	%r12d, (%rbx)
.L76:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L60
.L190:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	168(%rsp), %rdx
	movq	%rax, %r8
.L133:
	leaq	160(%rsp), %rax
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	leaq	192(%rsp), %r15
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE8:
	jmp	.L111
.L209:
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L196
.L205:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	256(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	128(%rsp), %rax
	leaq	256(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	256(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L110
.L207:
	movl	$13, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rbx, %xmm0
	divsd	32(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE10:
	jmp	.L117
.L136:
	movl	$1000000, %r14d
	leaq	320(%rsp), %rbp
	jmp	.L60
.L203:
	movzbl	272(%rsp), %eax
	movb	%al, (%rsi)
	movq	64(%rsp), %rsi
	movq	264(%rsp), %rdx
	jmp	.L91
.L116:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movsd	.LC22(%rip), %xmm5
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm5, 8(%rsp)
	movq	%xmm0, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	jmp	.L132
.L119:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%r13, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	jmp	.L131
.L210:
	movl	272(%rsp), %edx
	movl	%edx, (%rsi)
	movl	-4(%r15,%rax), %edx
	movl	%edx, -4(%rsi,%rax)
	movq	64(%rsp), %rsi
	movq	264(%rsp), %rdx
	jmp	.L91
.L208:
	call	__stack_chk_fail@PLT
.L180:
	jmp	.L181
.L139:
	movq	%rax, %r12
	jmp	.L125
.L140:
	movq	%rax, %r12
	jmp	.L126
	.section	.gcc_except_table,"a",@progbits
.LLSDA2740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2740-.LLSDACSB2740
.LLSDACSB2740:
	.uleb128 .LEHB0-.LFB2740
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2740
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L139-.LFB2740
	.uleb128 0
	.uleb128 .LEHB2-.LFB2740
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L180-.LFB2740
	.uleb128 0
	.uleb128 .LEHB3-.LFB2740
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L139-.LFB2740
	.uleb128 0
	.uleb128 .LEHB4-.LFB2740
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L140-.LFB2740
	.uleb128 0
	.uleb128 .LEHB5-.LFB2740
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L139-.LFB2740
	.uleb128 0
	.uleb128 .LEHB6-.LFB2740
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L180-.LFB2740
	.uleb128 0
	.uleb128 .LEHB7-.LFB2740
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2740
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L139-.LFB2740
	.uleb128 0
	.uleb128 .LEHB9-.LFB2740
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L140-.LFB2740
	.uleb128 0
	.uleb128 .LEHB10-.LFB2740
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L139-.LFB2740
	.uleb128 0
.LLSDACSE2740:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2740
	.type	main.cold, @function
main.cold:
.LFSB2740:
.L185:
	.cfi_def_cfa_offset 1312
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	1240(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L211
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
.LEHB11:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L186:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L212
	leaq	224(%rsp), %rbx
	call	_ZSt16__throw_bad_castv@PLT
.LEHE11:
.L138:
.L181:
	movq	%rbx, %rdi
	movq	%rax, %r12
	leaq	192(%rsp), %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.L125:
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L213
	movq	%r12, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L212:
	call	__stack_chk_fail@PLT
.L213:
	call	__stack_chk_fail@PLT
.L183:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L214
	leaq	.LC2(%rip), %rdi
.LEHB13:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L184:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L215
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE13:
.L214:
	call	__stack_chk_fail@PLT
.L182:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L216
	leaq	.LC1(%rip), %rdi
.LEHB14:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L63:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L217
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE14:
.L211:
	call	__stack_chk_fail@PLT
.L215:
	call	__stack_chk_fail@PLT
.L216:
	call	__stack_chk_fail@PLT
.L217:
	call	__stack_chk_fail@PLT
.L142:
	movq	%rax, %r13
	cmpl	$0, (%rbx)
	jne	.L78
	movl	%r12d, (%rbx)
.L78:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L218
	movq	%r13, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L141:
	movq	%rax, %r12
	cmpl	$0, (%rbx)
	jne	.L70
	movl	8(%rsp), %eax
	movl	%eax, (%rbx)
.L70:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L219
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L218:
	call	__stack_chk_fail@PLT
.L126:
	movq	%rbx, %rdi
	leaq	192(%rsp), %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L125
.L219:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2740:
	.section	.gcc_except_table
.LLSDAC2740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2740-.LLSDACSBC2740
.LLSDACSBC2740:
	.uleb128 .LEHB11-.LCOLDB42
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L138-.LCOLDB42
	.uleb128 0
	.uleb128 .LEHB12-.LCOLDB42
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LCOLDB42
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L142-.LCOLDB42
	.uleb128 0
	.uleb128 .LEHB14-.LCOLDB42
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L141-.LCOLDB42
	.uleb128 0
	.uleb128 .LEHB15-.LCOLDB42
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC2740:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE42:
	.section	.text.startup
.LHOTE42:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC22:
	.long	0
	.long	1104006501
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC30:
	.long	0
	.long	-1640531527
	.long	1013904242
	.long	-626627285
	.align 16
.LC31:
	.long	2027808484
	.long	387276957
	.long	-1253254570
	.long	1401181199
	.align 16
.LC32:
	.long	-239350328
	.long	-1879881855
	.long	774553914
	.long	-865977613
	.align 16
.LC33:
	.long	1788458156
	.long	147926629
	.long	-1492604898
	.long	1161830871
	.section	.rodata.cst8
	.align 8
.LC34:
	.long	0
	.long	1078984704
	.align 8
.LC38:
	.long	0
	.long	1093567616
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
