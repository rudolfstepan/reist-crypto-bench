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
.LFB3894:
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
.LFE3894:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB3896:
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
.LFE3896:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3178:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3178
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
	movq	%rax, %rcx
	movq	16(%rsp), %rax
	cmpq	%rbp, %rax
	je	.L50
	movl	(%rbx), %edx
	cmpl	$34, %edx
	je	.L51
	testq	%r13, %r13
	je	.L37
	subq	%rbp, %rax
	movq	%rax, 0(%r13)
.L37:
	testl	%edx, %edx
	jne	.L32
	movl	%r12d, (%rbx)
.L32:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rcx, %rax
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
.L51:
	.cfi_restore_state
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L36
.L49:
	call	__stack_chk_fail@PLT
.L50:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L43:
	jmp	.L39
.L36:
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE0:
.L39:
	cmpl	$0, (%rbx)
	jne	.L40
	movl	%r12d, (%rbx)
.L40:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L49
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3178:
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3178:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3178-.LLSDACSB3178
.LLSDACSB3178:
	.uleb128 .LEHB0-.LFB3178
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L43-.LFB3178
	.uleb128 0
	.uleb128 .LEHB1-.LFB3178
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3178:
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
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
.LFB3430:
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
	je	.L65
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	cmpq	$15, %rax
	ja	.L66
	cmpq	$1, %rax
	jne	.L57
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L58:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L64
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
.L57:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L58
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L66:
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
.L56:
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	.L58
.L65:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L54
.L64:
	call	__stack_chk_fail@PLT
.L54:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3430:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"stoull"
.LC2:
	.string	"/proc/cpuinfo"
.LC3:
	.string	"model name"
.LC4:
	.string	":"
.LC5:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC7:
	.string	"cpu MHz"
.LC8:
	.string	"/proc/meminfo"
.LC9:
	.string	"MemTotal"
.LC10:
	.string	"r"
.LC11:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"========================================\n"
	.align 8
.LC13:
	.string	"Hashmix benchmark (classic % vs REIST reduction)\n"
	.section	.rodata.str1.1
.LC14:
	.string	"System Information:\n"
.LC15:
	.string	"  Hostname: "
.LC16:
	.string	"\n"
.LC17:
	.string	"  OS: "
.LC18:
	.string	"  CPU Model: "
.LC19:
	.string	"  CPU MHz: "
.LC20:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"========================================\n\n"
	.section	.rodata.str1.1
.LC22:
	.string	"Iterations N = "
.LC24:
	.string	"M = "
.LC25:
	.string	""
.LC26:
	.string	"  classic : "
.LC27:
	.string	"  REIST   : "
.LC29:
	.string	"  speedup : "
.LC30:
	.string	"x (classic / REIST)"
.LC31:
	.string	"  sink values: "
.LC32:
	.string	" / "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB35:
	.section	.text.startup,"ax",@progbits
.LHOTB35:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3095:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3095
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
	jg	.L194
	movabsq	$1442695040888963407, %rbx
	movl	$100000000, %r14d
.L68:
	movl	$32, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movdqa	.LC33(%rip), %xmm0
	movq	%rax, 64(%rsp)
	addq	$32, %rax
	leaq	320(%rsp), %r12
	movq	$32, 72(%rsp)
	movups	%xmm0, -32(%rax)
	movdqa	.LC34(%rip), %xmm0
	movups	%xmm0, -16(%rax)
	movq	%rax, 32(%rsp)
.L69:
	leaq	112(%rsp), %rax
	movl	$8, %edx
	movq	%r12, %rdi
	movb	$0, 112(%rsp)
	movq	%rax, 8(%rsp)
	leaq	.LC2(%rip), %rsi
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	224(%rsp), %rax
	movq	$0, 104(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	%rax, 40(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	272(%rsp), %rax
	movb	$0, 272(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rax, 256(%rsp)
	movq	$0, 264(%rsp)
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L201:
	movsbl	67(%r15), %edx
.L100:
	leaq	256(%rsp), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rsi
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L195
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC3(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L74
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	264(%rsp), %r15
	addq	$2, %rax
	cmpq	%rax, %r15
	jb	.L181
	movq	256(%rsp), %r8
	leaq	304(%rsp), %r13
	subq	%rax, %r15
	leaq	288(%rsp), %rdi
	movq	%r13, 288(%rsp)
	movq	%r15, 88(%rsp)
	addq	%rax, %r8
	cmpq	$15, %r15
	ja	.L196
	cmpq	$1, %r15
	je	.L197
	testq	%r15, %r15
	jne	.L198
.L81:
	movq	%r13, %rax
.L80:
	movq	%r15, 296(%rsp)
	movb	$0, (%rax,%r15)
	movq	96(%rsp), %rax
	movq	%rax, %rsi
	cmpq	8(%rsp), %rax
	je	.L199
	movq	288(%rsp), %rdx
	cmpq	%r13, %rdx
	je	.L124
	movq	112(%rsp), %rsi
	movq	%rdx, 96(%rsp)
	movq	296(%rsp), %xmm0
	movhps	304(%rsp), %xmm0
	movups	%xmm0, 104(%rsp)
	testq	%rax, %rax
	je	.L94
	movq	%rax, 288(%rsp)
	movq	%rsi, 304(%rsp)
.L93:
	movb	$0, (%rax)
	movq	288(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L74
	movq	304(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L74:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC7(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L200
.L96:
	movq	320(%rsp), %rax
	movq	-24(%rax), %rax
	movq	560(%rsp,%rax), %r15
	testq	%r15, %r15
	je	.L182
	cmpb	$0, 56(%r15)
	jne	.L201
	movq	%r15, %rdi
	leaq	256(%rsp), %rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L100
	movl	$10, %esi
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L197:
	movzbl	(%r8), %eax
	movb	%al, 304(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L196:
	leaq	88(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r8, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, 288(%rsp)
	movq	%rax, %rdi
	movq	88(%rsp), %rax
	movq	16(%rsp), %r8
	movq	%rax, 304(%rsp)
.L78:
	movq	%r15, %rdx
	movq	%r8, %rsi
	call	memcpy@PLT
	movq	88(%rsp), %r15
	movq	288(%rsp), %rax
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L199:
	movq	288(%rsp), %rax
	cmpq	%r13, %rax
	je	.L124
	movq	296(%rsp), %xmm0
	movq	%rax, 96(%rsp)
	movhps	304(%rsp), %xmm0
	movups	%xmm0, 104(%rsp)
.L94:
	movq	%r13, 288(%rsp)
	leaq	304(%rsp), %r13
	movq	%r13, %rax
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L124:
	movq	296(%rsp), %rax
	testq	%rax, %rax
	je	.L84
	cmpq	$1, %rax
	je	.L202
	movl	%eax, %edx
	cmpl	$8, %eax
	jb	.L203
	movq	304(%rsp), %rdx
	movq	%r13, %r8
	movq	%rdx, (%rsi)
	movl	%eax, %edx
	movq	-8(%r13,%rdx), %rdi
	movq	%rdi, -8(%rsi,%rdx)
	leaq	8(%rsi), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rsi
	leal	(%rsi,%rax), %edx
	subq	%rsi, %r8
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L192
	andl	$-8, %edx
	xorl	%eax, %eax
.L91:
	movl	%eax, %ecx
	addl	$8, %eax
	movq	(%r8,%rcx), %rsi
	movq	%rsi, (%rdi,%rcx)
	cmpl	%edx, %eax
	jb	.L91
.L192:
	movq	96(%rsp), %rsi
	movq	296(%rsp), %rax
	.p2align 4
	.p2align 3
.L84:
	movq	%rax, 104(%rsp)
	movb	$0, (%rsi,%rax)
	movq	288(%rsp), %rax
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L198:
	movq	%r13, %rdi
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L195:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r12, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	160(%rsp), %rax
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, 56(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
.LEHB5:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	movq	24(%rsp), %rax
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%rax, 256(%rsp)
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE6:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L102
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	160(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 48(%rsp)
	jne	.L204
.L103:
	movq	%rbp, %rdi
	leaq	976(%rsp), %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r12, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbp, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L193
	movq	%rbp, %rdi
	call	strlen@PLT
	movq	200(%rsp), %rdx
	movq	%rax, %r8
.L128:
	leaq	192(%rsp), %rdi
	leaq	224(%rsp), %rax
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%rdi, 56(%rsp)
	movq	%rax, 40(%rsp)
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L104
.L102:
	movq	%rbp, %rdi
	leaq	976(%rsp), %rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r12, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbp, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L129
	leaq	160(%rsp), %rax
	movq	%rax, 48(%rsp)
.L193:
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
.L104:
	leaq	224(%rsp), %rax
	leaq	.LC10(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	movq	%rax, 40(%rsp)
	call	popen@PLT
	movq	%rax, %rbp
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	testq	%rbp, %rbp
	je	.L105
	movq	%rbp, %rdx
	movl	$128, %esi
	leaq	848(%rsp), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L205
	leaq	224(%rsp), %rax
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
	leaq	848(%rsp), %rsi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	224(%rsp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	232(%rsp), %rax
	testq	%rax, %rax
	jne	.L206
.L107:
	movq	%rbp, %rdi
	call	pclose@PLT
.L105:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC12(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$12, %edx
	leaq	.LC15(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$15, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movq	64(%rsp), %rcx
	cmpq	%rcx, 32(%rsp)
	je	.L116
	movabsq	$6364136223846793005, %r13
	movq	%rcx, 8(%rsp)
	.p2align 4
	.p2align 3
.L115:
	movq	8(%rsp), %rax
	movq	(%rax), %r15
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.L110
	movabsq	$1311768467294899695, %rdx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L111:
	imulq	%r13, %rdx
	addq	$1, %rcx
	leaq	(%rdx,%rbx), %rax
	xorl	%edx, %edx
	divq	%r15
	cmpq	%rcx, %r14
	jne	.L111
	movq	%rcx, 16(%rsp)
	movq	%rdx, %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%rbp, %rax
	movabsq	$1311768467294899695, %rbp
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC23(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r15, %r10
	movq	16(%rsp), %rcx
	xorl	%esi, %esi
	shrq	$63, %r10
	movq	%rax, %r9
	xorl	%edi, %edi
	movq	%rbp, %rax
	addq	%r15, %r10
	sarq	%r10
	movq	%r10, %r8
	negq	%r8
	.p2align 6
	.p2align 4
	.p2align 3
.L112:
	imulq	%r13, %rax
	movq	%rdi, %r11
	addq	%rbx, %rax
	cqto
	idivq	%r15
	cmpq	%rdx, %r10
	movq	%rdx, %rax
	cmovl	%r15, %r11
	subq	%r11, %rax
	cmpq	%rdx, %r8
	movq	%rdi, %rdx
	cmovge	%r15, %rdx
	addq	$1, %rsi
	addq	%rdx, %rax
	cmpq	%rcx, %rsi
	jne	.L112
	movq	%rax, %rbp
.L127:
	movq	%r9, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	16(%rsp), %rax
	movl	$4, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC23(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	xorl	%edx, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	xorl	%edx, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC27(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	xorl	%edx, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L113
	movl	$12, %edx
	leaq	.LC29(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	24(%rsp), %xmm0
	divsd	16(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$19, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L113:
	movl	$15, %edx
	leaq	.LC31(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rsi
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
	cmpq	%rax, 32(%rsp)
	jne	.L115
.L116:
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	56(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	call	_ZdlPvm@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L207
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
.L200:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	288(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB8:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE8:
	leaq	128(%rsp), %rdi
	leaq	288(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	288(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L110:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movabsq	$1311768467294899695, %r12
	subq	%rbp, %rax
	movq	%r12, %rbp
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC23(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r9
	jmp	.L127
.L206:
	movq	224(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	jne	.L107
	movq	40(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L107
.L203:
	testb	$4, %al
	jne	.L208
	testl	%edx, %edx
	je	.L84
	movzbl	304(%rsp), %eax
	movb	%al, (%rsi)
	testb	$2, %dl
	je	.L192
	movzwl	-2(%r13,%rdx), %eax
	movw	%ax, -2(%rsi,%rdx)
	movq	96(%rsp), %rsi
	movq	296(%rsp), %rax
	jmp	.L84
.L129:
	movq	%rbp, %rdi
	call	strlen@PLT
	movq	200(%rsp), %rdx
	movq	%rax, %r8
	leaq	160(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L128
.L204:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbp, %rsi
	leaq	288(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE9:
	leaq	160(%rsp), %rax
	leaq	288(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	288(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L103
.L194:
	movq	%rsi, %r13
	movq	8(%rsi), %rsi
	movl	%edi, %ebp
	leaq	88(%rsp), %rdx
	leaq	320(%rsp), %r12
	movq	%r12, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	movq	320(%rsp), %rdx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC1(%rip), %rsi
.LEHB11:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE11:
	movabsq	$1442695040888963407, %rbx
	movq	%r12, %rdi
	movq	%rax, %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %ebp
	je	.L68
	movq	16(%r13), %rsi
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE12:
	movq	320(%rsp), %rdx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC1(%rip), %rsi
.LEHB13:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE13:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$3, %ebp
	je	.L68
	movq	24(%r13), %rsi
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE14:
	movq	320(%rsp), %rdx
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC1(%rip), %rsi
.LEHB15:
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movl	$8, %edi
	movq	%rax, %rbp
	call	_Znwm@PLT
.LEHE15:
	movq	%rbp, (%rax)
	movq	%r12, %rdi
	movq	%rax, 64(%rsp)
	addq	$8, %rax
	movq	%rax, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	$8, 72(%rsp)
	jmp	.L69
.L202:
	movzbl	304(%rsp), %eax
	movb	%al, (%rsi)
	movq	96(%rsp), %rsi
	movq	296(%rsp), %rax
	jmp	.L84
.L205:
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	.L107
.L208:
	movl	304(%rsp), %eax
	movl	%eax, (%rsi)
	movl	-4(%r13,%rdx), %eax
	movl	%eax, -4(%rsi,%rdx)
	movq	96(%rsp), %rsi
	movq	296(%rsp), %rax
	jmp	.L84
.L207:
	call	__stack_chk_fail@PLT
.L139:
	movq	%rax, %rbx
	jmp	.L122
.L134:
	movq	%rax, %rbx
	jmp	.L119
.L140:
	movq	%rax, %rbx
	jmp	.L72
.L135:
	movq	%rax, %rbx
	jmp	.L119
.L138:
	movq	%rax, %rbx
	jmp	.L121
.L179:
	jmp	.L180
.L136:
	movq	%rax, %rbx
	jmp	.L119
	.section	.gcc_except_table,"a",@progbits
.LLSDA3095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3095-.LLSDACSB3095
.LLSDACSB3095:
	.uleb128 .LEHB2-.LFB3095
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L140-.LFB3095
	.uleb128 0
	.uleb128 .LEHB3-.LFB3095
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L138-.LFB3095
	.uleb128 0
	.uleb128 .LEHB4-.LFB3095
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L179-.LFB3095
	.uleb128 0
	.uleb128 .LEHB5-.LFB3095
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L138-.LFB3095
	.uleb128 0
	.uleb128 .LEHB6-.LFB3095
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L139-.LFB3095
	.uleb128 0
	.uleb128 .LEHB7-.LFB3095
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L138-.LFB3095
	.uleb128 0
	.uleb128 .LEHB8-.LFB3095
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L179-.LFB3095
	.uleb128 0
	.uleb128 .LEHB9-.LFB3095
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L139-.LFB3095
	.uleb128 0
	.uleb128 .LEHB10-.LFB3095
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L140-.LFB3095
	.uleb128 0
	.uleb128 .LEHB11-.LFB3095
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L134-.LFB3095
	.uleb128 0
	.uleb128 .LEHB12-.LFB3095
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L140-.LFB3095
	.uleb128 0
	.uleb128 .LEHB13-.LFB3095
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L135-.LFB3095
	.uleb128 0
	.uleb128 .LEHB14-.LFB3095
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L140-.LFB3095
	.uleb128 0
	.uleb128 .LEHB15-.LFB3095
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L136-.LFB3095
	.uleb128 0
.LLSDACSE3095:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3095
	.type	main.cold, @function
main.cold:
.LFSB3095:
.L181:
	.cfi_def_cfa_offset 1312
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	1240(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L209
	movq	%rax, %rdx
	movq	%r15, %rcx
	leaq	.LC5(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC6(%rip), %rdi
.LEHB16:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L182:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L210
	leaq	256(%rsp), %rbp
	call	_ZSt16__throw_bad_castv@PLT
.LEHE16:
.L210:
	call	__stack_chk_fail@PLT
.L119:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L72:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L211
	movq	%rbx, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L137:
.L180:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r12, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	160(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
.L121:
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	56(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	32(%rsp), %rsi
	movq	64(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	jmp	.L72
.L211:
	call	__stack_chk_fail@PLT
.L209:
	call	__stack_chk_fail@PLT
.L122:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r12, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	160(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	.L121
	.cfi_endproc
.LFE3095:
	.section	.gcc_except_table
.LLSDAC3095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3095-.LLSDACSBC3095
.LLSDACSBC3095:
	.uleb128 .LEHB16-.LCOLDB35
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L137-.LCOLDB35
	.uleb128 0
	.uleb128 .LEHB17-.LCOLDB35
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSEC3095:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE35:
	.section	.text.startup
.LHOTE35:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC23:
	.long	0
	.long	1104006501
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC33:
	.quad	1000003
	.quad	10000019
	.align 16
.LC34:
	.quad	100000007
	.quad	1000000007
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
