	.file	"bench_barret_reist.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"=============================================\n"
	.align 8
.LC1:
	.string	"Barret-REIST v2 Benchmark (Division-Free)\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Iterations per modulus: "
.LC3:
	.string	"\n\n"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"---------------------------------------------\n"
	.section	.rodata.str1.1
.LC5:
	.string	"Modulus = "
.LC6:
	.string	"\n"
.LC11:
	.string	"Classic modulo           : "
.LC12:
	.string	" s\n"
.LC13:
	.string	"REIST v1 scalar          : "
.LC14:
	.string	"Barret-REIST v2 scalar     : "
.LC15:
	.string	"Barret-REIST v2 int32      : "
.LC16:
	.string	"Speedups:\n"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"  REIST v1 scalar vs Classic        : "
	.section	.rodata.str1.1
.LC18:
	.string	"x\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"  Barret-REIST scalar vs Classic      : "
	.align 8
.LC20:
	.string	"  Barret-REIST int32 vs scalar        : "
	.section	.rodata.str1.1
.LC21:
	.string	"\nSink: "
#NO_APP
	.section	.text.unlikely,"ax",@progbits
.LCOLDB24:
	.section	.text.startup,"ax",@progbits
.LHOTB24:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10288:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10288
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$40, %edi
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqa	.LC22(%rip), %xmm0
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, 72(%rsp)
	movq	%rax, %rbx
	leaq	_ZSt4cout(%rip), %rdi
	movups	%xmm0, (%rax)
	movdqa	.LC23(%rip), %xmm0
	movq	$1000000007, 32(%rax)
	movups	%xmm0, 16(%rax)
	movq	_ZSt4cout(%rip), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	movl	$46, %edx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$42, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$46, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$24, %edx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	40(%rbx), %rax
	movq	%rbx, (%rsp)
	movq	%rax, 64(%rsp)
	.p2align 4
	.p2align 3
.L18:
	movq	(%rsp), %rax
	movl	$46, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	(%rax), %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %edx
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$46, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1234567, %eax
	movq	%r12, %rcx
	movl	%r12d, %r15d
	movl	%r12d, %r14d
	cqto
	sarq	%rcx
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm1, %xmm1
	idivq	%r12
	cvtsi2sdq	%r12, %xmm1
	movq	$0, 88(%rsp)
	divsd	%xmm1, %xmm0
	movl	$891011, %eax
	movq	%rdx, %rsi
	cqto
	idivq	%r12
	mulsd	.LC8(%rip), %xmm0
	movq	%rsi, %rbx
	movl	%esi, %eax
	subq	%r12, %rbx
	cmpq	%rcx, %rsi
	cmovle	%rsi, %rbx
	movq	%rdx, %r8
	movq	%rdx, %r11
	subq	%r12, %r8
	cmpq	%rcx, %rdx
	cmovle	%rdx, %r8
	cltd
	sarl	%r15d
	idivl	%r12d
	movl	%r11d, %eax
	movl	%edx, %ebp
	subl	%r12d, %ebp
	cmpl	%edx, %r15d
	cmovge	%edx, %ebp
	cltd
	idivl	%r12d
	movl	%edx, %r10d
	subl	%r12d, %r10d
	cmpl	%r15d, %edx
	cmovle	%edx, %r10d
	comisd	.LC9(%rip), %xmm0
	jnb	.L6
	cvttsd2siq	%xmm0, %r13
.L7:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm1, %xmm1
	movq	%r11, 56(%rsp)
	cvtsi2sdl	%r12d, %xmm1
	movq	%rcx, 40(%rsp)
	divsd	%xmm1, %xmm0
	movq	%r8, 32(%rsp)
	movl	%r10d, 16(%rsp)
	movq	%rsi, 48(%rsp)
	mulsd	.LC8(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	16(%rsp), %r10d
	movq	32(%rsp), %r8
	movl	$10000000, %edi
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	%rax, 8(%rsp)
	movq	56(%rsp), %r11
	.p2align 4
	.p2align 4
	.p2align 3
.L8:
	leaq	(%r11,%rdx), %rax
	cqto
	idivq	%r12
	subq	$1, %rdi
	jne	.L8
	movl	%r10d, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rdx, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	32(%rsp), %rcx
	movl	48(%rsp), %r10d
	movl	$10000000, %edx
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %r8
	movq	%rbx, %rax
	movq	%rcx, %rdi
	negq	%rdi
	jmp	.L11
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L33:
	subq	%r12, %rax
	subq	$1, %rdx
	je	.L32
.L11:
	addq	%r8, %rax
	cmpq	%rcx, %rax
	jg	.L33
	leaq	(%rax,%r12), %rsi
	cmpq	%rax, %rdi
	cmovge	%rsi, %rax
	subq	$1, %rdx
	jne	.L11
.L32:
	movl	%r10d, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	40(%rsp), %rcx
	movq	%r13, %rsi
	xorl	%edi, %edi
	movq	%rax, 8(%rsp)
	movl	56(%rsp), %r10d
	movl	$10000000, %r13d
	movq	%rcx, %r9
	movq	48(%rsp), %r8
	negq	%r9
	jmp	.L14
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L35:
	subq	%r12, %rbx
	subq	$1, %r13
	je	.L34
.L14:
	addq	%r8, %rbx
	movq	%rbx, %rax
	cqto
	imulq	%rdi, %rax
	movq	%rdx, %r11
	imulq	%rsi, %r11
	addq	%rax, %r11
	movq	%rbx, %rax
	mulq	%rsi
	addq	%rdx, %r11
	shrdq	$32, %r11, %rax
	imulq	%r12, %rax
	subq	%rax, %rbx
	cmpq	%rbx, %rcx
	jl	.L35
	leaq	(%rbx,%r12), %rax
	cmpq	%rbx, %r9
	cmovge	%rax, %rbx
	subq	$1, %r13
	jne	.L14
.L34:
	movl	%r10d, 40(%rsp)
	movq	%rbx, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	%r15d, %esi
	movl	24(%rsp), %ecx
	movl	40(%rsp), %r10d
	movq	%rax, %rbx
	movl	$10000000, %edx
	negl	%esi
	jmp	.L17
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L37:
	subl	%r14d, %ebp
	subq	$1, %rdx
	je	.L36
.L17:
	addl	%r10d, %ebp
	movslq	%ebp, %rax
	imulq	%rcx, %rax
	sarq	$32, %rax
	imull	%r14d, %eax
	subl	%eax, %ebp
	cmpl	%ebp, %r15d
	jl	.L37
	leal	0(%rbp,%r14), %eax
	cmpl	%ebp, %esi
	cmovge	%eax, %ebp
	subq	$1, %rdx
	jne	.L17
.L36:
	movslq	%ebp, %rbp
	movq	%rbp, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	$27, %edx
	leaq	.LC11(%rip), %rsi
	subq	%rbx, %rax
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$27, %edx
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$29, %edx
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$29, %edx
	leaq	.LC15(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %edx
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$38, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm2
	leaq	_ZSt4cout(%rip), %rdi
	divsd	32(%rsp), %xmm2
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$40, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm2
	leaq	_ZSt4cout(%rip), %rdi
	divsd	8(%rsp), %xmm2
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$40, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm3
	leaq	_ZSt4cout(%rip), %rdi
	divsd	24(%rsp), %xmm3
	movapd	%xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$7, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	88(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE1:
	addq	$8, (%rsp)
	movq	(%rsp), %rax
	cmpq	%rax, 64(%rsp)
	jne	.L18
	movq	72(%rsp), %rdi
	movl	$40, %esi
	call	_ZdlPvm@PLT
	addq	$104, %rsp
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
.L6:
	.cfi_restore_state
	subsd	.LC9(%rip), %xmm0
	cvttsd2siq	%xmm0, %r13
	btcq	$63, %r13
	jmp	.L7
.L22:
	movq	%rax, %rbx
	jmp	.L19
	.section	.gcc_except_table,"a",@progbits
.LLSDA10288:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10288-.LLSDACSB10288
.LLSDACSB10288:
	.uleb128 .LEHB0-.LFB10288
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10288
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L22-.LFB10288
	.uleb128 0
.LLSDACSE10288:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10288
	.type	main.cold, @function
main.cold:
.LFSB10288:
.L19:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	72(%rsp), %rdi
	movl	$40, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE10288:
	.section	.gcc_except_table
.LLSDAC10288:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10288-.LLSDACSBC10288
.LLSDACSBC10288:
	.uleb128 .LEHB2-.LCOLDB24
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC10288:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE24:
	.section	.text.startup
.LHOTE24:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	1106247680
	.align 8
.LC9:
	.long	0
	.long	1138753536
	.align 8
.LC10:
	.long	0
	.long	1104006501
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC22:
	.quad	257
	.quad	65537
	.align 16
.LC23:
	.quad	1000003
	.quad	10000019
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
