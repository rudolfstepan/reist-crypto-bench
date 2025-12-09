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
.LFB1810:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1810:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, @function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB3434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L6
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	call	strlen@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rax, %rdx
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L6:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	orl	$1, %esi
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	.cfi_endproc
.LFE3434:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	16(%rbp), %rax
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdi
	movq	8(%rsi), %rdx
	movq	(%rsi), %rsi
	cmpq	%rax, %rdi
	leaq	16(%rbx), %rax
	je	.L23
	cmpq	%rsi, %rax
	je	.L9
	movq	%rsi, 0(%rbp)
	movq	16(%rbp), %rcx
	movq	%rdx, 8(%rbp)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rbp)
	testq	%rdi, %rdi
	je	.L17
	movq	%rdi, (%rbx)
	movq	%rcx, 16(%rbx)
.L12:
	movq	$0, 8(%rbx)
	movb	$0, (%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	cmpq	%rsi, %rax
	je	.L9
	movq	%rsi, 0(%rbp)
	movq	%rax, %rdi
	movq	%rdx, 8(%rbp)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rbp)
.L15:
	movq	%rdi, (%rbx)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L9:
	cmpq	%rbx, %rbp
	je	.L16
	testq	%rdx, %rdx
	je	.L13
	cmpq	$1, %rdx
	je	.L24
	call	memcpy@PLT
	movq	8(%rbx), %rdx
	movq	0(%rbp), %rdi
.L13:
	movq	%rdx, 8(%rbp)
	movb	$0, (%rdi,%rdx)
	movq	(%rbx), %rdi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%rax, %rdi
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rdx
	movq	0(%rbp), %rdi
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%rsi, %rdi
	jmp	.L12
	.cfi_endproc
.LFE3435:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.p2align 4
	.globl	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, @function
_Z16chacha_block_stdPjPKj:
.LFB2761:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movl	16(%rsi), %edx
	movl	(%rsi), %r8d
	movq	%rdi, %rcx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	48(%rsi), %eax
	movl	32(%rsi), %edi
	leaq	4(%rsi), %r10
	addl	%edx, %r8d
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%rcx, %r9
	xorl	%r8d, %eax
	movdqu	32(%rsi), %xmm3
	movdqu	48(%rsi), %xmm4
	roll	$16, %eax
	movaps	%xmm1, (%rsp)
	addl	%eax, %edi
	movaps	%xmm2, 16(%rsp)
	xorl	%edi, %edx
	movaps	%xmm3, 32(%rsp)
	roll	$12, %edx
	movaps	%xmm4, 48(%rsp)
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	subq	%r10, %r9
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	movl	%r8d, (%rsp)
	roll	$8, %eax
	addl	%eax, %edi
	movl	%eax, 48(%rsp)
	xorl	%edi, %edx
	movl	%edi, 32(%rsp)
	roll	$7, %edx
	movl	%edx, 16(%rsp)
	cmpq	$8, %r9
	jbe	.L26
	movdqu	(%rsi), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movdqu	16(%rsi), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movdqu	32(%rsi), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rcx)
	movdqu	48(%rsi), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rcx)
.L25:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
	addl	(%rsi), %r8d
	movl	%r8d, (%rcx)
	movl	4(%rsi), %r8d
	addl	4(%rsp), %r8d
	movl	%r8d, 4(%rcx)
	movl	8(%rsi), %r8d
	addl	8(%rsp), %r8d
	movl	%r8d, 8(%rcx)
	movl	12(%rsp), %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 12(%rcx)
	addl	16(%rsi), %edx
	movl	%edx, 16(%rcx)
	movl	20(%rsi), %edx
	addl	20(%rsp), %edx
	movl	%edx, 20(%rcx)
	movl	24(%rsi), %edx
	addl	24(%rsp), %edx
	movl	%edx, 24(%rcx)
	movl	28(%rsi), %edx
	addl	28(%rsp), %edx
	movl	%edx, 28(%rcx)
	addl	32(%rsi), %edi
	movl	%edi, 32(%rcx)
	movl	36(%rsi), %edx
	addl	36(%rsp), %edx
	movl	%edx, 36(%rcx)
	movl	40(%rsi), %edx
	addl	40(%rsp), %edx
	movl	%edx, 40(%rcx)
	movl	44(%rsi), %edx
	addl	44(%rsp), %edx
	movl	%edx, 44(%rcx)
	addl	48(%rsi), %eax
	movl	%eax, 48(%rcx)
	movl	52(%rsi), %eax
	addl	52(%rsp), %eax
	movl	%eax, 52(%rcx)
	movl	56(%rsi), %eax
	addl	56(%rsp), %eax
	movl	%eax, 56(%rcx)
	movl	60(%rsp), %eax
	addl	60(%rsi), %eax
	movl	%eax, 60(%rcx)
	jmp	.L25
.L30:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2761:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.p2align 4
	.globl	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, @function
_Z18chacha_block_reistPjPKj:
.LFB2762:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movl	16(%rsi), %edx
	movl	(%rsi), %r8d
	movq	%rdi, %rcx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	48(%rsi), %eax
	movl	32(%rsi), %edi
	leaq	4(%rsi), %r10
	addl	%edx, %r8d
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%rcx, %r9
	xorl	%r8d, %eax
	movdqu	32(%rsi), %xmm3
	movdqu	48(%rsi), %xmm4
	roll	$16, %eax
	movaps	%xmm1, (%rsp)
	addl	%eax, %edi
	movaps	%xmm2, 16(%rsp)
	xorl	%edi, %edx
	movaps	%xmm3, 32(%rsp)
	roll	$12, %edx
	movaps	%xmm4, 48(%rsp)
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	subq	%r10, %r9
	xorl	%r8d, %eax
	roll	$8, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$7, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	roll	$16, %eax
	addl	%eax, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	addl	%edx, %r8d
	xorl	%r8d, %eax
	movl	%r8d, (%rsp)
	roll	$8, %eax
	addl	%eax, %edi
	movl	%eax, 48(%rsp)
	xorl	%edi, %edx
	movl	%edi, 32(%rsp)
	roll	$7, %edx
	movl	%edx, 16(%rsp)
	cmpq	$8, %r9
	jbe	.L32
	movdqu	(%rsi), %xmm0
	paddd	(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movdqu	16(%rsi), %xmm0
	paddd	16(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movdqu	32(%rsi), %xmm0
	paddd	32(%rsp), %xmm0
	movups	%xmm0, 32(%rcx)
	movdqu	48(%rsi), %xmm0
	paddd	48(%rsp), %xmm0
	movups	%xmm0, 48(%rcx)
.L31:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L36
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	addl	(%rsi), %r8d
	movl	%r8d, (%rcx)
	movl	4(%rsp), %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, 4(%rcx)
	movl	8(%rsp), %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, 8(%rcx)
	movl	12(%rsi), %r8d
	addl	12(%rsp), %r8d
	movl	%r8d, 12(%rcx)
	addl	16(%rsi), %edx
	movl	%edx, 16(%rcx)
	movl	20(%rsp), %edx
	addl	20(%rsi), %edx
	movl	%edx, 20(%rcx)
	movl	24(%rsp), %edx
	addl	24(%rsi), %edx
	movl	%edx, 24(%rcx)
	movl	28(%rsp), %edx
	addl	28(%rsi), %edx
	movl	%edx, 28(%rcx)
	addl	32(%rsi), %edi
	movl	%edi, 32(%rcx)
	movl	36(%rsp), %edx
	addl	36(%rsi), %edx
	movl	%edx, 36(%rcx)
	movl	40(%rsp), %edx
	addl	40(%rsi), %edx
	movl	%edx, 40(%rcx)
	movl	44(%rsp), %edx
	addl	44(%rsi), %edx
	movl	%edx, 44(%rcx)
	addl	48(%rsi), %eax
	movl	%eax, 48(%rcx)
	movl	52(%rsp), %eax
	addl	52(%rsi), %eax
	movl	%eax, 52(%rcx)
	movl	56(%rsp), %eax
	addl	56(%rsi), %eax
	movl	%eax, 56(%rcx)
	movl	60(%rsi), %eax
	addl	60(%rsp), %eax
	movl	%eax, 60(%rcx)
	jmp	.L31
.L36:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2762:
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
.LFB3072:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%r13, (%rdi)
	testq	%rsi, %rsi
	je	.L50
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, (%rsp)
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	.L51
	cmpq	$1, %rax
	jne	.L42
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L43:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L43
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, (%rbx)
	movq	%rax, %r13
	movq	(%rsp), %rax
	movq	%rax, 16(%rbx)
.L41:
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L43
.L49:
	call	__stack_chk_fail@PLT
.L50:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3072:
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
.LFB2764:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2764
	endbr64
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
	jle	.L120
	leaq	55(%rsp), %rax
	movq	%rsi, %r15
	leaq	320(%rsp), %r13
	movl	%edi, %ebp
	movq	8(%rsi), %rsi
	movq	%rax, %rdx
	movq	%r13, %rdi
	movq	%rax, 8(%rsp)
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	movq	320(%rsp), %r14
	call	__errno_location@PLT
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	(%rax), %eax
	movq	%r14, %rdi
	movl	%esi, (%rbx)
	movl	%eax, (%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 16(%rsp)
	call	__isoc23_strtol@PLT
	movq	%rax, %r12
	cmpq	56(%rsp), %r14
	je	.L162
	movl	(%rbx), %edx
	cmpl	$34, %edx
	je	.L56
	movl	$2147483648, %eax
	movl	$4294967295, %esi
	addq	%r12, %rax
	cmpq	%rax, %rsi
	jb	.L56
	testl	%edx, %edx
	jne	.L59
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
.L59:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %ebp
	jne	.L163
.L61:
	movl	%r12d, (%rsp)
.L53:
	leaq	80(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movb	$0, 80(%rsp)
	movq	%rax, 8(%rsp)
	leaq	.LC3(%rip), %rsi
	leaq	192(%rsp), %rbx
	movq	%rax, 64(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	$0, 72(%rsp)
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
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L171:
	movsbl	67(%rbx), %edx
.L95:
	leaq	224(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L164
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC4(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L74
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	232(%rsp), %rbx
	addq	$2, %rax
	cmpq	%rax, %rbx
	jb	.L165
	movq	224(%rsp), %r15
	leaq	272(%rsp), %r12
	subq	%rax, %rbx
	leaq	256(%rsp), %r14
	movq	%r12, 256(%rsp)
	movq	%rbx, 56(%rsp)
	addq	%rax, %r15
	cmpq	$15, %rbx
	ja	.L166
	cmpq	$1, %rbx
	jne	.L79
	movzbl	(%r15), %eax
	movb	%al, 272(%rsp)
.L81:
	movq	%r12, %rax
.L80:
	movq	%rbx, 264(%rsp)
	movb	$0, (%rax,%rbx)
	movq	256(%rsp), %rdx
	movq	64(%rsp), %rax
	cmpq	%r12, %rdx
	je	.L167
	movdqu	264(%rsp), %xmm0
	movq	8(%rsp), %rcx
	cmpq	%rcx, %rax
	je	.L168
	movq	80(%rsp), %rcx
	movq	%rdx, 64(%rsp)
	movups	%xmm0, 72(%rsp)
	testq	%rax, %rax
	je	.L89
	movq	%rax, 256(%rsp)
	movq	%rcx, 272(%rsp)
.L88:
	movq	$0, 264(%rsp)
	movb	$0, (%rax)
	movq	256(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L74
	movq	272(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L74:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC8(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L169
.L91:
	movq	320(%rsp), %rax
	movq	-24(%rax), %rax
	movq	560(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L170
	cmpb	$0, 56(%rbx)
	jne	.L171
	movq	%rbx, %rdi
	leaq	224(%rsp), %rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L95
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
.LEHE2:
	movsbl	%al, %edx
	jmp	.L95
.L163:
	movq	16(%r15), %rsi
	movq	8(%rsp), %rdx
	movq	%r13, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	xorl	%ecx, %ecx
	movl	(%rbx), %ebp
	movq	16(%rsp), %rsi
	movq	320(%rsp), %r14
	movl	%ecx, (%rbx)
	movl	$10, %edx
	movq	%r14, %rdi
	call	__isoc23_strtoul@PLT
	cmpq	56(%rsp), %r14
	je	.L172
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L173
	testl	%eax, %eax
	jne	.L69
	movl	%ebp, (%rbx)
.L69:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L79:
	testq	%rbx, %rbx
	je	.L81
	movq	%r12, %rdi
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L166:
	leaq	56(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 256(%rsp)
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	%rax, 272(%rsp)
.L78:
	movq	%rbx, %rdx
	movq	%r15, %rsi
	call	memcpy@PLT
	movq	56(%rsp), %rbx
	movq	256(%rsp), %rax
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%rdx, 64(%rsp)
	movups	%xmm0, 72(%rsp)
.L89:
	movq	%r12, 256(%rsp)
	leaq	272(%rsp), %r12
	movq	%r12, %rax
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L167:
	movq	264(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L84
	cmpq	$1, %rcx
	je	.L174
	movq	%rax, %rdi
	movl	%ecx, %ecx
	movq	%r12, %rsi
	rep movsb
	movq	264(%rsp), %rcx
	movq	64(%rsp), %rax
.L84:
	movq	%rcx, 72(%rsp)
	movb	$0, (%rax,%rcx)
	movq	256(%rsp), %rax
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L164:
	movq	%rbp, %rdi
	leaq	192(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rax, 16(%rsp)
	leaq	.LC9(%rip), %rsi
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	32(%rsp), %rax
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	%rax, 224(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L97
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
.L98:
	movq	%rbp, %rdi
	leaq	976(%rsp), %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbp, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L155
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.L100:
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	leaq	192(%rsp), %rbx
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L101
	leaq	848(%rsp), %r14
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%r14, %rdi
	leaq	192(%rsp), %rbx
	call	fgets@PLT
	testq	%rax, %rax
	je	.L103
	leaq	56(%rsp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	leaq	192(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.L103
	movq	192(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L175
.L103:
	movq	%rbp, %rdi
	call	pclose@PLT
.L101:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rbp
	leaq	.LC13(%rip), %r12
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	-24(%rax), %rdx
	addq	%rbp, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC14(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC15(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC17(%rip), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	(%rsp), %edx
	movq	%rax, %r14
	testl	%edx, %edx
	jle	.L105
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC22(%rip), %xmm5
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm5, 8(%rsp)
	divsd	%xmm5, %xmm0
	movq	%xmm0, %r15
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
.L118:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	leaq	.LC23(%rip), %rsi
	movq	%rbp, %rdi
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC25(%rip), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	32(%rsp), %xmm3
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm3
	ja	.L176
.L106:
	movdqa	.LC30(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC31(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC32(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC33(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 32(%rsp)
	movl	(%rsp), %eax
	testl	%eax, %eax
	jle	.L108
	xorl	%r15d, %r15d
	leaq	256(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L109:
	movq	%r14, %rsi
	movq	%r13, %rdi
	movl	%r15d, %r12d
	call	_Z16chacha_block_stdPjPKj
	leal	1(%r15), %r15d
	cmpl	%r15d, (%rsp)
	jne	.L109
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	32(%rsp), %rcx
	pxor	%xmm0, %xmm0
	xorl	%r15d, %r15d
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L110:
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_Z18chacha_block_reistPjPKj
	movl	%r15d, %ecx
	addl	$1, %r15d
	cmpl	%r12d, %ecx
	jne	.L110
.L117:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	40(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	leaq	.LC35(%rip), %rsi
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	(%rsp), %xmm0
	mulsd	.LC34(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC36(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC37(%rip), %r14
	movl	$4, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%r14, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	movsd	(%rsp), %xmm1
	divsd	32(%rsp), %xmm1
	movapd	%xmm1, %xmm0
	divsd	.LC38(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC39(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	movsd	(%rsp), %xmm1
	divsd	8(%rsp), %xmm1
	movapd	%xmm1, %xmm0
	divsd	.LC38(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC39(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	8(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L111
	movl	$13, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm4
	movq	%rbp, %rdi
	divsd	8(%rsp), %xmm4
	movapd	%xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC41(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE7:
.L111:
	movq	%rbx, %rdi
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
	jne	.L157
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
.L169:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	256(%rsp), %r14
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%r14, %rdi
.LEHB8:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE8:
	leaq	96(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L91
.L97:
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	128(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 16(%rsp)
	je	.L98
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	256(%rsp), %r14
	orq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%r14, %rdi
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	128(%rsp), %rax
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L98
.L155:
	movq	%rbp, %rdi
	leaq	192(%rsp), %rbx
	call	strlen@PLT
	movq	168(%rsp), %rdx
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	160(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L100
.L120:
	movl	$1000000, (%rsp)
	leaq	320(%rsp), %r13
	jmp	.L53
.L176:
	movl	$13, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	movq	%r15, %xmm0
	divsd	32(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC29(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE10:
	jmp	.L106
.L174:
	movzbl	272(%rsp), %edx
	movb	%dl, (%rax)
	movq	264(%rsp), %rcx
	movq	64(%rsp), %rax
	jmp	.L84
.L108:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	32(%rsp), %rcx
	pxor	%xmm0, %xmm0
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	jmp	.L117
.L105:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC22(%rip), %xmm7
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm7, 8(%rsp)
	divsd	%xmm7, %xmm0
	movq	%xmm0, %r15
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
	jmp	.L118
.L175:
	movl	$1, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L103
.L170:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	leaq	224(%rsp), %rbp
.LEHB11:
	call	_ZSt16__throw_bad_castv@PLT
.L165:
	movq	1240(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L157
	movq	%rax, %rdx
	movq	%rbx, %rcx
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE11:
.L173:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	leaq	.LC2(%rip), %rdi
.LEHB12:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE12:
.L157:
	call	__stack_chk_fail@PLT
.L162:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	leaq	.LC1(%rip), %rdi
.LEHB13:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L56:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE13:
.L172:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	leaq	.LC2(%rip), %rdi
.LEHB14:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE14:
.L125:
	endbr64
	movq	%rax, %rbp
	jmp	.L62
.L124:
	endbr64
	movq	%rax, %rbx
	jmp	.L115
.L126:
	endbr64
	movq	%rax, %r12
	jmp	.L70
.L122:
	endbr64
	movq	%rax, %rbx
	jmp	.L113
.L123:
	endbr64
	movq	%rax, %rbp
	jmp	.L114
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2764:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2764-.LLSDACSB2764
.LLSDACSB2764:
	.uleb128 .LEHB0-.LFB2764
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2764
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L123-.LFB2764
	.uleb128 0
	.uleb128 .LEHB2-.LFB2764
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L122-.LFB2764
	.uleb128 0
	.uleb128 .LEHB3-.LFB2764
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2764
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L122-.LFB2764
	.uleb128 0
	.uleb128 .LEHB5-.LFB2764
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L123-.LFB2764
	.uleb128 0
	.uleb128 .LEHB6-.LFB2764
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L124-.LFB2764
	.uleb128 0
	.uleb128 .LEHB7-.LFB2764
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L123-.LFB2764
	.uleb128 0
	.uleb128 .LEHB8-.LFB2764
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L122-.LFB2764
	.uleb128 0
	.uleb128 .LEHB9-.LFB2764
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L124-.LFB2764
	.uleb128 0
	.uleb128 .LEHB10-.LFB2764
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L123-.LFB2764
	.uleb128 0
	.uleb128 .LEHB11-.LFB2764
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L122-.LFB2764
	.uleb128 0
	.uleb128 .LEHB12-.LFB2764
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L126-.LFB2764
	.uleb128 0
	.uleb128 .LEHB13-.LFB2764
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L125-.LFB2764
	.uleb128 0
	.uleb128 .LEHB14-.LFB2764
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L126-.LFB2764
	.uleb128 0
.LLSDACSE2764:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2764
	.type	main.cold, @function
main.cold:
.LFSB2764:
.L62:
	.cfi_def_cfa_offset 1312
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	cmpl	$0, (%rbx)
	jne	.L63
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
.L63:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L161
.L116:
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L115:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	leaq	192(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
.L114:
	movq	%rbx, %rdi
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
	je	.L116
.L161:
	call	__stack_chk_fail@PLT
.L113:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	leaq	192(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L114
.L70:
	cmpl	$0, (%rbx)
	jne	.L71
	movl	%ebp, (%rbx)
.L71:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L161
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
	.cfi_endproc
.LFE2764:
	.section	.gcc_except_table
.LLSDAC2764:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2764-.LLSDACSBC2764
.LLSDACSBC2764:
	.uleb128 .LEHB15-.LCOLDB42
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC2764:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
