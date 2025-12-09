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
.LFB5097:
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
.LFE5097:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4286:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4286
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
.LFE4286:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4286:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4286-.LLSDACSB4286
.LLSDACSB4286:
	.uleb128 .LEHB0-.LFB4286
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L32-.LFB4286
	.uleb128 0
	.uleb128 .LEHB1-.LFB4286
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4286:
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
.LFB4565:
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
.LFE4565:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv:
.LFB5046:
	.cfi_startproc
	endbr64
	movdqa	.LC1(%rip), %xmm3
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movdqa	.LC2(%rip), %xmm4
	movdqa	.LC3(%rip), %xmm5
	movdqa	.LC4(%rip), %xmm6
	leaq	1248(%rdi), %rax
	pxor	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L59:
	movdqu	(%rdx), %xmm0
	movdqu	8(%rdx), %xmm1
	addq	$16, %rdx
	movdqu	1232(%rdx), %xmm2
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
	movups	%xmm0, -16(%rdx)
	cmpq	%rdx, %rax
	jne	.L59
	leaq	2480(%rcx), %rdx
	pxor	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L60:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	-1264(%rax), %xmm2
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
	jne	.L60
	movq	2488(%rcx), %rdx
	movq	2480(%rcx), %rax
	movabsq	$-5403634167711393303, %rdi
	movq	$0, 2496(%rcx)
	movq	%rdx, %rsi
	andq	$-2147483648, %rax
	andq	$-2147483648, %rdx
	andl	$2147483647, %esi
	orq	%rsi, %rax
	movq	%rax, %rsi
	andl	$1, %eax
	negq	%rax
	shrq	%rsi
	xorq	1232(%rcx), %rsi
	andq	%rdi, %rax
	xorq	%rsi, %rax
	movq	%rax, 2480(%rcx)
	movq	(%rcx), %rax
	andl	$2147483647, %eax
	orq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	1240(%rcx), %rdx
	andq	%rdi, %rax
	xorq	%rdx, %rax
	movq	%rax, 2488(%rcx)
	ret
	.cfi_endproc
.LFE5046:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"stoll"
.LC6:
	.string	"Usage: "
.LC7:
	.string	" [B>1] [N>0]\n"
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
	.section	.rodata.str1.1
.LC19:
	.string	"Modular Benchmark\n"
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
	.string	"Benchmark with B = "
.LC29:
	.string	", N = "
.LC31:
	.string	"\n--- Modular remainder ---\n"
.LC32:
	.string	"classic  : "
.LC33:
	.string	" s\n"
.LC34:
	.string	"REIST    : "
.LC36:
	.string	"Speedup  : "
.LC37:
	.string	"x (classic / REIST)\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB38:
	.section	.text.startup,"ax",@progbits
.LHOTB38:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4224:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4224
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
	subq	$3752, %rsp
	.cfi_def_cfa_offset 3808
	movq	%fs:40, %rax
	movq	%rax, 3736(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L170
	movq	$5000000, 8(%rsp)
	leaq	832(%rsp), %rbp
	movq	$257, 16(%rsp)
.L64:
	movl	$48879, %eax
	movl	$1, %ebx
	movq	$48879, 832(%rsp)
	movabsq	$6364136223846793005, %rcx
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L68:
	movq	%rdx, %rax
	shrq	$62, %rax
	xorq	%rdx, %rax
	imulq	%rcx, %rax
	leaq	(%rbx,%rax), %rdx
	movq	%rdx, 0(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpq	$312, %rbx
	jne	.L68
	leaq	96(%rsp), %rax
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movq	%rax, 24(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	$8, %edx
	movq	%rax, 80(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	176(%rsp), %rax
	movq	%rsi, 120(%rsp)
	leaq	.LC8(%rip), %rsi
	movq	%rdi, 152(%rsp)
	leaq	304(%rsp), %rdi
	movq	%rax, 48(%rsp)
	leaq	208(%rsp), %rax
	movq	$312, 3328(%rsp)
	movq	%rcx, 88(%rsp)
	movb	$0, 96(%rsp)
	movb	$0, 128(%rsp)
	movb	$0, 160(%rsp)
	movq	%r8, 184(%rsp)
	movb	$0, 192(%rsp)
	movq	%r9, 216(%rsp)
	movb	$0, 224(%rsp)
	movq	%rdi, (%rsp)
	movq	%rax, 32(%rsp)
.LEHB2:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE2:
	leaq	256(%rsp), %rax
	xorl	%edx, %edx
	movb	$0, 256(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 240(%rsp)
	movq	%rdx, 248(%rsp)
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L180:
	movsbl	67(%r12), %edx
.L91:
	leaq	240(%rsp), %r13
	movq	(%rsp), %rdi
	movq	%r13, %rsi
.LEHB3:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L171
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC9(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L70
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	248(%rsp), %r12
	addq	$2, %rax
	cmpq	%rax, %r12
	jb	.L172
	movq	240(%rsp), %r15
	leaq	288(%rsp), %r14
	subq	%rax, %r12
	leaq	272(%rsp), %rdi
	movq	%r14, 272(%rsp)
	movq	%r12, 72(%rsp)
	addq	%rax, %r15
	cmpq	$15, %r12
	ja	.L173
	cmpq	$1, %r12
	je	.L174
	testq	%r12, %r12
	jne	.L175
.L77:
	movq	%r14, %rax
.L76:
	movq	%r12, 280(%rsp)
	movb	$0, (%rax,%r12)
	movq	80(%rsp), %r8
	movq	272(%rsp), %rdx
	movq	%r8, %rax
	cmpq	%r14, %rdx
	je	.L176
	movdqu	280(%rsp), %xmm0
	movq	24(%rsp), %rsi
	cmpq	%rsi, %r8
	je	.L177
	movq	96(%rsp), %rcx
	movq	%rdx, 80(%rsp)
	movups	%xmm0, 88(%rsp)
	testq	%r8, %r8
	je	.L85
	movq	%r8, 272(%rsp)
	movq	%rcx, 288(%rsp)
.L84:
	movq	$0, 280(%rsp)
	movb	$0, (%rax)
	movq	272(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L70
	movq	288(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L70:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC13(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L178
.L87:
	movq	304(%rsp), %rax
	movq	-24(%rax), %rax
	movq	544(%rsp,%rax), %r12
	testq	%r12, %r12
	je	.L179
	cmpb	$0, 56(%r12)
	jne	.L180
	movq	%r12, %rdi
	leaq	240(%rsp), %r13
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L91
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L174:
	movzbl	(%r15), %eax
	movb	%al, 288(%rsp)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L173:
	leaq	72(%rsp), %rsi
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE3:
	movq	%rax, 272(%rsp)
	movq	%rax, %rdi
	movq	72(%rsp), %rax
	movq	%rax, 288(%rsp)
.L74:
	movq	%r12, %rdx
	movq	%r15, %rsi
	call	memcpy@PLT
	movq	72(%rsp), %r12
	movq	272(%rsp), %rax
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L177:
	movq	%rdx, 80(%rsp)
	movups	%xmm0, 88(%rsp)
.L85:
	movq	%r14, 272(%rsp)
	leaq	288(%rsp), %r14
	movq	%r14, %rax
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L176:
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.L80
	cmpq	$1, %rax
	je	.L181
	movl	%eax, %ecx
	movq	%r8, %rdi
	movq	%r14, %rsi
	rep movsb
	movq	80(%rsp), %r8
	movq	280(%rsp), %rax
.L80:
	movq	%rax, 88(%rsp)
	movb	$0, (%r8,%rax)
	movq	272(%rsp), %rax
	jmp	.L84
.L171:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	(%rsp), %r15
	movq	%r15, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rax, 40(%rsp)
	leaq	176(%rsp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, 48(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE4:
	movq	56(%rsp), %rax
	movq	%r13, %rsi
	movq	%r15, %rdi
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
	je	.L93
	leaq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
.L94:
	movq	%r13, %rdi
	leaq	3472(%rsp), %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%r12, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L162
	leaq	176(%rsp), %rax
	movq	%rax, 48(%rsp)
.L96:
	leaq	208(%rsp), %rax
	leaq	.LC16(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	movq	%rax, 32(%rsp)
.LEHB6:
	call	popen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L182
	leaq	3344(%rsp), %r13
	leaq	208(%rsp), %rax
	movq	%r12, %rdx
	movl	$128, %esi
	movq	%r13, %rdi
	movq	%rax, 32(%rsp)
	call	fgets@PLT
	testq	%rax, %rax
	je	.L183
	movq	(%rsp), %r15
	leaq	208(%rsp), %rax
	leaq	72(%rsp), %rdx
	movq	%r13, %rsi
	movq	%rax, 32(%rsp)
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	208(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rdi, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	216(%rsp), %rax
	testq	%rax, %rax
	je	.L99
	movq	208(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L184
.L99:
	movq	%r12, %rdi
	call	pclose@PLT
.L97:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC18(%rip), %r13
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$12, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	184(%rsp), %rdx
	movq	176(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC22(%rip), %r13
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$6, %edx
	leaq	.LC23(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$13, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC25(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %edx
	leaq	.LC26(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC27(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$19, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movl	$6, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE6:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	movabsq	$6148914691236517205, %r12
	movq	%rax, (%rsp)
	movq	%r9, %rbx
	movabsq	$8202884508482404352, %r13
	movabsq	$-2270628950310912, %r15
	movabsq	$4611686018427387905, %r14
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L102:
	movq	%rdx, %rax
	addq	$1, %rbx
	cqto
	idivq	16(%rsp)
	movq	%rdx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	8(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L185
.L105:
	cmpq	$311, %rsi
	ja	.L186
.L101:
	movq	832(%rsp,%rsi,8), %rax
	leaq	1(%rsi), %rcx
	movabsq	$4611686018427387900, %rdi
	movq	%rcx, 3328(%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%r14
	cmpq	%rax, %rdi
	jb	.L102
	movq	%rcx, %rax
	cmpq	$311, %rcx
	ja	.L187
	.p2align 4,,10
	.p2align 3
.L103:
	movabsq	$4611686018427387900, %rsi
	leaq	1(%rax), %rcx
	movq	832(%rsp,%rax,8), %rax
	movq	%rcx, 3328(%rsp)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r15, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%r14
	cmpq	%rax, %rsi
	jb	.L188
	movq	%rcx, %rax
	cmpq	$311, %rcx
	jbe	.L103
.L187:
	movq	%rbp, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rax
	jmp	.L103
.L175:
	movq	%r14, %rdi
	jmp	.L74
.L178:
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	272(%rsp), %r12
	orq	$-1, %rcx
	movq	%r13, %rsi
	leaq	2(%rax), %rdx
	movq	%r12, %rdi
.LEHB7:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE7:
	leaq	112(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L87
.L93:
	xorl	%edx, %edx
	leaq	.LC15(%rip), %rsi
	movl	$8, %ecx
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	144(%rsp), %rsi
	addq	$1, %rax
	movq	%rsi, 40(%rsp)
	je	.L94
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC10(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	272(%rsp), %r12
	orq	$-1, %rcx
	movq	%r13, %rsi
	leaq	2(%rax), %rdx
	movq	%r12, %rdi
.LEHB8:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE8:
	leaq	144(%rsp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L188:
	movq	%rcx, %rsi
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L186:
	movq	%rbp, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rsi
	jmp	.L101
.L185:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	(%rsp), %rsi
	pxor	%xmm0, %xmm0
	movabsq	$6148914691236517205, %r15
	movabsq	$8202884508482404352, %r14
	movabsq	$-2270628950310912, %r13
	movabsq	$4611686018427387905, %rbx
	subq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC30(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	16(%rsp), %r12
	movq	3328(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%rax, 56(%rsp)
	movq	%r12, %r9
	sarq	%r9
	.p2align 4,,10
	.p2align 3
.L111:
	cmpq	$311, %rsi
	ja	.L189
.L106:
	movq	832(%rsp,%rsi,8), %rax
	leaq	1(%rsi), %rdi
	movabsq	$4611686018427387900, %r10
	movq	%rdi, 3328(%rsp)
	movq	%rdi, %rsi
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
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbx
	cmpq	%rax, %r10
	jb	.L107
	movq	%r9, (%rsp)
	movq	%r8, 16(%rsp)
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L108:
	movabsq	$4611686018427387900, %rcx
	leaq	1(%rax), %rdi
	movq	832(%rsp,%rax,8), %rax
	movq	%rdi, 3328(%rsp)
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
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	mulq	%rbx
	cmpq	%rax, %rcx
	jb	.L190
.L109:
	movq	%rdi, %rax
	cmpq	$311, %rdi
	jbe	.L108
	movq	%rbp, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	3328(%rsp), %rax
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L190:
	movq	(%rsp), %r9
	movq	16(%rsp), %r8
	movq	%rdi, %rsi
.L107:
	movq	%rdx, %rax
	cqto
	idivq	%r12
	movq	%rdx, %rax
	subq	%r12, %rax
	cmpq	%r9, %rdx
	cmovle	%rdx, %rax
	addq	$1, %r8
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	movq	8(%rsp), %rax
	cmpq	%rax, %r8
	jne	.L111
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	56(%rsp), %rsi
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rsi, %rax
	leaq	.LC31(%rip), %rsi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC30(%rip), %xmm0
	movsd	%xmm0, (%rsp)
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC33(%rip), %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$11, %edx
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L112
	movl	$11, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	24(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC37(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE9:
.L112:
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	112(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	80(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	xorl	%eax, %eax
.L63:
	movq	3736(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L166
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
.L189:
	.cfi_restore_state
	movq	%rbp, %rdi
	movq	%r8, 16(%rsp)
	movq	%r9, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	16(%rsp), %r8
	movq	(%rsp), %r9
	movq	3328(%rsp), %rsi
	jmp	.L106
.L170:
	movq	%rsi, %r12
	leaq	72(%rsp), %r14
	movq	8(%rsi), %rsi
	movl	%edi, %ebx
	leaq	832(%rsp), %rbp
	movq	%r14, %rdx
	leaq	.LC5(%rip), %r13
	movq	%rbp, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	__isoc23_strtoll@GOTPCREL(%rip), %r15
	movq	832(%rsp), %rdx
	movq	%r15, %rdi
.LEHB11:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE11:
	movq	%rbp, %rdi
	movq	%rax, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpl	$2, %ebx
	jne	.L65
	movq	$5000000, 8(%rsp)
	cmpq	$1, 16(%rsp)
	jg	.L64
.L67:
	leaq	_ZSt4cerr(%rip), %rbx
	movl	$7, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE12:
	movl	$1, %eax
	jmp	.L63
.L162:
	movq	%r12, %rdi
	call	strlen@PLT
	movq	184(%rsp), %rdx
	movq	%r12, %rcx
	xorl	%esi, %esi
	movq	%rax, %r8
	leaq	176(%rsp), %rdi
	leaq	208(%rsp), %rax
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE13:
	jmp	.L96
.L65:
	movq	16(%r12), %rsi
	movq	%r14, %rdx
	movq	%rbp, %rdi
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE14:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	832(%rsp), %rdx
	movq	%r15, %rdi
.LEHB15:
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE15:
	movq	%rbp, %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpq	$1, 16(%rsp)
	jle	.L67
	testq	%rbx, %rbx
	jle	.L67
	jmp	.L64
.L181:
	movzbl	288(%rsp), %eax
	movb	%al, (%r8)
	movq	80(%rsp), %r8
	movq	280(%rsp), %rax
	jmp	.L80
.L183:
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L99
.L184:
	movq	32(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L99
.L179:
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L166
	leaq	240(%rsp), %r13
.LEHB16:
	call	_ZSt16__throw_bad_castv@PLT
.L172:
	movq	3736(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L166
	movq	%rax, %rdx
	movq	%r12, %rcx
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE16:
.L182:
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L97
.L166:
	call	__stack_chk_fail@PLT
.L130:
	endbr64
	movq	%rax, %rbx
	jmp	.L116
.L131:
	endbr64
	movq	%rax, %rbx
	jmp	.L116
.L134:
	endbr64
	movq	%rax, %rbx
	jmp	.L120
.L133:
	endbr64
	movq	%rax, %rbx
	jmp	.L119
.L132:
	endbr64
	movq	%rax, %rbx
	jmp	.L118
	.section	.gcc_except_table,"a",@progbits
.LLSDA4224:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4224-.LLSDACSB4224
.LLSDACSB4224:
	.uleb128 .LEHB2-.LFB4224
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L133-.LFB4224
	.uleb128 0
	.uleb128 .LEHB3-.LFB4224
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L132-.LFB4224
	.uleb128 0
	.uleb128 .LEHB4-.LFB4224
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L133-.LFB4224
	.uleb128 0
	.uleb128 .LEHB5-.LFB4224
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L134-.LFB4224
	.uleb128 0
	.uleb128 .LEHB6-.LFB4224
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L133-.LFB4224
	.uleb128 0
	.uleb128 .LEHB7-.LFB4224
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L132-.LFB4224
	.uleb128 0
	.uleb128 .LEHB8-.LFB4224
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L134-.LFB4224
	.uleb128 0
	.uleb128 .LEHB9-.LFB4224
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L133-.LFB4224
	.uleb128 0
	.uleb128 .LEHB10-.LFB4224
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB4224
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L130-.LFB4224
	.uleb128 0
	.uleb128 .LEHB12-.LFB4224
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB4224
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L133-.LFB4224
	.uleb128 0
	.uleb128 .LEHB14-.LFB4224
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB4224
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L131-.LFB4224
	.uleb128 0
	.uleb128 .LEHB16-.LFB4224
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L132-.LFB4224
	.uleb128 0
.LLSDACSE4224:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4224
	.type	main.cold, @function
main.cold:
.LFSB4224:
.L120:
	.cfi_def_cfa_offset 3808
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
.L119:
	movq	32(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	48(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	112(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	80(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L168
.L121:
	movq	%rbx, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L116:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	3736(%rsp), %rax
	subq	%fs:40, %rax
	je	.L121
.L168:
	call	__stack_chk_fail@PLT
.L118:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L119
	.cfi_endproc
.LFE4224:
	.section	.gcc_except_table
.LLSDAC4224:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4224-.LLSDACSBC4224
.LLSDACSBC4224:
	.uleb128 .LEHB17-.LCOLDB38
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSEC4224:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE38:
	.section	.text.startup
.LHOTE38:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.quad	-2147483648
	.quad	-2147483648
	.align 16
.LC2:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC3:
	.quad	1
	.quad	1
	.align 16
.LC4:
	.quad	-5403634167711393303
	.quad	-5403634167711393303
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC30:
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
