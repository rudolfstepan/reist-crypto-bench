	.file	"bench_barret_reist.cpp"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "=============================================\12\0"
	.align 8
.LC1:
	.ascii "Barret-REIST v2 Benchmark (Division-Free)\12\0"
.LC2:
	.ascii "Iterations per modulus: \0"
.LC3:
	.ascii "\12\12\0"
	.align 8
.LC4:
	.ascii "---------------------------------------------\12\0"
.LC5:
	.ascii "Modulus = \0"
.LC6:
	.ascii "\12\0"
.LC11:
	.ascii "Classic modulo           : \0"
.LC12:
	.ascii " s\12\0"
.LC13:
	.ascii "REIST v1 scalar          : \0"
.LC14:
	.ascii "Barret-REIST v2 scalar     : \0"
.LC15:
	.ascii "Barret-REIST v2 int32      : \0"
.LC16:
	.ascii "Speedups:\12\0"
	.align 8
.LC17:
	.ascii "  REIST v1 scalar vs Classic        : \0"
.LC18:
	.ascii "x\12\0"
	.align 8
.LC19:
	.ascii "  Barret-REIST scalar vs Classic      : \0"
	.align 8
.LC20:
	.ascii "  Barret-REIST int32 vs scalar        : \0"
.LC21:
	.ascii "\12Sink: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB10489:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	movaps	%xmm10, 192(%rsp)
	.seh_savexmm	%xmm10, 192
	movaps	%xmm11, 208(%rsp)
	.seh_savexmm	%xmm11, 208
	movaps	%xmm12, 224(%rsp)
	.seh_savexmm	%xmm12, 224
	movaps	%xmm13, 240(%rsp)
	.seh_savexmm	%xmm13, 240
	.seh_endprologue
	call	__main
	movl	$40, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	.refptr._ZSt4cout(%rip), %r12
	movl	$46, %r8d
	movq	$257, (%rax)
	movq	%rax, %rdi
	movq	$65537, 8(%rax)
	movq	$1000003, 16(%rax)
	movq	$10000019, 24(%rax)
	movq	%r12, %rcx
	movq	$1000000007, 32(%rax)
	movq	%rax, 104(%rsp)
	movq	(%r12), %rax
	movq	-24(%rax), %rdx
	addq	%r12, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC0(%rip), %rdx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC1(%rip), %rdx
	movl	$42, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC0(%rip), %rdx
	movl	$46, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC2(%rip), %rdx
	movl	$24, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$10000000, %edx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC3(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	40(%rdi), %rax
	movq	%rdi, 40(%rsp)
	movsd	.LC7(%rip), %xmm9
	movsd	.LC8(%rip), %xmm10
	movq	%rax, 96(%rsp)
	movsd	.LC9(%rip), %xmm11
	movsd	.LC10(%rip), %xmm8
	.p2align 4,,10
	.p2align 3
.L18:
	movq	40(%rsp), %rax
	movl	$46, %r8d
	movq	%r12, %rcx
	leaq	.LC4(%rip), %rdx
	movq	(%rax), %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC5(%rip), %rdx
	movl	$10, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC6(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC4(%rip), %rdx
	movl	$46, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1234567, %eax
	movq	%rbp, %r8
	movl	%ebp, %r13d
	pxor	%xmm1, %xmm1
	cqto
	sarq	%r8
	cvtsi2sdq	%rbp, %xmm1
	movapd	%xmm9, %xmm0
	idivq	%rbp
	movq	%rdx, %rdi
	movl	%ebp, %r15d
	movl	$891011, %eax
	divsd	%xmm1, %xmm0
	cqto
	movq	%rdi, %rsi
	movq	$0, 120(%rsp)
	idivq	%rbp
	subq	%rbp, %rsi
	movq	%rdx, %r9
	cmpq	%r8, %rdi
	cmovle	%rdi, %rsi
	movl	%edi, %eax
	subq	%rbp, %r9
	cmpq	%r8, %rdx
	movq	%rdx, %r11
	cmovle	%rdx, %r9
	cltd
	sarl	%r13d
	idivl	%ebp
	movl	%r11d, %eax
	mulsd	%xmm10, %xmm0
	movl	%edx, %ebx
	subl	%ebp, %ebx
	cmpl	%edx, %r13d
	cmovge	%edx, %ebx
	cltd
	idivl	%ebp
	movl	%edx, %r14d
	subl	%ebp, %r14d
	cmpl	%r13d, %edx
	cmovle	%edx, %r14d
	comisd	%xmm11, %xmm0
	jnb	.L6
	cvttsd2siq	%xmm0, %rcx
.L7:
	movapd	%xmm9, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	movq	%r11, 88(%rsp)
	divsd	%xmm1, %xmm0
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movq	%rcx, 64(%rsp)
	mulsd	%xmm10, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, 48(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	64(%rsp), %rcx
	movl	$10000000, %r10d
	movq	%rdi, %rdx
	movq	72(%rsp), %r9
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %r8
	movq	88(%rsp), %r11
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	(%r11,%rdx), %rax
	cqto
	idivq	%rbp
	subq	$1, %r10
	jne	.L8
	movq	%rcx, 80(%rsp)
	pxor	%xmm7, %xmm7
	movq	%r9, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rdx, 120(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	56(%rsp), %rax
	cvtsi2sdq	%rax, %xmm7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	64(%rsp), %r8
	divsd	%xmm8, %xmm7
	movq	%rax, %rdi
	movq	80(%rsp), %rcx
	movq	%rsi, %rax
	movl	$10000000, %r10d
	movq	72(%rsp), %r9
	movq	%r8, %rdx
	negq	%rdx
	jmp	.L11
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L32:
	subq	%rbp, %rax
	subq	$1, %r10
	je	.L31
.L11:
	addq	%r9, %rax
	cmpq	%r8, %rax
	jg	.L32
	leaq	(%rax,%rbp), %r11
	cmpq	%rax, %rdx
	cmovge	%r11, %rax
	subq	$1, %r10
	jne	.L11
.L31:
	movq	%rcx, 72(%rsp)
	pxor	%xmm13, %xmm13
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rax, 120(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm13
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	56(%rsp), %r8
	divsd	%xmm8, %xmm13
	movq	72(%rsp), %rcx
	movq	%rax, %rdi
	movl	$10000000, %r10d
	movq	64(%rsp), %r9
	movq	%r8, %r11
	negq	%r11
	jmp	.L14
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L34:
	subq	%rbp, %rsi
	subq	$1, %r10
	je	.L33
.L14:
	addq	%r9, %rsi
	movq	%rsi, %rax
	imulq	%rcx, %rax
	sarq	$32, %rax
	imulq	%rbp, %rax
	subq	%rax, %rsi
	cmpq	%r8, %rsi
	jg	.L34
	leaq	(%rsi,%rbp), %rax
	cmpq	%rsi, %r11
	cmovge	%rax, %rsi
	subq	$1, %r10
	jne	.L14
.L33:
	movq	%rsi, 120(%rsp)
	pxor	%xmm6, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm6
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	%r13d, %r9d
	movl	48(%rsp), %r8d
	divsd	%xmm8, %xmm6
	movq	%rax, %rsi
	movl	$10000000, %edx
	negl	%r9d
	jmp	.L17
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L36:
	subl	%r15d, %ebx
	subq	$1, %rdx
	je	.L35
.L17:
	addl	%r14d, %ebx
	movslq	%ebx, %rax
	imulq	%r8, %rax
	sarq	$32, %rax
	imull	%r15d, %eax
	subl	%eax, %ebx
	cmpl	%ebx, %r13d
	jl	.L36
	leal	(%rbx,%r15), %eax
	cmpl	%ebx, %r9d
	cmovge	%eax, %ebx
	subq	$1, %rdx
	jne	.L17
.L35:
	movslq	%ebx, %rbx
	pxor	%xmm12, %xmm12
	movq	%rbx, 120(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$27, %r8d
	movq	%r12, %rcx
	leaq	.LC11(%rip), %rdx
	subq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm12
	divsd	%xmm8, %xmm12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC13(%rip), %rdx
	movl	$27, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm13, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC14(%rip), %rdx
	movl	$29, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC15(%rip), %rdx
	movl	$29, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC12(%rip), %rdx
	movl	$3, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC16(%rip), %rdx
	movl	$10, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC17(%rip), %rdx
	movl	$38, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r12, %rcx
	divsd	%xmm13, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC19(%rip), %rdx
	movl	$40, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%r12, %rcx
	divsd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC20(%rip), %rdx
	movl	$40, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	divsd	%xmm12, %xmm6
	movq	%r12, %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC18(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC21(%rip), %rdx
	movl	$7, %r8d
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	120(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC3(%rip), %rdx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE1:
	addq	$8, 40(%rsp)
	movq	40(%rsp), %rax
	cmpq	%rax, 96(%rsp)
	jne	.L18
	movq	104(%rsp), %rcx
	movl	$40, %edx
	call	_ZdlPvy
	nop
	movaps	128(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	movaps	208(%rsp), %xmm11
	movaps	224(%rsp), %xmm12
	movaps	240(%rsp), %xmm13
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	subsd	%xmm11, %xmm0
	cvttsd2siq	%xmm0, %rcx
	btcq	$63, %rcx
	jmp	.L7
.L22:
	movq	104(%rsp), %rcx
	movq	%rax, %rbx
	movl	$40, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10489:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10489-.LLSDACSB10489
.LLSDACSB10489:
	.uleb128 .LEHB0-.LFB10489
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10489
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L22-.LFB10489
	.uleb128 0
	.uleb128 .LEHB2-.LFB10489
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE10489:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
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
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
