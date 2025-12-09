	.file	"bench_chacha_stream.cpp"
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
.LFB3864:
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
.LFE3864:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3866:
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
.LFE3866:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.p2align 4
	.globl	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, @function
_Z16chacha_block_stdPjPKj:
.LFB3124:
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
.LFE3124:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.p2align 4
	.globl	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, @function
_Z18chacha_block_reistPjPKj:
.LFB3125:
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
.LFE3125:
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
.LFB3433:
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
.LFE3433:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIjSaIjEED2Ev
	.type	_ZNSt6vectorIjSaIjEED2Ev, @function
_ZNSt6vectorIjSaIjEED2Ev:
.LFB3464:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L52
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L52:
	ret
	.cfi_endproc
.LFE3464:
	.size	_ZNSt6vectorIjSaIjEED2Ev, .-_ZNSt6vectorIjSaIjEED2Ev
	.weak	_ZNSt6vectorIjSaIjEED1Ev
	.set	_ZNSt6vectorIjSaIjEED1Ev,_ZNSt6vectorIjSaIjEED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"stoull"
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
.LC17:
	.string	"========================================\n"
	.section	.rodata.str1.1
.LC18:
	.string	"ChaCha20 Stream Benchmark\n"
.LC19:
	.string	"System Information:\n"
.LC20:
	.string	"  Hostname: "
.LC21:
	.string	"\n"
.LC22:
	.string	"  OS: "
.LC23:
	.string	"  CPU Model: "
.LC24:
	.string	"  CPU MHz: "
.LC25:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"========================================\n\n"
	.align 8
.LC29:
	.string	"ChaCha20-like keystream benchmark ("
	.section	.rodata.str1.1
.LC31:
	.string	" MB total)\n\n"
.LC32:
	.string	"Classic : "
.LC33:
	.string	" s ("
.LC35:
	.string	" MB/s)\n"
.LC36:
	.string	"REIST   : "
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"Speed ratio (classic / REIST): "
	.section	.rodata.str1.1
.LC39:
	.string	"x\n"
.LC40:
	.string	"\nSink XOR: "
.LC41:
	.string	" "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB44:
	.section	.text.startup,"ax",@progbits
.LHOTB44:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3127:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3127
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
	subq	$1336, %rsp
	.cfi_def_cfa_offset 1392
	movq	%fs:40, %rax
	movq	%rax, 1320(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L120
	movq	%rsi, %r12
	leaq	111(%rsp), %r14
	movq	8(%rsi), %rsi
	movl	%edi, %r15d
	leaq	400(%rsp), %r13
	movq	%r14, %rdx
	movq	%r13, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	movq	400(%rsp), %rbp
	call	__errno_location@PLT
	xorl	%edx, %edx
	movq	%rax, %rbx
	movl	(%rax), %eax
	movq	%rbp, %rdi
	movl	%edx, (%rbx)
	movl	$10, %edx
	movl	%eax, (%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)
	call	__isoc23_strtoull@PLT
	movq	%rax, 56(%rsp)
	cmpq	112(%rsp), %rbp
	je	.L160
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L161
	testl	%eax, %eax
	jne	.L60
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
.L60:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %r15d
	jne	.L61
	movl	$-889275714, 48(%rsp)
.L55:
	leaq	160(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movq	$0, 152(%rsp)
	movq	%rax, 8(%rsp)
	leaq	.LC3(%rip), %rsi
	movq	%rax, 144(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 272(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	272(%rsp), %rax
	movb	$0, 160(%rsp)
	movq	$0, 184(%rsp)
	movb	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	$0, 248(%rsp)
	movb	$0, 256(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	%rax, 24(%rsp)
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE1:
	leaq	320(%rsp), %rax
	movb	$0, 320(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 304(%rsp)
	movq	$0, 312(%rsp)
.L73:
	leaq	.LC8(%rip), %r15
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L169:
	movsbl	67(%rbx), %edx
.L95:
	leaq	304(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L162
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
	movq	312(%rsp), %rbx
	addq	$2, %rax
	cmpq	%rax, %rbx
	jb	.L163
	movq	304(%rsp), %r14
	leaq	336(%rsp), %rcx
	leaq	352(%rsp), %r12
	subq	%rax, %rbx
	movq	%rcx, (%rsp)
	movq	%r12, 336(%rsp)
	addq	%rax, %r14
	movq	%rbx, 112(%rsp)
	cmpq	$15, %rbx
	ja	.L164
	cmpq	$1, %rbx
	jne	.L79
	movzbl	(%r14), %eax
	movb	%al, 352(%rsp)
.L81:
	movq	%r12, %rax
.L80:
	movq	%rbx, 344(%rsp)
	movb	$0, (%rax,%rbx)
	movq	336(%rsp), %rdx
	movq	144(%rsp), %rax
	cmpq	%r12, %rdx
	je	.L165
	movdqu	344(%rsp), %xmm0
	movq	8(%rsp), %rcx
	cmpq	%rcx, %rax
	je	.L166
	movq	160(%rsp), %rcx
	movq	%rdx, 144(%rsp)
	movups	%xmm0, 152(%rsp)
	testq	%rax, %rax
	je	.L89
	movq	%rax, 336(%rsp)
	movq	%rcx, 352(%rsp)
.L88:
	movq	$0, 344(%rsp)
	movb	$0, (%rax)
	movq	336(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L74
	movq	352(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L74:
	xorl	%edx, %edx
	movl	$7, %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L167
.L91:
	movq	400(%rsp), %rax
	movq	-24(%rax), %rax
	movq	640(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L168
	cmpb	$0, 56(%rbx)
	jne	.L169
	movq	%rbx, %rdi
	leaq	304(%rsp), %rbp
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
.L61:
	movq	16(%r12), %rsi
	movq	%r14, %rdx
	movq	%r13, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	xorl	%eax, %eax
	movl	(%rbx), %ebp
	movq	8(%rsp), %rsi
	movq	400(%rsp), %r12
	movl	%eax, (%rbx)
	movl	$10, %edx
	movq	%r12, %rdi
	call	__isoc23_strtoul@PLT
	cmpq	112(%rsp), %r12
	je	.L170
	movl	(%rbx), %edx
	cmpl	$34, %edx
	je	.L171
	testl	%edx, %edx
	jne	.L69
	movl	%ebp, (%rbx)
.L69:
	movq	%r13, %rdi
	movl	%eax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L79:
	testq	%rbx, %rbx
	je	.L81
	movq	%r12, %rdi
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L164:
	leaq	112(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 336(%rsp)
	movq	%rax, %rdi
	movq	112(%rsp), %rax
	movq	%rax, 352(%rsp)
.L78:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	112(%rsp), %rbx
	movq	336(%rsp), %rax
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L166:
	movq	%rdx, 144(%rsp)
	movups	%xmm0, 152(%rsp)
.L89:
	movq	%r12, 336(%rsp)
	leaq	352(%rsp), %r12
	movq	%r12, %rax
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L165:
	movq	344(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L84
	cmpq	$1, %rdx
	je	.L172
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	rep movsb
	movq	344(%rsp), %rdx
	movq	144(%rsp), %rax
.L84:
	movq	%rdx, 152(%rsp)
	movb	$0, (%rax,%rdx)
	movq	336(%rsp), %rax
	jmp	.L88
.L162:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	208(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rax, 32(%rsp)
	leaq	240(%rsp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, 40(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 24(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	16(%rsp), %rax
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	%rax, 304(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L97
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
.L98:
	movq	%rbp, %rdi
	leaq	1056(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L153
	leaq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
.L100:
	leaq	272(%rsp), %rax
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movq	%rax, 24(%rsp)
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L173
	leaq	928(%rsp), %rbp
	leaq	272(%rsp), %rax
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	movq	%rax, 24(%rsp)
	call	fgets@PLT
	testq	%rax, %rax
	je	.L174
	leaq	272(%rsp), %rax
	leaq	112(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	272(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.L103
	movq	272(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L175
.L103:
	movq	%rbx, %rdi
	call	pclose@PLT
.L101:
	movd	48(%rsp), %xmm6
	movdqa	.LC13(%rip), %xmm2
	movl	$64, %edi
	pshufd	$0, %xmm6, %xmm0
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC14(%rip), %xmm2
	movaps	%xmm3, 336(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC15(%rip), %xmm2
	movaps	%xmm3, 352(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC16(%rip), %xmm2
	movaps	%xmm3, 368(%rsp)
	pmuludq	%xmm2, %xmm0
	psrlq	$32, %xmm2
	pmuludq	%xmm2, %xmm1
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movaps	%xmm0, 384(%rsp)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 120(%rsp)
	call	_Znwm@PLT
.LEHE7:
	pxor	%xmm0, %xmm0
	leaq	64(%rax), %r12
	movq	%rax, 112(%rsp)
	movq	%rax, %rbx
	movups	%xmm0, 36(%rax)
	leaq	_ZSt4cout(%rip), %rbp
	leaq	.LC17(%rip), %r14
	movl	$0, (%rax)
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movups	%xmm0, 4(%rax)
	movups	%xmm0, 20(%rax)
	movups	%xmm0, 48(%rax)
	movq	_ZSt4cout(%rip), %rax
	movq	%r12, 128(%rsp)
	movq	-24(%rax), %rdx
	movq	%r12, 120(%rsp)
	addq	%rbp, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC18(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC19(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	248(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC21(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	280(%rsp), %rdx
	movq	272(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC21(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC21(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	184(%rsp), %rdx
	movq	176(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC21(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC21(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC26(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 8(%rsp)
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	.L105
	leaq	336(%rsp), %r15
	xorl	%r14d, %r14d
	movq	%r12, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%r14, %r12
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L106:
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	_Z16chacha_block_stdPjPKj
	movdqu	16(%rbx), %xmm2
	movdqu	(%rbx), %xmm3
	movq	%r12, %rdx
	movdqu	32(%rbx), %xmm1
	movdqu	48(%rbx), %xmm0
	leaq	1(%r12), %r12
	pxor	416(%rsp), %xmm2
	pxor	432(%rsp), %xmm1
	pxor	448(%rsp), %xmm0
	pxor	400(%rsp), %xmm3
	movups	%xmm2, 16(%rbx)
	movups	%xmm3, (%rbx)
	movups	%xmm1, 32(%rbx)
	movups	%xmm0, 48(%rbx)
	cmpq	%r12, %r14
	jne	.L106
	leaq	16(%rbx), %r8
	leaq	32(%rbx), %rcx
	movq	%rdx, %r15
	movq	16(%rsp), %r12
	leaq	48(%rbx), %rdx
	movq	%r8, 80(%rsp)
	xorl	%r14d, %r14d
	movq	%rcx, 88(%rsp)
	movq	%rdx, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	8(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movsd	.LC27(%rip), %xmm7
	subq	%rcx, %rax
	movsd	%xmm7, 72(%rsp)
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, 48(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r15, 8(%rsp)
	movq	80(%rsp), %r15
	movq	%rax, 64(%rsp)
	movq	%r12, 80(%rsp)
	movq	16(%rsp), %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, %r13
	movq	88(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L107:
	movq	(%rsp), %rsi
	movq	16(%rsp), %rdi
	call	_Z18chacha_block_reistPjPKj
	movdqu	(%r15), %xmm2
	movdqu	(%rbx), %xmm1
	movq	%r14, %rsi
	movdqu	(%r12), %xmm0
	movdqu	0(%r13), %xmm3
	addq	$1, %r14
	pxor	416(%rsp), %xmm2
	pxor	432(%rsp), %xmm1
	pxor	448(%rsp), %xmm0
	pxor	400(%rsp), %xmm3
	movups	%xmm3, 0(%r13)
	movups	%xmm2, (%r15)
	movups	%xmm1, (%rbx)
	movups	%xmm0, (%r12)
	cmpq	%rsi, 8(%rsp)
	jne	.L107
	movq	80(%rsp), %r12
	movq	%r13, %rbx
.L118:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	64(%rsp), %rcx
	pxor	%xmm0, %xmm0
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	56(%rsp), %rax
	divsd	72(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	testq	%rax, %rax
	js	.L108
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L109:
	mulsd	.LC28(%rip), %xmm0
	movl	$35, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rbp, %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	mulsd	.LC30(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC31(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	48(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC33(%rip), %r15
	movl	$4, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%r15, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	movsd	8(%rsp), %xmm4
	divsd	48(%rsp), %xmm4
	movapd	%xmm4, %xmm0
	divsd	.LC34(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC35(%rip), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC36(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	movsd	8(%rsp), %xmm4
	divsd	(%rsp), %xmm4
	movapd	%xmm4, %xmm0
	divsd	.LC34(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm5
	jbe	.L110
	movl	$31, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	movsd	48(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC39(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.L110:
	leaq	.LC40(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC41(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L112:
	movq	0(%rbp), %rax
	movl	(%rbx), %esi
	movq	%rbp, %rdi
	movq	-24(%rax), %rdx
	addq	%rbp, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	movq	%r13, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$4, %rbx
	cmpq	%r12, %rbx
	jne	.L112
	movq	_ZSt4cout(%rip), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rbp, %rdi
	movq	-24(%rax), %rdx
	addq	%rbp, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE8:
	leaq	112(%rsp), %rdi
	call	_ZNSt6vectorIjSaIjEED1Ev
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	176(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	144(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	addq	$1336, %rsp
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
.L167:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	336(%rsp), %rdi
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rdi, %rbx
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	176(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L73
.L97:
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	208(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 32(%rsp)
	je	.L98
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	336(%rsp), %rbx
	orq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB10:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE10:
	leaq	208(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rdi, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L98
.L153:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	248(%rsp), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	240(%rsp), %rdi
	leaq	272(%rsp), %rax
	movq	%rdi, 40(%rsp)
	movq	%rax, 24(%rsp)
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE11:
	jmp	.L100
.L120:
	movl	$-889275714, 48(%rsp)
	leaq	400(%rsp), %r13
	movq	$1000000, 56(%rsp)
	jmp	.L55
.L108:
	movq	56(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movq	%rcx, %rax
	andl	$1, %ecx
	shrq	%rax
	orq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L109
.L172:
	movzbl	352(%rsp), %edx
	movb	%dl, (%rax)
	movq	344(%rsp), %rdx
	movq	144(%rsp), %rax
	jmp	.L84
.L174:
	leaq	272(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L103
.L105:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	8(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movsd	.LC27(%rip), %xmm5
	subq	%rcx, %rax
	movsd	%xmm5, 72(%rsp)
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 48(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 64(%rsp)
	jmp	.L118
.L175:
	movq	24(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L103
.L168:
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	leaq	304(%rsp), %rbp
.LEHB12:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE12:
.L155:
	call	__stack_chk_fail@PLT
.L161:
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	leaq	.LC1(%rip), %rdi
.LEHB13:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE13:
.L171:
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	leaq	.LC2(%rip), %rdi
.LEHB14:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE14:
.L163:
	movq	1320(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L155
	movq	%rax, %rdx
	movq	%rbx, %rcx
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
.LEHB15:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE15:
.L170:
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	leaq	.LC2(%rip), %rdi
.LEHB16:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE16:
.L160:
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
	leaq	.LC1(%rip), %rdi
.LEHB17:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE17:
.L173:
	leaq	272(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L101
.L126:
	endbr64
	movq	%rax, %rbp
	jmp	.L62
.L127:
	endbr64
	movq	%rax, %r12
	jmp	.L70
.L125:
	endbr64
	movq	%rax, %rbx
	jmp	.L116
.L124:
	endbr64
	movq	%rax, %rbx
	jmp	.L115
.L123:
	endbr64
	movq	%rax, %rbx
	jmp	.L114
.L122:
	endbr64
	movq	%rax, %rbx
	jmp	.L113
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3127:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3127-.LLSDACSB3127
.LLSDACSB3127:
	.uleb128 .LEHB0-.LFB3127
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3127
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L123-.LFB3127
	.uleb128 0
	.uleb128 .LEHB2-.LFB3127
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L122-.LFB3127
	.uleb128 0
	.uleb128 .LEHB3-.LFB3127
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3127
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L122-.LFB3127
	.uleb128 0
	.uleb128 .LEHB5-.LFB3127
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L123-.LFB3127
	.uleb128 0
	.uleb128 .LEHB6-.LFB3127
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L124-.LFB3127
	.uleb128 0
	.uleb128 .LEHB7-.LFB3127
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L123-.LFB3127
	.uleb128 0
	.uleb128 .LEHB8-.LFB3127
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L125-.LFB3127
	.uleb128 0
	.uleb128 .LEHB9-.LFB3127
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L122-.LFB3127
	.uleb128 0
	.uleb128 .LEHB10-.LFB3127
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L124-.LFB3127
	.uleb128 0
	.uleb128 .LEHB11-.LFB3127
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L123-.LFB3127
	.uleb128 0
	.uleb128 .LEHB12-.LFB3127
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L122-.LFB3127
	.uleb128 0
	.uleb128 .LEHB13-.LFB3127
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L126-.LFB3127
	.uleb128 0
	.uleb128 .LEHB14-.LFB3127
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L127-.LFB3127
	.uleb128 0
	.uleb128 .LEHB15-.LFB3127
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L122-.LFB3127
	.uleb128 0
	.uleb128 .LEHB16-.LFB3127
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L127-.LFB3127
	.uleb128 0
	.uleb128 .LEHB17-.LFB3127
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L126-.LFB3127
	.uleb128 0
.LLSDACSE3127:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3127
	.type	main.cold, @function
main.cold:
.LFSB3127:
.L62:
	.cfi_def_cfa_offset 1392
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
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L159
	movq	%rbp, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.L70:
	cmpl	$0, (%rbx)
	jne	.L71
	movl	%ebp, (%rbx)
.L71:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L159
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.L116:
	leaq	112(%rsp), %rdi
	call	_ZNSt6vectorIjSaIjEED1Ev
.L114:
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	176(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	144(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1320(%rsp), %rax
	subq	%fs:40, %rax
	je	.L117
.L159:
	call	__stack_chk_fail@PLT
.L115:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L114
.L117:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE18:
.L113:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L114
	.cfi_endproc
.LFE3127:
	.section	.gcc_except_table
.LLSDAC3127:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3127-.LLSDACSBC3127
.LLSDACSBC3127:
	.uleb128 .LEHB18-.LCOLDB44
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSEC3127:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE44:
	.section	.text.startup
.LHOTE44:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC14:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 16
.LC15:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 16
.LC16:
	.long	12
	.long	13
	.long	14
	.long	15
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC27:
	.long	0
	.long	1104006501
	.align 8
.LC28:
	.long	0
	.long	1078984704
	.align 8
.LC30:
	.long	0
	.long	1051721728
	.align 8
.LC34:
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
