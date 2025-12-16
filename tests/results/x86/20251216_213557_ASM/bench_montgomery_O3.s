	.file	"bench_montgomery.cpp"
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
.LFB3919:
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
.LFE3919:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.p2align 4
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, @function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0:
.LFB3921:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L31
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
.L31:
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	.cfi_endproc
.LFE3921:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	.p2align 4
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0, @function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0:
.LFB3924:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L36
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	call	strlen@PLT
	movq	8(%rsp), %rsi
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L36:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	.cfi_endproc
.LFE3924:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	.p2align 4
	.globl	_Z14classic_modmulmmm
	.type	_Z14classic_modmulmmm, @function
_Z14classic_modmulmmm:
.LFB3103:
	.cfi_startproc
	movq	%rsi, %rcx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	xorl	%edi, %edi
	mulq	%rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rcx
	movq	%rax, %r8
	movq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%r8, %rdi
	movq	%rax, %rsi
	call	__umodti3@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3103:
	.size	_Z14classic_modmulmmm, .-_Z14classic_modmulmmm
	.p2align 4
	.globl	_Z14classic_modaddmmm
	.type	_Z14classic_modaddmmm, @function
_Z14classic_modaddmmm:
.LFB3104:
	.cfi_startproc
	movq	%rdx, %rcx
	leaq	(%rdi,%rsi), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE3104:
	.size	_Z14classic_modaddmmm, .-_Z14classic_modaddmmm
	.p2align 4
	.globl	_Z12reist_modaddlll
	.type	_Z12reist_modaddlll, @function
_Z12reist_modaddlll:
.LFB3105:
	.cfi_startproc
	movq	%rdx, %rax
	addq	%rsi, %rdi
	xorl	%ecx, %ecx
	shrq	$63, %rax
	movq	%rcx, %r8
	movq	%rdi, %rsi
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rdi, %rax
	cmovl	%rdx, %r8
	negq	%rax
	subq	%r8, %rsi
	cmpq	%rdi, %rax
	cmovl	%rcx, %rdx
	leaq	(%rdx,%rsi), %rax
	ret
	.cfi_endproc
.LFE3105:
	.size	_Z12reist_modaddlll, .-_Z12reist_modaddlll
	.p2align 4
	.globl	_Z12reist_modmullll
	.type	_Z12reist_modmullll, @function
_Z12reist_modmullll:
.LFB3106:
	.cfi_startproc
	movq	%rdi, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	imulq	%rsi
	movq	%rbx, %r9
	sarq	$63, %r9
	movq	%r9, %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	call	__modti3@PLT
	movq	%rbx, %rdx
	shrq	$63, %rdx
	addq	%rbx, %rdx
	sarq	%rdx
	cmpq	%rdx, %rax
	jle	.L42
	subq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	negq	%rdx
	addq	%rax, %rbx
	cmpq	%rax, %rdx
	cmovge	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3106:
	.size	_Z12reist_modmullll, .-_Z12reist_modmullll
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
.LFB3437:
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
	je	.L58
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	cmpq	$15, %rax
	ja	.L59
	cmpq	$1, %rax
	jne	.L50
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L51:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L57
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
.L50:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L51
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L59:
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
.L49:
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	.L51
.L58:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L47
.L57:
	call	__stack_chk_fail@PLT
.L47:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3437:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"stoll"
.LC2:
	.string	"N must be > 0\n"
.LC3:
	.string	"stoull"
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
	.string	"REIST vs Montgomery Arithmetic Benchmark\n"
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
	.string	"Total operations per modulus N = "
	.section	.rodata.str1.1
.LC25:
	.string	"\n\n"
.LC26:
	.string	"Testing scenarios:\n"
.LC27:
	.string	"  1. Modular Addition\n"
.LC28:
	.string	"  2. Modular Multiplication\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"  3. Montgomery Multiplication (with conversion overhead)\n\n"
	.section	.rodata.str1.1
.LC30:
	.string	"Running benchmarks...\n\n"
.LC31:
	.string	"Modulus = "
.LC32:
	.string	"\n--- Modular Addition ---\n"
.LC34:
	.string	"  Classic     : "
.LC35:
	.string	" s\n"
.LC36:
	.string	"  REIST       : "
.LC37:
	.string	"  Montgomery  : "
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"  REIST speedup vs Classic    : "
	.section	.rodata.str1.1
.LC39:
	.string	"x\n"
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"  Montgomery speedup vs Classic: "
	.align 8
.LC41:
	.string	"  REIST speedup vs Montgomery : "
	.section	.rodata.str1.1
.LC42:
	.string	"  Sinks: "
.LC43:
	.string	" / "
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"\n--- Modular Multiplication ---\n"
	.align 8
.LC45:
	.string	"\n--- Combined REIST Add + Montgomery Mul ---\n"
	.section	.rodata.str1.1
.LC46:
	.string	"  Combined time : "
.LC47:
	.string	"  Sink: "
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"  Reference (Classic add + classic mul): "
	.align 8
.LC49:
	.string	"\n--- Montgomery Multiplication (with conversion) ---\n"
	.section	.rodata.str1.1
.LC50:
	.string	"  Montgomery (full cycle): "
.LC51:
	.string	"  Overhead: "
.LC54:
	.string	"% vs Classic\n"
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"  Note: Montgomery is efficient when staying in Montgomery form\n"
	.align 8
.LC56:
	.string	"        for multiple operations (e.g., modular exponentiation)\n"
	.align 8
.LC57:
	.string	"  Note: REIST produces centered residues [-N/2, N/2),\n"
	.align 8
.LC58:
	.string	"        Montgomery operates in [0, N) domain.\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB60:
	.section	.text.startup,"ax",@progbits
.LHOTB60:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3108:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3108
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
	movq	$10000000, 112(%rsp)
	cmpl	$1, %edi
	jg	.L210
.L61:
	movl	$48, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rdi
	leaq	C.0.0(%rip), %rsi
	movl	$12, %ecx
	movq	%rax, 176(%rsp)
	rep movsl
	addq	$48, %rax
	movq	$48, 184(%rsp)
	leaq	432(%rsp), %rbp
	movq	%rax, 144(%rsp)
.L82:
	leaq	256(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	$0, 216(%rsp)
	movq	%rax, 240(%rsp)
	leaq	288(%rsp), %rax
	leaq	224(%rsp), %r12
	movq	%rax, 272(%rsp)
	leaq	320(%rsp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, 304(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	336(%rsp), %rax
	movq	%r12, 208(%rsp)
	movb	$0, 224(%rsp)
	movq	$0, 248(%rsp)
	movb	$0, 256(%rsp)
	movq	$0, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	$0, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	%rax, 152(%rsp)
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE1:
	leaq	384(%rsp), %rax
	movb	$0, 384(%rsp)
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r13
	movq	%rax, (%rsp)
	movq	%rax, 368(%rsp)
	movq	$0, 376(%rsp)
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L217:
	movsbl	67(%r14), %edx
.L107:
	leaq	368(%rsp), %rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L211
	xorl	%edx, %edx
	movl	$10, %ecx
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	je	.L87
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	376(%rsp), %r14
	addq	$2, %rax
	cmpq	%rax, %r14
	jb	.L200
	movq	368(%rsp), %rcx
	leaq	416(%rsp), %r15
	subq	%rax, %r14
	leaq	400(%rsp), %rdi
	movq	%r15, 400(%rsp)
	movq	%r14, 200(%rsp)
	addq	%rax, %rcx
	cmpq	$15, %r14
	ja	.L212
	cmpq	$1, %r14
	je	.L213
	testq	%r14, %r14
	jne	.L214
.L94:
	movq	%r15, %rax
.L93:
	movq	%r14, 408(%rsp)
	movb	$0, (%rax,%r14)
	movq	208(%rsp), %rax
	cmpq	%r12, %rax
	je	.L215
	movq	400(%rsp), %rdx
	cmpq	%r15, %rdx
	je	.L140
	movq	224(%rsp), %rcx
	movq	%rdx, 208(%rsp)
	movq	408(%rsp), %xmm0
	movhps	416(%rsp), %xmm0
	movups	%xmm0, 216(%rsp)
	testq	%rax, %rax
	je	.L101
	movq	%rax, 400(%rsp)
	movq	%rcx, 416(%rsp)
.L100:
	movb	$0, (%rax)
	movq	400(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L87
	movq	416(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L87:
	xorl	%edx, %edx
	movl	$7, %ecx
	leaq	.LC9(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	cmpq	$-1, %rax
	jne	.L216
.L103:
	movq	432(%rsp), %rax
	movq	-24(%rax), %rax
	movq	672(%rsp,%rax), %r14
	testq	%r14, %r14
	je	.L201
	cmpb	$0, 56(%r14)
	jne	.L217
	movq	%r14, %rdi
	leaq	368(%rsp), %rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%r13, %rax
	je	.L107
	movl	$10, %esi
	movq	%r14, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L213:
	movzbl	(%rcx), %eax
	movb	%al, 416(%rsp)
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L212:
	leaq	200(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rcx, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	movq	%rax, 400(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rcx
	movq	200(%rsp), %rax
	movq	%rax, 416(%rsp)
.L91:
	movq	%r14, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	200(%rsp), %r14
	movq	400(%rsp), %rax
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L215:
	movq	400(%rsp), %rdx
	cmpq	%r15, %rdx
	je	.L140
	movq	%rdx, 208(%rsp)
	movq	408(%rsp), %xmm0
	movhps	416(%rsp), %xmm0
	movups	%xmm0, 216(%rsp)
.L101:
	movq	%r15, 400(%rsp)
	leaq	416(%rsp), %r15
	movq	%r15, %rax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L140:
	movq	408(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L97
	cmpq	$1, %rdx
	je	.L218
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	rep movsb
.L99:
	movq	408(%rsp), %rdx
	movq	208(%rsp), %rax
.L97:
	movq	%rdx, 216(%rsp)
	movb	$0, (%rax,%rdx)
	movq	400(%rsp), %rax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L214:
	movq	%r15, %rdi
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L211:
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%rax, 160(%rsp)
	leaq	304(%rsp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, 168(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 152(%rsp)
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	movq	(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	%rax, 368(%rsp)
.LEHB4:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE4:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L219
	movq	%rbx, %rdi
	leaq	1088(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	je	.L144
	leaq	272(%rsp), %rax
	movq	%rax, 160(%rsp)
.L209:
	leaq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
.L111:
	leaq	336(%rsp), %rax
	leaq	.LC12(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movq	%rax, 152(%rsp)
.LEHB5:
	call	popen@PLT
	movq	%rax, %rbx
	leaq	336(%rsp), %rax
	movq	%rax, 152(%rsp)
	testq	%rbx, %rbx
	je	.L112
	movq	%rbx, %rdx
	movl	$128, %esi
	leaq	960(%rsp), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L220
	leaq	336(%rsp), %rax
	leaq	200(%rsp), %rdx
	movq	%rbp, %rdi
	leaq	960(%rsp), %rsi
	movq	%rax, 152(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	leaq	336(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 152(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	.L114
	movq	336(%rsp), %rdx
	leaq	-1(%rax), %rsi
	cmpb	$10, -1(%rdx,%rax)
	je	.L221
.L114:
	movq	%rbx, %rdi
	call	pclose@PLT
.L112:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC15(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC14(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC16(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movl	$12, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	312(%rsp), %rdx
	movq	304(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$6, %edx
	leaq	.LC19(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	344(%rsp), %rdx
	movq	336(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$13, %edx
	leaq	.LC20(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$11, %edx
	leaq	.LC21(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	248(%rsp), %rdx
	movq	240(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	movl	$10, %edx
	leaq	.LC22(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	280(%rsp), %rdx
	movq	272(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC23(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movl	$33, %edx
	leaq	.LC24(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	112(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
	leaq	.LC26(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC27(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC28(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC29(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	leaq	.LC30(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.constprop.0.isra.0
	movq	176(%rsp), %rax
	movq	%rax, 80(%rsp)
	cmpq	144(%rsp), %rax
	je	.L135
	.p2align 4
	.p2align 3
.L134:
	movq	80(%rsp), %rax
	movl	$41, %edx
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	(%rax), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %edx
	leaq	.LC31(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$41, %edx
	leaq	.LC14(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2, %eax
	movq	%rbx, %rsi
	xorl	%r10d, %r10d
	movq	%rbx, (%rsp)
	movq	%rax, %rcx
	movq	%rax, %rdx
	movq	%r10, 8(%rsp)
	subq	%rbx, %rcx
	imulq	%rcx, %rsi
	subq	%rsi, %rdx
	movq	%rbx, %rsi
	imulq	%rcx, %rdx
	movq	%rax, %rcx
	imulq	%rdx, %rsi
	subq	%rsi, %rcx
	movq	%rbx, %rsi
	imulq	%rdx, %rcx
	movq	%rax, %rdx
	imulq	%rcx, %rsi
	subq	%rsi, %rdx
	movq	%rbx, %rsi
	imulq	%rcx, %rdx
	movq	%rax, %rcx
	imulq	%rdx, %rsi
	subq	%rsi, %rcx
	imulq	%rcx, %rdx
	movq	%rbx, %rcx
	imulq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%r10, %rcx
	imulq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, 48(%rsp)
	movq	$-1, %rax
	divq	%rbx
	leaq	1(%rdx), %rax
	mulq	%rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	call	__umodti3@PLT
	movl	$26, %edx
	leaq	.LC32(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, 56(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12345, %eax
	xorl	%edx, %edx
	divq	%rbx
	movl	$67890, %eax
	movq	%rdx, 104(%rsp)
	movq	%rdx, %r15
	movq	%rdx, 88(%rsp)
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	112(%rsp), %rdi
	movq	24(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rax, %rbp
	movq	%r15, %rax
	.p2align 5
	.p2align 4
	.p2align 3
.L117:
	addq	%r8, %rax
	xorl	%edx, %edx
	movq	%rcx, %rsi
	divq	%rbx
	leaq	1(%rcx), %rcx
	movq	%rdx, %rax
	cmpq	%rcx, %rdi
	jne	.L117
	movq	%rdx, 128(%rsp)
	movq	%rsi, 40(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	104(%rsp), %r13
	pxor	%xmm0, %xmm0
	subq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	%r13, 120(%rsp)
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 72(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	112(%rsp), %r14
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rbp
	movq	%rbx, %rax
	movq	24(%rsp), %r9
	shrq	$63, %rax
	addq	%rbx, %rax
	sarq	%rax
	movq	%rax, %r8
	movq	%rax, 16(%rsp)
	movq	%rax, %r10
	negq	%r8
	movq	%r8, 32(%rsp)
	.p2align 6
	.p2align 4
	.p2align 3
.L118:
	leaq	(%r9,%r13), %rax
	movq	%rcx, %rdi
	cmpq	%rax, %r10
	movq	%rax, %rsi
	cmovl	%rbx, %rdi
	subq	%rdi, %rsi
	cmpq	%rax, %r8
	movq	%rcx, %rax
	cmovge	%rbx, %rax
	addq	$1, %rdx
	leaq	(%rsi,%rax), %r13
	cmpq	%r14, %rdx
	jne	.L118
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movq	8(%rsp), %rcx
	subq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	56(%rsp), %rax
	mulq	104(%rsp)
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 96(%rsp)
	movq	%rdx, %rsi
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	call	__umodti3@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %r15
	movq	56(%rsp), %rax
	mulq	24(%rsp)
	movq	%r15, %r12
	movq	%rdx, %rsi
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	call	__umodti3@PLT
	movq	%rax, 136(%rsp)
	movq	%rax, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	40(%rsp), %rsi
	movq	%rax, 64(%rsp)
	xorl	%eax, %eax
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L148:
	addq	$1, %rax
.L123:
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	addq	%rbp, %rdx
	setc	%cl
	movq	%rdx, %r12
	cmpq	%rbx, %rdx
	jnb	.L159
	testq	%rcx, %rcx
	je	.L121
.L159:
	subq	%rbx, %rdx
	movq	%rdx, %r12
.L121:
	cmpq	%rax, %rsi
	jne	.L148
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	64(%rsp), %rax
	movl	$16, %edx
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 64(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	72(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	96(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	leaq	.LC37(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	64(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	72(%rsp), %xmm4
	leaq	_ZSt4cout(%rip), %rdi
	divsd	96(%rsp), %xmm4
	movapd	%xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$33, %edx
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	72(%rsp), %xmm4
	leaq	_ZSt4cout(%rip), %rdi
	divsd	64(%rsp), %xmm4
	movapd	%xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC41(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	64(%rsp), %xmm0
	divsd	96(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC42(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	128(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	movq	%rax, 64(%rsp)
	leaq	.LC43(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	64(%rsp), %rdi
	movq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC44(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rbp, 96(%rsp)
	movq	88(%rsp), %rdx
	movq	24(%rsp), %rbp
	movq	(%rsp), %r12
	movq	%rbx, 64(%rsp)
	xorl	%ebx, %ebx
	movq	%rax, 128(%rsp)
	movq	8(%rsp), %r13
	.p2align 4
	.p2align 3
.L124:
	movq	%rbp, %rax
	movq	%r13, %rcx
	addq	$1, %rbx
	mulq	%rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%r12, %rdx
	call	__umodti3@PLT
	movq	%rax, %rdx
	cmpq	%r14, %rbx
	jne	.L124
	movq	64(%rsp), %rbx
	movq	96(%rsp), %rbp
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbx, %r14
	subq	%r12, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 64(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rbx, %rcx
	movq	40(%rsp), %r13
	movq	%rbp, 128(%rsp)
	sarq	$63, %rcx
	movq	%rax, 96(%rsp)
	movq	24(%rsp), %r12
	xorl	%ebp, %ebp
	movq	104(%rsp), %rax
	movq	%r15, 104(%rsp)
	movq	%rcx, %r15
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L223:
	subq	%rbx, %rax
	cmpq	%rbp, %r13
	je	.L222
.L149:
	addq	$1, %rbp
.L127:
	imulq	%r12
	movq	%r15, %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	call	__modti3@PLT
	cmpq	%rax, 16(%rsp)
	jl	.L223
	leaq	(%rax,%rbx), %rdx
	cmpq	%rax, 32(%rsp)
	cmovge	%rdx, %rax
	cmpq	%rbp, %r13
	jne	.L149
.L222:
	movq	104(%rsp), %r15
	movq	128(%rsp), %rbp
	movq	%rax, %r14
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	96(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 104(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	(%rsp), %r8
	movq	48(%rsp), %r10
	xorl	%ecx, %ecx
	movq	40(%rsp), %r11
	movq	136(%rsp), %r13
	movq	%rax, %r12
	jmp	.L129
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L150:
	addq	$1, %rcx
.L129:
	movq	%r13, %rax
	mulq	%r15
	movq	%rax, %rsi
	movq	%r10, %rax
	movq	%rdx, %rdi
	imulq	%rsi, %rax
	mulq	%r8
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r15
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	cmovnb	%rax, %r15
	cmpq	%rcx, %r11
	jne	.L150
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	$16, %edx
	subq	%r12, %rax
	leaq	.LC34(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 96(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	64(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	leaq	.LC36(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	104(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	leaq	.LC37(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	96(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC38(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	64(%rsp), %xmm3
	leaq	_ZSt4cout(%rip), %rdi
	divsd	104(%rsp), %xmm3
	movapd	%xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$33, %edx
	leaq	.LC40(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	64(%rsp), %xmm3
	leaq	_ZSt4cout(%rip), %rdi
	divsd	96(%rsp), %xmm3
	movapd	%xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %edx
	leaq	.LC41(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	96(%rsp), %xmm0
	divsd	104(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC42(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	88(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$45, %edx
	leaq	.LC45(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%r12d, %r12d
	movq	(%rsp), %r14
	xorl	%r11d, %r11d
	movq	8(%rsp), %r15
	movq	120(%rsp), %r13
	movq	%rax, 88(%rsp)
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L151:
	addq	$1, %r11
.L132:
	movq	24(%rsp), %rax
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r11, (%rsp)
	leaq	(%rax,%r13), %r8
	cmpq	%r8, 16(%rsp)
	cmovl	%rbx, %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	cmpq	%r8, 32(%rsp)
	movq	%r12, %r8
	cmovge	%rbx, %r8
	leaq	(%r8,%rax), %r13
	testq	%r13, %r13
	leaq	0(%r13,%rbx), %rax
	cmovns	%r13, %rax
	movq	%rax, %rdx
	movq	56(%rsp), %rax
	mulq	%rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	call	__umodti3@PLT
	movq	(%rsp), %r11
	mulq	%rbp
	movq	%rax, %rsi
	movq	48(%rsp), %rax
	movq	%rdx, %rdi
	imulq	%rsi, %rax
	mulq	%r14
	addq	%rax, %rsi
	adcq	%rdx, %rdi
	movq	%rdi, %rsi
	xorl	%edi, %edi
	cmpq	%rbx, %rsi
	movq	%rsi, %rbp
	jb	.L131
	subq	%rbx, %rbp
	xorl	%edi, %edi
	movq	%rbp, %rsi
.L131:
	cmpq	%r11, 40(%rsp)
	jne	.L151
	imulq	48(%rsp), %rbp
	movq	88(%rsp), %r13
	movq	%rbp, %rax
	mulq	%rbx
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rdx, %rbp
	subq	%rbx, %rax
	cmpq	%rbx, %rdx
	cmovnb	%rax, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	$18, %edx
	subq	%r13, %rax
	leaq	.LC46(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$8, %edx
	leaq	.LC47(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$41, %edx
	leaq	.LC48(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	72(%rsp), %xmm0
	addsd	64(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$53, %edx
	leaq	.LC49(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	$27, %edx
	leaq	.LC50(%rip), %rsi
	subq	%rbx, %rax
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC33(%rip), %xmm0
	movq	%xmm0, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$12, %edx
	leaq	.LC51(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %xmm0
	divsd	64(%rsp), %xmm0
	subsd	.LC52(%rip), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	mulsd	.LC53(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$64, %edx
	leaq	.LC55(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$63, %edx
	leaq	.LC56(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$54, %edx
	leaq	.LC57(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$46, %edx
	leaq	.LC58(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	leaq	.LC18(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE5:
	addq	$8, 80(%rsp)
	movq	80(%rsp), %rax
	cmpq	%rax, 144(%rsp)
	jne	.L134
.L135:
	movq	152(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	168(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	240(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	208(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	184(%rsp), %rsi
	movq	176(%rsp), %rdi
	call	_ZdlPvm@PLT
	xorl	%eax, %eax
.L60:
	movq	1352(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L224
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
	.p2align 4,,10
	.p2align 3
.L216:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	400(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB6:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE6:
	leaq	240(%rsp), %rdi
	leaq	400(%rsp), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	400(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L103
.L219:
	movl	$8, %ecx
	xorl	%edx, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	leaq	272(%rsp), %rcx
	addq	$1, %rax
	movq	%rcx, 160(%rsp)
	je	.L110
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	$-1, %rcx
	movq	%rbx, %rsi
	leaq	400(%rsp), %rdi
	leaq	2(%rax), %rdx
.LEHB7:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE7:
	leaq	272(%rsp), %rax
	leaq	400(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 160(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	leaq	400(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L110:
	movq	%rbx, %rdi
	leaq	1088(%rsp), %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$256, %esi
	movq	%rbx, %rdi
	call	gethostname@PLT
	testl	%eax, %eax
	jne	.L209
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	312(%rsp), %rdx
	movq	%rax, %r8
.L143:
	leaq	304(%rsp), %rdi
	leaq	336(%rsp), %rax
	movq	%rbx, %rcx
	xorl	%esi, %esi
	movq	%rdi, 168(%rsp)
	movq	%rax, 152(%rsp)
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE8:
	jmp	.L111
.L210:
	movq	%rsi, %r15
	leaq	432(%rsp), %rbp
	movq	8(%rsi), %rsi
	movl	%edi, %r12d
	leaq	199(%rsp), %rdx
	movq	%rbp, %rdi
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE9:
	movq	432(%rsp), %r14
	call	__errno_location@PLT
	xorl	%ecx, %ecx
	movl	$10, %edx
	movq	%rax, %rbx
	movl	(%rax), %eax
	movq	%r14, %rdi
	movl	%ecx, (%rbx)
	movl	%eax, (%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 16(%rsp)
	call	__isoc23_strtoll@PLT
	movq	%rax, 112(%rsp)
	cmpq	200(%rsp), %r14
	je	.L196
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L197
	testl	%eax, %eax
	jne	.L66
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
.L66:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	cmpq	$0, 112(%rsp)
	jle	.L225
	cmpl	$2, %r12d
	je	.L61
	movq	16(%r15), %rsi
	leaq	199(%rsp), %rdx
	movq	%rbp, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	xorl	%edx, %edx
	movq	432(%rsp), %r14
	movl	(%rbx), %r13d
	movl	%edx, (%rbx)
	movq	16(%rsp), %rsi
	movl	$10, %edx
	movq	%r14, %rdi
	call	__isoc23_strtoull@PLT
	movq	%rax, %r12
	cmpq	200(%rsp), %r14
	je	.L198
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L199
	testl	%eax, %eax
	jne	.L77
	movl	%r13d, (%rbx)
.L77:
	movl	$8, %edi
.LEHB11:
	call	_Znwm@PLT
.LEHE11:
	movq	%r12, (%rax)
	movq	%rbp, %rdi
	movq	%rax, 176(%rsp)
	addq	$8, %rax
	movq	%rax, 144(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	$8, 184(%rsp)
	jmp	.L82
.L218:
	movzbl	416(%rsp), %edx
	movb	%dl, (%rax)
	jmp	.L99
.L220:
	leaq	336(%rsp), %rax
	movq	%rax, 152(%rsp)
	jmp	.L114
.L144:
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	312(%rsp), %rdx
	movq	%rax, %r8
	leaq	272(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.L143
.L221:
	movq	152(%rsp), %rdi
	movl	$1, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
	jmp	.L114
.L225:
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
.LEHB12:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.isra.0
.LEHE12:
	movl	$1, %eax
	jmp	.L60
.L224:
	call	__stack_chk_fail@PLT
.L152:
	movq	%rax, %rbx
	jmp	.L81
.L154:
	movq	%rax, %rbx
	jmp	.L137
.L158:
	movq	%rax, %rbx
	jmp	.L85
.L194:
	jmp	.L195
.L155:
	jmp	.L138
	.section	.gcc_except_table,"a",@progbits
.LLSDA3108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3108-.LLSDACSB3108
.LLSDACSB3108:
	.uleb128 .LEHB0-.LFB3108
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L158-.LFB3108
	.uleb128 0
	.uleb128 .LEHB1-.LFB3108
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L154-.LFB3108
	.uleb128 0
	.uleb128 .LEHB2-.LFB3108
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L194-.LFB3108
	.uleb128 0
	.uleb128 .LEHB3-.LFB3108
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L154-.LFB3108
	.uleb128 0
	.uleb128 .LEHB4-.LFB3108
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L155-.LFB3108
	.uleb128 0
	.uleb128 .LEHB5-.LFB3108
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L154-.LFB3108
	.uleb128 0
	.uleb128 .LEHB6-.LFB3108
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L194-.LFB3108
	.uleb128 0
	.uleb128 .LEHB7-.LFB3108
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L155-.LFB3108
	.uleb128 0
	.uleb128 .LEHB8-.LFB3108
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L154-.LFB3108
	.uleb128 0
	.uleb128 .LEHB9-.LFB3108
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB3108
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L158-.LFB3108
	.uleb128 0
	.uleb128 .LEHB11-.LFB3108
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L152-.LFB3108
	.uleb128 0
	.uleb128 .LEHB12-.LFB3108
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE3108:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3108
	.type	main.cold, @function
main.cold:
.LFSB3108:
.L198:
	.cfi_def_cfa_offset 1424
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L226
	leaq	.LC3(%rip), %rdi
.LEHB13:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L199:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L227
	leaq	.LC3(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE13:
.L227:
	call	__stack_chk_fail@PLT
.L226:
	call	__stack_chk_fail@PLT
.L157:
	cmpl	$0, (%rbx)
	je	.L228
.L80:
	movq	%rax, %rbx
.L81:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L85:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L229
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L229:
	call	__stack_chk_fail@PLT
.L228:
	movl	%r13d, (%rbx)
	jmp	.L80
.L201:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L230
	leaq	368(%rsp), %rbx
.LEHB15:
	call	_ZSt16__throw_bad_castv@PLT
.L230:
	call	__stack_chk_fail@PLT
.L200:
	movq	1352(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L231
	movq	%rax, %rdx
	movq	%r14, %rcx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE15:
.L197:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L232
	leaq	.LC1(%rip), %rdi
.LEHB16:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L231:
	call	__stack_chk_fail@PLT
.L196:
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L233
	leaq	.LC1(%rip), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE16:
.L153:
.L195:
	movq	%rbx, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 152(%rsp)
.L137:
	movq	152(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	168(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	160(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	240(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	208(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	144(%rsp), %rsi
	movq	176(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	jmp	.L85
.L233:
	call	__stack_chk_fail@PLT
.L232:
	call	__stack_chk_fail@PLT
.L156:
	movq	%rax, %r12
	cmpl	$0, (%rbx)
	jne	.L70
	movl	(%rsp), %eax
	movl	%eax, (%rbx)
.L70:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	1352(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L234
	movq	%r12, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L138:
	movq	%rbx, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	272(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 152(%rsp)
	jmp	.L137
.L234:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3108:
	.section	.gcc_except_table
.LLSDAC3108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3108-.LLSDACSBC3108
.LLSDACSBC3108:
	.uleb128 .LEHB13-.LCOLDB60
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L157-.LCOLDB60
	.uleb128 0
	.uleb128 .LEHB14-.LCOLDB60
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LCOLDB60
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L153-.LCOLDB60
	.uleb128 0
	.uleb128 .LEHB16-.LCOLDB60
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L156-.LCOLDB60
	.uleb128 0
	.uleb128 .LEHB17-.LCOLDB60
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSEC3108:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE60:
	.section	.text.startup
.LHOTE60:
	.section	.rodata
	.align 32
	.type	C.0.0, @object
	.size	C.0.0, 48
C.0.0:
	.quad	257
	.quad	65537
	.quad	1000003
	.quad	10000019
	.quad	1000000007
	.quad	1000000000039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC33:
	.long	0
	.long	1104006501
	.align 8
.LC52:
	.long	0
	.long	1072693248
	.align 8
.LC53:
	.long	0
	.long	1079574528
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.globl	__modti3
	.globl	__umodti3
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
