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
.LFB1757:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1757:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB4007:
	.cfi_startproc
	movq	%rdi, %r8
	movq	(%rdi), %rdi
	movq	%rsi, %rcx
	movq	8(%rsi), %rdx
	leaq	16(%r8), %rax
	movq	(%rsi), %rsi
	cmpq	%rax, %rdi
	leaq	16(%rcx), %rax
	je	.L24
	cmpq	%rsi, %rax
	je	.L5
	movq	%rsi, (%r8)
	movq	16(%r8), %r9
	movq	%rdx, 8(%r8)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%r8)
	testq	%rdi, %rdi
	je	.L14
	movq	%rdi, (%rcx)
	movq	%r9, 16(%rcx)
.L22:
	movq	$0, 8(%rcx)
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	cmpq	%rsi, %rax
	je	.L5
	movq	%rsi, (%r8)
	movq	%rax, %rdi
	movq	%rdx, 8(%r8)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%r8)
.L12:
	movq	%rdi, (%rcx)
	movq	$0, 8(%rcx)
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmpq	%rcx, %r8
	je	.L13
	testq	%rdx, %rdx
	jne	.L25
.L20:
	movq	%rdx, 8(%r8)
	movb	$0, (%rdi,%rdx)
	movq	(%rcx), %rdi
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%rax, %rdi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L25:
	cmpq	$1, %rdx
	je	.L26
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
.L26:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	8(%rcx), %rdx
	movq	(%r8), %rdi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rsi, %rdi
	jmp	.L22
	.cfi_endproc
.LFE4007:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3183:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3183
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
	je	.L45
	movl	(%rbx), %edx
	cmpl	$34, %edx
	je	.L46
	testq	%r13, %r13
	je	.L32
	subq	%rbp, %rax
	movq	%rax, 0(%r13)
.L32:
	testl	%edx, %edx
	jne	.L27
	movl	%r12d, (%rbx)
.L27:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L44
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
.L46:
	.cfi_restore_state
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L31
.L44:
	call	__stack_chk_fail@PLT
.L45:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L44
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L38:
	jmp	.L34
.L31:
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE0:
.L34:
	cmpl	$0, (%rbx)
	jne	.L35
	movl	%r12d, (%rbx)
.L35:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L44
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3183:
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA3183:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3183-.LLSDACSB3183
.LLSDACSB3183:
	.uleb128 .LEHB0-.LFB3183
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB3183
	.uleb128 0
	.uleb128 .LEHB1-.LFB3183
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3183:
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
.LFB3432:
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
	je	.L60
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	cmpq	$15, %rax
	ja	.L61
	cmpq	$1, %rax
	jne	.L52
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L53:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L59
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
.L52:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L53
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L61:
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
.L51:
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	.L53
.L60:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L49
.L59:
	call	__stack_chk_fail@PLT
.L49:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3432:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"stoll"
.LC3:
	.string	"N must be > 0\n"
.LC4:
	.string	"/proc/cpuinfo"
.LC5:
	.string	"model name"
.LC6:
	.string	":"
.LC7:
	.string	"basic_string::substr"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.rodata.str1.1
.LC9:
	.string	"cpu MHz"
.LC10:
	.string	"/proc/meminfo"
.LC11:
	.string	"MemTotal"
.LC12:
	.string	"r"
.LC13:
	.string	"uname -o"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"========================================\n"
	.align 8
.LC15:
	.string	"REIST modular-add benchmark suite\n"
	.section	.rodata.str1.1
.LC16:
	.string	"System Information:\n"
.LC17:
	.string	"  Hostname: "
.LC18:
	.string	"\n"
.LC19:
	.string	"  OS: "
.LC20:
	.string	"  CPU Model: "
.LC21:
	.string	"  CPU MHz: "
.LC22:
	.string	"  Memory: "
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"========================================\n\n"
	.align 8
.LC24:
	.string	"Total iterations per modulus N = "
	.section	.rodata.str1.1
.LC25:
	.string	"step = "
.LC26:
	.string	"\n\n"
.LC27:
	.string	"Running benchmarks...\n\n"
.LC28:
	.string	"Modulus B = "
.LC30:
	.string	"classic_mod"
.LC31:
	.string	"vector::_M_realloc_append"
.LC32:
	.string	"reist_sym"
.LC33:
	.string	"  classic_mod: "
.LC34:
	.string	" s\n"
.LC35:
	.string	"  reist_sym  : "
.LC36:
	.string	"  speedup    : "
.LC37:
	.string	"x (classic / REIST)\n"
.LC38:
	.string	"  sinks: "
.LC39:
	.string	" / "
.LC40:
	.string	"results_modadd_suite.csv"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"modulus,N,scenario,seconds,ops_per_sec\n"
	.section	.rodata.str1.1
.LC42:
	.string	","
.LC43:
	.string	"CSV written to "
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"WARNING: could not write CSV file "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB46:
	.section	.text.startup,"ax",@progbits
.LHOTB46:
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
	movl	$50000000, %ebx
	subq	$1256, %rsp
	.cfi_def_cfa_offset 1312
	movq	%fs:40, %rax
	movq	%rax, 1240(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L299
.L63:
	movl	$48, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rdi
	movl	$12, %ecx
	movq	%rax, 64(%rsp)
	leaq	C.0.0(%rip), %rsi
	rep movsl
	addq	$48, %rax
	movl	$384, %r12d
	movq	$48, 72(%rsp)
	movq	%rax, 56(%rsp)
.L66:
	movq	%r12, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %rbp
	leaq	(%rax,%r12), %rax
	leaq	112(%rsp), %r13
	movl	$8, %edx
	movq	%rax, 16(%rsp)
	leaq	.LC4(%rip), %rsi
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, %rdi
	movq	%r13, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movq	$0, 232(%rsp)
	movb	$0, 240(%rsp)
	movq	%rax, 8(%rsp)
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE4:
	leaq	272(%rsp), %rax
	movb	$0, 272(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rax, 256(%rsp)
	movq	$0, 264(%rsp)
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L306:
	movsbl	67(%r15), %edx
.L91:
	leaq	256(%rsp), %r12
	movq	8(%rsp), %rdi
	movq	%r12, %rsi
.LEHB5:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L300
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC5(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L71
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	264(%rsp), %r15
	addq	$2, %rax
	cmpq	%rax, %r15
	jb	.L272
	movq	256(%rsp), %rcx
	leaq	304(%rsp), %r14
	subq	%rax, %r15
	leaq	288(%rsp), %rdi
	movq	%r14, 288(%rsp)
	movq	%r15, 88(%rsp)
	addq	%rax, %rcx
	cmpq	$15, %r15
	ja	.L301
	cmpq	$1, %r15
	je	.L302
	testq	%r15, %r15
	jne	.L303
.L78:
	movq	%r14, %rax
.L77:
	movq	%r15, 296(%rsp)
	movb	$0, (%rax,%r15)
	movq	96(%rsp), %rax
	cmpq	%r13, %rax
	je	.L304
	movq	288(%rsp), %rdx
	cmpq	%r14, %rdx
	je	.L182
	movq	112(%rsp), %rcx
	movq	%rdx, 96(%rsp)
	movq	296(%rsp), %xmm0
	movhps	304(%rsp), %xmm0
	movups	%xmm0, 104(%rsp)
	testq	%rax, %rax
	je	.L85
	movq	%rax, 288(%rsp)
	movq	%rcx, 304(%rsp)
.L84:
	movb	$0, (%rax)
	movq	288(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L71
	movq	304(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L71:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC9(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L305
.L87:
	movq	320(%rsp), %rax
	movq	-24(%rax), %rax
	movq	560(%rsp,%rax), %r15
	testq	%r15, %r15
	je	.L273
	cmpb	$0, 56(%r15)
	jne	.L306
	movq	%r15, %rdi
	leaq	256(%rsp), %r12
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rsi
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rsi, %rax
	je	.L91
	movl	$10, %esi
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L302:
	movzbl	(%rcx), %eax
	movb	%al, 304(%rsp)
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L301:
	leaq	88(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rcx, (%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE5:
	movq	%rax, 288(%rsp)
	movq	%rax, %rdi
	movq	88(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rax, 304(%rsp)
.L75:
	movq	%r15, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	88(%rsp), %r15
	movq	288(%rsp), %rax
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L304:
	movq	288(%rsp), %rdx
	cmpq	%r14, %rdx
	je	.L182
	movq	296(%rsp), %xmm0
	movq	%rdx, 96(%rsp)
	movhps	304(%rsp), %xmm0
	movups	%xmm0, 104(%rsp)
.L85:
	movq	%r14, 288(%rsp)
	leaq	304(%rsp), %r14
	movq	%r14, %rax
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L182:
	movq	296(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L81
	cmpq	$1, %rdx
	je	.L307
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r14, %rsi
	rep movsb
.L83:
	movq	296(%rsp), %rdx
	movq	96(%rsp), %rax
.L81:
	movq	%rdx, 104(%rsp)
	movb	$0, (%rax,%rdx)
	movq	288(%rsp), %rax
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L303:
	movq	%r14, %rdi
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L300:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$8, %edx
	leaq	.LC10(%rip), %rsi
	movq	%r14, %rdi
.LEHB6:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE6:
	movq	24(%rsp), %rax
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	$0, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%rax, 256(%rsp)
.LEHB7:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L94
	xorl	%edx, %edx
	movl	$8, %ecx
	leaq	.LC11(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	addq	$1, %rax
	je	.L94
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%r12, %rsi
	leaq	288(%rsp), %rdi
	leaq	2(%rax), %rdx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE7:
	leaq	160(%rsp), %rdi
	leaq	288(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	288(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L94:
	movq	%r12, %rdi
	leaq	976(%rsp), %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%r12, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L95
	movq	%r12, %rdi
	call	strlen@PLT
	movq	200(%rsp), %rdx
	movq	%r12, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	192(%rsp), %rdi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L95:
	leaq	.LC12(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	popen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L96
	movq	%rax, %rdx
	movl	$128, %esi
	leaq	848(%rsp), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L98
	movq	8(%rsp), %r14
	leaq	88(%rsp), %rdx
	leaq	848(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	movq	%r14, %rsi
	leaq	224(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	232(%rsp), %rax
	testq	%rax, %rax
	jne	.L308
.L98:
	movq	%r12, %rdi
	call	pclose@PLT
.L96:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC15(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$12, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	200(%rsp), %rdx
	movq	192(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$6, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$13, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$33, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$7, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC27(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE8:
	movq	64(%rsp), %r13
	cmpq	56(%rsp), %r13
	movq	%rbp, 48(%rsp)
	je	.L100
	.p2align 4
	.p2align 3
.L159:
	movl	$12, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	0(%r13), %r14
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE9:
	movq	%r14, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB10:
	call	_ZNSo9_M_insertIlEERSoT_@PLT
.LEHE10:
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE11:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%ecx, %ecx
	movq	%rax, %r15
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L108:
	addq	$3, %rax
	addq	$1, %rcx
	cqto
	idivq	%r14
	movq	%rdx, %rax
	cmpq	%rbx, %rcx
	jne	.L108
	movq	%rdx, %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%r15, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm2
	divsd	.LC29(%rip), %xmm2
	movsd	%xmm2, 24(%rsp)
	cmpq	16(%rsp), %rbp
	je	.L109
	movq	%r14, %xmm1
	movq	%rbx, %xmm6
	leaq	.LC30(%rip), %rax
	movsd	%xmm2, 24(%rbp)
	punpcklqdq	%xmm6, %xmm1
	movq	%rax, 16(%rbp)
	addq	$32, %rbp
	movups	%xmm1, -32(%rbp)
	movaps	%xmm1, 32(%rsp)
.L110:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r14, %rdx
	xorl	%r15d, %r15d
	shrq	$63, %rdx
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	addq	%r14, %rdx
	sarq	%rdx
	movq	%rdx, %rdi
	negq	%rdi
	jmp	.L120
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L310:
	addq	$1, %rax
	subq	%r14, %r15
	cmpq	%rbx, %rax
	je	.L309
.L120:
	addq	$3, %r15
	cmpq	%rdx, %r15
	jg	.L310
	cmpq	%rdi, %r15
	leaq	(%r15,%r14), %rcx
	cmovle	%rcx, %r15
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L120
.L309:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm3
	divsd	.LC29(%rip), %xmm3
	movsd	%xmm3, (%rsp)
	cmpq	%rbp, 16(%rsp)
	je	.L121
	movdqa	32(%rsp), %xmm7
	leaq	.LC32(%rip), %rax
	movsd	%xmm3, 24(%rbp)
	addq	$32, %rbp
	movq	%rax, -16(%rbp)
	movups	%xmm7, -32(%rbp)
.L122:
	movl	$15, %edx
	leaq	.LC33(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE12:
	movsd	24(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
.LEHB13:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.LEHE13:
	movl	$3, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE14:
	movl	$15, %edx
	leaq	.LC35(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE15:
	movsd	(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
.LEHB16:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.LEHE16:
	movl	$3, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE17:
	movsd	(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm4
	jbe	.L142
	movl	$15, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE18:
	leaq	_ZSt4cout(%rip), %rdi
	movsd	24(%rsp), %xmm0
	divsd	(%rsp), %xmm0
.LEHB19:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.LEHE19:
	movl	$20, %edx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE20:
.L142:
	movl	$9, %edx
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB21:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE21:
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB22:
	call	_ZNSo9_M_insertImEERSoT_@PLT
.LEHE22:
	movl	$3, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB23:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE23:
	movq	%r15, %rsi
	movq	%r12, %rdi
.LEHB24:
	call	_ZNSo9_M_insertIlEERSoT_@PLT
.LEHE24:
	movl	$2, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE25:
	addq	$8, %r13
	cmpq	%r13, 56(%rsp)
	jne	.L159
.L100:
	movq	8(%rsp), %rdi
	movl	$16, %edx
	leaq	.LC40(%rip), %rsi
.LEHB26:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE26:
	testb	$5, 600(%rsp)
	jne	.L162
	movq	8(%rsp), %rdi
	leaq	.LC41(%rip), %rsi
.LEHB27:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	48(%rsp), %rax
	movq	%rax, %rbx
	cmpq	%rbp, %rax
	jne	.L169
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L167:
	movq	%r14, %rdi
	call	strlen@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L168:
	movl	$1, %edx
	leaq	.LC42(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$32, %rbx
	cmpq	%rbx, %rbp
	je	.L170
.L169:
	movsd	24(%rbx), %xmm5
	pxor	%xmm0, %xmm0
	xorl	%r13d, %r13d
	comisd	%xmm0, %xmm5
	movsd	%xmm5, (%rsp)
	jbe	.L165
	pxor	%xmm0, %xmm0
	cvtsi2sdq	8(%rbx), %xmm0
	divsd	%xmm5, %xmm0
	movq	%xmm0, %r13
.L165:
	movq	(%rbx), %rsi
	movq	8(%rsp), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rbx), %r14
	testq	%r14, %r14
	jne	.L167
	movq	(%r12), %rax
	movq	-24(%rax), %rdi
	addq	%r12, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE27:
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L121:
	movabsq	$288230376151711743, %rax
	movq	16(%rsp), %rbp
	subq	48(%rsp), %rbp
	movq	%rbp, %rdx
	sarq	$5, %rdx
	cmpq	%rax, %rdx
	je	.L275
	testq	%rdx, %rdx
	movl	$1, %eax
	cmovne	%rdx, %rax
	addq	%rdx, %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB28:
	call	_Znwm@PLT
.LEHE28:
	movdqa	32(%rsp), %xmm4
	movsd	(%rsp), %xmm6
	leaq	.LC32(%rip), %rcx
	movq	%rax, %r8
	movq	%rcx, 16(%rax,%rbp)
	movups	%xmm4, (%rax,%rbp)
	movsd	%xmm6, 24(%rax,%rbp)
	testq	%rbp, %rbp
	je	.L128
	movq	48(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	%rax, %r8
.L128:
	movq	48(%rsp), %rax
	leaq	32(%r8,%rbp), %rbp
	testq	%rax, %rax
	je	.L129
	movq	16(%rsp), %rsi
	movq	%rax, %rdi
	movq	%r8, 32(%rsp)
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %r8
.L129:
	leaq	(%r8,%r14), %rax
	movq	%r8, 48(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L109:
	movabsq	$288230376151711743, %rax
	subq	48(%rsp), %rbp
	movq	%rbp, %rdx
	sarq	$5, %rdx
	cmpq	%rax, %rdx
	je	.L274
	testq	%rdx, %rdx
	movl	$1, %eax
	cmovne	%rdx, %rax
	addq	%rdx, %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB29:
	call	_Znwm@PLT
.LEHE29:
	movq	%rbx, %xmm4
	movq	%r14, %xmm7
	leaq	.LC30(%rip), %rcx
	movq	%rax, %r15
	punpcklqdq	%xmm4, %xmm7
	movsd	24(%rsp), %xmm4
	movq	%rcx, 16(%rax,%rbp)
	movaps	%xmm7, 32(%rsp)
	movups	%xmm7, (%rax,%rbp)
	movsd	%xmm4, 24(%rax,%rbp)
	testq	%rbp, %rbp
	je	.L116
	movq	48(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
.L116:
	movq	48(%rsp), %rdi
	leaq	32(%r15,%rbp), %rbp
	testq	%rdi, %rdi
	je	.L117
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L117:
	movq	(%rsp), %rax
	movq	%r15, 48(%rsp)
	addq	%r15, %rax
	movq	%rax, 16(%rsp)
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L305:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%r12, %rsi
	leaq	288(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB30:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE30:
	leaq	128(%rsp), %rdi
	leaq	288(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	288(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L87
.L162:
	movl	$34, %edx
	leaq	.LC44(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB31:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L298:
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE31:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	224(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	192(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L172
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L172:
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	call	_ZdlPvm@PLT
	xorl	%eax, %eax
.L62:
	movq	1240(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L311
	addq	$1256, %rsp
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
.L308:
	.cfi_restore_state
	movq	224(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	jne	.L98
	movl	$1, %edx
	leaq	224(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L98
.L170:
	movq	8(%rsp), %rdi
.LEHB32:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	movl	$15, %edx
	leaq	.LC43(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE32:
	jmp	.L298
.L299:
	leaq	320(%rsp), %r15
	movq	%rsi, %r12
	movq	8(%rsi), %rsi
	leaq	88(%rsp), %rdx
	movl	%edi, %ebp
	movq	%r15, %rdi
	movq	%r15, 8(%rsp)
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE33:
	movq	320(%rsp), %rdx
	movq	__isoc23_strtoll@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movl	$10, %r8d
	leaq	.LC2(%rip), %rsi
.LEHB34:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE34:
	movq	%rax, %rbx
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	testq	%rbx, %rbx
	jle	.L312
	cmpl	$2, %ebp
	je	.L63
	movq	8(%rsp), %r14
	movq	16(%r12), %rsi
	leaq	88(%rsp), %rdx
	movq	%r14, %rdi
.LEHB35:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE35:
	movq	320(%rsp), %rdx
	movq	__isoc23_strtoll@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC2(%rip), %rsi
.LEHB36:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movl	$8, %edi
	movq	%rax, %rbp
	call	_Znwm@PLT
.LEHE36:
	movq	%rbp, (%rax)
	movq	%r14, %rdi
	movl	$64, %r12d
	movq	%rax, 64(%rsp)
	addq	$8, %rax
	movq	%rax, 56(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	$8, 72(%rsp)
	jmp	.L66
.L307:
	movzbl	304(%rsp), %edx
	movb	%dl, (%rax)
	jmp	.L83
.L312:
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB37:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE37:
	movl	$1, %eax
	jmp	.L62
.L311:
	call	__stack_chk_fail@PLT
.L202:
	jmp	.L156
.L214:
	jmp	.L154
.L212:
	jmp	.L152
.L211:
	jmp	.L150
.L213:
	jmp	.L148
.L210:
	jmp	.L147
.L209:
	jmp	.L145
.L203:
	jmp	.L141
.L208:
	jmp	.L139
.L207:
	jmp	.L137
.L204:
	jmp	.L135
.L206:
	jmp	.L133
.L205:
	jmp	.L131
.L218:
	jmp	.L107
.L220:
	jmp	.L105
.L219:
	jmp	.L102
.L195:
	movq	%rax, %rbx
	jmp	.L177
.L197:
	movq	%rax, %rbx
	jmp	.L69
.L199:
	jmp	.L103
.L198:
	movq	%rax, %rbx
	jmp	.L180
.L217:
	jmp	.L115
.L215:
	jmp	.L127
.L200:
	jmp	.L161
.L193:
	movq	%rax, %rbx
	jmp	.L175
.L270:
	jmp	.L271
.L196:
	movq	%rax, %rbx
	jmp	.L178
.L201:
	jmp	.L158
.L192:
	movq	%rax, %rbx
	jmp	.L173
	.section	.gcc_except_table,"a",@progbits
.LLSDA3095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3095-.LLSDACSB3095
.LLSDACSB3095:
	.uleb128 .LEHB2-.LFB3095
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L197-.LFB3095
	.uleb128 0
	.uleb128 .LEHB3-.LFB3095
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L198-.LFB3095
	.uleb128 0
	.uleb128 .LEHB4-.LFB3095
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L199-.LFB3095
	.uleb128 0
	.uleb128 .LEHB5-.LFB3095
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L270-.LFB3095
	.uleb128 0
	.uleb128 .LEHB6-.LFB3095
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L199-.LFB3095
	.uleb128 0
	.uleb128 .LEHB7-.LFB3095
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L195-.LFB3095
	.uleb128 0
	.uleb128 .LEHB8-.LFB3095
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L199-.LFB3095
	.uleb128 0
	.uleb128 .LEHB9-.LFB3095
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L219-.LFB3095
	.uleb128 0
	.uleb128 .LEHB10-.LFB3095
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L220-.LFB3095
	.uleb128 0
	.uleb128 .LEHB11-.LFB3095
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L218-.LFB3095
	.uleb128 0
	.uleb128 .LEHB12-.LFB3095
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L205-.LFB3095
	.uleb128 0
	.uleb128 .LEHB13-.LFB3095
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L206-.LFB3095
	.uleb128 0
	.uleb128 .LEHB14-.LFB3095
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L204-.LFB3095
	.uleb128 0
	.uleb128 .LEHB15-.LFB3095
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L207-.LFB3095
	.uleb128 0
	.uleb128 .LEHB16-.LFB3095
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L208-.LFB3095
	.uleb128 0
	.uleb128 .LEHB17-.LFB3095
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L203-.LFB3095
	.uleb128 0
	.uleb128 .LEHB18-.LFB3095
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L209-.LFB3095
	.uleb128 0
	.uleb128 .LEHB19-.LFB3095
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L210-.LFB3095
	.uleb128 0
	.uleb128 .LEHB20-.LFB3095
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L213-.LFB3095
	.uleb128 0
	.uleb128 .LEHB21-.LFB3095
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L211-.LFB3095
	.uleb128 0
	.uleb128 .LEHB22-.LFB3095
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L212-.LFB3095
	.uleb128 0
	.uleb128 .LEHB23-.LFB3095
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L214-.LFB3095
	.uleb128 0
	.uleb128 .LEHB24-.LFB3095
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L202-.LFB3095
	.uleb128 0
	.uleb128 .LEHB25-.LFB3095
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L201-.LFB3095
	.uleb128 0
	.uleb128 .LEHB26-.LFB3095
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L200-.LFB3095
	.uleb128 0
	.uleb128 .LEHB27-.LFB3095
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L196-.LFB3095
	.uleb128 0
	.uleb128 .LEHB28-.LFB3095
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L215-.LFB3095
	.uleb128 0
	.uleb128 .LEHB29-.LFB3095
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L217-.LFB3095
	.uleb128 0
	.uleb128 .LEHB30-.LFB3095
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L270-.LFB3095
	.uleb128 0
	.uleb128 .LEHB31-.LFB3095
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L196-.LFB3095
	.uleb128 0
	.uleb128 .LEHB32-.LFB3095
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L196-.LFB3095
	.uleb128 0
	.uleb128 .LEHB33-.LFB3095
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB3095
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L192-.LFB3095
	.uleb128 0
	.uleb128 .LEHB35-.LFB3095
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L197-.LFB3095
	.uleb128 0
	.uleb128 .LEHB36-.LFB3095
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L193-.LFB3095
	.uleb128 0
	.uleb128 .LEHB37-.LFB3095
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
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
.L156:
	.cfi_def_cfa_offset 1312
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	48(%rsp), %rbp
.L103:
	leaq	224(%rsp), %rdi
	movq	%rax, (%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	192(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	128(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	96(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	(%rsp), %rbx
	testq	%rbp, %rbp
	jne	.L313
.L180:
	movq	56(%rsp), %rsi
	movq	64(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L69:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L314
	movq	%rbx, %rdi
.LEHB38:
	call	_Unwind_Resume@PLT
.LEHE38:
.L154:
	movq	48(%rsp), %rbp
	jmp	.L103
.L152:
	movq	48(%rsp), %rbp
	jmp	.L103
.L150:
	movq	48(%rsp), %rbp
	jmp	.L103
.L313:
	movq	16(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	jmp	.L180
.L314:
	call	__stack_chk_fail@PLT
.L148:
	movq	48(%rsp), %rbp
	jmp	.L103
.L147:
	movq	48(%rsp), %rbp
	jmp	.L103
.L145:
	movq	48(%rsp), %rbp
	jmp	.L103
.L141:
	movq	48(%rsp), %rbp
	jmp	.L103
.L139:
	movq	48(%rsp), %rbp
	jmp	.L103
.L137:
	movq	48(%rsp), %rbp
	jmp	.L103
.L135:
	movq	48(%rsp), %rbp
	jmp	.L103
.L133:
	movq	48(%rsp), %rbp
	jmp	.L103
.L131:
	movq	48(%rsp), %rbp
	jmp	.L103
.L107:
	movq	48(%rsp), %rbp
	jmp	.L103
.L105:
	movq	48(%rsp), %rbp
	jmp	.L103
.L102:
	movq	48(%rsp), %rbp
	jmp	.L103
.L177:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	jmp	.L103
.L274:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L315
	leaq	.LC31(%rip), %rdi
.LEHB39:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE39:
.L115:
	movq	48(%rsp), %rbp
	jmp	.L103
.L315:
	call	__stack_chk_fail@PLT
.L275:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L316
	leaq	.LC31(%rip), %rdi
.LEHB40:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE40:
.L221:
	movq	48(%rsp), %rbp
	jmp	.L103
.L127:
	movq	48(%rsp), %rbp
	jmp	.L103
.L316:
	call	__stack_chk_fail@PLT
.L272:
	movq	1240(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L317
	movq	%rax, %rdx
	movq	%r15, %rcx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
.LEHB41:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L273:
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L318
	leaq	256(%rsp), %r12
	call	_ZSt16__throw_bad_castv@PLT
.LEHE41:
.L175:
	movq	8(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L69
.L318:
	call	__stack_chk_fail@PLT
.L216:
	movq	48(%rsp), %rbp
	jmp	.L103
.L161:
	movq	48(%rsp), %rbp
	jmp	.L103
.L158:
	movq	48(%rsp), %rbp
	jmp	.L103
.L194:
.L271:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	jmp	.L103
.L317:
	call	__stack_chk_fail@PLT
.L178:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	48(%rsp), %rbp
	movq	%rbx, %rax
	jmp	.L103
.L173:
	movq	8(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1240(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L319
	movq	%rbx, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.LEHE42:
.L319:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3095:
	.section	.gcc_except_table
.LLSDAC3095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3095-.LLSDACSBC3095
.LLSDACSBC3095:
	.uleb128 .LEHB38-.LCOLDB46
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LCOLDB46
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L221-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB40-.LCOLDB46
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L216-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB41-.LCOLDB46
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L194-.LCOLDB46
	.uleb128 0
	.uleb128 .LEHB42-.LCOLDB46
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSEC3095:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE46:
	.section	.text.startup
.LHOTE46:
	.section	.rodata
	.align 32
	.type	C.0.0, @object
	.size	C.0.0, 48
C.0.0:
	.quad	257
	.quad	997
	.quad	10007
	.quad	1000003
	.quad	10000019
	.quad	1000000007
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC29:
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
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
