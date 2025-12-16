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
.LFB3855:
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
.LFE3855:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3857:
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
.LFE3857:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.p2align 4
	.globl	_Z16chacha_block_stdPjPKj
	.type	_Z16chacha_block_stdPjPKj, @function
_Z16chacha_block_stdPjPKj:
.LFB3110:
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
.LFE3110:
	.size	_Z16chacha_block_stdPjPKj, .-_Z16chacha_block_stdPjPKj
	.p2align 4
	.globl	_Z18chacha_block_reistPjPKj
	.type	_Z18chacha_block_reistPjPKj, @function
_Z18chacha_block_reistPjPKj:
.LFB3111:
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
.LFE3111:
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
.LFB3422:
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
.LFE3422:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
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
.LCOLDB47:
	.section	.text.startup,"ax",@progbits
.LHOTB47:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3113:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3113
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
	subq	$1352, %rsp
	.cfi_def_cfa_offset 1408
	movq	%fs:40, %rax
	movq	%rax, 1336(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L134
	leaq	151(%rsp), %rax
	movq	%rsi, %r14
	movq	8(%rsi), %rsi
	movl	%edi, %r12d
	leaq	416(%rsp), %rbp
	movq	%rax, %rdx
	movq	%rax, 16(%rsp)
	movq	%rbp, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	movq	416(%rsp), %r15
	call	__errno_location@PLT
	xorl	%edx, %edx
	leaq	152(%rsp), %rsi
	movq	%rax, %rbx
	movl	(%rax), %eax
	movq	%r15, %rdi
	movl	%edx, (%rbx)
	movl	$10, %edx
	movl	%eax, 8(%rsp)
	call	__isoc23_strtoull@PLT
	movq	%rax, 24(%rsp)
	cmpq	152(%rsp), %r15
	je	.L178
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L179
	testl	%eax, %eax
	jne	.L65
	movl	8(%rsp), %eax
	movl	%eax, (%rbx)
.L65:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %r12d
	jne	.L66
	movl	$-889275714, 56(%rsp)
.L60:
	leaq	208(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	$0, 168(%rsp)
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	leaq	176(%rsp), %r15
	movq	%rax, 224(%rsp)
	leaq	272(%rsp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, 256(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 288(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%r15, 160(%rsp)
	movb	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	$0, 296(%rsp)
	movb	$0, 304(%rsp)
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE1:
	leaq	336(%rsp), %rax
	movb	$0, 336(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 320(%rsp)
	movq	$0, 328(%rsp)
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L198:
	movsbl	67(%r12), %edx
.L105:
	leaq	320(%rsp), %rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L194
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC4(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L79
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	328(%rsp), %r13
	addq	$2, %rax
	cmpq	%rax, %r13
	jb	.L182
	movq	320(%rsp), %r9
	leaq	368(%rsp), %r14
	subq	%rax, %r13
	movq	%r14, 352(%rsp)
	movq	%r13, 152(%rsp)
	addq	%rax, %r9
	cmpq	$15, %r13
	ja	.L195
	cmpq	$1, %r13
	jne	.L84
	movzbl	(%r9), %eax
	movb	%al, 368(%rsp)
.L86:
	movq	%r14, %rax
.L85:
	movq	%r13, 360(%rsp)
	movb	$0, (%rax,%r13)
	movq	160(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%r15, %rax
	je	.L196
	movq	352(%rsp), %rcx
	movq	360(%rsp), %rdx
	cmpq	%r14, %rcx
	je	.L127
	movq	176(%rsp), %rsi
	movq	%rdx, %xmm0
	movq	%rcx, 160(%rsp)
	movhps	368(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
	testq	%rax, %rax
	je	.L99
	movq	%rax, 352(%rsp)
	movq	%rsi, 368(%rsp)
.L98:
	movb	$0, (%rax)
	movq	352(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L79
	movq	368(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L79:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L197
.L101:
	movq	416(%rsp), %rax
	movq	-24(%rax), %rax
	movq	656(%rsp,%rax), %r12
	testq	%r12, %r12
	je	.L183
	cmpb	$0, 56(%r12)
	jne	.L198
	movq	%r12, %rdi
	leaq	320(%rsp), %rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L105
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
.LEHE2:
	movsbl	%al, %edx
	jmp	.L105
.L66:
	movq	16(%r14), %rsi
	movq	16(%rsp), %rdx
	movq	%rbp, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	xorl	%eax, %eax
	movl	(%rbx), %r12d
	movl	$10, %edx
	movq	416(%rsp), %r14
	movl	%eax, (%rbx)
	leaq	152(%rsp), %rsi
	movq	%r14, %rdi
	call	__isoc23_strtoul@PLT
	movq	%rax, %rdx
	cmpq	152(%rsp), %r14
	je	.L180
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L181
	testl	%eax, %eax
	jne	.L74
	movl	%r12d, (%rbx)
.L74:
	movq	%rbp, %rdi
	movl	%edx, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L84:
	testq	%r13, %r13
	je	.L86
	movq	%r14, %rdi
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L195:
	leaq	152(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r9, 8(%rsp)
	leaq	352(%rsp), %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 352(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %r9
	movq	152(%rsp), %rax
	movq	%rax, 368(%rsp)
.L83:
	movq	%r13, %rdx
	movq	%r9, %rsi
	call	memcpy@PLT
	movq	152(%rsp), %r13
	movq	352(%rsp), %rax
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L196:
	movq	352(%rsp), %rax
	movq	360(%rsp), %rdx
	cmpq	%r14, %rax
	je	.L127
	movq	%rax, 160(%rsp)
	movq	360(%rsp), %xmm0
	movhps	368(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
.L99:
	movq	%r14, 352(%rsp)
	leaq	368(%rsp), %r14
	movq	%r14, %rax
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L127:
	testq	%rdx, %rdx
	je	.L89
	cmpq	$1, %rdx
	je	.L199
	movl	%edx, %eax
	cmpl	$8, %edx
	jnb	.L92
	testb	$4, %dl
	jne	.L200
	testl	%eax, %eax
	jne	.L201
	.p2align 4
	.p2align 3
.L89:
	movq	%rdx, 168(%rsp)
	movb	$0, (%rsi,%rdx)
	movq	352(%rsp), %rax
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L194:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	224(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%rax, 40(%rsp)
	leaq	256(%rsp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 32(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	16(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	$0, 328(%rsp)
	movb	$0, 336(%rsp)
	movq	%rax, 320(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L107
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	224(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 40(%rsp)
	je	.L108
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	352(%rsp), %rdi
	leaq	2(%rax), %rdx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE6:
	leaq	224(%rsp), %rax
	leaq	352(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L108:
	movq	%rbx, %rdi
	leaq	1072(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L193
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	264(%rsp), %rdx
	movq	%rax, %r8
.L131:
	leaq	256(%rsp), %rdi
	leaq	288(%rsp), %rax
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L109:
	leaq	288(%rsp), %rax
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movq	%rax, 32(%rsp)
	call	popen@PLT
	movq	%rax, %rbx
	leaq	288(%rsp), %rax
	movq	%rax, 32(%rsp)
	testq	%rbx, %rbx
	je	.L110
	movq	%rbx, %rdx
	movl	$128, %esi
	leaq	944(%rsp), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L202
	leaq	288(%rsp), %rax
	leaq	152(%rsp), %rdx
	movq	%rbp, %rdi
	leaq	944(%rsp), %rsi
	movq	%rax, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	288(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	296(%rsp), %rax
	testq	%rax, %rax
	je	.L112
	movq	288(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L203
.L112:
	movq	%rbx, %rdi
	call	pclose@PLT
.L110:
	movd	56(%rsp), %xmm6
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
	movaps	%xmm3, 352(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC15(%rip), %xmm2
	movaps	%xmm3, 368(%rsp)
	movdqa	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm3
	movdqa	.LC16(%rip), %xmm2
	movaps	%xmm3, 384(%rsp)
	pmuludq	%xmm2, %xmm0
	psrlq	$32, %xmm2
	pmuludq	%xmm2, %xmm1
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movaps	%xmm0, 400(%rsp)
	call	_Znwm@PLT
.LEHE7:
	pxor	%xmm0, %xmm0
	movl	$0, (%rax)
	movq	%rax, %rbx
	leaq	_ZSt4cout(%rip), %rdx
	movups	%xmm0, 36(%rax)
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movups	%xmm0, 4(%rax)
	movups	%xmm0, 20(%rax)
	movups	%xmm0, 48(%rax)
	movq	_ZSt4cout(%rip), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	264(%rsp), %rdx
	movq	256(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	296(%rsp), %rdx
	movq	288(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
	cmpq	$0, 24(%rsp)
	je	.L114
	pxor	%xmm1, %xmm1
	xorl	%r15d, %r15d
	leaq	352(%rsp), %r12
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm3
	.p2align 4
	.p2align 3
.L115:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movaps	%xmm1, 416(%rsp)
	addq	$1, %r15
	movaps	%xmm2, 432(%rsp)
	movaps	%xmm0, 448(%rsp)
	movaps	%xmm3, 464(%rsp)
	call	_Z16chacha_block_stdPjPKj
	movdqu	16(%rbx), %xmm6
	movdqu	32(%rbx), %xmm5
	movdqu	48(%rbx), %xmm4
	movdqu	(%rbx), %xmm7
	movdqa	416(%rsp), %xmm1
	movdqa	432(%rsp), %xmm2
	movdqa	448(%rsp), %xmm0
	movdqa	464(%rsp), %xmm3
	pxor	%xmm2, %xmm6
	pxor	%xmm1, %xmm7
	pxor	%xmm0, %xmm5
	pxor	%xmm3, %xmm4
	movups	%xmm7, (%rbx)
	movups	%xmm6, 16(%rbx)
	movups	%xmm5, 32(%rbx)
	movups	%xmm4, 48(%rbx)
	cmpq	%r15, 24(%rsp)
	jne	.L115
	leaq	16(%rbx), %r8
	leaq	32(%rbx), %rcx
	movaps	%xmm2, 112(%rsp)
	movq	%r8, 16(%rsp)
	leaq	48(%rbx), %r13
	movq	%rcx, 8(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movsd	.LC27(%rip), %xmm5
	pxor	%xmm4, %xmm4
	subq	%r14, %rax
	xorl	%r14d, %r14d
	cvtsi2sdq	%rax, %xmm4
	divsd	%xmm5, %xmm4
	movsd	%xmm5, 72(%rsp)
	movsd	%xmm4, 56(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movdqa	112(%rsp), %xmm2
	movdqa	96(%rsp), %xmm1
	movdqa	80(%rsp), %xmm0
	movq	16(%rsp), %r8
	movq	%rax, 64(%rsp)
	movdqa	128(%rsp), %xmm3
	movq	8(%rsp), %rcx
	.p2align 4
	.p2align 3
.L116:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rcx, 16(%rsp)
	addq	$1, %r14
	movq	%r8, 8(%rsp)
	movaps	%xmm1, 416(%rsp)
	movaps	%xmm2, 432(%rsp)
	movaps	%xmm0, 448(%rsp)
	movaps	%xmm3, 464(%rsp)
	call	_Z18chacha_block_reistPjPKj
	movq	8(%rsp), %r8
	movq	16(%rsp), %rcx
	movdqu	0(%r13), %xmm4
	movdqu	(%rbx), %xmm7
	movdqu	(%r8), %xmm6
	movdqu	(%rcx), %xmm5
	movdqa	416(%rsp), %xmm1
	movdqa	432(%rsp), %xmm2
	movdqa	448(%rsp), %xmm0
	movdqa	464(%rsp), %xmm3
	pxor	%xmm2, %xmm6
	pxor	%xmm1, %xmm7
	pxor	%xmm0, %xmm5
	pxor	%xmm3, %xmm4
	movups	%xmm7, (%rbx)
	movups	%xmm6, (%r8)
	movups	%xmm5, (%rcx)
	movups	%xmm4, 0(%r13)
	cmpq	%r14, %r15
	jne	.L116
.L130:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	64(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	24(%rsp), %rax
	divsd	72(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	testq	%rax, %rax
	js	.L117
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L118:
	mulsd	.LC28(%rip), %xmm0
	movl	$35, %edx
	leaq	.LC29(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%xmm0, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	mulsd	.LC30(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	56(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movq	%rbp, %xmm6
	divsd	56(%rsp), %xmm6
	movapd	%xmm6, %xmm0
	divsd	.LC34(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movq	%rbp, %xmm7
	divsd	8(%rsp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC34(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movsd	8(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L119
	movl	$31, %edx
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	56(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.L119:
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%rbx, %rbp
	leaq	64(%rbx), %r12
	.p2align 4
	.p2align 3
.L121:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movl	0(%rbp), %esi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$4, %rbp
	cmpq	%rbp, %r12
	jne	.L121
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE8:
	movl	$64, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	192(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L204
	addq	$1352, %rsp
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
.L197:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	352(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	192(%rsp), %rdi
	leaq	352(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	352(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L101
.L107:
	movq	%rbx, %rdi
	leaq	1072(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L132
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
.L193:
	leaq	256(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L109
.L134:
	movl	$-889275714, 56(%rsp)
	leaq	416(%rsp), %rbp
	movq	$1000000, 24(%rsp)
	jmp	.L60
.L117:
	movq	24(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movq	%rcx, %rax
	andl	$1, %ecx
	shrq	%rax
	orq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L118
.L199:
	movzbl	368(%rsp), %eax
	movb	%al, (%rsi)
	movq	160(%rsp), %rsi
	movq	360(%rsp), %rdx
	jmp	.L89
.L92:
	movq	368(%rsp), %rax
	movq	%r14, %rdi
	movq	%rax, (%rsi)
	movl	%edx, %eax
	movq	-8(%r14,%rax), %rcx
	movq	%rcx, -8(%rsi,%rax)
	leaq	8(%rsi), %rcx
	movq	%rsi, %rax
	andq	$-8, %rcx
	subq	%rcx, %rax
	subq	%rax, %rdi
	addl	%edx, %eax
	andl	$-8, %eax
	cmpl	$8, %eax
	jb	.L192
	andl	$-8, %eax
	xorl	%edx, %edx
.L96:
	movl	%edx, %esi
	addl	$8, %edx
	movq	(%rdi,%rsi), %r9
	movq	%r9, (%rcx,%rsi)
	cmpl	%eax, %edx
	jb	.L96
.L192:
	movq	160(%rsp), %rsi
	movq	360(%rsp), %rdx
	jmp	.L89
.L202:
	leaq	288(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L112
.L132:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	264(%rsp), %rdx
	movq	%rax, %r8
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	.L131
.L201:
	movzbl	368(%rsp), %edx
	movb	%dl, (%rsi)
	testb	$2, %al
	je	.L192
	movzwl	-2(%r14,%rax), %edx
	movw	%dx, -2(%rsi,%rax)
	movq	160(%rsp), %rsi
	movq	360(%rsp), %rdx
	jmp	.L89
.L114:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movsd	.LC27(%rip), %xmm1
	pxor	%xmm0, %xmm0
	subq	%r14, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm1, 72(%rsp)
	movsd	%xmm0, 56(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 64(%rsp)
	jmp	.L130
.L203:
	movq	32(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L112
.L200:
	movl	368(%rsp), %edx
	movl	%edx, (%rsi)
	movl	-4(%r14,%rax), %edx
	movl	%edx, -4(%rsi,%rax)
	movq	160(%rsp), %rsi
	movq	360(%rsp), %rdx
	jmp	.L89
.L204:
	call	__stack_chk_fail@PLT
.L176:
	jmp	.L177
.L137:
	movq	%rax, %r12
	jmp	.L123
.L138:
	movq	%rax, %r12
	jmp	.L124
.L139:
	movq	%rax, %r12
	jmp	.L125
	.section	.gcc_except_table,"a",@progbits
.LLSDA3113:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3113-.LLSDACSB3113
.LLSDACSB3113:
	.uleb128 .LEHB0-.LFB3113
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3113
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L137-.LFB3113
	.uleb128 0
	.uleb128 .LEHB2-.LFB3113
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L176-.LFB3113
	.uleb128 0
	.uleb128 .LEHB3-.LFB3113
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3113
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L176-.LFB3113
	.uleb128 0
	.uleb128 .LEHB5-.LFB3113
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L137-.LFB3113
	.uleb128 0
	.uleb128 .LEHB6-.LFB3113
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L138-.LFB3113
	.uleb128 0
	.uleb128 .LEHB7-.LFB3113
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L137-.LFB3113
	.uleb128 0
	.uleb128 .LEHB8-.LFB3113
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L139-.LFB3113
	.uleb128 0
	.uleb128 .LEHB9-.LFB3113
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L176-.LFB3113
	.uleb128 0
.LLSDACSE3113:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3113
	.type	main.cold, @function
main.cold:
.LFSB3113:
.L183:
	.cfi_def_cfa_offset 1408
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L205
	leaq	320(%rsp), %rbx
.LEHB10:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE10:
.L181:
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L206
	leaq	.LC2(%rip), %rdi
.LEHB11:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE11:
.L205:
	call	__stack_chk_fail@PLT
.L206:
	call	__stack_chk_fail@PLT
.L136:
.L177:
	movq	%rbx, %rdi
	movq	%rax, %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 32(%rsp)
.L123:
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	192(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L207
	movq	%r12, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.L141:
	movq	%rax, %r13
	cmpl	$0, (%rbx)
	jne	.L76
	movl	%r12d, (%rbx)
.L76:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L208
	movq	%r13, %rdi
	call	_Unwind_Resume@PLT
.LEHE12:
.L208:
	call	__stack_chk_fail@PLT
.L207:
	call	__stack_chk_fail@PLT
.L182:
	movq	1336(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L209
	movq	%rax, %rdx
	movq	%r13, %rcx
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
.LEHB13:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE13:
.L180:
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L210
	leaq	.LC2(%rip), %rdi
.LEHB14:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE14:
.L178:
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L211
	leaq	.LC1(%rip), %rdi
.LEHB15:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L210:
	call	__stack_chk_fail@PLT
.L179:
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L212
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE15:
.L124:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L123
.L125:
	movl	$64, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	jmp	.L123
.L212:
	call	__stack_chk_fail@PLT
.L209:
	call	__stack_chk_fail@PLT
.L211:
	call	__stack_chk_fail@PLT
.L140:
	movq	%rax, %r12
	cmpl	$0, (%rbx)
	jne	.L68
	movl	8(%rsp), %eax
	movl	%eax, (%rbx)
.L68:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1336(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L213
	movq	%r12, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L213:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3113:
	.section	.gcc_except_table
.LLSDAC3113:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3113-.LLSDACSBC3113
.LLSDACSBC3113:
	.uleb128 .LEHB10-.LCOLDB47
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L136-.LCOLDB47
	.uleb128 0
	.uleb128 .LEHB11-.LCOLDB47
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L141-.LCOLDB47
	.uleb128 0
	.uleb128 .LEHB12-.LCOLDB47
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LCOLDB47
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L136-.LCOLDB47
	.uleb128 0
	.uleb128 .LEHB14-.LCOLDB47
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L141-.LCOLDB47
	.uleb128 0
	.uleb128 .LEHB15-.LCOLDB47
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L140-.LCOLDB47
	.uleb128 0
	.uleb128 .LEHB16-.LCOLDB47
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC3113:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE47:
	.section	.text.startup
.LHOTE47:
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
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
