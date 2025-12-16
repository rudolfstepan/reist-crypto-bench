	.file	"bench_poly_mod.cpp"
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
.LFB5258:
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
.LFE5258:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB5260:
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
.LFE5260:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4259:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4259
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %r15
	movq	%r15, 24(%rsp)
	movl	%r8d, %r15d
	call	__errno_location@PLT
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movl	(%rax), %r12d
	movq	%rax, %rbx
	movl	$0, (%rax)
	movl	%r15d, %edx
.LEHB0:
	call	*%r14
	movq	16(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L54
	movl	(%rbx), %esi
	cmpl	$34, %esi
	je	.L35
	movl	$2147483648, %edx
	addq	%rax, %rdx
	shrq	$32, %rdx
	jne	.L35
	testq	%r13, %r13
	je	.L38
	subq	%rbp, %rcx
	movq	%rcx, 0(%r13)
.L38:
	testl	%esi, %esi
	jne	.L32
	movl	%r12d, (%rbx)
.L32:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L53
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L35:
	.cfi_restore_state
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L37
.L53:
	call	__stack_chk_fail@PLT
.L54:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L53
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L44:
	jmp	.L40
.L37:
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE0:
.L40:
	cmpl	$0, (%rbx)
	jne	.L41
	movl	%r12d, (%rbx)
.L41:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L53
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE4259:
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4259:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4259-.LLSDACSB4259
.LLSDACSB4259:
	.uleb128 .LEHB0-.LFB4259
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L44-.LFB4259
	.uleb128 0
	.uleb128 .LEHB1-.LFB4259
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4259:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
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
.LFB4570:
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
	je	.L68
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	cmpq	$15, %rax
	ja	.L69
	cmpq	$1, %rax
	jne	.L60
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L61:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L67
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
.L60:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L61
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L69:
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
.L59:
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	.L61
.L68:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L57
.L67:
	call	__stack_chk_fail@PLT
.L57:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE4570:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata._ZNSt6vectorIiSaIiEEC2EmRKS0_.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, @function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB4655:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rax
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	shrq	$61, %rax
	jne	.L78
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L79
	leaq	0(,%rsi,4), %rdx
	movq	%rsi, 8(%rsp)
	movq	%rdx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, (%rbx)
	leaq	4(%rax), %rcx
	leaq	(%rax,%rdx), %r9
	movl	$0, (%rax)
	movq	%r9, 16(%rbx)
	cmpq	$1, 8(%rsp)
	je	.L73
	movq	%rcx, %rdi
	subq	$4, %rdx
	xorl	%esi, %esi
	movq	%r9, 8(%rsp)
	movq	%rax, (%rsp)
	call	memset@PLT
	movq	8(%rsp), %r9
	leaq	-4(%r9,%rax), %rcx
	subq	(%rsp), %rcx
.L73:
	movq	%rcx, 8(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	xorl	%ecx, %ecx
	movq	$0, (%rdi)
	movq	$0, 16(%rdi)
	movq	%rcx, 8(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L78:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4655:
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5174:
	.cfi_startproc
	movq	$-2147483648, %rcx
	movl	$2147483647, %esi
	leaq	1808(%rdi), %rdx
	movq	%rdi, %rax
	movq	%rcx, %xmm5
	movl	$1, %ecx
	movq	%rsi, %xmm4
	movq	%rcx, %xmm3
	punpcklqdq	%xmm5, %xmm5
	punpcklqdq	%xmm4, %xmm4
	punpcklqdq	%xmm3, %xmm3
	.p2align 4
	.p2align 3
.L81:
	movdqu	(%rax), %xmm1
	movdqu	8(%rax), %xmm0
	addq	$16, %rax
	movdqu	3160(%rax), %xmm2
	pand	%xmm4, %xmm0
	pand	%xmm5, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pand	%xmm3, %xmm1
	psrlq	$1, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	psllq	$3, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$9, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$5, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$2, %xmm0
	psubq	%xmm1, %xmm0
	psllq	$3, %xmm0
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm6
	psllq	$4, %xmm6
	paddq	%xmm6, %xmm0
	psllq	$5, %xmm0
	psubq	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movups	%xmm2, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L81
	movq	1808(%rdi), %rax
	movq	1816(%rdi), %rdx
	movl	$2147483647, %ecx
	movq	$-2147483648, %rsi
	movq	%rsi, %xmm5
	movl	$1, %esi
	movq	%rcx, %xmm4
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	movq	%rsi, %xmm3
	punpcklqdq	%xmm5, %xmm5
	punpcklqdq	%xmm4, %xmm4
	punpcklqdq	%xmm3, %xmm3
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	4984(%rdi), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	leaq	4984(%rdi), %rdx
	movq	%rax, 1808(%rdi)
	leaq	1816(%rdi), %rax
	.p2align 4
	.p2align 3
.L82:
	movdqu	(%rax), %xmm1
	movdqu	8(%rax), %xmm0
	addq	$16, %rax
	movdqu	-1832(%rax), %xmm2
	pand	%xmm4, %xmm0
	pand	%xmm5, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pand	%xmm3, %xmm1
	psrlq	$1, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	psllq	$3, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$9, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$5, %xmm0
	paddq	%xmm1, %xmm0
	psllq	$2, %xmm0
	psubq	%xmm1, %xmm0
	psllq	$3, %xmm0
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm6
	psllq	$4, %xmm6
	paddq	%xmm6, %xmm0
	psllq	$5, %xmm0
	psubq	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movups	%xmm2, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L82
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	movq	$0, 4992(%rdi)
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%rdi)
	ret
	.cfi_endproc
.LFE5174:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB5264:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movslq	%esi, %rax
	movslq	%edx, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	subq	%rax, %rcx
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rax, %rbp
	movl	$4294967294, %eax
	movq	%rcx, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%rcx, %rax
	jnb	.L102
	movl	$4294967295, %eax
	cmpq	%rax, %rcx
	je	.L92
.L100:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	jbe	.L93
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L93:
	leaq	1(%rax), %rdx
	movq	(%r12,%rax,8), %rax
	movq	%rdx, 4992(%r12)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	setc	%al
	movzbl	%al, %eax
	cmpq	%rbx, %r13
	jb	.L100
	testq	%rax, %rax
	jne	.L100
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leal	0(%rbp,%rbx), %eax
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
.L102:
	.cfi_restore_state
	movq	4992(%r12), %rax
	leaq	1(%rcx), %rcx
	movl	%ecx, %edi
	cmpq	$623, %rax
	ja	.L103
.L87:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rsi
	movq	%rsi, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%rcx, %rbx
	cmpl	%ecx, %ebx
	jnb	.L88
	movl	%ecx, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%edi
	movl	%edx, %r13d
	cmpl	%edx, %ebx
	jb	.L90
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L89:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rsi
	movq	%rsi, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%rcx, %rbx
	cmpl	%r13d, %ebx
	jnb	.L88
.L90:
	movq	%rsi, %rax
	cmpq	$623, %rsi
	jbe	.L89
	movq	%r12, %rdi
	movq	%rcx, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	movq	(%rsp), %rcx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L88:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	shrq	$32, %rbx
	leal	0(%rbp,%rbx), %eax
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
.L92:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L104
.L97:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r12)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	leal	0(%rbp,%rbx), %eax
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
.L103:
	.cfi_restore_state
	movq	%r12, %rdi
	movl	%ecx, 12(%rsp)
	movq	%rcx, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movl	12(%rsp), %edi
	movq	(%rsp), %rcx
	movq	4992(%r12), %rax
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L104:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L97
	.cfi_endproc
.LFE5264:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"stoi"
.LC6:
	.string	"/proc/cpuinfo"
.LC7:
	.string	"model name"
.LC8:
	.string	":"
.LC9:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC11:
	.string	"cpu MHz"
.LC12:
	.string	"/proc/meminfo"
.LC13:
	.string	"MemTotal"
.LC14:
	.string	"r"
.LC15:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"========================================\n"
	.align 8
.LC17:
	.string	"Polynomial Modular Add Benchmark (NTRU-style, large q)\n"
	.section	.rodata.str1.1
.LC18:
	.string	"System Information:\n"
.LC19:
	.string	"  Hostname: "
.LC20:
	.string	"\n"
.LC21:
	.string	"  OS: "
.LC22:
	.string	"  CPU Model: "
.LC23:
	.string	"  CPU MHz: "
.LC24:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"========================================\n\n"
	.section	.rodata.str1.1
.LC26:
	.string	"N = "
.LC27:
	.string	", reps = "
.LC28:
	.string	"\n\n"
.LC29:
	.string	"results_poly_mod.csv"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"ERROR: could not open results_poly_mod.csv for writing\n"
	.align 8
.LC31:
	.string	"q,N,reps,classic,reist,speedup\n"
	.section	.rodata.str1.1
.LC33:
	.string	"q = "
.LC34:
	.string	"  classic : "
.LC35:
	.string	" s\n"
.LC36:
	.string	"  REIST   : "
.LC37:
	.string	"  speedup : "
.LC38:
	.string	"x\n\n"
.LC39:
	.string	","
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"CSV written to results_poly_mod.csv\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB42:
	.section	.text.startup,"ax",@progbits
.LHOTB42:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4212:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4212
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
	subq	$6440, %rsp
	.cfi_def_cfa_offset 6496
	movq	%fs:40, %rax
	movq	%rax, 6424(%rsp)
	xorl	%eax, %eax
	movl	$50000, 12(%rsp)
	movl	$1024, 48(%rsp)
	cmpl	$1, %edi
	jg	.L306
.L106:
	movl	$16, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movdqa	.LC41(%rip), %xmm0
	movq	%rax, 112(%rsp)
	addq	$16, %rax
	movq	$16, 120(%rsp)
	movups	%xmm0, -16(%rax)
	movq	%rax, 80(%rsp)
.L107:
	leaq	1032(%rsp), %rsi
	movl	$1, %ecx
	movl	$12345, %edx
	movq	$12345, 1024(%rsp)
	.p2align 6
	.p2align 4
	.p2align 3
.L111:
	movq	%rdx, %rax
	addq	$8, %rsi
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	addq	$1, %rcx
	movq	%rdx, -8(%rsi)
	cmpq	$624, %rcx
	jne	.L111
	leaq	320(%rsp), %rax
	leaq	288(%rsp), %rbp
	movl	$8, %edx
	movq	$624, 6016(%rsp)
	movq	%rax, 304(%rsp)
	leaq	352(%rsp), %rax
	leaq	496(%rsp), %rdi
	movq	%rax, 336(%rsp)
	leaq	384(%rsp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, 368(%rsp)
	leaq	416(%rsp), %rax
	movq	%rax, 400(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	400(%rsp), %rax
	movq	%rbp, 272(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	$0, 408(%rsp)
	movb	$0, 416(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rax, 72(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	448(%rsp), %rax
	movb	$0, 448(%rsp)
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r12
	movq	%rax, 24(%rsp)
	movq	%rax, 432(%rsp)
	movq	$0, 440(%rsp)
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L313:
	movsbl	67(%r13), %edx
.L139:
	leaq	432(%rsp), %rbx
	movq	16(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L307
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC7(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L113
	xorl	%edx, %edx
	movl	$1, %ecx
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	440(%rsp), %r13
	leaq	2(%rax), %rdx
	cmpq	%rdx, %r13
	jb	.L285
	movq	432(%rsp), %r14
	leaq	480(%rsp), %r15
	subq	%rdx, %r13
	leaq	464(%rsp), %rdi
	movq	%r15, 464(%rsp)
	movq	%r13, 240(%rsp)
	addq	%rdx, %r14
	cmpq	$15, %r13
	ja	.L308
	cmpq	$1, %r13
	je	.L309
	testq	%r13, %r13
	jne	.L310
.L120:
	movq	%r15, %rax
.L119:
	movq	%r13, 472(%rsp)
	movb	$0, (%rax,%r13)
	movq	272(%rsp), %rax
	movq	%rax, %rcx
	cmpq	%rbp, %rax
	je	.L311
	movq	464(%rsp), %rdx
	cmpq	%r15, %rdx
	je	.L189
	movq	288(%rsp), %rcx
	movq	%rdx, 272(%rsp)
	movq	472(%rsp), %xmm0
	movhps	480(%rsp), %xmm0
	movups	%xmm0, 280(%rsp)
	testq	%rax, %rax
	je	.L133
	movq	%rax, 464(%rsp)
	movq	%rcx, 480(%rsp)
.L132:
	movb	$0, (%rax)
	movq	464(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L113
	movq	480(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L113:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L312
.L135:
	movq	496(%rsp), %rax
	movq	-24(%rax), %rax
	movq	736(%rsp,%rax), %r13
	testq	%r13, %r13
	je	.L286
	cmpb	$0, 56(%r13)
	jne	.L313
	movq	%r13, %rdi
	leaq	432(%rsp), %rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%r12, %rax
	je	.L139
	movl	$10, %esi
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L139
.L309:
	movzbl	(%r14), %eax
	movb	%al, 480(%rsp)
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L308:
	leaq	240(%rsp), %rsi
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 464(%rsp)
	movq	%rax, %rdi
	movq	240(%rsp), %rax
	movq	%rax, 480(%rsp)
.L117:
	movq	%r13, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	240(%rsp), %r13
	movq	464(%rsp), %rax
	jmp	.L119
.L311:
	movq	464(%rsp), %rax
	cmpq	%r15, %rax
	je	.L189
	movq	%rax, 272(%rsp)
	movq	472(%rsp), %xmm0
	movhps	480(%rsp), %xmm0
	movups	%xmm0, 280(%rsp)
.L133:
	movq	%r15, 464(%rsp)
	leaq	480(%rsp), %r15
	movq	%r15, %rax
	jmp	.L132
.L189:
	movq	472(%rsp), %rax
	testq	%rax, %rax
	je	.L123
	cmpq	$1, %rax
	je	.L314
	movl	%eax, %edx
	cmpl	$8, %eax
	jb	.L315
	movq	480(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rdx, (%rcx)
	movl	%eax, %edx
	movq	-8(%r15,%rdx), %rsi
	movq	%rsi, -8(%rcx,%rdx)
	leaq	8(%rcx), %rsi
	andq	$-8, %rsi
	subq	%rsi, %rcx
	leal	(%rcx,%rax), %edx
	subq	%rcx, %rdi
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L304
	andl	$-8, %edx
	xorl	%eax, %eax
.L130:
	movl	%eax, %ecx
	addl	$8, %eax
	movq	(%rdi,%rcx), %r8
	movq	%r8, (%rsi,%rcx)
	cmpl	%edx, %eax
	jb	.L130
.L304:
	movq	272(%rsp), %rcx
	movq	472(%rsp), %rax
.L123:
	movq	%rax, 280(%rsp)
	movb	$0, (%rcx,%rax)
	movq	464(%rsp), %rax
	jmp	.L132
.L310:
	movq	%r15, %rdi
	jmp	.L117
.L307:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	336(%rsp), %rax
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rax, 96(%rsp)
	leaq	368(%rsp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, 104(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 72(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	24(%rsp), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdi
	movq	$0, 440(%rsp)
	movb	$0, 448(%rsp)
	movq	%rax, 432(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L141
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	$8, %ecx
	leaq	.LC13(%rip), %rsi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	336(%rsp), %rdi
	addq	$1, %rax
	movq	%rdi, 96(%rsp)
	jne	.L316
.L142:
	movq	%rbx, %rdi
	leaq	6160(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L290
.L305:
	leaq	368(%rsp), %rax
	movq	%rax, 104(%rsp)
.L143:
	leaq	400(%rsp), %rax
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movq	%rax, 72(%rsp)
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L317
	leaq	6032(%rsp), %rbp
	leaq	400(%rsp), %rax
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	movq	%rax, 72(%rsp)
	call	fgets@PLT
	testq	%rax, %rax
	je	.L318
	movq	16(%rsp), %r14
	leaq	400(%rsp), %rax
	leaq	240(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, 72(%rsp)
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	400(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rdi, 72(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	408(%rsp), %rax
	testq	%rax, %rax
	jne	.L319
.L146:
	movq	%rbx, %rdi
	call	pclose@PLT
.L144:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	376(%rsp), %rdx
	movq	368(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	408(%rsp), %rdx
	movq	400(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	280(%rsp), %rdx
	movq	272(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	312(%rsp), %rdx
	movq	304(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	344(%rsp), %rdx
	movq	336(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$4, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	48(%rsp), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$9, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	16(%rsp), %rdi
	movl	$16, %edx
	leaq	.LC29(%rip), %rsi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE7:
	movl	776(%rsp), %eax
	andl	$5, %eax
	movl	%eax, 132(%rsp)
	jne	.L320
	movq	16(%rsp), %rdi
	leaq	.LC31(%rip), %rsi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movslq	48(%rsp), %r15
	xorl	%edi, %edi
	leaq	240(%rsp), %rdx
	movq	%rdi, 176(%rsp)
	movq	%rdi, 184(%rsp)
	movq	%r15, %rsi
	movq	%rdi, 192(%rsp)
	leaq	176(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE8:
	xorl	%esi, %esi
	movq	192(%rsp), %rax
	leaq	208(%rsp), %rdi
	leaq	240(%rsp), %rdx
	movq	%rsi, 208(%rsp)
	movq	176(%rsp), %rbp
	movq	%rsi, 224(%rsp)
	movq	%r15, %rsi
	movq	184(%rsp), %r14
	movq	%rax, 144(%rsp)
.LEHB9:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE9:
	movq	224(%rsp), %rax
	xorl	%ecx, %ecx
	leaq	175(%rsp), %rdx
	movq	%r15, %rsi
	leaq	240(%rsp), %rdi
	movq	%rcx, 240(%rsp)
	movq	208(%rsp), %r12
	movq	%rax, 136(%rsp)
	movq	%rcx, 256(%rsp)
.LEHB10:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE10:
	movq	256(%rsp), %rax
	movq	240(%rsp), %r13
	movq	80(%rsp), %rdi
	movq	%rax, 152(%rsp)
	cmpq	%rdi, 112(%rsp)
	je	.L171
	movq	112(%rsp), %rax
	subq	%rbp, %r14
	sarq	$2, %r14
	movq	%rax, 24(%rsp)
	leaq	0(%rbp,%r15,4), %rax
	movq	%rax, 88(%rsp)
	leal	-1(%r14), %eax
	movl	%eax, 52(%rsp)
	leaq	-4(%r13), %rax
	movq	%rax, %rdx
	subq	%r12, %rdx
	cmpq	$8, %rdx
	seta	%dl
	subq	%rbp, %rax
	cmpq	$8, %rax
	seta	%al
	andl	%eax, %edx
	movb	%dl, 131(%rsp)
	.p2align 4
	.p2align 3
.L170:
	movq	24(%rsp), %rax
	movl	48(%rsp), %edx
	movq	%rbp, %r15
	movl	(%rax), %ebx
	leaq	1024(%rsp), %rax
	movq	%rax, 32(%rsp)
	testl	%edx, %edx
	jle	.L155
	movq	%r12, 64(%rsp)
	movl	%ebx, 40(%rsp)
	movq	32(%rsp), %rbx
	movq	%rbp, 56(%rsp)
	movq	88(%rsp), %rbp
	.p2align 4
	.p2align 3
.L152:
	movl	$500000, %edx
	movq	%rbx, %rdi
	addq	$4, %r15
	addq	$4, %r12
	movl	$-500000, %esi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movl	$500000, %edx
	movl	$-500000, %esi
	movq	%rbx, %rdi
	movl	%eax, -4(%r15)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movl	%eax, -4(%r12)
	cmpq	%rbp, %r15
	jne	.L152
	movl	40(%rsp), %ebx
	movq	56(%rsp), %rbp
	movq	64(%rsp), %r12
.L155:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	12(%rsp), %r8d
	xorl	%edi, %edi
	movq	%rax, %r15
	movl	52(%rsp), %eax
	leaq	1(%rax), %rsi
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jle	.L157
	.p2align 4
	.p2align 3
.L153:
	xorl	%ecx, %ecx
	testl	%r14d, %r14d
	jle	.L321
	.p2align 5
	.p2align 4
	.p2align 3
.L159:
	movl	(%r12,%rcx,4), %eax
	addl	0(%rbp,%rcx,4), %eax
	cltd
	idivl	%ebx
	movl	%edx, 0(%r13,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	jne	.L159
.L160:
	addl	$1, %edi
	cmpl	%edi, %r8d
	jne	.L153
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC32(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	%ebx, %ecx
	shrl	$31, %ecx
	movq	%rax, %r15
	addl	%ebx, %ecx
	sarl	%ecx
	movl	%ecx, %edi
	negl	%edi
	testl	%r14d, %r14d
	jle	.L192
	xorl	%r9d, %r9d
	cmpl	$3, 52(%rsp)
	jbe	.L162
	cmpb	$0, 131(%rsp)
	je	.L162
	movl	%r14d, %esi
	movl	%r14d, %eax
	movq	%r15, 56(%rsp)
	movd	%ebx, %xmm6
	andl	$-4, %esi
	shrl	$2, %eax
	movd	%edi, %xmm5
	pxor	%xmm4, %xmm4
	movl	%esi, %edx
	leal	1(%rsi), %r11d
	addl	$2, %esi
	pshufd	$0, %xmm6, %xmm3
	movl	%esi, 32(%rsp)
	movd	%ecx, %xmm6
	salq	$4, %rax
	xorl	%r8d, %r8d
	salq	$2, %rdx
	pshufd	$0, %xmm6, %xmm6
	pshufd	$0, %xmm5, %xmm5
	.p2align 4
	.p2align 3
.L168:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
.L163:
	movdqu	0(%rbp,%rsi), %xmm0
	movdqu	(%r12,%rsi), %xmm7
	paddd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm5, %xmm0
	pcmpgtd	%xmm6, %xmm2
	pcmpeqd	%xmm4, %xmm0
	pand	%xmm3, %xmm2
	psubd	%xmm2, %xmm1
	pand	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, 0(%r13,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rax
	jne	.L163
	testb	$3, %r14b
	je	.L169
	movl	(%r12,%rdx), %esi
	addl	0(%rbp,%rdx), %esi
	movl	%r8d, %r15d
	cmpl	%esi, %ecx
	movl	%esi, %r10d
	cmovl	%ebx, %r15d
	subl	%r15d, %r10d
	cmpl	%esi, %edi
	movl	%r8d, %esi
	cmovge	%ebx, %esi
	addl	%esi, %r10d
	movl	%r10d, 0(%r13,%rdx)
	cmpl	%r14d, %r11d
	jge	.L169
	movl	4(%r12,%rdx), %esi
	addl	4(%rbp,%rdx), %esi
	movl	%r8d, %r15d
	cmpl	%ecx, %esi
	movl	%esi, %r10d
	cmovg	%ebx, %r15d
	subl	%r15d, %r10d
	cmpl	%edi, %esi
	movl	%r8d, %esi
	cmovle	%ebx, %esi
	addl	%r10d, %esi
	movl	%esi, 4(%r13,%rdx)
	cmpl	%r14d, 32(%rsp)
	jge	.L169
	movl	8(%rbp,%rdx), %esi
	addl	8(%r12,%rdx), %esi
	movl	%r8d, %r15d
	cmpl	%ecx, %esi
	movl	%esi, %r10d
	cmovg	%ebx, %r15d
	subl	%r15d, %r10d
	cmpl	%edi, %esi
	movl	%r8d, %esi
	cmovle	%ebx, %esi
	addl	%r10d, %esi
	movl	%esi, 8(%r13,%rdx)
.L169:
	addl	$1, %r9d
	cmpl	%r9d, 12(%rsp)
	jne	.L168
	movq	56(%rsp), %r15
.L192:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movsd	40(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	movl	$4, %edx
	subq	%r15, %rax
	leaq	.LC33(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC32(%rip), %xmm0
	divsd	%xmm0, %xmm5
	movsd	%xmm0, 32(%rsp)
	movq	%xmm5, %r15
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	40(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC37(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rdi
	movl	%ebx, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	48(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	40(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$4, 24(%rsp)
	movq	24(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	jne	.L170
.L171:
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE11:
	testq	%r13, %r13
	je	.L172
	movq	152(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L172:
	testq	%r12, %r12
	je	.L173
	movq	136(%rsp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L173:
	testq	%rbp, %rbp
	je	.L149
	movq	144(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
.L149:
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	72(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	104(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	304(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	272(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	120(%rsp), %rsi
	movq	112(%rsp), %rdi
	call	_ZdlPvm@PLT
	movq	6424(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L322
	movl	132(%rsp), %eax
	addq	$6440, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L321:
	.cfi_restore_state
	addl	$1, %edi
	cmpl	%edi, %r8d
	jne	.L160
.L157:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC32(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r15
	jmp	.L192
.L312:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	464(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB12:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE12:
	leaq	304(%rsp), %rdi
	leaq	464(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L135
.L162:
	movl	52(%rsp), %eax
	xorl	%esi, %esi
	leaq	1(%rax), %r10
	.p2align 4
	.p2align 3
.L165:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
.L164:
	movl	0(%rbp,%rax,4), %edx
	addl	(%r12,%rax,4), %edx
	movl	%esi, %r11d
	cmpl	%ecx, %edx
	movl	%edx, %r8d
	cmovg	%ebx, %r11d
	subl	%r11d, %r8d
	cmpl	%edi, %edx
	movl	%esi, %edx
	cmovle	%ebx, %edx
	addl	%r8d, %edx
	movl	%edx, 0(%r13,%rax,4)
	addq	$1, %rax
	cmpq	%r10, %rax
	jne	.L164
	addl	$1, %r9d
	cmpl	%r9d, 12(%rsp)
	jne	.L165
	jmp	.L192
.L141:
	movq	%rbx, %rdi
	leaq	6160(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L323
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	376(%rsp), %rdx
	movq	%rax, %r8
	leaq	336(%rsp), %rax
	movq	%rax, 96(%rsp)
	jmp	.L193
.L319:
	movq	400(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	jne	.L146
	movq	72(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L146
.L315:
	testb	$4, %al
	jne	.L324
	testl	%edx, %edx
	je	.L123
	movzbl	480(%rsp), %eax
	movb	%al, (%rcx)
	testb	$2, %dl
	je	.L304
	movzwl	-2(%r15,%rdx), %eax
	movw	%ax, -2(%rcx,%rdx)
	movq	272(%rsp), %rcx
	movq	472(%rsp), %rax
	jmp	.L123
.L290:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	376(%rsp), %rdx
	movq	%rax, %r8
.L193:
	leaq	368(%rsp), %rdi
	leaq	400(%rsp), %rax
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rdi, 104(%rsp)
	movq	%rax, 72(%rsp)
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE13:
	jmp	.L143
.L323:
	leaq	336(%rsp), %rax
	movq	%rax, 96(%rsp)
	jmp	.L305
.L316:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	464(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB14:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE14:
	leaq	336(%rsp), %rax
	leaq	464(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 96(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	464(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L142
.L306:
	leaq	1024(%rsp), %r14
	movq	%rsi, %r12
	movq	8(%rsi), %rsi
	movl	%edi, %ebp
	leaq	240(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r14, 32(%rsp)
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE15:
	movq	1024(%rsp), %rdx
	movq	__isoc23_strtol@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC5(%rip), %rsi
.LEHB16:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE16:
	movq	%r14, %rdi
	movl	%eax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movl	$50000, 12(%rsp)
	cmpl	$2, %ebp
	je	.L106
	movq	16(%r12), %rsi
	leaq	240(%rsp), %rdx
	movq	%r14, %rdi
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE17:
	movq	1024(%rsp), %rdx
	movq	__isoc23_strtol@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC5(%rip), %rsi
.LEHB18:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE18:
	movq	%r14, %rdi
	movl	%eax, 12(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$3, %ebp
	je	.L106
	movq	24(%r12), %rsi
	leaq	240(%rsp), %rdx
	movq	%r14, %rdi
.LEHB19:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE19:
	movq	1024(%rsp), %rdx
	movq	__isoc23_strtol@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC5(%rip), %rsi
.LEHB20:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movl	$4, %edi
	movl	%eax, %ebx
	call	_Znwm@PLT
.LEHE20:
	movl	%ebx, (%rax)
	movq	%r14, %rdi
	movq	%rax, 112(%rsp)
	addq	$4, %rax
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	$4, 120(%rsp)
	jmp	.L107
.L314:
	movzbl	480(%rsp), %eax
	movb	%al, (%rcx)
	movq	272(%rsp), %rcx
	movq	472(%rsp), %rax
	jmp	.L123
.L320:
	leaq	.LC30(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB21:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE21:
	movl	$1, 132(%rsp)
	jmp	.L149
.L318:
	leaq	400(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L146
.L324:
	movl	480(%rsp), %eax
	movl	%eax, (%rcx)
	movl	-4(%r15,%rdx), %eax
	movl	%eax, -4(%rcx,%rdx)
	movq	272(%rsp), %rcx
	movq	472(%rsp), %rax
	jmp	.L123
.L322:
	call	__stack_chk_fail@PLT
.L317:
	leaq	400(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L144
.L212:
	movq	%rax, %rbx
	jmp	.L185
.L215:
	movq	%rax, %rbx
	jmp	.L110
.L206:
	movq	%rax, %rbx
	jmp	.L177
.L205:
	movq	%rax, %rbx
	jmp	.L177
.L213:
	movq	%rax, %rbx
	jmp	.L183
.L209:
	movq	%rax, %rbx
	jmp	.L179
.L210:
	movq	%rax, %rbp
	jmp	.L180
.L211:
	movq	%rax, %rbx
	jmp	.L187
.L214:
	movq	%rax, %rbx
	jmp	.L181
.L283:
	jmp	.L284
.L207:
	movq	%rax, %rbx
	jmp	.L177
	.section	.gcc_except_table,"a",@progbits
.LLSDA4212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4212-.LLSDACSB4212
.LLSDACSB4212:
	.uleb128 .LEHB2-.LFB4212
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L215-.LFB4212
	.uleb128 0
	.uleb128 .LEHB3-.LFB4212
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L209-.LFB4212
	.uleb128 0
	.uleb128 .LEHB4-.LFB4212
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L283-.LFB4212
	.uleb128 0
	.uleb128 .LEHB5-.LFB4212
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L209-.LFB4212
	.uleb128 0
	.uleb128 .LEHB6-.LFB4212
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L210-.LFB4212
	.uleb128 0
	.uleb128 .LEHB7-.LFB4212
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L209-.LFB4212
	.uleb128 0
	.uleb128 .LEHB8-.LFB4212
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L211-.LFB4212
	.uleb128 0
	.uleb128 .LEHB9-.LFB4212
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L212-.LFB4212
	.uleb128 0
	.uleb128 .LEHB10-.LFB4212
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L213-.LFB4212
	.uleb128 0
	.uleb128 .LEHB11-.LFB4212
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L214-.LFB4212
	.uleb128 0
	.uleb128 .LEHB12-.LFB4212
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L283-.LFB4212
	.uleb128 0
	.uleb128 .LEHB13-.LFB4212
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L209-.LFB4212
	.uleb128 0
	.uleb128 .LEHB14-.LFB4212
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L210-.LFB4212
	.uleb128 0
	.uleb128 .LEHB15-.LFB4212
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L215-.LFB4212
	.uleb128 0
	.uleb128 .LEHB16-.LFB4212
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L205-.LFB4212
	.uleb128 0
	.uleb128 .LEHB17-.LFB4212
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L215-.LFB4212
	.uleb128 0
	.uleb128 .LEHB18-.LFB4212
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L206-.LFB4212
	.uleb128 0
	.uleb128 .LEHB19-.LFB4212
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L215-.LFB4212
	.uleb128 0
	.uleb128 .LEHB20-.LFB4212
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L207-.LFB4212
	.uleb128 0
	.uleb128 .LEHB21-.LFB4212
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L211-.LFB4212
	.uleb128 0
.LLSDACSE4212:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4212
	.type	main.cold, @function
main.cold:
.LFSB4212:
.L286:
	.cfi_def_cfa_offset 6496
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	6424(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L325
	leaq	432(%rsp), %rbx
.LEHB22:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE22:
.L177:
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L110:
	movq	6424(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L326
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L325:
	call	__stack_chk_fail@PLT
.L181:
	testq	%r13, %r13
	je	.L183
	movq	152(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L183:
	testq	%r12, %r12
	je	.L185
	movq	136(%rsp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L185:
	testq	%rbp, %rbp
	jne	.L327
.L187:
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L179:
	movq	72(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	104(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	304(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	272(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	80(%rsp), %rsi
	movq	112(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	jmp	.L110
.L326:
	call	__stack_chk_fail@PLT
.L208:
.L284:
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	movq	%rbp, %rbx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	336(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L179
.L327:
	movq	144(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	jmp	.L187
.L285:
	movq	6424(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L328
	movq	%r13, %rcx
	leaq	.LC9(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
.LEHB24:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE24:
.L328:
	call	__stack_chk_fail@PLT
.L180:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	336(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L179
	.cfi_endproc
.LFE4212:
	.section	.gcc_except_table
.LLSDAC4212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4212-.LLSDACSBC4212
.LLSDACSBC4212:
	.uleb128 .LEHB22-.LCOLDB42
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L208-.LCOLDB42
	.uleb128 0
	.uleb128 .LEHB23-.LCOLDB42
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LCOLDB42
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L208-.LCOLDB42
	.uleb128 0
.LLSDACSEC4212:
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
.LC32:
	.long	0
	.long	1104006501
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC41:
	.quad	42949754565378627
	.quad	4294967326164771079
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
