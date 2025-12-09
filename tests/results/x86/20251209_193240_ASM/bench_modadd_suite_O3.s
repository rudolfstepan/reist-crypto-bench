	.file	"bench_modadd_suite.cpp"
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
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3979:
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
	je	.L19
	cmpq	%rsi, %rax
	je	.L5
	movq	%rsi, 0(%rbp)
	movq	16(%rbp), %rcx
	movq	%rdx, 8(%rbp)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rbp)
	testq	%rdi, %rdi
	je	.L13
	movq	%rdi, (%rbx)
	movq	%rcx, 16(%rbx)
.L8:
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
.L19:
	.cfi_restore_state
	cmpq	%rsi, %rax
	je	.L5
	movq	%rsi, 0(%rbp)
	movq	%rax, %rdi
	movq	%rdx, 8(%rbp)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rbp)
.L11:
	movq	%rdi, (%rbx)
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L5:
	cmpq	%rbx, %rbp
	je	.L12
	testq	%rdx, %rdx
	je	.L9
	cmpq	$1, %rdx
	je	.L20
	call	memcpy@PLT
	movq	8(%rbx), %rdx
	movq	0(%rbp), %rdi
.L9:
	movq	%rdx, 8(%rbp)
	movb	$0, (%rdi,%rdx)
	movq	(%rbx), %rdi
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rax, %rdi
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L20:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rbx), %rdx
	movq	0(%rbp), %rdi
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rsi, %rdi
	jmp	.L8
	.cfi_endproc
.LFE3979:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3176:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3176
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
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
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	leaq	16(%rsp), %rsi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	movl	(%rax), %r13d
	movq	%rax, %rbx
	movl	$0, (%rax)
.LEHB0:
	call	*%r15
	movq	16(%rsp), %rdx
	cmpq	%rbp, %rdx
	je	.L39
	movl	(%rbx), %ecx
	cmpl	$34, %ecx
	je	.L40
	testq	%r12, %r12
	je	.L26
	subq	%rbp, %rdx
	movq	%rdx, (%r12)
.L26:
	testl	%ecx, %ecx
	je	.L41
.L21:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L38
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
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	movl	%r13d, (%rbx)
	jmp	.L21
.L40:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L38
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L39:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L38
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE0:
.L28:
	cmpl	$0, (%rbx)
	je	.L42
.L29:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L30
.L38:
	call	__stack_chk_fail@PLT
.L32:
	endbr64
	movq	%rax, %rdi
	jmp	.L28
.L42:
	movl	%r13d, (%rbx)
	jmp	.L29
.L30:
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3176:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3176:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3176-.LLSDACSB3176
.LLSDACSB3176:
	.uleb128 .LEHB0-.LFB3176
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L32-.LFB3176
	.uleb128 0
	.uleb128 .LEHB1-.LFB3176
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3176:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
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
.LFB3420:
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
	je	.L56
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, (%rsp)
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	.L57
	cmpq	$1, %rax
	jne	.L48
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L49:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L55
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
.L48:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L49
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L57:
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, (%rbx)
	movq	%rax, %r13
	movq	(%rsp), %rax
	movq	%rax, 16(%rbx)
.L47:
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L49
.L55:
	call	__stack_chk_fail@PLT
.L56:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L55
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3420:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, @function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB3433:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L58
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L58:
	ret
	.cfi_endproc
.LFE3433:
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.text._ZNSt6vectorI6ResultSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.type	_ZNSt6vectorI6ResultSaIS0_EED2Ev, @function
_ZNSt6vectorI6ResultSaIS0_EED2Ev:
.LFB3449:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L60
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L60:
	ret
	.cfi_endproc
.LFE3449:
	.size	_ZNSt6vectorI6ResultSaIS0_EED2Ev, .-_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.weak	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	.set	_ZNSt6vectorI6ResultSaIS0_EED1Ev,_ZNSt6vectorI6ResultSaIS0_EED2Ev
	.section	.rodata._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, @function
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_:
.LFB3790:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movabsq	$1152921504606846975, %rdx
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %r12
	movq	(%rdi), %r13
	movq	%r12, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	cmpq	%rdx, %rax
	je	.L84
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L85
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L77
	testq	%rcx, %rcx
	jne	.L86
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L68:
	movq	(%r15), %rax
	leaq	8(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movq	%rax, (%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L87
	testq	%r12, %r12
	jle	.L72
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L72:
	testq	%r13, %r13
	jne	.L71
.L74:
	movq	%rcx, 0(%rbp)
	movq	%r15, 8(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$24, %rsp
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
.L77:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L67:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L87:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L88
.L71:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L85:
	addq	$1, %rax
	jc	.L77
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L88:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L71
.L86:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L67
.L84:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3790:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.section	.text._ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB3827:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movabsq	$288230376151711743, %rdx
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %r12
	movq	(%rdi), %r13
	movq	%r12, %rax
	subq	%r13, %rax
	sarq	$5, %rax
	cmpq	%rdx, %rax
	je	.L111
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L112
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L104
	testq	%rcx, %rcx
	jne	.L113
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L95:
	movdqu	(%r15), %xmm0
	movdqu	16(%r15), %xmm1
	leaq	32(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movups	%xmm0, (%rcx,%rdx)
	movups	%xmm1, 16(%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L114
	testq	%r12, %r12
	jle	.L99
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L99:
	testq	%r13, %r13
	jne	.L98
.L101:
	movq	%rcx, 0(%rbp)
	movq	%r15, 8(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$24, %rsp
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
.L104:
	.cfi_restore_state
	movabsq	$9223372036854775776, %rbx
.L94:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L114:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L115
.L98:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %rax
	jc	.L104
	movabsq	$288230376151711743, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$5, %rbx
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L115:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L98
.L113:
	movabsq	$288230376151711743, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	movq	%rcx, %rbx
	salq	$5, %rbx
	jmp	.L94
.L111:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3827:
	.size	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"stoll"
.LC4:
	.string	"N must be > 0\n"
.LC8:
	.string	"vector::reserve"
.LC9:
	.string	"/proc/cpuinfo"
.LC10:
	.string	"model name"
.LC11:
	.string	":"
.LC12:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC14:
	.string	"cpu MHz"
.LC15:
	.string	"/proc/meminfo"
.LC16:
	.string	"MemTotal"
.LC17:
	.string	"r"
.LC18:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"========================================\n"
	.align 8
.LC20:
	.string	"REIST modular-add benchmark suite\n"
	.section	.rodata.str1.1
.LC21:
	.string	"System Information:\n"
.LC22:
	.string	"  Hostname: "
.LC23:
	.string	"\n"
.LC24:
	.string	"  OS: "
.LC25:
	.string	"  CPU Model: "
.LC26:
	.string	"  CPU MHz: "
.LC27:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"========================================\n\n"
	.align 8
.LC29:
	.string	"Total iterations per modulus N = "
	.section	.rodata.str1.1
.LC30:
	.string	"step = "
.LC31:
	.string	"\n\n"
.LC32:
	.string	"Running benchmarks...\n\n"
.LC33:
	.string	"results_modadd_suite.csv"
.LC34:
	.string	"Modulus B = "
.LC36:
	.string	"classic_mod"
.LC37:
	.string	"reist_sym"
.LC38:
	.string	"  classic_mod: "
.LC39:
	.string	" s\n"
.LC40:
	.string	"  reist_sym  : "
.LC41:
	.string	"  speedup    : "
.LC42:
	.string	"x (classic / REIST)\n"
.LC43:
	.string	"  sinks: "
.LC44:
	.string	" / "
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"modulus,N,scenario,seconds,ops_per_sec\n"
	.section	.rodata.str1.1
.LC46:
	.string	","
.LC47:
	.string	"CSV written to "
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"WARNING: could not write CSV file "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB50:
	.section	.text.startup,"ax",@progbits
.LHOTB50:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3094:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3094
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
	subq	$1368, %rsp
	.cfi_def_cfa_offset 1424
	movq	%fs:40, %rax
	movq	%rax, 1352(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L248
	movq	$50000000, 72(%rsp)
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movq	%rdx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
.L120:
	movdqa	.LC5(%rip), %xmm0
	movl	$48, %edi
	movaps	%xmm0, 432(%rsp)
	movdqa	.LC6(%rip), %xmm0
	movaps	%xmm0, 448(%rsp)
	movdqa	.LC7(%rip), %xmm0
	movaps	%xmm0, 464(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	leaq	432(%rsp), %rsi
	movq	%rax, %rdi
	movl	$12, %ecx
	movq	%rax, 112(%rsp)
	movq	%rsi, 16(%rsp)
	addq	$48, %rax
	rep movsl
	movq	%rax, 120(%rsp)
	movq	%rax, 128(%rsp)
.L121:
	movq	112(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movq	120(%rsp), %rax
	movq	$0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movq	%rax, 80(%rsp)
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rcx, 24(%rsp)
	leaq	(%rax,%rax), %rdx
	movq	%rdx, %rcx
	shrq	$58, %rcx
	jne	.L249
	testq	%rdx, %rdx
	jne	.L250
.L124:
	leaq	224(%rsp), %rax
	movq	16(%rsp), %rdi
	movl	$8, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, 8(%rsp)
	leaq	144(%rsp), %r14
	movq	%rax, 208(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 272(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	336(%rsp), %rax
	movq	$0, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	$0, 248(%rsp)
	movb	$0, 256(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	%rax, 88(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	384(%rsp), %rax
	movb	$0, 384(%rsp)
	leaq	.LC10(%rip), %r15
	movq	%rax, 32(%rsp)
	movq	%rax, 368(%rsp)
	movq	$0, 376(%rsp)
.L125:
	leaq	.LC14(%rip), %r13
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L260:
	movsbl	67(%rbx), %edx
.L147:
	leaq	368(%rsp), %rbp
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L251
	xorl	%edx, %edx
	movl	$10, %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L126
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	376(%rsp), %rbx
	addq	$2, %rax
	cmpq	%rax, %rbx
	jb	.L252
	movq	368(%rsp), %r14
	leaq	416(%rsp), %r12
	subq	%rax, %rbx
	leaq	400(%rsp), %rdi
	movq	%r12, 400(%rsp)
	movq	%rbx, 176(%rsp)
	addq	%rax, %r14
	cmpq	$15, %rbx
	ja	.L253
	cmpq	$1, %rbx
	je	.L254
	testq	%rbx, %rbx
	jne	.L255
.L133:
	movq	%r12, %rax
.L132:
	movq	%rbx, 408(%rsp)
	movb	$0, (%rax,%rbx)
	movq	400(%rsp), %rdx
	movq	208(%rsp), %rax
	cmpq	%r12, %rdx
	je	.L256
	movdqu	408(%rsp), %xmm0
	movq	8(%rsp), %rcx
	cmpq	%rcx, %rax
	je	.L257
	movq	224(%rsp), %rcx
	movq	%rdx, 208(%rsp)
	movups	%xmm0, 216(%rsp)
	testq	%rax, %rax
	je	.L141
	movq	%rax, 400(%rsp)
	movq	%rcx, 416(%rsp)
.L140:
	movq	$0, 408(%rsp)
	movb	$0, (%rax)
	movq	400(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L126
	movq	416(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L126:
	xorl	%edx, %edx
	movl	$7, %ecx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L258
.L143:
	movq	432(%rsp), %rax
	movq	-24(%rax), %rax
	movq	672(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L259
	cmpb	$0, 56(%rbx)
	jne	.L260
	movq	%rbx, %rdi
	leaq	368(%rsp), %rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L147
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L254:
	movzbl	(%r14), %eax
	movb	%al, 416(%rsp)
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L253:
	leaq	176(%rsp), %rsi
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 400(%rsp)
	movq	%rax, %rdi
	movq	176(%rsp), %rax
	movq	%rax, 416(%rsp)
.L130:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	176(%rsp), %rbx
	movq	400(%rsp), %rax
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L257:
	movq	%rdx, 208(%rsp)
	movups	%xmm0, 216(%rsp)
.L141:
	movq	%r12, 400(%rsp)
	leaq	416(%rsp), %r12
	movq	%r12, %rax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L256:
	movq	408(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L136
	cmpq	$1, %rdx
	je	.L261
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	rep movsb
	movq	408(%rsp), %rdx
	movq	208(%rsp), %rax
.L136:
	movq	%rdx, 216(%rsp)
	movb	$0, (%rax,%rdx)
	movq	400(%rsp), %rax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L251:
	movq	%rbp, %rdi
	leaq	144(%rsp), %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%rax, 96(%rsp)
	leaq	304(%rsp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, 104(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 88(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	32(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	%rax, 368(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L149
	leaq	272(%rsp), %rax
	movq	%rax, 96(%rsp)
.L150:
	movq	%rbp, %rdi
	leaq	1088(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L237
	leaq	304(%rsp), %rax
	movq	%rax, 104(%rsp)
.L152:
	leaq	336(%rsp), %rax
	leaq	.LC17(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	movq	%rax, 88(%rsp)
	leaq	144(%rsp), %r14
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L262
	leaq	960(%rsp), %rbp
	leaq	336(%rsp), %rax
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	movq	%rax, 88(%rsp)
	leaq	144(%rsp), %r14
	call	fgets@PLT
	testq	%rax, %rax
	je	.L263
	movq	16(%rsp), %r15
	leaq	336(%rsp), %rax
	movq	%rbp, %rsi
	leaq	176(%rsp), %rdx
	movq	%rax, 88(%rsp)
	leaq	144(%rsp), %r14
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	336(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rdi, 88(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	.L155
	movq	336(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L264
.L155:
	movq	%rbx, %rdi
	leaq	144(%rsp), %r14
	call	pclose@PLT
.L153:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %r15
	leaq	.LC19(%rip), %rbx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	leaq	144(%rsp), %r14
	movq	-24(%rax), %rdx
	addq	%r15, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC21(%rip), %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$12, %edx
	leaq	.LC22(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	312(%rsp), %rdx
	movq	304(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$6, %edx
	leaq	.LC24(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	344(%rsp), %rdx
	movq	336(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$13, %edx
	leaq	.LC25(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC26(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	248(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %edx
	leaq	.LC27(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	280(%rsp), %rdx
	movq	272(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC28(%rip), %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$33, %edx
	leaq	.LC29(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	72(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$7, %edx
	leaq	.LC30(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %esi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC31(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC32(%rip), %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, 80(%rsp)
	je	.L170
	.p2align 4,,10
	.p2align 3
.L169:
	movq	8(%rsp), %rax
	movl	$12, %edx
	leaq	.LC34(%rip), %rsi
	movq	%r15, %rdi
	movq	(%rax), %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC23(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	72(%rsp), %r13
	movq	%rbp, %xmm2
	movq	%r13, %xmm6
	punpcklqdq	%xmm6, %xmm2
	movaps	%xmm2, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	%rax, %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L159:
	addq	$3, %rax
	movq	%rcx, %r12
	leaq	1(%rcx), %rcx
	cqto
	idivq	%rbp
	movq	%rdx, %rax
	cmpq	%rcx, %rsi
	jne	.L159
	movq	%rdx, %r13
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movdqa	32(%rsp), %xmm6
	movq	152(%rsp), %rsi
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	leaq	.LC36(%rip), %rax
	movaps	%xmm6, 176(%rsp)
	movq	%rax, 192(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 56(%rsp)
	movapd	%xmm0, %xmm3
	divsd	.LC35(%rip), %xmm3
	movsd	%xmm3, 48(%rsp)
	movsd	%xmm3, 200(%rsp)
	cmpq	%rax, %rsi
	je	.L160
	movdqa	176(%rsp), %xmm1
	addq	$32, %rsi
	movups	%xmm1, -32(%rsi)
	movdqa	192(%rsp), %xmm6
	movups	%xmm6, -16(%rsi)
	movq	%rsi, 152(%rsp)
	movq	%rsi, 64(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rbp, %rcx
	movq	64(%rsp), %rsi
	shrq	$63, %rcx
	movq	%rax, 24(%rsp)
	addq	%rbp, %rcx
	sarq	%rcx
.L161:
	movq	%rcx, %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	negq	%rdi
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L266:
	subq	%rbp, %rbx
	leaq	1(%rax), %rdx
	cmpq	%r12, %rax
	je	.L265
.L193:
	movq	%rdx, %rax
.L164:
	addq	$3, %rbx
	cmpq	%rcx, %rbx
	jg	.L266
	leaq	(%rbx,%rbp), %rdx
	cmpq	%rbx, %rdi
	cmovge	%rdx, %rbx
	leaq	1(%rax), %rdx
	cmpq	%r12, %rax
	jne	.L193
.L265:
	movq	%rsi, 64(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	24(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movdqa	32(%rsp), %xmm7
	movq	64(%rsp), %rsi
	subq	%rcx, %rax
	movaps	%xmm7, 176(%rsp)
	cvtsi2sdq	%rax, %xmm0
	leaq	.LC37(%rip), %rax
	movq	%rax, 192(%rsp)
	movapd	%xmm0, %xmm4
	divsd	.LC35(%rip), %xmm4
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm4, 200(%rsp)
	cmpq	%rsi, 56(%rsp)
	je	.L165
	movdqa	176(%rsp), %xmm7
	addq	$32, %rsi
	movups	%xmm7, -32(%rsi)
	movdqa	192(%rsp), %xmm5
	movups	%xmm5, -16(%rsi)
	movq	%rsi, 152(%rsp)
.L166:
	movl	$15, %edx
	leaq	.LC38(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	48(%rsp), %xmm0
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC39(%rip), %rbp
	movq	%rax, %rdi
	movl	$3, %edx
	movq	%rbp, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$15, %edx
	leaq	.LC40(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm0
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	movq	%rbp, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm5
	jbe	.L167
	movl	$15, %edx
	leaq	.LC41(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rdi
	movsd	48(%rsp), %xmm0
	divsd	24(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$20, %edx
	leaq	.LC42(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L167:
	movl	$9, %edx
	leaq	.LC43(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	movl	$2, %edx
	leaq	.LC31(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$8, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	jne	.L169
.L170:
	movq	16(%rsp), %rdi
	movl	$16, %edx
	leaq	.LC33(%rip), %rsi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE7:
	testb	$5, 712(%rsp)
	jne	.L171
	movq	16(%rsp), %rdi
	leaq	.LC45(%rip), %rsi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	152(%rsp), %rax
	movq	144(%rsp), %rbx
	leaq	.LC46(%rip), %r12
	movq	%rax, 24(%rsp)
	cmpq	%rbx, %rax
	jne	.L178
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L268:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	8(%rbx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
.L174:
	movq	(%rbx), %rsi
	movq	16(%rsp), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rbx), %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rbx), %r13
	testq	%r13, %r13
	je	.L267
	movq	%r13, %rdi
	call	strlen@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L177:
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rbx), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC23(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE8:
	addq	$32, %rbx
	cmpq	%rbx, 24(%rsp)
	je	.L179
.L178:
	movsd	24(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L268
	movq	$0x000000000, 8(%rsp)
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L255:
	movq	%r12, %rdi
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L258:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	400(%rsp), %rbx
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	240(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L125
.L149:
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	272(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 96(%rsp)
	je	.L150
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	400(%rsp), %rbx
	orq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB10:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE10:
	leaq	272(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 96(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L160:
	leaq	176(%rsp), %rdx
	movq	%r14, %rdi
.LEHB11:
	call	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	movq	152(%rsp), %rsi
	movq	%rsi, 64(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rbp, %rcx
	movq	64(%rsp), %rsi
	movq	%rax, 24(%rsp)
	shrq	$63, %rcx
	movq	160(%rsp), %rax
	addq	%rbp, %rcx
	movq	%rax, 56(%rsp)
	sarq	%rcx
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L165:
	movq	56(%rsp), %rsi
	leaq	176(%rsp), %rdx
	movq	%r14, %rdi
	call	_ZNSt6vectorI6ResultSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.LEHE11:
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L267:
	movq	0(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
.LEHB12:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L177
.L171:
	leaq	_ZSt4cerr(%rip), %rbx
	movl	$34, %edx
	leaq	.LC48(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC33(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L244:
	movq	%rax, %rdi
	leaq	.LC23(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	88(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	104(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	240(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	208(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r14, %rdi
	call	_ZNSt6vectorI6ResultSaIS0_EED1Ev
	leaq	112(%rsp), %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	xorl	%eax, %eax
.L116:
	movq	1352(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L246
	addq	$1368, %rsp
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
.L179:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	movl	$15, %edx
	leaq	.LC47(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC33(%rip), %rsi
	movq	%r15, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE12:
	jmp	.L244
.L237:
	movq	%rbx, %rdi
	leaq	144(%rsp), %r14
	call	strlen@PLT
	movq	312(%rsp), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	304(%rsp), %rdi
	leaq	336(%rsp), %rax
	movq	%rdi, 104(%rsp)
	movq	%rax, 88(%rsp)
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE13:
	jmp	.L152
.L248:
	leaq	432(%rsp), %r15
	movq	%rsi, %rbx
	movq	8(%rsi), %rsi
	movl	%edi, %r14d
	leaq	176(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r15, 16(%rsp)
	leaq	.LC3(%rip), %r13
	movq	%rbp, %rdx
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE14:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	__isoc23_strtoll@GOTPCREL(%rip), %r12
	movq	432(%rsp), %rdx
	movq	%r12, %rdi
.LEHB15:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE15:
	movq	%r15, %rdi
	movq	%rax, 72(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpq	$0, 72(%rsp)
	jle	.L269
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpl	$2, %r14d
	je	.L120
	movq	16(%rbx), %rsi
	movq	16(%rsp), %rbx
	leaq	144(%rsp), %r14
	movq	%r14, %rdx
	movq	%rbx, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE16:
	movq	432(%rsp), %rdx
	movq	%r13, %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	$10, %r8d
	leaq	112(%rsp), %r13
.LEHB17:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%rax, 176(%rsp)
	call	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
.LEHE17:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L121
.L261:
	movzbl	416(%rsp), %edx
	movb	%dl, (%rax)
	movq	408(%rsp), %rdx
	movq	208(%rsp), %rax
	jmp	.L136
.L250:
	salq	$6, %rax
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB18:
	call	_Znwm@PLT
.LEHE18:
	movq	%rax, %xmm0
	addq	%rbx, %rax
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	jmp	.L124
.L263:
	leaq	336(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.L155
.L264:
	movq	88(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L155
.L269:
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB19:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE19:
	movl	$1, %eax
	jmp	.L116
.L259:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L246
	leaq	368(%rsp), %rbp
.LEHB20:
	call	_ZSt16__throw_bad_castv@PLT
.L252:
	movq	1352(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L246
	movq	%rax, %rdx
	movq	%rbx, %rcx
	leaq	.LC12(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE20:
.L249:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L246
	leaq	.LC8(%rip), %rdi
.LEHB21:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE21:
.L246:
	call	__stack_chk_fail@PLT
.L262:
	leaq	336(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.L153
.L201:
	endbr64
	movq	%rax, %rbx
	jmp	.L187
.L197:
	endbr64
	movq	%rax, %rbx
	leaq	112(%rsp), %r13
	jmp	.L184
.L200:
	endbr64
	movq	%rax, %rbx
	jmp	.L186
.L195:
	endbr64
	movq	%rax, %rbx
	jmp	.L181
.L196:
	endbr64
	movq	%rax, %rbx
	jmp	.L183
.L202:
	endbr64
	movq	%rax, %rbx
	jmp	.L188
.L198:
	endbr64
	movq	%rax, %rbx
	leaq	144(%rsp), %r14
	jmp	.L189
.L199:
	endbr64
	movq	%rax, %rbx
	jmp	.L185
	.section	.gcc_except_table,"a",@progbits
.LLSDA3094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3094-.LLSDACSB3094
.LLSDACSB3094:
	.uleb128 .LEHB2-.LFB3094
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L197-.LFB3094
	.uleb128 0
	.uleb128 .LEHB3-.LFB3094
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L200-.LFB3094
	.uleb128 0
	.uleb128 .LEHB4-.LFB3094
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L199-.LFB3094
	.uleb128 0
	.uleb128 .LEHB5-.LFB3094
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L200-.LFB3094
	.uleb128 0
	.uleb128 .LEHB6-.LFB3094
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L201-.LFB3094
	.uleb128 0
	.uleb128 .LEHB7-.LFB3094
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L200-.LFB3094
	.uleb128 0
	.uleb128 .LEHB8-.LFB3094
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L202-.LFB3094
	.uleb128 0
	.uleb128 .LEHB9-.LFB3094
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L199-.LFB3094
	.uleb128 0
	.uleb128 .LEHB10-.LFB3094
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L201-.LFB3094
	.uleb128 0
	.uleb128 .LEHB11-.LFB3094
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L200-.LFB3094
	.uleb128 0
	.uleb128 .LEHB12-.LFB3094
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L202-.LFB3094
	.uleb128 0
	.uleb128 .LEHB13-.LFB3094
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L200-.LFB3094
	.uleb128 0
	.uleb128 .LEHB14-.LFB3094
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB3094
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L195-.LFB3094
	.uleb128 0
	.uleb128 .LEHB16-.LFB3094
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L197-.LFB3094
	.uleb128 0
	.uleb128 .LEHB17-.LFB3094
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L196-.LFB3094
	.uleb128 0
	.uleb128 .LEHB18-.LFB3094
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L198-.LFB3094
	.uleb128 0
	.uleb128 .LEHB19-.LFB3094
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB3094
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L199-.LFB3094
	.uleb128 0
	.uleb128 .LEHB21-.LFB3094
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L198-.LFB3094
	.uleb128 0
.LLSDACSE3094:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3094
	.type	main.cold, @function
main.cold:
.LFSB3094:
.L187:
	.cfi_def_cfa_offset 1424
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbp, %rdi
	leaq	144(%rsp), %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 88(%rsp)
.L186:
	movq	88(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	104(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	240(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	208(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L189:
	movq	%r14, %rdi
	leaq	112(%rsp), %r13
	call	_ZNSt6vectorI6ResultSaIS0_EED1Ev
.L184:
	movq	%r13, %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L247
.L190:
	movq	%rbx, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L181:
	movq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	je	.L190
.L247:
	call	__stack_chk_fail@PLT
.L183:
	movq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L184
.L185:
	movq	%rbp, %rdi
	leaq	144(%rsp), %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.L186
.L188:
	movq	16(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L186
	.cfi_endproc
.LFE3094:
	.section	.gcc_except_table
.LLSDAC3094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3094-.LLSDACSBC3094
.LLSDACSBC3094:
	.uleb128 .LEHB22-.LCOLDB50
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSEC3094:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE50:
	.section	.text.startup
.LHOTE50:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.quad	257
	.quad	997
	.align 16
.LC6:
	.quad	10007
	.quad	1000003
	.align 16
.LC7:
	.quad	10000019
	.quad	1000000007
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC35:
	.long	0
	.long	1104006501
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
