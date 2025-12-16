	.file	"bench_modular.cpp"
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
.LFB5091:
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
.LFE5091:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4273:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4273
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
.LFE4273:
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4273:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4273-.LLSDACSB4273
.LLSDACSB4273:
	.uleb128 .LEHB0-.LFB4273
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB4273
	.uleb128 0
	.uleb128 .LEHB1-.LFB4273
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4273:
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
.LFB4557:
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
.LFE4557:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv:
.LFB5040:
	.cfi_startproc
	movq	$-2147483648, %rcx
	movl	$2147483647, %esi
	movq	%rdi, %rdx
	movdqa	.LC4(%rip), %xmm4
	movq	%rcx, %xmm7
	movl	$1, %ecx
	movq	%rsi, %xmm6
	movq	%rcx, %xmm5
	movdqa	%xmm4, %xmm8
	leaq	1248(%rdi), %rax
	punpcklqdq	%xmm7, %xmm7
	punpcklqdq	%xmm6, %xmm6
	punpcklqdq	%xmm5, %xmm5
	psrlq	$32, %xmm8
	.p2align 4
	.p2align 3
.L63:
	movdqu	(%rdx), %xmm0
	movdqu	8(%rdx), %xmm1
	addq	$16, %rdx
	movdqu	1232(%rdx), %xmm2
	pand	%xmm6, %xmm1
	pand	%xmm7, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm2
	pmuludq	%xmm4, %xmm3
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm8, %xmm0
	pmuludq	%xmm4, %xmm1
	paddq	%xmm0, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm3
	movdqa	%xmm3, %xmm0
	pxor	%xmm2, %xmm0
	movups	%xmm0, -16(%rdx)
	cmpq	%rdx, %rax
	jne	.L63
	movl	$2147483647, %ecx
	movq	$-2147483648, %rsi
	leaq	2480(%rdi), %rdx
	movq	%rcx, %xmm6
	movq	%rsi, %xmm7
	movl	$1, %esi
	movabsq	$-5403634167711393303, %rcx
	movq	%rcx, %xmm4
	movq	%rsi, %xmm5
	punpcklqdq	%xmm7, %xmm7
	punpcklqdq	%xmm4, %xmm4
	punpcklqdq	%xmm6, %xmm6
	punpcklqdq	%xmm5, %xmm5
	movdqa	%xmm4, %xmm8
	psrlq	$32, %xmm8
	.p2align 4
	.p2align 3
.L64:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	-1264(%rax), %xmm2
	pand	%xmm6, %xmm1
	pand	%xmm7, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	movdqa	%xmm0, %xmm3
	pxor	%xmm1, %xmm2
	pmuludq	%xmm4, %xmm3
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm8, %xmm0
	pmuludq	%xmm4, %xmm1
	paddq	%xmm0, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm3
	movdqa	%xmm3, %xmm0
	pxor	%xmm2, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L64
	movq	2488(%rdi), %rsi
	movq	2480(%rdi), %rax
	movq	$0, 2496(%rdi)
	movq	%rsi, %rdx
	andq	$-2147483648, %rax
	andq	$-2147483648, %rsi
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	1232(%rdi), %rdx
	andq	%rcx, %rax
	xorq	%rdx, %rax
	movq	%rax, 2480(%rdi)
	movq	(%rdi), %rax
	andl	$2147483647, %eax
	orq	%rsi, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	1240(%rdi), %rdx
	andq	%rcx, %rax
	xorq	%rdx, %rax
	movq	%rax, 2488(%rdi)
	ret
	.cfi_endproc
.LFE5040:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"stoll"
.LC7:
	.string	"Usage: "
.LC8:
	.string	" [B>1] [N>0]\n"
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
	.section	.rodata.str1.1
.LC20:
	.string	"Modular Benchmark\n"
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
	.section	.rodata.str1.1
.LC29:
	.string	"Benchmark with B = "
.LC30:
	.string	", N = "
.LC32:
	.string	"\n--- Modular remainder ---\n"
.LC33:
	.string	"classic  : "
.LC34:
	.string	" s\n"
.LC35:
	.string	"REIST    : "
.LC37:
	.string	"Speedup  : "
.LC38:
	.string	"x (classic / REIST)\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB39:
	.section	.text.startup,"ax",@progbits
.LHOTB39:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4213:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4213
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
	subq	$3752, %rsp
	.cfi_def_cfa_offset 3808
	movq	%fs:40, %rax
	movq	%rax, 3736(%rsp)
	xorl	%eax, %eax
	movq	$5000000, 16(%rsp)
	movq	$257, 8(%rsp)
	cmpl	$1, %edi
	jg	.L181
.L68:
	leaq	840(%rsp), %rcx
	movl	$1, %r13d
	movq	$48879, 832(%rsp)
	movabsq	$6364136223846793005, %rsi
	movl	$48879, %edx
	.p2align 6
	.p2align 4
	.p2align 3
.L72:
	movq	%rdx, %rax
	addq	$8, %rcx
	shrq	$62, %rax
	xorq	%rdx, %rax
	imulq	%rsi, %rax
	leaq	(%rax,%r13), %rdx
	addq	$1, %r13
	movq	%rdx, -8(%rcx)
	cmpq	$312, %r13
	jne	.L72
	leaq	128(%rsp), %rax
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movq	%rax, 112(%rsp)
	leaq	96(%rsp), %r12
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	leaq	160(%rsp), %rax
	leaq	304(%rsp), %rbp
	movq	%rsi, 120(%rsp)
	movl	$8, %edx
	movq	%rax, 144(%rsp)
	leaq	192(%rsp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	movq	%rdi, 152(%rsp)
	movq	%rbp, %rdi
	movq	%rax, 40(%rsp)
	leaq	208(%rsp), %rax
	movq	$312, 3328(%rsp)
	movq	%r12, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movb	$0, 96(%rsp)
	movb	$0, 128(%rsp)
	movb	$0, 160(%rsp)
	movq	%r8, 184(%rsp)
	movb	$0, 192(%rsp)
	movq	%r9, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	%rax, 24(%rsp)
.LEHB2:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE2:
	leaq	256(%rsp), %rax
	xorl	%edx, %edx
	movb	$0, 256(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rax, 240(%rsp)
	movq	%rdx, 248(%rsp)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L188:
	movsbl	67(%r14), %edx
.L94:
	leaq	240(%rsp), %rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L182
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC10(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L74
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	248(%rsp), %r14
	addq	$2, %rax
	cmpq	%rax, %r14
	jb	.L173
	movq	240(%rsp), %rcx
	leaq	288(%rsp), %r15
	subq	%rax, %r14
	leaq	272(%rsp), %rdi
	movq	%r15, 272(%rsp)
	movq	%r14, 72(%rsp)
	addq	%rax, %rcx
	cmpq	$15, %r14
	ja	.L183
	cmpq	$1, %r14
	je	.L184
	testq	%r14, %r14
	jne	.L185
.L81:
	movq	%r15, %rax
.L80:
	movq	%r14, 280(%rsp)
	movb	$0, (%rax,%r14)
	movq	80(%rsp), %rax
	movq	%rax, %r10
	cmpq	%r12, %rax
	je	.L186
	movq	272(%rsp), %rcx
	movq	280(%rsp), %rdx
	cmpq	%r15, %rcx
	je	.L124
	movq	96(%rsp), %rsi
	movq	%rdx, %xmm0
	movq	%rcx, 80(%rsp)
	movhps	288(%rsp), %xmm0
	movups	%xmm0, 88(%rsp)
	testq	%rax, %rax
	je	.L88
	movq	%rax, 272(%rsp)
	movq	%rsi, 288(%rsp)
.L87:
	movb	$0, (%rax)
	movq	272(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L74
	movq	288(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L74:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC14(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L187
.L90:
	movq	304(%rsp), %rax
	movq	-24(%rax), %rax
	movq	544(%rsp,%rax), %r14
	testq	%r14, %r14
	je	.L174
	cmpb	$0, 56(%r14)
	jne	.L188
	movq	%r14, %rdi
	leaq	240(%rsp), %rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rbx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rbx, %rax
	je	.L94
	leaq	240(%rsp), %rbx
	movl	$10, %esi
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L184:
	movzbl	(%rcx), %eax
	movb	%al, 288(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L183:
	leaq	72(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rcx, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE3:
	movq	%rax, 272(%rsp)
	movq	%rax, %rdi
	movq	72(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, 288(%rsp)
.L78:
	movq	%r14, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	72(%rsp), %r14
	movq	272(%rsp), %rax
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L186:
	movq	272(%rsp), %rax
	movq	280(%rsp), %rdx
	cmpq	%r15, %rax
	je	.L124
	movq	280(%rsp), %xmm0
	movq	%rax, 80(%rsp)
	movhps	288(%rsp), %xmm0
	movups	%xmm0, 88(%rsp)
.L88:
	movq	%r15, 272(%rsp)
	leaq	288(%rsp), %r15
	movq	%r15, %rax
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L124:
	testq	%rdx, %rdx
	je	.L84
	cmpq	$1, %rdx
	je	.L189
	movl	%edx, %ecx
	movq	%r10, %rdi
	movq	%r15, %rsi
	rep movsb
.L86:
	movq	280(%rsp), %rdx
	movq	80(%rsp), %r10
.L84:
	movq	%rdx, 88(%rsp)
	movb	$0, (%r10,%rdx)
	movq	272(%rsp), %rax
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L185:
	movq	%r15, %rdi
	jmp	.L78
.L182:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, 40(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 24(%rsp)
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE4:
	movq	48(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movb	$0, 256(%rsp)
	movq	%rax, 240(%rsp)
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)
.LEHB5:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE5:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L96
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	$8, %ecx
	leaq	.LC16(%rip), %rsi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	144(%rsp), %rdi
	addq	$1, %rax
	movq	%rdi, 32(%rsp)
	jne	.L190
.L97:
	movq	%rbx, %rdi
	leaq	3472(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L176
.L180:
	leaq	176(%rsp), %rax
	movq	%rax, 40(%rsp)
.L98:
	leaq	208(%rsp), %rax
	leaq	.LC17(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	movq	%rax, 24(%rsp)
.LEHB6:
	call	popen@PLT
	movq	%rax, %rbx
	leaq	208(%rsp), %rax
	movq	%rax, 24(%rsp)
	testq	%rbx, %rbx
	je	.L99
	movq	%rbx, %rdx
	movl	$128, %esi
	leaq	3344(%rsp), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L191
	leaq	208(%rsp), %rax
	leaq	72(%rsp), %rdx
	movq	%rbp, %rdi
	leaq	3344(%rsp), %rsi
	movq	%rax, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	208(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	216(%rsp), %rax
	testq	%rax, %rax
	je	.L101
	movq	208(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L192
.L101:
	movq	%rbx, %rdi
	call	pclose@PLT
.L99:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$12, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	184(%rsp), %rdx
	movq	176(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$6, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$13, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %edx
	leaq	.LC27(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$19, %edx
	leaq	.LC29(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movl	$6, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE6:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%ebx, %ebx
	movq	%r13, %rdi
	movabsq	$6148914691236517205, %r15
	movq	%rax, 48(%rsp)
	movq	16(%rsp), %r13
	movabsq	$8202884508482404352, %r14
	movabsq	$-2270628950310912, %r12
	movabsq	$4611686018427387905, %rbp
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L104:
	movq	%rdx, %rax
	addq	$1, %rbx
	cqto
	idivq	8(%rsp)
	movq	%rdx, 64(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, %rbx
	je	.L193
.L107:
	cmpq	$311, %rdi
	ja	.L194
.L103:
	movq	832(%rsp,%rdi,8), %rax
	leaq	1(%rdi), %rsi
	movabsq	$4611686018427387900, %r8
	movq	%rsi, 3328(%rsp)
	movq	%rsi, %rdi
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbp
	cmpq	%rax, %r8
	jb	.L104
	movq	%rsi, %rax
	cmpq	$311, %rsi
	ja	.L195
	.p2align 4
	.p2align 3
.L105:
	movabsq	$4611686018427387900, %rcx
	leaq	1(%rax), %rsi
	movq	832(%rsp,%rax,8), %rax
	movq	%rsi, 3328(%rsp)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbp
	cmpq	%rax, %rcx
	jb	.L196
	movq	%rsi, %rax
	cmpq	$311, %rsi
	jbe	.L105
.L195:
	leaq	832(%rsp), %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rax
	jmp	.L105
.L187:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	272(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB7:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE7:
	leaq	112(%rsp), %rdi
	leaq	272(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	272(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L90
.L96:
	movq	%rbx, %rdi
	leaq	3472(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L197
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	184(%rsp), %rdx
	movq	%rax, %r8
	leaq	144(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L127
.L189:
	movzbl	288(%rsp), %eax
	movb	%al, (%r10)
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%rsi, %rdi
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L194:
	leaq	832(%rsp), %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rdi
	jmp	.L103
.L193:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	48(%rsp), %rax
	movl	$134201207, %ebp
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC31(%rip), %xmm0
	salq	$37, %rbp
	movsd	%xmm0, 48(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	8(%rsp), %r13
	movq	3328(%rsp), %rsi
	movabsq	$6148914691236517205, %r14
	movq	%rax, 56(%rsp)
	movq	8(%rsp), %r15
	movabsq	$8202884508482404352, %r12
	movabsq	$4611686018427387905, %rbx
	sarq	%r13
	movq	%r13, %r8
	xorl	%r13d, %r13d
	.p2align 4
	.p2align 3
.L113:
	cmpq	$311, %rsi
	ja	.L198
.L108:
	movq	832(%rsp,%rsi,8), %rax
	leaq	1(%rsi), %rdi
	movabsq	$4611686018427387900, %r9
	movq	%rdi, 3328(%rsp)
	movq	%rdi, %rsi
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%rbp, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbx
	cmpq	%rax, %r9
	jb	.L109
	movq	%r8, 8(%rsp)
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L110:
	movabsq	$4611686018427387900, %rcx
	leaq	1(%rax), %rdi
	movq	832(%rsp,%rax,8), %rax
	movq	%rdi, 3328(%rsp)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%rbp, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbx
	cmpq	%rax, %rcx
	jb	.L199
.L111:
	movq	%rdi, %rax
	cmpq	$311, %rdi
	jbe	.L110
	leaq	832(%rsp), %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L199:
	movq	8(%rsp), %r8
	movq	%rdi, %rsi
.L109:
	movq	%rdx, %rax
	cqto
	idivq	%r15
	movq	%rdx, %rax
	subq	%r15, %rax
	cmpq	%r8, %rdx
	cmovle	%rdx, %rax
	addq	$1, %r13
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	cmpq	16(%rsp), %r13
	jne	.L113
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	56(%rsp), %rax
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC31(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC33(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	48(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC35(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	8(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L114
	movl	$11, %edx
	leaq	.LC37(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	48(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE8:
.L114:
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	112(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	80(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	xorl	%eax, %eax
.L67:
	movq	3736(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L200
	addq	$3752, %rsp
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
.L198:
	.cfi_restore_state
	leaq	832(%rsp), %rdi
	movq	%r8, 8(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rsi
	movq	8(%rsp), %r8
	jmp	.L108
.L181:
	movq	%rsi, %rbp
	leaq	832(%rsp), %r12
	movq	8(%rsi), %rsi
	movl	%edi, %ebx
	leaq	72(%rsp), %rdx
	movq	%r12, %rdi
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	movq	832(%rsp), %rdx
	movq	__isoc23_strtoll@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movl	$10, %r8d
	leaq	.LC6(%rip), %rsi
.LEHB10:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE10:
	movq	%r12, %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %ebx
	jne	.L69
	movq	$5000000, 16(%rsp)
	subq	$1, %r15
	jg	.L68
.L71:
	movl	$7, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, %eax
	jmp	.L67
.L69:
	movq	16(%rbp), %rsi
	leaq	72(%rsp), %rdx
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	movq	832(%rsp), %rdx
	movq	__isoc23_strtoll@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movl	$10, %r8d
	leaq	.LC6(%rip), %rsi
.LEHB12:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE12:
	movq	%r12, %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpq	$1, 8(%rsp)
	jle	.L71
	testq	%rbx, %rbx
	jle	.L71
	jmp	.L68
.L176:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	184(%rsp), %rdx
	movq	%rax, %r8
.L127:
	leaq	176(%rsp), %rdi
	leaq	208(%rsp), %rax
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rdi, 40(%rsp)
	movq	%rax, 24(%rsp)
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE13:
	jmp	.L98
.L197:
	leaq	144(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L180
.L190:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	272(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB14:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE14:
	leaq	144(%rsp), %rax
	leaq	272(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	272(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L97
.L191:
	leaq	208(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L101
.L192:
	movq	24(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L101
.L200:
	call	__stack_chk_fail@PLT
.L137:
	movq	%rax, %rbx
	jmp	.L116
.L171:
	jmp	.L172
.L141:
	movq	%rax, %r12
	jmp	.L122
.L138:
	movq	%rax, %rbx
	jmp	.L118
.L140:
	movq	%rax, %r12
	jmp	.L121
	.section	.gcc_except_table,"a",@progbits
.LLSDA4213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4213-.LLSDACSB4213
.LLSDACSB4213:
	.uleb128 .LEHB2-.LFB4213
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L140-.LFB4213
	.uleb128 0
	.uleb128 .LEHB3-.LFB4213
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L171-.LFB4213
	.uleb128 0
	.uleb128 .LEHB4-.LFB4213
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L140-.LFB4213
	.uleb128 0
	.uleb128 .LEHB5-.LFB4213
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L141-.LFB4213
	.uleb128 0
	.uleb128 .LEHB6-.LFB4213
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L140-.LFB4213
	.uleb128 0
	.uleb128 .LEHB7-.LFB4213
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L171-.LFB4213
	.uleb128 0
	.uleb128 .LEHB8-.LFB4213
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L140-.LFB4213
	.uleb128 0
	.uleb128 .LEHB9-.LFB4213
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB4213
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L137-.LFB4213
	.uleb128 0
	.uleb128 .LEHB11-.LFB4213
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB4213
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L138-.LFB4213
	.uleb128 0
	.uleb128 .LEHB13-.LFB4213
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L140-.LFB4213
	.uleb128 0
	.uleb128 .LEHB14-.LFB4213
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L141-.LFB4213
	.uleb128 0
.LLSDACSE4213:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4213
	.type	main.cold, @function
main.cold:
.LFSB4213:
.L174:
	.cfi_def_cfa_offset 3808
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L201
	leaq	240(%rsp), %rbx
.LEHB15:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE15:
.L116:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L202
	movq	%rbx, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.L139:
.L172:
	movq	%rbx, %rdi
	movq	%rax, %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 24(%rsp)
.L121:
	movq	24(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	112(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	80(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE16:
.L202:
	call	__stack_chk_fail@PLT
.L173:
	movq	3736(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L204
	movq	%rax, %rdx
	movq	%r14, %rcx
	leaq	.LC12(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
.LEHB17:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE17:
.L122:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L121
.L204:
	call	__stack_chk_fail@PLT
.L118:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L205
	movq	%rbx, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L201:
	call	__stack_chk_fail@PLT
.L205:
	call	__stack_chk_fail@PLT
.L203:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4213:
	.section	.gcc_except_table
.LLSDAC4213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4213-.LLSDACSBC4213
.LLSDACSBC4213:
	.uleb128 .LEHB15-.LCOLDB39
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L139-.LCOLDB39
	.uleb128 0
	.uleb128 .LEHB16-.LCOLDB39
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LCOLDB39
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L139-.LCOLDB39
	.uleb128 0
	.uleb128 .LEHB18-.LCOLDB39
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSEC4213:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE39:
	.section	.text.startup
.LHOTE39:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC31:
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
