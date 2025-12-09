	.file	"bench_hashmix.cpp"
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
.LFB3878:
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
.LFE3878:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3880:
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
.LFE3880:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3175:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3175
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
	je	.L43
	movl	(%rbx), %ecx
	cmpl	$34, %ecx
	je	.L44
	testq	%r12, %r12
	je	.L30
	subq	%rbp, %rdx
	movq	%rdx, (%r12)
.L30:
	testl	%ecx, %ecx
	je	.L45
.L25:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L42
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
.L45:
	.cfi_restore_state
	movl	%r13d, (%rbx)
	jmp	.L25
.L44:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L43:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE0:
.L32:
	cmpl	$0, (%rbx)
	je	.L46
.L33:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L34
.L42:
	call	__stack_chk_fail@PLT
.L36:
	endbr64
	movq	%rax, %rdi
	jmp	.L32
.L46:
	movl	%r13d, (%rbx)
	jmp	.L33
.L34:
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3175:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3175:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3175-.LLSDACSB3175
.LLSDACSB3175:
	.uleb128 .LEHB0-.LFB3175
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L36-.LFB3175
	.uleb128 0
	.uleb128 .LEHB1-.LFB3175
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3175:
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorImSaImEED2Ev
	.type	_ZNSt6vectorImSaImEED2Ev, @function
_ZNSt6vectorImSaImEED2Ev:
.LFB3419:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L47
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L47:
	ret
	.cfi_endproc
.LFE3419:
	.size	_ZNSt6vectorImSaImEED2Ev, .-_ZNSt6vectorImSaImEED2Ev
	.weak	_ZNSt6vectorImSaImEED1Ev
	.set	_ZNSt6vectorImSaImEED1Ev,_ZNSt6vectorImSaImEED2Ev
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
	je	.L62
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, (%rsp)
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	.L63
	cmpq	$1, %rax
	jne	.L54
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L55:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L61
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
.L54:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L55
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L63:
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, (%rbx)
	movq	%rax, %r13
	movq	(%rsp), %rax
	movq	%rax, 16(%rbx)
.L53:
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L55
.L61:
	call	__stack_chk_fail@PLT
.L62:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L61
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3422:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata._ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.type	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, @function
_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_:
.LFB3716:
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
	je	.L86
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L87
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L79
	testq	%rcx, %rcx
	jne	.L88
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L70:
	movq	(%r15), %rax
	leaq	8(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movq	%rax, (%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L89
	testq	%r12, %r12
	jle	.L74
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L74:
	testq	%r13, %r13
	jne	.L73
.L76:
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
.L79:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L69:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L89:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L90
.L73:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L87:
	addq	$1, %rax
	jc	.L79
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L90:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L73
.L88:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L69
.L86:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3716:
	.size	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_, .-_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"stoull"
.LC5:
	.string	"/proc/cpuinfo"
.LC6:
	.string	"model name"
.LC7:
	.string	":"
.LC8:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC10:
	.string	"cpu MHz"
.LC11:
	.string	"/proc/meminfo"
.LC12:
	.string	"MemTotal"
.LC13:
	.string	"r"
.LC14:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"========================================\n"
	.align 8
.LC16:
	.string	"Hashmix benchmark (classic % vs REIST reduction)\n"
	.section	.rodata.str1.1
.LC17:
	.string	"System Information:\n"
.LC18:
	.string	"  Hostname: "
.LC19:
	.string	"\n"
.LC20:
	.string	"  OS: "
.LC21:
	.string	"  CPU Model: "
.LC22:
	.string	"  CPU MHz: "
.LC23:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"========================================\n\n"
	.section	.rodata.str1.1
.LC25:
	.string	"Iterations N = "
.LC27:
	.string	"M = "
.LC28:
	.string	""
.LC29:
	.string	"  classic : "
.LC30:
	.string	"  REIST   : "
.LC32:
	.string	"  speedup : "
.LC33:
	.string	"x (classic / REIST)"
.LC34:
	.string	"  sink values: "
.LC35:
	.string	" / "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB37:
	.section	.text.startup,"ax",@progbits
.LHOTB37:
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
	pxor	%xmm0, %xmm0
	movabsq	$1442695040888963407, %r15
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
	subq	$1288, %rsp
	.cfi_def_cfa_offset 1344
	movq	%fs:40, %rax
	movq	%rax, 1272(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 96(%rsp)
	movq	$0, 112(%rsp)
	movq	$100000000, 40(%rsp)
	cmpl	$1, %edi
	jg	.L189
.L92:
	movdqa	.LC3(%rip), %xmm0
	movl	$32, %edi
	movaps	%xmm0, 352(%rsp)
	movdqa	.LC4(%rip), %xmm0
	movaps	%xmm0, 368(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movdqa	352(%rsp), %xmm2
	movq	%rax, 96(%rsp)
	addq	$32, %rax
	leaq	352(%rsp), %r13
	movdqa	368(%rsp), %xmm3
	movups	%xmm2, -32(%rax)
	movups	%xmm3, -16(%rax)
	movq	%rax, 104(%rsp)
	movq	%rax, 112(%rsp)
.L93:
	leaq	144(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movq	$0, 136(%rsp)
	movq	%rax, 8(%rsp)
	leaq	.LC5(%rip), %rsi
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 256(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	256(%rsp), %rax
	movb	$0, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%rax, 56(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	304(%rsp), %rax
	movb	$0, 304(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 288(%rsp)
	movq	$0, 296(%rsp)
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L199:
	movsbl	67(%rbx), %edx
.L116:
	leaq	288(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L190
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC6(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L95
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	296(%rsp), %rbx
	addq	$2, %rax
	cmpq	%rax, %rbx
	jb	.L191
	movq	288(%rsp), %r14
	leaq	336(%rsp), %r12
	subq	%rax, %rbx
	leaq	320(%rsp), %rdi
	movq	%r12, 320(%rsp)
	movq	%rbx, 88(%rsp)
	addq	%rax, %r14
	cmpq	$15, %rbx
	ja	.L192
	cmpq	$1, %rbx
	je	.L193
	testq	%rbx, %rbx
	jne	.L194
.L102:
	movq	%r12, %rax
.L101:
	movq	%rbx, 328(%rsp)
	movb	$0, (%rax,%rbx)
	movq	320(%rsp), %rdx
	movq	128(%rsp), %rax
	cmpq	%r12, %rdx
	je	.L195
	movdqu	328(%rsp), %xmm0
	movq	8(%rsp), %rbx
	cmpq	%rbx, %rax
	je	.L196
	movq	144(%rsp), %rcx
	movq	%rdx, 128(%rsp)
	movups	%xmm0, 136(%rsp)
	testq	%rax, %rax
	je	.L110
	movq	%rax, 320(%rsp)
	movq	%rcx, 336(%rsp)
.L109:
	movq	$0, 328(%rsp)
	movb	$0, (%rax)
	movq	320(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L95
	movq	336(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L95:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L197
.L112:
	movq	352(%rsp), %rax
	movq	-24(%rax), %rax
	movq	592(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L198
	cmpb	$0, 56(%rbx)
	jne	.L199
	movq	%rbx, %rdi
	leaq	288(%rsp), %rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L116
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L193:
	movzbl	(%r14), %eax
	movb	%al, 336(%rsp)
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L192:
	leaq	88(%rsp), %rsi
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 320(%rsp)
	movq	%rax, %rdi
	movq	88(%rsp), %rax
	movq	%rax, 336(%rsp)
.L99:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	88(%rsp), %rbx
	movq	320(%rsp), %rax
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%rdx, 128(%rsp)
	movups	%xmm0, 136(%rsp)
.L110:
	movq	%r12, 320(%rsp)
	leaq	336(%rsp), %r12
	movq	%r12, %rax
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L195:
	movq	328(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L105
	cmpq	$1, %rdx
	je	.L200
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	rep movsb
	movq	328(%rsp), %rdx
	movq	128(%rsp), %rax
.L105:
	movq	%rdx, 136(%rsp)
	movb	$0, (%rax,%rdx)
	movq	320(%rsp), %rax
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L190:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	192(%rsp), %rax
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, 72(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 56(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	16(%rsp), %rax
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	$0, 296(%rsp)
	movb	$0, 304(%rsp)
	movq	%rax, 288(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L118
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
.L119:
	movq	%rbp, %rdi
	leaq	1008(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L184
	leaq	224(%rsp), %rax
	movq	%rax, 72(%rsp)
.L121:
	leaq	256(%rsp), %rax
	leaq	.LC13(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movq	%rax, 56(%rsp)
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L201
	leaq	880(%rsp), %rbp
	leaq	256(%rsp), %rax
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	movq	%rax, 56(%rsp)
	call	fgets@PLT
	testq	%rax, %rax
	je	.L202
	leaq	256(%rsp), %rax
	leaq	88(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	256(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.L124
	movq	256(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L203
.L124:
	movq	%rbx, %rdi
	call	pclose@PLT
.L122:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %r14
	leaq	.LC15(%rip), %rbx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	movq	-24(%rax), %rdx
	addq	%r14, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC16(%rip), %rsi
	movq	%r14, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC17(%rip), %rsi
	movq	%r14, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC18(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC19(%rip), %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC20(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	264(%rsp), %rdx
	movq	256(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC21(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC22(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC23(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC24(%rip), %rsi
	movq	%r14, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$15, %edx
	leaq	.LC25(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	40(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	104(%rsp), %rax
	movq	96(%rsp), %rbx
	movabsq	$6364136223846793005, %r13
	movq	%rax, 48(%rsp)
	movq	%rbx, 8(%rsp)
	cmpq	%rbx, %rax
	je	.L133
	.p2align 4,,10
	.p2align 3
.L132:
	movq	8(%rsp), %rax
	movq	(%rax), %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	40(%rsp), %rsi
	movq	%rax, %rbx
	testq	%rsi, %rsi
	je	.L127
	movabsq	$1311768467294899695, %rbp
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	.p2align 4,,10
	.p2align 3
.L128:
	imulq	%r13, %rdx
	movq	%rcx, %r8
	leaq	1(%rcx), %rcx
	leaq	(%rdx,%r15), %rax
	xorl	%edx, %edx
	divq	%r12
	cmpq	%rcx, %rsi
	jne	.L128
	movq	%r8, 32(%rsp)
	movq	%rdx, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	movabsq	$1311768467294899695, %rbx
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC26(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r12, %r9
	movq	32(%rsp), %r8
	xorl	%ecx, %ecx
	shrq	$63, %r9
	movq	%rax, 16(%rsp)
	xorl	%esi, %esi
	movq	%rbx, %rax
	addq	%r12, %r9
	sarq	%r9
	movq	%r9, %rdi
	negq	%rdi
	.p2align 4,,10
	.p2align 3
.L129:
	imulq	%r13, %rax
	movq	%rsi, %r10
	addq	%r15, %rax
	cqto
	idivq	%r12
	cmpq	%rdx, %r9
	movq	%rdx, %rax
	cmovl	%r12, %r10
	subq	%r10, %rax
	cmpq	%rdx, %rdi
	movq	%rsi, %rdx
	cmovge	%r12, %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$1, %rcx
	cmpq	%rdx, %r8
	jne	.L129
	movq	%rax, %rbx
.L142:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	16(%rsp), %rcx
	pxor	%xmm0, %xmm0
	movl	$4, %edx
	leaq	.LC27(%rip), %rsi
	movq	%r14, %rdi
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC26(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	xorl	%edx, %edx
	leaq	.LC28(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC29(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	xorl	%edx, %edx
	leaq	.LC28(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC30(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	xorl	%edx, %edx
	leaq	.LC28(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L130
	movl	$12, %edx
	leaq	.LC32(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movsd	24(%rsp), %xmm0
	divsd	16(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$19, %edx
	leaq	.LC33(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L130:
	movl	$15, %edx
	leaq	.LC34(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	%rbp, %rsi
	movq	%r14, %rdi
	movq	-24(%rax), %rdx
	addq	%r14, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rsi
	movq	-24(%rax), %rdx
	addq	%rdi, %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%rdx)
	xorl	%edx, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE7:
	addq	$8, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	%rax, 48(%rsp)
	jne	.L132
.L133:
	movq	56(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	72(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt6vectorImSaImEED1Ev
	movq	1272(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L186
	addq	$1288, %rsp
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
.L194:
	.cfi_restore_state
	movq	%r12, %rdi
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L197:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	320(%rsp), %rbx
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB8:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE8:
	leaq	160(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L112
.L118:
	xorl	%edx, %edx
	movl	$8, %ecx
	movq	%rbp, %rdi
	leaq	.LC12(%rip), %rsi
	leaq	192(%rsp), %rbx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	%rbx, 64(%rsp)
	addq	$1, %rax
	je	.L119
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	320(%rsp), %rbx
	orq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	192(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L127:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movabsq	$1311768467294899695, %rbp
	subq	%rbx, %rax
	movq	%rbp, %rbx
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC26(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 16(%rsp)
	jmp	.L142
.L184:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	232(%rsp), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	224(%rsp), %rdi
	leaq	256(%rsp), %rax
	movq	%rdi, 72(%rsp)
	movq	%rax, 56(%rsp)
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE10:
	jmp	.L121
.L189:
	movq	%rsi, %rbp
	leaq	88(%rsp), %r12
	movq	8(%rsi), %rsi
	movl	%edi, %ebx
	leaq	352(%rsp), %r13
	movq	%r12, %rdx
	movq	%r13, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	leaq	.LC2(%rip), %r14
	movq	352(%rsp), %rdx
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
.LEHB12:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE12:
	movq	%r13, %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %ebx
	je	.L92
	movq	16(%rbp), %rsi
	movq	%r12, %rdx
	movq	%r13, %rdi
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE13:
	movq	352(%rsp), %rdx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movl	$10, %r8d
.LEHB14:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE14:
	movq	%r13, %rdi
	movq	%rax, %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$3, %ebx
	je	.L92
	movq	24(%rbp), %rsi
	leaq	87(%rsp), %rdx
	movq	%r13, %rdi
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE15:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	96(%rsp), %rbx
	movq	%r14, %rsi
	movq	352(%rsp), %rdx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
.LEHB16:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, 88(%rsp)
	call	_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_
.LEHE16:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L93
.L200:
	movzbl	336(%rsp), %edx
	movb	%dl, (%rax)
	movq	328(%rsp), %rdx
	movq	128(%rsp), %rax
	jmp	.L105
.L202:
	leaq	256(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L124
.L203:
	movq	56(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L124
.L198:
	movq	1272(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L186
	leaq	288(%rsp), %rbp
.LEHB17:
	call	_ZSt16__throw_bad_castv@PLT
.L191:
	movq	1272(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L186
	movq	%rax, %rdx
	movq	%rbx, %rcx
	leaq	.LC8(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE17:
.L201:
	leaq	256(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L122
.L186:
	call	__stack_chk_fail@PLT
.L147:
	endbr64
	movq	%rax, %rbp
	jmp	.L136
.L151:
	endbr64
	movq	%rax, %rbx
	jmp	.L138
.L152:
	endbr64
	movq	%rax, %rbp
	jmp	.L139
.L153:
	endbr64
	movq	%rax, %rbx
	jmp	.L140
.L148:
	endbr64
	movq	%rax, %rbp
	leaq	96(%rsp), %rbx
	jmp	.L135
.L149:
	endbr64
	movq	%rax, %rbp
	jmp	.L136
.L150:
	endbr64
	movq	%rax, %rbp
	jmp	.L137
	.section	.gcc_except_table,"a",@progbits
.LLSDA3094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3094-.LLSDACSB3094
.LLSDACSB3094:
	.uleb128 .LEHB2-.LFB3094
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L148-.LFB3094
	.uleb128 0
	.uleb128 .LEHB3-.LFB3094
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L152-.LFB3094
	.uleb128 0
	.uleb128 .LEHB4-.LFB3094
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L151-.LFB3094
	.uleb128 0
	.uleb128 .LEHB5-.LFB3094
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L152-.LFB3094
	.uleb128 0
	.uleb128 .LEHB6-.LFB3094
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L153-.LFB3094
	.uleb128 0
	.uleb128 .LEHB7-.LFB3094
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L152-.LFB3094
	.uleb128 0
	.uleb128 .LEHB8-.LFB3094
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L151-.LFB3094
	.uleb128 0
	.uleb128 .LEHB9-.LFB3094
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L153-.LFB3094
	.uleb128 0
	.uleb128 .LEHB10-.LFB3094
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L152-.LFB3094
	.uleb128 0
	.uleb128 .LEHB11-.LFB3094
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L148-.LFB3094
	.uleb128 0
	.uleb128 .LEHB12-.LFB3094
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L147-.LFB3094
	.uleb128 0
	.uleb128 .LEHB13-.LFB3094
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L148-.LFB3094
	.uleb128 0
	.uleb128 .LEHB14-.LFB3094
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L149-.LFB3094
	.uleb128 0
	.uleb128 .LEHB15-.LFB3094
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L148-.LFB3094
	.uleb128 0
	.uleb128 .LEHB16-.LFB3094
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L150-.LFB3094
	.uleb128 0
	.uleb128 .LEHB17-.LFB3094
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L151-.LFB3094
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
.L136:
	.cfi_def_cfa_offset 1344
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	leaq	96(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L135:
	movq	%rbx, %rdi
	call	_ZNSt6vectorImSaImEED1Ev
	movq	1272(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L204
	movq	%rbp, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L138:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 56(%rsp)
.L139:
	movq	56(%rsp), %rdi
	leaq	96(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	72(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L135
.L140:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L139
.L204:
	call	__stack_chk_fail@PLT
.L137:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L135
	.cfi_endproc
.LFE3094:
	.section	.gcc_except_table
.LLSDAC3094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3094-.LLSDACSBC3094
.LLSDACSBC3094:
	.uleb128 .LEHB18-.LCOLDB37
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSEC3094:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE37:
	.section	.text.startup
.LHOTE37:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.quad	1000003
	.quad	10000019
	.align 16
.LC4:
	.quad	100000007
	.quad	1000000007
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC26:
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
