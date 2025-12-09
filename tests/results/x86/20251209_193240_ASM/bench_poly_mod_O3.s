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
.LFB5255:
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
.LFE5255:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB5257:
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
.LFE5257:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4268:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4268
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d
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
	movl	%r13d, %edx
	movq	%rbp, %rdi
	movl	(%rax), %r14d
	movq	%rax, %rbx
	movl	$0, (%rax)
.LEHB0:
	call	*%r15
	movq	16(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L47
	movl	(%rbx), %esi
	cmpl	$34, %esi
	je	.L28
	movl	$2147483648, %edx
	addq	%rax, %rdx
	shrq	$32, %rdx
	jne	.L28
	testq	%r12, %r12
	je	.L31
	subq	%rbp, %rcx
	movq	%rcx, (%r12)
.L31:
	testl	%esi, %esi
	je	.L48
.L25:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L46
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
.L48:
	.cfi_restore_state
	movl	%r14d, (%rbx)
	jmp	.L25
.L28:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L47:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE0:
.L33:
	cmpl	$0, (%rbx)
	je	.L49
.L34:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L35
.L46:
	call	__stack_chk_fail@PLT
.L37:
	endbr64
	movq	%rax, %rdi
	jmp	.L33
.L49:
	movl	%r14d, (%rbx)
	jmp	.L34
.L35:
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE4268:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4268-.LLSDACSB4268
.LLSDACSB4268:
	.uleb128 .LEHB0-.LFB4268
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L37-.LFB4268
	.uleb128 0
	.uleb128 .LEHB1-.LFB4268
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4268:
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
.LFB4574:
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
	je	.L63
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, (%rsp)
	movq	%rax, %rbp
	cmpq	$15, %rax
	ja	.L64
	cmpq	$1, %rax
	jne	.L55
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L56:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L62
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
.L55:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L56
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L64:
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, (%rbx)
	movq	%rax, %r13
	movq	(%rsp), %rax
	movq	%rax, 16(%rbx)
.L54:
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L56
.L62:
	call	__stack_chk_fail@PLT
.L63:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L62
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE4574:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB4618:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L65
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L65:
	ret
	.cfi_endproc
.LFE4618:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
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
.LFB4662:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %rax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	shrq	$61, %rax
	jne	.L76
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movups	%xmm0, (%rdi)
	testq	%rsi, %rsi
	je	.L77
	leaq	0(,%rsi,4), %r12
	movq	%r12, %rdi
	call	_Znwm@PLT
	leaq	(%rax,%r12), %r13
	movq	%rax, (%rbx)
	leaq	4(%rax), %rdi
	movq	%r13, 16(%rbx)
	movl	$0, (%rax)
	cmpq	$1, %rbp
	je	.L70
	cmpq	%rdi, %r13
	je	.L71
	leaq	-4(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L71:
	movq	%r13, %rdi
.L70:
	movq	%rdi, 8(%rbx)
	addq	$8, %rsp
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
.L77:
	.cfi_restore_state
	movq	$0, (%rdi)
	movq	$0, 16(%rdi)
	xorl	%edi, %edi
	movq	%rdi, 8(%rbx)
	addq	$8, %rsp
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
.L76:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4662:
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.rodata._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB5047:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movabsq	$2305843009213693951, %rdx
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
	sarq	$2, %rax
	cmpq	%rdx, %rax
	je	.L100
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L101
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L93
	testq	%rcx, %rcx
	jne	.L102
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L84:
	movl	(%r15), %eax
	leaq	4(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movl	%eax, (%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L103
	testq	%r12, %r12
	jle	.L88
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L88:
	testq	%r13, %r13
	jne	.L87
.L90:
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
.L93:
	.cfi_restore_state
	movabsq	$9223372036854775804, %rbx
.L83:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L103:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L104
.L87:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L101:
	addq	$1, %rax
	jc	.L93
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$2, %rbx
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L104:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L87
.L102:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,4), %rbx
	jmp	.L83
.L100:
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5047:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5175:
	.cfi_startproc
	endbr64
	movdqa	.LC3(%rip), %xmm3
	movq	%rdi, %rcx
	movq	%rdi, %rax
	movdqa	.LC4(%rip), %xmm4
	movdqa	.LC5(%rip), %xmm5
	movdqa	.LC6(%rip), %xmm6
	leaq	1808(%rdi), %rdx
	pxor	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L106:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	3160(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L106
	movq	1808(%rcx), %rdx
	movq	1816(%rcx), %rax
	pxor	%xmm7, %xmm7
	andl	$2147483647, %eax
	andq	$-2147483648, %rdx
	orq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	4984(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	leaq	4984(%rcx), %rdx
	movq	%rax, 1808(%rcx)
	leaq	1816(%rcx), %rax
.L107:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	-1832(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L107
	movq	4984(%rcx), %rax
	movq	(%rcx), %rdx
	movq	$0, 4992(%rcx)
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	3168(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%rcx)
	ret
	.cfi_endproc
.LFE5175:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB5264:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	subq	%rax, %r13
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rax, %rbp
	movl	$4294967294, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%r13, %rax
	jnb	.L127
	movl	$4294967295, %eax
	cmpq	%rax, %r13
	je	.L117
.L125:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	jbe	.L118
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L118:
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
	jb	.L125
	testq	%rax, %rax
	jne	.L125
.L116:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leal	0(%rbp,%rbx), %eax
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
.L127:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	addq	$1, %r13
	movl	%r13d, %r15d
	cmpq	$623, %rax
	ja	.L128
.L112:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
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
	imulq	%r13, %rbx
	cmpl	%r13d, %ebx
	jnb	.L113
	movl	%r13d, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L115
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
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
	imulq	%r13, %rbx
	cmpl	%r14d, %ebx
	jnb	.L113
.L115:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L114
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L113:
	shrq	$32, %rbx
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L117:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L129
.L122:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r12)
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
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L128:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L129:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L122
	.cfi_endproc
.LFE5264:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"stoi"
.LC8:
	.string	"/proc/cpuinfo"
.LC9:
	.string	"model name"
.LC10:
	.string	":"
.LC11:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC13:
	.string	"cpu MHz"
.LC14:
	.string	"/proc/meminfo"
.LC15:
	.string	"MemTotal"
.LC16:
	.string	"r"
.LC17:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"========================================\n"
	.align 8
.LC19:
	.string	"Polynomial Modular Add Benchmark (NTRU-style, large q)\n"
	.section	.rodata.str1.1
.LC20:
	.string	"System Information:\n"
.LC21:
	.string	"  Hostname: "
.LC22:
	.string	"\n"
.LC23:
	.string	"  OS: "
.LC24:
	.string	"  CPU Model: "
.LC25:
	.string	"  CPU MHz: "
.LC26:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"========================================\n\n"
	.section	.rodata.str1.1
.LC28:
	.string	"N = "
.LC29:
	.string	", reps = "
.LC30:
	.string	"\n\n"
.LC31:
	.string	"results_poly_mod.csv"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"ERROR: could not open results_poly_mod.csv for writing\n"
	.align 8
.LC33:
	.string	"q,N,reps,classic,reist,speedup\n"
	.section	.rodata.str1.1
.LC35:
	.string	"q = "
.LC36:
	.string	"  classic : "
.LC37:
	.string	" s\n"
.LC38:
	.string	"  REIST   : "
.LC39:
	.string	"  speedup : "
.LC40:
	.string	"x\n\n"
.LC41:
	.string	","
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"CSV written to results_poly_mod.csv\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB45:
	.section	.text.startup,"ax",@progbits
.LHOTB45:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4223:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4223
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
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$2408, %rsp
	.cfi_def_cfa_offset 6560
	pxor	%xmm0, %xmm0
	movq	%fs:40, %rax
	movq	%rax, 6488(%rsp)
	xorl	%eax, %eax
	movl	$50000, 4(%rsp)
	movq	$0, 224(%rsp)
	movl	$1024, 160(%rsp)
	movaps	%xmm0, 208(%rsp)
	cmpl	$1, %edi
	jg	.L274
.L131:
	movl	$16, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movdqa	.LC44(%rip), %xmm0
	movq	%rax, 208(%rsp)
	addq	$16, %rax
	movups	%xmm0, -16(%rax)
	movq	%rax, 216(%rsp)
	movq	%rax, 224(%rsp)
	leaq	1088(%rsp), %rax
	movq	%rax, 112(%rsp)
.L132:
	movl	$12345, %eax
	movq	112(%rsp), %rsi
	movl	$1, %ecx
	movq	$12345, 1088(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L133:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, (%rsi,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L133
	leaq	352(%rsp), %rax
	leaq	560(%rsp), %rdi
	movl	$8, %edx
	movq	$624, 6080(%rsp)
	movq	%rax, 16(%rsp)
	leaq	.LC8(%rip), %rsi
	movq	%rax, 336(%rsp)
	leaq	384(%rsp), %rax
	movq	%rax, 368(%rsp)
	leaq	416(%rsp), %rax
	movq	%rax, 400(%rsp)
	leaq	448(%rsp), %rax
	movq	%rax, 432(%rsp)
	leaq	480(%rsp), %rax
	movq	%rax, 464(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	464(%rsp), %rax
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	$0, 408(%rsp)
	movb	$0, 416(%rsp)
	movq	$0, 440(%rsp)
	movb	$0, 448(%rsp)
	movq	$0, 472(%rsp)
	movb	$0, 480(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rax, 120(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	512(%rsp), %rax
	movb	$0, 512(%rsp)
	leaq	.LC9(%rip), %r15
	movq	%rax, 24(%rsp)
	movq	%rax, 496(%rsp)
	movq	$0, 504(%rsp)
.L134:
	leaq	.LC13(%rip), %r13
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L284:
	movsbl	67(%rbx), %edx
.L156:
	leaq	496(%rsp), %rbp
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L275
	xorl	%edx, %edx
	movl	$10, %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L135
	xorl	%edx, %edx
	movl	$1, %ecx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	504(%rsp), %rbx
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rbx
	jb	.L276
	movq	496(%rsp), %r14
	leaq	544(%rsp), %r12
	subq	%rdx, %rbx
	leaq	528(%rsp), %rdi
	movq	%r12, 528(%rsp)
	movq	%rbx, 304(%rsp)
	addq	%rdx, %r14
	cmpq	$15, %rbx
	ja	.L277
	cmpq	$1, %rbx
	je	.L278
	testq	%rbx, %rbx
	jne	.L279
.L142:
	movq	%r12, %rax
.L141:
	movq	%rbx, 536(%rsp)
	movb	$0, (%rax,%rbx)
	movq	528(%rsp), %rdx
	movq	336(%rsp), %rax
	cmpq	%r12, %rdx
	je	.L280
	movdqu	536(%rsp), %xmm0
	movq	16(%rsp), %rdi
	cmpq	%rdi, %rax
	je	.L281
	movq	352(%rsp), %rcx
	movq	%rdx, 336(%rsp)
	movups	%xmm0, 344(%rsp)
	testq	%rax, %rax
	je	.L150
	movq	%rax, 528(%rsp)
	movq	%rcx, 544(%rsp)
.L149:
	movq	$0, 536(%rsp)
	movb	$0, (%rax)
	movq	528(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L135
	movq	544(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L135:
	xorl	%edx, %edx
	movl	$7, %ecx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L282
.L152:
	movq	560(%rsp), %rax
	movq	-24(%rax), %rax
	movq	800(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L283
	cmpb	$0, 56(%rbx)
	jne	.L284
	movq	%rbx, %rdi
	leaq	496(%rsp), %rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdi
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rdi, %rax
	je	.L156
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L156
.L278:
	movzbl	(%r14), %eax
	movb	%al, 544(%rsp)
	jmp	.L142
.L277:
	leaq	304(%rsp), %rsi
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 528(%rsp)
	movq	%rax, %rdi
	movq	304(%rsp), %rax
	movq	%rax, 544(%rsp)
.L139:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	304(%rsp), %rbx
	movq	528(%rsp), %rax
	jmp	.L141
.L281:
	movq	%rdx, 336(%rsp)
	movups	%xmm0, 344(%rsp)
.L150:
	movq	%r12, 528(%rsp)
	leaq	544(%rsp), %r12
	movq	%r12, %rax
	jmp	.L149
.L280:
	movq	536(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L145
	cmpq	$1, %rdx
	je	.L285
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	rep movsb
	movq	536(%rsp), %rdx
	movq	336(%rsp), %rax
.L145:
	movq	%rdx, 344(%rsp)
	movb	$0, (%rax,%rdx)
	movq	528(%rsp), %rax
	jmp	.L149
.L279:
	movq	%r12, %rdi
	jmp	.L139
.L275:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rbx
	movq	%rbx, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	400(%rsp), %rax
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%rax, 144(%rsp)
	leaq	432(%rsp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, 152(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, 120(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	24(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	$0, 504(%rsp)
	movb	$0, 512(%rsp)
	movq	%rax, 496(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L158
	leaq	400(%rsp), %rax
	movq	%rax, 144(%rsp)
.L159:
	movq	%rbp, %rdi
	leaq	6224(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L264
	leaq	432(%rsp), %rax
	movq	%rax, 152(%rsp)
.L161:
	leaq	464(%rsp), %rax
	leaq	.LC16(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	movq	%rax, 120(%rsp)
.LEHB7:
	call	popen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L286
	leaq	6096(%rsp), %rbp
	leaq	464(%rsp), %rax
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	movq	%rax, 120(%rsp)
	call	fgets@PLT
	testq	%rax, %rax
	je	.L287
	movq	8(%rsp), %r14
	leaq	464(%rsp), %rax
	leaq	304(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, 120(%rsp)
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	464(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rdi, 120(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	472(%rsp), %rax
	testq	%rax, %rax
	je	.L164
	movq	464(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L288
.L164:
	movq	%rbx, %rdi
	call	pclose@PLT
.L162:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC18(%rip), %rbx
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	440(%rsp), %rdx
	movq	432(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC22(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	472(%rsp), %rdx
	movq	464(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC22(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	344(%rsp), %rdx
	movq	336(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC22(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	376(%rsp), %rdx
	movq	368(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC22(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	408(%rsp), %rdx
	movq	400(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	leaq	.LC22(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC27(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$4, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	160(%rsp), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$9, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	4(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC30(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	8(%rsp), %rdi
	movl	$16, %edx
	leaq	.LC31(%rip), %rsi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE7:
	movl	840(%rsp), %eax
	andl	$5, %eax
	movl	%eax, 164(%rsp)
	jne	.L289
	movq	8(%rsp), %rdi
	leaq	.LC33(%rip), %rsi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movslq	160(%rsp), %rbx
	leaq	304(%rsp), %r14
	leaq	240(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r14, 184(%rsp)
	movq	%rbx, %rsi
	movq	%rdi, 168(%rsp)
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE8:
	leaq	272(%rsp), %rdi
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rdi, 176(%rsp)
.LEHB9:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE9:
	leaq	207(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rdi
.LEHB10:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE10:
	movq	216(%rsp), %rdi
	movq	208(%rsp), %rax
	movq	%rdi, 128(%rsp)
	cmpq	%rax, %rdi
	je	.L188
	movq	%rax, 24(%rsp)
	leaq	0(,%rbx,4), %rax
	xorl	%r14d, %r14d
	movq	%rax, 136(%rsp)
	.p2align 4,,10
	.p2align 3
.L187:
	movq	24(%rsp), %rax
	movl	160(%rsp), %r8d
	movl	(%rax), %ebx
	testl	%r8d, %r8d
	jle	.L174
	movq	240(%rsp), %r12
	movq	136(%rsp), %rax
	movq	272(%rsp), %r13
	movq	112(%rsp), %r15
	leaq	(%r12,%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L173:
	movl	$500000, %edx
	movq	%r15, %rdi
	addq	$4, %r12
	addq	$4, %r13
	movl	$-500000, %esi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movl	$500000, %edx
	movl	$-500000, %esi
	movq	%r15, %rdi
	movl	%eax, -4(%r12)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movl	%eax, -4(%r13)
	cmpq	%rbp, %r12
	jne	.L173
.L174:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	4(%rsp), %edi
	movq	%rax, %r9
	testl	%edi, %edi
	jle	.L175
	movq	240(%rsp), %rbp
	movq	248(%rsp), %rsi
	movq	272(%rsp), %r13
	movq	304(%rsp), %r12
	subq	%rbp, %rsi
	sarq	$2, %rsi
	movl	%esi, 16(%rsp)
	testl	%esi, %esi
	jle	.L175
	leal	-1(%rsi), %edi
	movl	4(%rsp), %r10d
	xorl	%r8d, %r8d
	movq	%rdi, %r15
	.p2align 4,,10
	.p2align 3
.L177:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L176:
	movl	0(%r13,%rcx,4), %eax
	addl	0(%rbp,%rcx,4), %eax
	cltd
	idivl	%ebx
	movq	%rcx, %rax
	movl	%edx, (%r12,%rcx,4)
	addq	$1, %rcx
	cmpq	%rax, %rdi
	jne	.L176
	addl	$1, %r8d
	cmpl	%r8d, %r10d
	jne	.L177
	movq	%rsi, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	32(%rsp), %r9
	pxor	%xmm0, %xmm0
	subq	%r9, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC34(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	40(%rsp), %rsi
	movq	%rax, 104(%rsp)
	movl	%ebx, %eax
	shrl	$31, %eax
	movl	%esi, %r10d
	addl	%ebx, %eax
	sarl	%eax
	movl	%eax, %edx
	negl	%edx
	cmpl	$2, %r15d
	jbe	.L209
	leaq	4(%r13), %rdi
	movq	%r12, %rcx
	subq	%rdi, %rcx
	cmpq	$8, %rcx
	jbe	.L209
	leaq	4(%rbp), %rdi
	movq	%r12, %rcx
	subq	%rdi, %rcx
	cmpq	$8, %rcx
	jbe	.L209
	movl	%esi, %ecx
	andl	$-4, %esi
	movd	%eax, %xmm7
	andl	$3, %r10d
	movl	%esi, %edi
	pshufd	$0, %xmm7, %xmm5
	movl	%r10d, 40(%rsp)
	movd	%edx, %xmm7
	salq	$2, %rdi
	shrl	$2, %ecx
	pshufd	$0, %xmm7, %xmm4
	movd	%ebx, %xmm7
	leaq	0(%rbp,%rdi), %r11
	leaq	0(%r13,%rdi), %r8
	addq	%r12, %rdi
	salq	$4, %rcx
	movq	%rdi, 48(%rsp)
	leal	1(%rsi), %edi
	addl	$2, %esi
	pshufd	$0, %xmm7, %xmm2
	movl	%edi, 64(%rsp)
	salq	$2, %rdi
	movq	%r11, 56(%rsp)
	leaq	0(%r13,%rdi), %r9
	leaq	0(%rbp,%rdi), %r11
	addq	%r12, %rdi
	movl	%esi, 68(%rsp)
	salq	$2, %rsi
	movq	%rdi, 80(%rsp)
	leaq	0(%r13,%rsi), %rdi
	leaq	0(%rbp,%rsi), %r15
	movq	%r11, 72(%rsp)
	movq	%rdi, 96(%rsp)
	leaq	(%r12,%rsi), %rdi
	movq	%rdi, 88(%rsp)
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L185:
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L180:
	movdqu	0(%rbp,%rsi), %xmm0
	movdqu	0(%r13,%rsi), %xmm6
	paddd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm5, %xmm1
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm2, %xmm1
	pandn	%xmm2, %xmm0
	psubd	%xmm1, %xmm3
	paddd	%xmm3, %xmm0
	movups	%xmm0, (%r12,%rsi)
	addq	$16, %rsi
	cmpq	%rcx, %rsi
	jne	.L180
	movl	40(%rsp), %esi
	testl	%esi, %esi
	je	.L186
	movq	56(%rsp), %r11
	movl	(%r8), %esi
	addl	(%r11), %esi
	movl	%r14d, %r11d
	cmpl	%eax, %esi
	movl	%esi, %r10d
	cmovg	%ebx, %r11d
	subl	%r11d, %r10d
	cmpl	%esi, %edx
	movl	%r14d, %esi
	cmovge	%ebx, %esi
	addl	%esi, %r10d
	movq	48(%rsp), %rsi
	movl	%r10d, (%rsi)
	movl	16(%rsp), %esi
	cmpl	%esi, 64(%rsp)
	jge	.L186
	movq	72(%rsp), %r11
	movl	(%r9), %esi
	addl	(%r11), %esi
	movl	%r14d, %r11d
	cmpl	%eax, %esi
	movl	%esi, %r10d
	cmovg	%ebx, %r11d
	subl	%r11d, %r10d
	cmpl	%esi, %edx
	movl	%r14d, %r11d
	movl	16(%rsp), %esi
	cmovge	%ebx, %r11d
	addl	%r11d, %r10d
	movq	80(%rsp), %r11
	movl	%r10d, (%r11)
	cmpl	%esi, 68(%rsp)
	jge	.L186
	movq	96(%rsp), %r11
	movl	(%r15), %esi
	addl	(%r11), %esi
	movl	%r14d, %r11d
	cmpl	%eax, %esi
	movl	%esi, %r10d
	cmovg	%ebx, %r11d
	subl	%r11d, %r10d
	cmpl	%edx, %esi
	movl	%r14d, %esi
	movq	88(%rsp), %r11
	cmovle	%ebx, %esi
	addl	%r10d, %esi
	movl	%esi, (%r11)
.L186:
	addl	$1, %edi
	cmpl	%edi, 4(%rsp)
	jne	.L185
.L201:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	104(%rsp), %rdi
	movsd	32(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	movl	$4, %edx
	leaq	.LC35(%rip), %rsi
	subq	%rdi, %rax
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC34(%rip), %xmm0
	divsd	%xmm0, %xmm4
	movsd	%xmm0, 16(%rsp)
	movq	%xmm4, %rbp
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC22(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	leaq	.LC37(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	leaq	.LC37(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC39(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	leaq	.LC40(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rdi
	movl	%ebx, %esi
	call	_ZNSolsEi@PLT
	leaq	.LC41(%rip), %rbx
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	%rbx, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	160(%rsp), %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	4(%rsp), %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC22(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$4, 24(%rsp)
	movq	24(%rsp), %rax
	cmpq	%rax, 128(%rsp)
	jne	.L187
.L188:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	leaq	.LC42(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE11:
	movq	184(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	176(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	168(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L167:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	120(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	152(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	144(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	368(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	336(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	208(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	6488(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L271
	movl	164(%rsp), %eax
	addq	$6504, %rsp
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
.L282:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	528(%rsp), %rbx
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB12:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE12:
	leaq	368(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L134
.L158:
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movl	$8, %ecx
	leaq	.LC15(%rip), %rsi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	400(%rsp), %rdi
	addq	$1, %rax
	movq	%rdi, 144(%rsp)
	je	.L159
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	528(%rsp), %rbx
	orq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	2(%rax), %rdx
	movq	%rbx, %rdi
.LEHB13:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE13:
	leaq	400(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 144(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L209:
	movl	4(%rsp), %edi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L182:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L181:
	movl	0(%rbp,%rcx,4), %esi
	addl	0(%r13,%rcx,4), %esi
	movl	%r14d, %r10d
	cmpl	%eax, %esi
	movl	%esi, %r9d
	cmovg	%ebx, %r10d
	subl	%r10d, %r9d
	cmpl	%edx, %esi
	movl	%r14d, %esi
	cmovle	%ebx, %esi
	addl	%r9d, %esi
	movl	%esi, (%r12,%rcx,4)
	movq	%rcx, %rsi
	addq	$1, %rcx
	cmpq	%r15, %rsi
	jne	.L181
	addl	$1, %r8d
	cmpl	%r8d, %edi
	jne	.L182
	jmp	.L201
.L175:
	movq	%r9, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	16(%rsp), %r9
	pxor	%xmm0, %xmm0
	subq	%r9, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC34(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 104(%rsp)
	jmp	.L201
.L264:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	440(%rsp), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	432(%rsp), %rdi
	leaq	464(%rsp), %rax
	movq	%rdi, 152(%rsp)
	movq	%rax, 120(%rsp)
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE14:
	jmp	.L161
.L274:
	leaq	1088(%rsp), %r14
	movq	%rsi, %rbp
	leaq	304(%rsp), %r15
	movl	%edi, %ebx
	movq	8(%rsi), %rsi
	movq	%r15, %rdx
	movq	%r14, %rdi
	movq	%r14, 112(%rsp)
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE15:
	movq	__isoc23_strtol@GOTPCREL(%rip), %r12
	leaq	.LC7(%rip), %r13
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	1088(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB16:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE16:
	movq	%r14, %rdi
	movl	%eax, 160(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movl	$50000, 4(%rsp)
	cmpl	$2, %ebx
	je	.L131
	movq	16(%rbp), %rsi
	movq	%r15, %rdx
	movq	%r14, %rdi
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE17:
	movq	1088(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movl	$10, %r8d
.LEHB18:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE18:
	movq	%r14, %rdi
	movl	%eax, 4(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$3, %ebx
	je	.L131
	movq	24(%rbp), %rsi
	leaq	272(%rsp), %rdx
	movq	%r14, %rdi
.LEHB19:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE19:
	movq	1088(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movl	$10, %r8d
	leaq	208(%rsp), %rbx
.LEHB20:
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%r15, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%eax, 304(%rsp)
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.LEHE20:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L132
.L289:
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB21:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE21:
	movl	$1, 164(%rsp)
	jmp	.L167
.L287:
	leaq	464(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.L164
.L285:
	movzbl	544(%rsp), %edx
	movb	%dl, (%rax)
	movq	536(%rsp), %rdx
	movq	336(%rsp), %rax
	jmp	.L145
.L288:
	movq	120(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L164
.L286:
	leaq	464(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.L162
.L271:
	call	__stack_chk_fail@PLT
.L283:
	movq	6488(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L271
	leaq	496(%rsp), %rbp
.LEHB22:
	call	_ZSt16__throw_bad_castv@PLT
.L276:
	movq	6488(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L271
	movq	%rbx, %rcx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE22:
.L210:
	endbr64
	movq	%rax, %rbp
	jmp	.L191
.L217:
	endbr64
	movq	%rax, %rbp
	jmp	.L199
.L218:
	endbr64
	movq	%rax, %rbp
	jmp	.L198
.L219:
	endbr64
	movq	%rax, %rbp
	jmp	.L197
.L220:
	endbr64
	movq	%rax, %rbp
	jmp	.L196
.L211:
	endbr64
	movq	%rax, %rbp
	leaq	208(%rsp), %rbx
	jmp	.L190
.L216:
	endbr64
	movq	%rax, %rbx
	jmp	.L195
.L212:
	endbr64
	movq	%rax, %rbp
	jmp	.L191
.L213:
	endbr64
	movq	%rax, %rbp
	jmp	.L192
.L215:
	endbr64
	movq	%rax, %rbp
	jmp	.L194
.L214:
	endbr64
	movq	%rax, %rbx
	jmp	.L193
	.section	.gcc_except_table,"a",@progbits
.LLSDA4223:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4223-.LLSDACSB4223
.LLSDACSB4223:
	.uleb128 .LEHB2-.LFB4223
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L211-.LFB4223
	.uleb128 0
	.uleb128 .LEHB3-.LFB4223
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L215-.LFB4223
	.uleb128 0
	.uleb128 .LEHB4-.LFB4223
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L214-.LFB4223
	.uleb128 0
	.uleb128 .LEHB5-.LFB4223
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L215-.LFB4223
	.uleb128 0
	.uleb128 .LEHB6-.LFB4223
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L216-.LFB4223
	.uleb128 0
	.uleb128 .LEHB7-.LFB4223
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L215-.LFB4223
	.uleb128 0
	.uleb128 .LEHB8-.LFB4223
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L217-.LFB4223
	.uleb128 0
	.uleb128 .LEHB9-.LFB4223
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L218-.LFB4223
	.uleb128 0
	.uleb128 .LEHB10-.LFB4223
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L219-.LFB4223
	.uleb128 0
	.uleb128 .LEHB11-.LFB4223
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L220-.LFB4223
	.uleb128 0
	.uleb128 .LEHB12-.LFB4223
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L214-.LFB4223
	.uleb128 0
	.uleb128 .LEHB13-.LFB4223
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L216-.LFB4223
	.uleb128 0
	.uleb128 .LEHB14-.LFB4223
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L215-.LFB4223
	.uleb128 0
	.uleb128 .LEHB15-.LFB4223
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L211-.LFB4223
	.uleb128 0
	.uleb128 .LEHB16-.LFB4223
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L210-.LFB4223
	.uleb128 0
	.uleb128 .LEHB17-.LFB4223
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L211-.LFB4223
	.uleb128 0
	.uleb128 .LEHB18-.LFB4223
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L212-.LFB4223
	.uleb128 0
	.uleb128 .LEHB19-.LFB4223
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L211-.LFB4223
	.uleb128 0
	.uleb128 .LEHB20-.LFB4223
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L213-.LFB4223
	.uleb128 0
	.uleb128 .LEHB21-.LFB4223
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L217-.LFB4223
	.uleb128 0
	.uleb128 .LEHB22-.LFB4223
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L214-.LFB4223
	.uleb128 0
.LLSDACSE4223:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4223
	.type	main.cold, @function
main.cold:
.LFSB4223:
.L191:
	.cfi_def_cfa_offset 6560
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	112(%rsp), %rdi
	leaq	208(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L190:
	movq	%rbx, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	6488(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L290
	movq	%rbp, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L196:
	movq	184(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L197:
	movq	176(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L198:
	movq	168(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L199:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L194:
	movq	120(%rsp), %rdi
	leaq	208(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	152(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	144(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	368(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	336(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L190
.L195:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	400(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.L194
.L192:
	movq	112(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L190
.L290:
	call	__stack_chk_fail@PLT
.L193:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	400(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.L194
	.cfi_endproc
.LFE4223:
	.section	.gcc_except_table
.LLSDAC4223:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4223-.LLSDACSBC4223
.LLSDACSBC4223:
	.uleb128 .LEHB23-.LCOLDB45
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC4223:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE45:
	.section	.text.startup
.LHOTE45:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.quad	-2147483648
	.quad	-2147483648
	.align 16
.LC4:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC5:
	.quad	1
	.quad	1
	.align 16
.LC6:
	.quad	2567483615
	.quad	2567483615
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC34:
	.long	0
	.long	1104006501
	.section	.rodata.cst16
	.align 16
.LC44:
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
