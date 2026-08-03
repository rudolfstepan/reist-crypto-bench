	.file	"bench_barret_reist.cpp"
	.text
	.p2align 4
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0:
.LFB15273:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rcx,%rax)
	movb	%dl, 56(%rsp)
	je	.L2
	leaq	56(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
.L4:
	addq	$40, %rsp
	ret
.L2:
	movsbl	56(%rsp), %edx
	call	_ZNSo3putEc
	jmp	.L4
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Preflight failed for \0"
.LC1:
	.ascii ": B=\0"
.LC2:
	.ascii ", value=\0"
.LC3:
	.ascii ", expected=\0"
.LC4:
	.ascii ", actual=\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0
_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0:
.LFB15275:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movq	%rcx, %rsi
	movq	%rdx, %r12
	movq	%rbx, %rcx
	movq	%r8, %rbp
	leaq	.LC0(%rip), %rdx
	movl	$21, %r8d
	movq	%r9, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	call	strlen
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %r8
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$4, %r8d
	movq	%rbx, %rcx
	leaq	.LC1(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%r12, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$8, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$11, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$9, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	128(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movb	$10, 47(%rsp)
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	cmpq	$0, 16(%rax,%rdx)
	je	.L7
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZNSo3putEc
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "REIST modulus B must be positive\0"
	.section	.text$_ZN5reist6divideExx,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN5reist6divideExx
	.def	_ZN5reist6divideExx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5reist6divideExx
_ZN5reist6divideExx:
.LFB1900:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %r10
	movq	%rdx, %rax
	jle	.L16
	cqto
	idivq	%r8
	testq	%rdx, %rdx
	leaq	(%rdx,%r8), %r9
	leaq	-1(%rax), %rcx
	cmovns	%rdx, %r9
	cmovs	%rcx, %rax
	movq	%r8, %rdx
	movq	%r8, %rcx
	andl	$1, %ecx
	sarq	%rdx
	addq	%rcx, %rdx
	movq	%r9, %rcx
	subq	%r8, %rcx
	cmpq	%rdx, %r9
	leaq	1(%rax), %r8
	cmovge	%r8, %rax
	cmovl	%r9, %rcx
	movq	%rax, (%r10)
	movq	%r10, %rax
	movq	%rcx, 8(%r10)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L16:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB0:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE0:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB1:
	call	__cxa_throw
.L15:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1900:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1900-.LLSDACSB1900
.LLSDACSB1900:
	.uleb128 .LEHB0-.LFB1900
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L15-.LFB1900
	.uleb128 0
	.uleb128 .LEHB1-.LFB1900
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1900:
	.section	.text$_ZN5reist6divideExx,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "basic_string: construction from null is not valid\0"
.LC7:
	.ascii "stoll\0"
	.align 8
.LC8:
	.ascii "Operation count must be positive.\12\0"
	.align 8
.LC9:
	.ascii "AVX2 operation count must be a positive multiple of 8.\12\0"
	.align 8
.LC11:
	.ascii "Unsupported Barrett benchmark modulus: \0"
	.align 8
.LC14:
	.ascii "64-bit Barrett correction bound violated\0"
.LC15:
	.ascii "Barrett64\0"
.LC18:
	.ascii "vector::_M_realloc_append\0"
	.align 8
.LC19:
	.ascii "32-bit Barrett correction bound violated\0"
.LC20:
	.ascii "Barrett32\0"
.LC21:
	.ascii "Barrett32 AVX2\0"
	.align 8
.LC22:
	.ascii "REIST add_centered operands must be canonical representatives\0"
.LC23:
	.ascii "REIST addition\0"
	.align 8
.LC24:
	.ascii "====================================================\12\0"
	.align 8
.LC25:
	.ascii "Validated Barrett / centered-addition benchmark\12\0"
	.align 8
.LC26:
	.ascii "Preflight: passed for all scalar\0"
.LC27:
	.ascii " and AVX2\0"
	.align 8
.LC28:
	.ascii " kernels\12Total lane updates per modulus: \0"
	.align 8
.LC29:
	.ascii "\12SIMD rows are eight independent streams, not one serial accumulator.\12\12\0"
	.align 8
.LC30:
	.ascii "Barrett modulus must be at least 3\0"
	.align 8
.LC31:
	.ascii "32-bit Barrett modulus must be at least 3\0"
	.align 8
.LC32:
	.ascii "Postflight single-stream mismatch for B=\0"
.LC34:
	.ascii "Modulus = \0"
	.align 8
.LC35:
	.ascii "Postflight independent-stream mismatch for B=\0"
.LC36:
	.ascii "\12  One dependent stream:\0"
	.align 8
.LC37:
	.ascii "\12    Classic %                 : \0"
.LC38:
	.ascii " s\0"
	.align 8
.LC39:
	.ascii "\12    REIST add_centered        : \0"
	.align 8
.LC40:
	.ascii "\12    Barrett reciprocal, int64: \0"
	.align 8
.LC41:
	.ascii "\12    Barrett reciprocal, int32: \0"
	.align 8
.LC42:
	.ascii "\12    Speedup classic / REIST   : \0"
.LC43:
	.ascii "x\12\0"
.LC44:
	.ascii "  Eight independent streams (\0"
.LC45:
	.ascii " updates per lane):\0"
	.align 8
.LC46:
	.ascii "\12    REIST scalar 8-stream     : \0"
	.align 8
.LC47:
	.ascii "\12    REIST AVX2 8-stream       : \0"
	.align 8
.LC48:
	.ascii "\12    Barrett scalar 8-stream   : \0"
	.align 8
.LC49:
	.ascii "\12    Barrett AVX2 8-stream     : \0"
	.align 8
.LC50:
	.ascii "\12    REIST SIMD speedup        : \0"
.LC51:
	.ascii "x\0"
	.align 8
.LC52:
	.ascii "\12    Barrett SIMD speedup      : \0"
.LC53:
	.ascii "\12\0"
.LC54:
	.ascii "Sink: \0"
.LC55:
	.ascii "Invalid operation count: \0"
	.align 8
.LC56:
	.ascii "Barrett preflight raised an exception: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB12847:
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
	subq	$1160, %rsp
	.seh_stackalloc	1160
	vmovups	%xmm6, 1024(%rsp)
	.seh_savexmm	%xmm6, 1024
	vmovups	%xmm7, 1040(%rsp)
	.seh_savexmm	%xmm7, 1040
	vmovups	%xmm8, 1056(%rsp)
	.seh_savexmm	%xmm8, 1056
	vmovups	%xmm9, 1072(%rsp)
	.seh_savexmm	%xmm9, 1072
	vmovups	%xmm10, 1088(%rsp)
	.seh_savexmm	%xmm10, 1088
	vmovups	%xmm11, 1104(%rsp)
	.seh_savexmm	%xmm11, 1104
	vmovups	%xmm12, 1120(%rsp)
	.seh_savexmm	%xmm12, 1120
	vmovups	%xmm13, 1136(%rsp)
	.seh_savexmm	%xmm13, 1136
	.seh_endprologue
	leaq	943(%rsp), %rax
	movl	%ecx, %ebx
	movq	%rdx, %rsi
	andq	$-32, %rax
	movq	%rax, 408(%rsp)
	call	__main
	cmpl	$1, %ebx
	movq	$10000000, 488(%rsp)
	jg	.L422
.L18:
	movl	$40, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	vmovdqu	.LC10(%rip), %ymm0
	vmovdqu	.LC12(%rip), %xmm7
	leaq	40(%rax), %rdi
	movq	%rax, 632(%rsp)
	vmovdqu	.LC13(%rip), %xmm8
	movq	$1000000007, 32(%rax)
	vmovq	.LC16(%rip), %xmm9
	movq	%rax, 496(%rsp)
	vmovq	.LC17(%rip), %xmm10
	movq	%rdi, 504(%rsp)
	movq	%rax, 128(%rsp)
	vmovdqu	%ymm0, (%rax)
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L36:
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 160(%rsp)
	subq	$3, %rax
	cmpq	$2147483644, %rax
	ja	.L423
	movq	160(%rsp), %r15
	leaq	656(%rsp), %rsi
	xorl	%edi, %edi
	movl	$1, %ebp
	leaq	672(%rsp), %rcx
	movq	%rsi, 56(%rsp)
	leaq	784(%rsp), %r12
	movq	%r15, %rax
	movq	%r15, 192(%rsp)
	movq	%r15, %r13
	cqto
	movq	%rcx, 320(%rsp)
	andl	$1, %r13d
	movq	%rdx, 200(%rsp)
	movq	%rdx, 664(%rsp)
	movq	%rsi, %rdx
	movq	%r15, %rsi
	movq	%rdi, 672(%rsp)
	movq	%rsi, %r14
	movq	%r15, 656(%rsp)
	movq	%rbp, 680(%rsp)
	call	__udivti3
	movq	%r15, %rax
	movq	%r15, 880(%rsp)
	movq	192(%rsp), %rsi
	shrq	$63, %rax
	vmovq	%xmm0, %rbx
	movq	$0, 848(%rsp)
	addq	%r15, %rax
	movq	%rbx, 64(%rsp)
	movq	$-1, 840(%rsp)
	sarq	%rax
	movq	$1, 856(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rax
	vmovdqu	%xmm7, 784(%rsp)
	negq	%rax
	negq	%rdi
	leaq	(%rax,%rax), %rcx
	vmovq	%rax, %xmm5
	movq	%r15, %rax
	movq	%rdi, 256(%rsp)
	vmovq	%rcx, %xmm0
	notq	%rax
	movq	%rdi, %rcx
	movq	%rdi, 832(%rsp)
	vpinsrq	$1, %rax, %xmm0, %xmm0
	subq	%rcx, %r13
	movl	$1, %eax
	vmovdqu	%xmm8, 888(%rsp)
	subq	%rcx, %rax
	leaq	-1(%rdi), %rdx
	negq	%rdi
	movq	%r13, 96(%rsp)
	movq	%rax, 872(%rsp)
	movq	%r13, %rax
	vpinsrq	$1, %rdx, %xmm5, %xmm1
	leaq	904(%rsp), %r15
	sarq	$63, %rax
	movq	%rdi, 864(%rsp)
	vinserti128	$0x1, %xmm1, %ymm0, %ymm0
	movq	%rdi, 224(%rsp)
	movq	200(%rsp), %rdi
	movq	%rax, 104(%rsp)
	vmovdqu	%ymm0, 800(%rsp)
	vzeroupper
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L41:
	cmpq	%r13, %rax
	movq	%rdx, %rcx
	sbbq	104(%rsp), %rcx
	jl	.L44
	subq	%rsi, %rax
	movq	%rax, %r9
.L45:
	movq	64(%rsp), %rax
	movq	%rbp, %r11
	sarq	$63, %r11
	mulq	%rbp
	movq	%rbp, %rax
	mulx	%rsi, %rcx, %rbx
	movq	%r11, %rdx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jc	.L48
	subq	%rsi, %rax
	sbbq	%rdi, %rdx
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jnc	.L47
.L48:
	cqto
	idivq	%r14
.L52:
	movq	%rdx, %rax
	subq	%r14, %rax
	cmpq	%r13, %rdx
	cmovge	%rax, %rdx
.L51:
	cmpq	%rdx, %r9
	jne	.L424
	addq	$8, %r12
	cmpq	%r15, %r12
	je	.L425
.L57:
	movq	(%r12), %rbp
	movq	56(%rsp), %rdx
	movq	%rsi, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%rdi, 664(%rsp)
	movq	%rbp, %rax
	movq	%rbp, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L41
	movq	%rax, %rcx
	movq	%rdx, %rbx
	addq	%rsi, %rcx
	adcq	%rdi, %rbx
	movq	%rcx, %r9
	cmpq	%r13, %rcx
	movq	%rbx, %r11
	sbbq	104(%rsp), %r11
	cmovge	%rax, %r9
.L43:
	movq	64(%rsp), %rax
	movq	%rbp, %rdx
	xorl	%ebx, %ebx
	negq	%rdx
	movq	%rdx, %rcx
	mulq	%rdx
	movq	%rcx, %rax
	mulx	%rsi, %r10, %r11
	movq	%rbx, %rdx
	subq	%r10, %rax
	sbbq	%r11, %rdx
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jc	.L49
	subq	%rsi, %rax
	sbbq	%rdi, %rdx
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jnc	.L47
.L49:
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.L51
	negq	%rax
	cqto
	idivq	%r14
	testq	%rdx, %rdx
	je	.L51
	addq	%r14, %rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L44:
	testq	%rbp, %rbp
	movq	%rax, %r9
	js	.L43
	jmp	.L45
.L425:
	movq	160(%rsp), %rsi
	movq	224(%rsp), %rdi
	movl	$60, %ecx
	movabsq	$-3335678366873096957, %rbp
	movl	$-1, 748(%rsp)
	movl	%esi, %eax
	vmovd	%edi, %xmm4
	movl	%esi, 288(%rsp)
	xorq	%rsi, %rbp
	negl	%eax
	movl	%esi, 768(%rsp)
	vmovq	%xmm9, 720(%rsp)
	leal	(%rax,%rax), %ebx
	vmovd	%eax, %xmm6
	movl	%esi, %eax
	vmovq	%xmm10, 752(%rsp)
	vmovd	%ebx, %xmm0
	notl	%eax
	movl	256(%rsp), %ebx
	vpinsrd	$1, %eax, %xmm0, %xmm0
	movl	256(%rsp), %eax
	leal	-1(%rbx), %edx
	vpinsrd	$1, %edx, %xmm6, %xmm1
	movl	%eax, 744(%rsp)
	leal	1(%rdi), %eax
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, 728(%rsp)
	vpinsrd	$1, %eax, %xmm4, %xmm0
	movabsq	$9223372034707292158, %rax
	movq	%rax, 772(%rsp)
	vmovq	%xmm0, 760(%rsp)
.LEHB3:
	call	_Znwy
.LEHE3:
	vmovdqu	720(%rsp), %ymm0
	leaq	60(%rax), %rbx
	movq	%rax, %rdi
	movl	$4096, %r12d
	movq	%rbx, %rsi
	movl	$3037000493, %r15d
	movabsq	$2862933555777941757, %r14
	vmovdqu	%ymm0, (%rax)
	vmovdqu	748(%rsp), %ymm0
	vmovdqu	%ymm0, 28(%rax)
	vzeroupper
	jmp	.L63
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L427:
	movl	%ebp, (%rbx)
	addq	$4, %rbx
	subl	$1, %r12d
	je	.L426
.L63:
	imulq	%r14, %rbp
	addq	%r15, %rbp
	cmpq	%rbx, %rsi
	jne	.L427
	movabsq	$2305843009213693951, %rcx
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rax
	sarq	$2, %rax
	cmpq	%rcx, %rax
	je	.L428
	testq	%rax, %rax
	movl	$1, %r13d
	movl	%ebp, 64(%rsp)
	cmovne	%rax, %r13
	addq	%rax, %r13
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %r13
	cmova	%rax, %r13
	salq	$2, %r13
	movq	%r13, %rcx
.LEHB4:
	call	_Znwy
.LEHE4:
	movl	64(%rsp), %edx
	testq	%rbx, %rbx
	movq	%rax, %r9
	movl	%edx, (%rax,%rbx)
	je	.L61
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	%rax, %r9
.L61:
	testq	%rdi, %rdi
	leaq	4(%r9,%rbx), %rbx
	je	.L62
	subq	%rdi, %rsi
	movq	%rdi, %rcx
	movq	%r9, 64(%rsp)
	movq	%rsi, %rdx
	call	_ZdlPvy
	movq	64(%rsp), %r9
.L62:
	subl	$1, %r12d
	leaq	(%r9,%r13), %rsi
	movq	%r9, %rdi
	jne	.L63
	.p2align 4,,10
	.p2align 3
.L426:
	movq	160(%rsp), %rax
	cmpq	%rdi, %rbx
	leaq	-1(%rax), %r11
	je	.L64
	movq	160(%rsp), %r10
	xorl	%edx, %edx
	movq	%rdi, %r13
	movabsq	$4294967296, %rax
	movq	%rsi, 224(%rsp)
	movq	192(%rsp), %rsi
	divq	%r10
	movq	%rdi, 272(%rsp)
	movq	200(%rsp), %rdi
	leaq	-1(%r10), %r11
	movq	%r11, %r14
	movq	%r11, 304(%rsp)
	sarq	%r14
	movq	%rax, %r12
	movl	%r10d, %eax
	sarl	%eax
	cltq
	negq	%rax
	movq	%rax, %r15
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L433:
	cmpq	%r15, %rdx
	jge	.L72
	addq	%r10, %rdx
	cmpq	%rdx, %r14
	jge	.L429
.L74:
	subq	%r10, %rdx
.L75:
	cmpq	%rdx, %r15
	jg	.L329
	cmpq	%rdx, %r14
	jl	.L329
.L72:
	cmpq	%rdx, %rax
	jne	.L430
	addq	$4, %r13
	cmpq	%r13, %rbx
	je	.L431
.L82:
	movslq	0(%r13), %rbp
	movq	56(%rsp), %rdx
	movq	%r10, 64(%rsp)
	movq	320(%rsp), %rcx
	movq	%rsi, 656(%rsp)
	movq	%rbp, %rax
	movq	%rbp, 672(%rsp)
	sarq	$63, %rax
	movq	%rdi, 664(%rsp)
	movq	%rax, 680(%rsp)
	call	__modti3
	movq	%r12, %rcx
	movq	64(%rsp), %r10
	vpextrq	$1, %xmm0, %rdx
	imulq	%rbp, %rcx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	js	.L432
	movq	96(%rsp), %r8
	movq	104(%rsp), %r9
	movq	%rdx, %r11
	cmpq	%r8, %rax
	sbbq	%r9, %r11
	jl	.L68
	subq	%rsi, %rax
.L69:
	sarq	$32, %rcx
.L70:
	imulq	%r10, %rcx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	cmpq	%r14, %rdx
	jle	.L433
	subq	%r10, %rdx
	cmpq	%rdx, %r14
	jl	.L74
.L429:
	cmpq	%rdx, %r15
	jle	.L72
	addq	%r10, %rdx
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L432:
	movq	%rax, %r8
	movq	%rdx, %r9
	addq	%rsi, %r8
	adcq	%rdi, %r9
	movq	%r8, 64(%rsp)
	movq	96(%rsp), %r8
	movq	%r9, 72(%rsp)
	movq	104(%rsp), %r9
	movq	72(%rsp), %r11
	cmpq	%r8, 64(%rsp)
	sbbq	%r9, %r11
	cmovl	64(%rsp), %rax
.L67:
	movl	$4294967295, %edx
	subq	%rcx, %rdx
	movl	$4294967295, %ecx
	addq	%rdx, %rcx
	testq	%rdx, %rdx
	cmovns	%rdx, %rcx
	sarq	$32, %rcx
	negq	%rcx
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L68:
	testq	%rcx, %rcx
	jns	.L69
	jmp	.L67
.L423:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$39, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	160(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movb	$10, 784(%rsp)
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	cmpq	$0, 16(%rax,%rdx)
	je	.L38
	leaq	784(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$2, 96(%rsp)
.L297:
	movq	632(%rsp), %rcx
	movl	$40, %edx
	call	_ZdlPvy
	nop
.L17:
	vmovups	1024(%rsp), %xmm6
	movl	96(%rsp), %eax
	vmovups	1040(%rsp), %xmm7
	vmovups	1056(%rsp), %xmm8
	vmovups	1072(%rsp), %xmm9
	vmovups	1088(%rsp), %xmm10
	vmovups	1104(%rsp), %xmm11
	vmovups	1120(%rsp), %xmm12
	vmovups	1136(%rsp), %xmm13
	addq	$1160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L424:
	movq	%rdx, 32(%rsp)
	movq	160(%rsp), %rdx
	movq	%rbp, %r8
	leaq	.LC15(%rip), %rcx
	call	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0
.LEHE5:
	jmp	.L40
.L431:
	movl	288(%rsp), %eax
	movl	$2, %ecx
	movq	272(%rsp), %rdi
	movq	304(%rsp), %r11
	movq	224(%rsp), %rsi
	cltd
	subq	%rdi, %rbx
	movq	%rdi, %r14
	movq	200(%rsp), %r13
	idivl	%ecx
	movq	%r11, 520(%rsp)
	movq	104(%rsp), %rdi
	movq	%rsi, 512(%rsp)
	movq	96(%rsp), %rsi
	sarq	$2, %rbx
	movq	%rbx, %r15
	movl	160(%rsp), %ebx
	leal	-1(%rbx), %edx
	vmovd	%ebx, %xmm4
	xorl	%ebx, %ebx
	sarl	%edx
	vpbroadcastd	%xmm4, %ymm4
	vmovdqu	%ymm4, 448(%rsp)
	negl	%eax
	vmovd	%eax, %xmm6
	vpbroadcastd	%xmm6, %ymm6
	vmovdqu	%ymm6, 336(%rsp)
	vmovd	%edx, %xmm6
	vpbroadcastd	%xmm6, %ymm6
	vmovdqu	%ymm6, 368(%rsp)
	vmovd	%r12d, %xmm6
	movq	192(%rsp), %r12
	vpbroadcastd	%xmm6, %ymm6
	vmovdqu	%ymm6, 416(%rsp)
.L102:
	vmovdqu	368(%rsp), %ymm4
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r15
	leaq	1(%rbx), %rax
	movl	(%r14,%rdx,4), %ecx
	xorl	%edx, %edx
	divq	%r15
	movl	%ecx, 480(%rsp)
	leaq	2(%rbx), %rax
	vmovd	%ecx, %xmm3
	movslq	(%r14,%rdx,4), %rbp
	xorl	%edx, %edx
	divq	%r15
	leaq	3(%rbx), %rax
	vpinsrd	$1, %ebp, %xmm3, %xmm2
	vmovdqu	336(%rsp), %ymm3
	movl	(%r14,%rdx,4), %r11d
	xorl	%edx, %edx
	divq	%r15
	movl	%r11d, 288(%rsp)
	leaq	4(%rbx), %rax
	vmovd	%r11d, %xmm5
	movl	(%r14,%rdx,4), %r10d
	xorl	%edx, %edx
	divq	%r15
	movl	%r10d, 272(%rsp)
	leaq	5(%rbx), %rax
	movl	(%r14,%rdx,4), %r9d
	xorl	%edx, %edx
	divq	%r15
	movl	%r9d, 304(%rsp)
	leaq	6(%rbx), %rax
	movl	(%r14,%rdx,4), %r8d
	xorl	%edx, %edx
	divq	%r15
	movl	%r8d, 328(%rsp)
	movl	(%r14,%rdx,4), %eax
	xorl	%edx, %edx
	movl	%eax, 224(%rsp)
	leaq	7(%rbx), %rax
	vmovd	224(%rsp), %xmm6
	divq	%r15
	movslq	%ecx, %rax
	movq	320(%rsp), %rcx
	movl	(%r14,%rdx,4), %edx
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	vpinsrd	$1, %edx, %xmm6, %xmm0
	vmovd	%r9d, %xmm6
	movl	%edx, 400(%rsp)
	movq	56(%rsp), %rdx
	vpinsrd	$1, %r8d, %xmm6, %xmm1
	movq	%r12, 656(%rsp)
	vmovdqu	448(%rsp), %ymm6
	vpunpcklqdq	%xmm0, %xmm1, %xmm1
	vpinsrd	$1, %r10d, %xmm5, %xmm0
	movq	%r13, 664(%rsp)
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vinserti128	$0x1, %xmm1, %ymm0, %ymm0
	vpmuldq	416(%rsp), %ymm0, %ymm1
	vpsrlq	$32, %ymm1, %ymm1
	vpsrlq	$32, %ymm0, %ymm2
	vpshufd	$136, %ymm1, %ymm1
	vpmuldq	416(%rsp), %ymm2, %ymm2
	vpsrlq	$32, %ymm2, %ymm2
	vpshufd	$136, %ymm2, %ymm2
	vpunpckldq	%ymm2, %ymm1, %ymm1
	vpmulld	%ymm6, %ymm1, %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm3, %ymm1
	vpand	%ymm6, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm1
	vpcmpgtd	%ymm4, %ymm0, %ymm0
	vpand	%ymm6, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm0
	vpcmpgtd	%ymm0, %ymm3, %ymm1
	vpand	%ymm6, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm1
	vpcmpgtd	%ymm4, %ymm0, %ymm0
	vpand	%ymm6, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm4
	vmovdqu	%ymm4, 64(%rsp)
	vzeroupper
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L83
	addq	%r12, %rax
	adcq	%r13, %rdx
.L83:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L84
	subq	%r12, %rax
.L84:
	vmovdqu	64(%rsp), %xmm6
	vmovd	%xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L300
	movq	56(%rsp), %rdx
	movslq	%ebp, %rax
	movq	320(%rsp), %rcx
	movq	%r12, 656(%rsp)
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	movq	%r13, 664(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L86
	addq	%r12, %rax
	adcq	%r13, %rdx
.L86:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L87
	subq	%r12, %rax
.L87:
	vpextrd	$1, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L301
	movslq	288(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%r12, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%r13, 664(%rsp)
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L88
	addq	%r12, %rax
	adcq	%r13, %rdx
.L88:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L89
	subq	%r12, %rax
.L89:
	vpextrd	$2, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L302
	movslq	272(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%r12, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%r13, 664(%rsp)
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L90
	addq	%r12, %rax
	adcq	%r13, %rdx
.L90:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L91
	subq	%r12, %rax
.L91:
	vpextrd	$3, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L303
	movslq	304(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%r12, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%r13, 664(%rsp)
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L92
	addq	%r12, %rax
	adcq	%r13, %rdx
.L92:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L93
	subq	%r12, %rax
.L93:
	vmovdqu	64(%rsp), %ymm5
	vextracti128	$0x1, %ymm5, %xmm6
	vmovd	%xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L304
	movslq	328(%rsp), %rax
	movq	%r12, 656(%rsp)
	movq	%r13, 664(%rsp)
	movq	56(%rsp), %rdx
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	320(%rsp), %rcx
	movq	%rax, 680(%rsp)
	vzeroupper
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L94
	addq	%r12, %rax
	adcq	%r13, %rdx
.L94:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L95
	subq	%r12, %rax
.L95:
	vpextrd	$1, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L305
	movslq	224(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%r12, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%r13, 664(%rsp)
	movq	%rax, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L96
	addq	%r12, %rax
	adcq	%r13, %rdx
.L96:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L97
	subq	%r12, %rax
.L97:
	vpextrd	$2, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L306
	movslq	400(%rsp), %rbp
	movq	56(%rsp), %rdx
	movq	%r12, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%r13, 664(%rsp)
	movq	%rbp, %rax
	movq	%rbp, 672(%rsp)
	sarq	$63, %rax
	movq	%rax, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L98
	addq	%r12, %rax
	adcq	%r13, %rdx
.L98:
	cmpq	%rsi, %rax
	movq	%rdx, %rcx
	sbbq	%rdi, %rcx
	jl	.L99
	subq	%r12, %rax
.L99:
	vpextrd	$3, %xmm6, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jne	.L301
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jb	.L102
	movq	512(%rsp), %rsi
	movq	520(%rsp), %r11
	movq	%r14, %rdi
.L64:
	movq	256(%rsp), %rbp
	sarq	%r11
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	leaq	-1(%r11), %r10
	movq	%rcx, 736(%rsp)
	movq	%r11, %r14
	movq	%rbp, %rax
	leaq	1(%rbp), %r9
	vmovq	%r10, %xmm3
	movq	%rbp, 720(%rsp)
	sarq	$63, %rax
	movq	%r9, 728(%rsp)
	vpinsrq	$1, %r11, %xmm3, %xmm0
	movq	%rax, 264(%rsp)
	movq	%r9, %rax
	sarq	$63, %rax
	movq	%rbp, 256(%rsp)
	movq	%rax, 312(%rsp)
	movq	%r10, %rax
	sarq	$63, %rax
	movq	%r9, 304(%rsp)
	movq	%rax, 296(%rsp)
	movq	%r11, %rax
	sarq	$63, %rax
	movq	%r10, 288(%rsp)
	movq	%r11, 272(%rsp)
	movq	%rax, 280(%rsp)
	movq	%r9, 328(%rsp)
	movq	%r10, 400(%rsp)
	movq	%rsi, 64(%rsp)
	movq	192(%rsp), %rsi
	movq	%rdi, 224(%rsp)
	movq	200(%rsp), %rdi
	vmovdqu	%xmm0, 744(%rsp)
.L123:
	movq	720(%rsp,%r15), %rbx
	movq	%rbx, %r13
	movq	%rbx, %r12
	sarq	$63, %r13
	cmpq	%rbx, %rbp
	jg	.L103
	movq	256(%rsp), %rax
	movq	264(%rsp), %rdx
	movq	%rsi, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%rdi, 664(%rsp)
	addq	%rbx, %rax
	adcq	%r13, %rdx
	movq	%rax, 672(%rsp)
	movq	%rdx, 680(%rsp)
	movq	56(%rsp), %rdx
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L104
	addq	%rsi, %rax
	adcq	%rdi, %rdx
.L104:
	movq	96(%rsp), %r10
	movq	104(%rsp), %r11
	movq	%rdx, %rcx
	cmpq	%r10, %rax
	sbbq	%r11, %rcx
	jl	.L105
	subq	%rsi, %rax
.L105:
	cmpq	%rbx, %r14
	jl	.L103
	movq	160(%rsp), %rcx
	leaq	0(%rbp,%rbx), %r8
	cmpq	%r8, %rbp
	leaq	(%rcx,%r8), %rdx
	cmovle	%r8, %rdx
	cmpq	%rax, %rdx
	jne	.L408
	movq	304(%rsp), %rax
	movq	312(%rsp), %rdx
	movq	%rsi, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%rdi, 664(%rsp)
	addq	%r12, %rax
	adcq	%r13, %rdx
	movq	%rax, 672(%rsp)
	movq	%rdx, 680(%rsp)
	movq	56(%rsp), %rdx
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L108
	addq	%rsi, %rax
	adcq	%rdi, %rdx
.L108:
	movq	96(%rsp), %r10
	movq	104(%rsp), %r11
	movq	%rdx, %rcx
	cmpq	%r10, %rax
	sbbq	%r11, %rcx
	jl	.L109
	subq	%rsi, %rax
.L109:
	movq	328(%rsp), %rcx
	leaq	(%rcx,%rbx), %r8
	movq	160(%rsp), %rcx
	cmpq	%r8, %rbp
	leaq	(%rcx,%r8), %rdx
	cmovle	%r8, %rdx
	cmpq	%rax, %rdx
	jne	.L408
	movq	56(%rsp), %rdx
	movq	320(%rsp), %rcx
	movq	%r12, 672(%rsp)
	movq	%r13, 680(%rsp)
	movq	%rsi, 656(%rsp)
	movq	%rdi, 664(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L111
	addq	%rsi, %rax
	adcq	%rdi, %rdx
.L111:
	movq	96(%rsp), %r10
	movq	104(%rsp), %r11
	movq	%rdx, %rcx
	cmpq	%r10, %rax
	sbbq	%r11, %rcx
	jl	.L112
	subq	%rsi, %rax
.L112:
	cmpq	%rax, %rbx
	movq	%rax, 192(%rsp)
	jne	.L309
	movq	288(%rsp), %rax
	movq	296(%rsp), %rdx
	movq	%rsi, 656(%rsp)
	movq	320(%rsp), %rcx
	movq	%rdi, 664(%rsp)
	addq	%r12, %rax
	adcq	%r13, %rdx
	movq	%rax, 672(%rsp)
	movq	%rdx, 680(%rsp)
	movq	56(%rsp), %rdx
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L113
	addq	%rsi, %rax
	adcq	%rdi, %rdx
.L113:
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rbx
	movq	%rdx, %r11
	cmpq	%rcx, %rax
	sbbq	%rbx, %r11
	jl	.L114
	subq	%rsi, %rax
.L114:
	movq	400(%rsp), %rbx
	movq	192(%rsp), %rcx
	leaq	(%rbx,%rcx), %r8
	movq	160(%rsp), %rbx
	movq	%r8, %rdx
	subq	%rbx, %rdx
	cmpq	%r8, %r14
	jl	.L116
	leaq	(%rbx,%r8), %rdx
	cmpq	%r8, %rbp
	cmovle	%r8, %rdx
.L116:
	cmpq	%rax, %rdx
	jne	.L408
	movq	56(%rsp), %rdx
	movq	320(%rsp), %rcx
	movq	%rsi, 656(%rsp)
	addq	272(%rsp), %r12
	adcq	280(%rsp), %r13
	movq	%rdi, 664(%rsp)
	movq	%r12, 672(%rsp)
	movq	%r13, 680(%rsp)
	call	__modti3
	vpextrq	$1, %xmm0, %rdx
	vmovq	%xmm0, %rax
	testq	%rdx, %rdx
	jns	.L117
	addq	%rsi, %rax
	adcq	%rdi, %rdx
.L117:
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rbx
	movq	%rdx, %r11
	cmpq	%rcx, %rax
	sbbq	%rbx, %r11
	jl	.L118
	subq	%rsi, %rax
.L118:
	movq	192(%rsp), %r8
	addq	%r14, %r8
	movq	%r8, %rdx
	subq	160(%rsp), %rdx
	cmpq	%r8, %r14
	cmovge	%r8, %rdx
	cmpq	%rax, %rdx
	jne	.L408
	addq	$8, %r15
	cmpq	$40, %r15
	jne	.L123
	movq	224(%rsp), %rdi
	movq	64(%rsp), %rsi
	testq	%rdi, %rdi
	je	.L124
	subq	%rdi, %rsi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	call	_ZdlPvy
	addq	$8, 128(%rsp)
	movq	128(%rsp), %rax
	cmpq	%rax, 504(%rsp)
	jne	.L36
.L126:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$53, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC24(%rip), %rdx
.LEHB6:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$48, %r8d
	leaq	.LC25(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$53, %r8d
	leaq	.LC24(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$32, %r8d
	leaq	.LC26(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$9, %r8d
	leaq	.LC27(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$41, %r8d
	leaq	.LC28(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	488(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vxorps	%xmm6, %xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L288:
	movq	496(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$2, %rax
	movq	%rax, 64(%rsp)
	jle	.L434
	cmpl	$2, 64(%rsp)
	jle	.L435
	movq	%rax, %rdi
	movl	$1234567, %eax
	leaq	640(%rsp), %r15
	cqto
	movq	%rdi, %r8
	movq	%r15, %rcx
	movq	%r15, 128(%rsp)
	idivq	%rdi
	movl	$891011, %eax
	movq	%rdx, %rbx
	cqto
	idivq	%rdi
	movq	%rdx, %rsi
	movl	$1234567, %edx
	call	_ZN5reist6divideExx
	movq	648(%rsp), %rax
	movq	%rdi, %r8
	movl	$891011, %edx
	movq	%r15, %rcx
	movq	%rax, 96(%rsp)
	call	_ZN5reist6divideExx
.LEHE6:
	movq	648(%rsp), %rax
	movq	%rax, 480(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	64(%rsp), %r8
	movq	488(%rsp), %r9
	xorl	%ecx, %ecx
	movq	%rax, 560(%rsp)
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L135:
	leaq	(%rsi,%rbx), %rax
	addq	$1, %rcx
	cqto
	idivq	%r8
	cmpq	%r9, %rcx
	movq	%rdx, %rbx
	jne	.L135
	movq	%rdx, 160(%rsp)
	movq	%rdx, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 568(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	64(%rsp), %rsi
	movq	480(%rsp), %rdx
	movq	%rax, 576(%rsp)
	movq	96(%rsp), %rdi
	movq	%rsi, %rax
	leaq	-1(%rsi), %rbx
	movq	488(%rsp), %r11
	movq	160(%rsp), %r9
	shrq	$63, %rax
	addq	%rsi, %rax
	sarq	%rax
	negq	%rax
	cmpq	%rax, %rdx
	movq	%rax, 256(%rsp)
	movq	%rax, %r10
	setge	%cl
	xorl	%eax, %eax
	sarq	%rbx
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L137:
	addq	$1, %rax
	subq	%rsi, %rdi
	cmpq	%r11, %rax
	je	.L436
.L140:
	cmpq	%rdi, %r10
	jg	.L136
	cmpq	%rbx, %rdx
	setle	%r8b
	testb	%cl, %r8b
	je	.L136
	cmpq	%rdi, %rbx
	jl	.L136
	addq	%rdx, %rdi
	cmpq	%rdi, %rbx
	jl	.L137
	cmpq	%rdi, %r10
	leaq	(%rdi,%rsi), %r8
	cmovg	%r8, %rdi
	addq	$1, %rax
	cmpq	%r11, %rax
	jne	.L140
.L436:
	movq	64(%rsp), %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%rbx, %r13
	movq	320(%rsp), %rcx
	movq	%rdx, 680(%rsp)
	movq	%rsi, %r15
	movq	56(%rsp), %rdx
	movq	%r9, 192(%rsp)
	movq	%rsi, %r14
	sarq	$63, %r15
	movq	%rax, 672(%rsp)
	movq	%rsi, 656(%rsp)
	movq	%r15, 664(%rsp)
	call	__udivti3
	movq	%rdi, _ZL6g_sink(%rip)
	vmovq	%xmm0, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 584(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rsi, %r11
	movq	96(%rsp), %rdx
	xorl	%r10d, %r10d
	movq	%rax, 592(%rsp)
	movq	%rsi, %rax
	sarq	%r11
	movq	480(%rsp), %r12
	andl	$1, %eax
	movq	%rdi, 160(%rsp)
	movq	488(%rsp), %rdi
	addq	%rax, %r11
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L143:
	negq	%rdx
	movq	%rbp, %rax
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	mulq	%rdx
	mulx	%rsi, %rcx, %rbx
	subq	%rcx, %r8
	sbbq	%rbx, %r9
	cmpq	%rsi, %r8
	movq	%r9, %rax
	sbbq	%r15, %rax
	jc	.L147
	subq	%r14, %r8
	sbbq	%r15, %r9
	cmpq	%rsi, %r8
	movq	%r9, %rax
	sbbq	%r15, %rax
	jnc	.L145
.L147:
	testq	%r8, %r8
	je	.L146
	negq	%r8
	movq	%r8, %rax
	cqto
	idivq	%rsi
	testq	%rdx, %rdx
	je	.L148
	addq	%rsi, %rdx
.L298:
	movq	%rdx, %rax
	movq	%r11, %rcx
	subq	%rsi, %rax
	cmpq	%rdx, %r11
	cmovle	%rax, %rdx
.L149:
	addq	$1, %r10
	cmpq	%rdi, %r10
	je	.L437
.L150:
	addq	%r12, %rdx
	js	.L143
	movq	%rdx, %rax
	movq	%rdx, %r8
	movq	%rdx, %r9
	mulq	%rbp
	sarq	$63, %r9
	mulx	%rsi, %rcx, %rbx
	subq	%rcx, %r8
	sbbq	%rbx, %r9
	cmpq	%rsi, %r8
	movq	%r9, %rax
	sbbq	%r15, %rax
	jc	.L146
	subq	%r14, %r8
	sbbq	%r15, %r9
	cmpq	%rsi, %r8
	movq	%r9, %rax
	sbbq	%r15, %rax
	jnc	.L145
.L146:
	movq	%r8, %rax
	cqto
	idivq	%rsi
	jmp	.L298
.L430:
	movq	%rdx, 32(%rsp)
	movq	%rax, %r9
	movq	160(%rsp), %rdx
	movq	%rbp, %r8
	leaq	.LC20(%rip), %rcx
	movq	224(%rsp), %rsi
	movq	272(%rsp), %rdi
.LEHB7:
	call	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0
.LEHE7:
.L418:
	testq	%rdi, %rdi
	je	.L40
	subq	%rdi, %rsi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	call	_ZdlPvy
	jmp	.L40
.L38:
	movl	$10, %edx
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSo3putEc
.LEHE8:
	jmp	.L40
.L422:
	movq	8(%rsi), %rsi
	leaq	800(%rsp), %rdi
	movq	%rdi, 784(%rsp)
	testq	%rsi, %rsi
	je	.L438
	movq	%rsi, %rcx
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	ja	.L439
	cmpq	$1, %rax
	je	.L440
	testq	%rax, %rax
	jne	.L441
.L23:
	movq	784(%rsp), %rax
	movq	%rbx, 792(%rsp)
	movb	$0, (%rax,%rbx)
	movq	__imp__errno(%rip), %rbx
	movq	784(%rsp), %rsi
.LEHB9:
	call	*%rbx
	movl	(%rax), %r12d
	call	*%rbx
.LEHE9:
	xorl	%r8d, %r8d
	leaq	720(%rsp), %rdx
	movq	%rsi, %rcx
	movl	%r8d, (%rax)
	movl	$10, %r8d
	call	strtoll
	cmpq	720(%rsp), %rsi
	movq	%rax, 488(%rsp)
	je	.L442
.LEHB10:
	call	*%rbx
.LEHE10:
	cmpl	$34, (%rax)
	je	.L443
	call	*%rbx
	cmpl	$0, (%rax)
	je	.L444
.L26:
	movq	784(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L27
	movq	800(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L27:
	cmpq	$0, 488(%rsp)
	jle	.L445
	movq	488(%rsp), %rax
	cmpq	$7, %rax
	jle	.L34
	testb	$7, %al
	je	.L18
.L34:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC9(%rip), %rdx
.LEHB11:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE11:
.L33:
	movl	$1, 96(%rsp)
	jmp	.L17
.L440:
	movzbl	(%rsi), %eax
	movb	%al, 800(%rsp)
	jmp	.L23
.L301:
	movq	512(%rsp), %rsi
	movq	%r14, %rdi
.L85:
	movq	%rdx, 32(%rsp)
	movq	%rax, %r9
	movq	160(%rsp), %rdx
	movq	%rbp, %r8
	leaq	.LC21(%rip), %rcx
.LEHB12:
	call	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0
.LEHE12:
	jmp	.L418
.L444:
	call	*%rbx
	movl	%r12d, (%rax)
	jmp	.L26
.L439:
	leaq	1(%rax), %rcx
.LEHB13:
	call	_Znwy
.LEHE13:
	movq	%rax, 784(%rsp)
	movq	%rax, %rcx
	movq	%rbx, 800(%rsp)
.L21:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	memcpy
	jmp	.L23
.L300:
	movq	512(%rsp), %rsi
	movslq	480(%rsp), %rbp
	movq	%r14, %rdi
	jmp	.L85
.L303:
	movq	512(%rsp), %rsi
	movslq	272(%rsp), %rbp
	movq	%r14, %rdi
	jmp	.L85
.L302:
	movq	512(%rsp), %rsi
	movslq	288(%rsp), %rbp
	movq	%r14, %rdi
	jmp	.L85
.L305:
	movq	512(%rsp), %rsi
	movslq	328(%rsp), %rbp
	movq	%r14, %rdi
	jmp	.L85
.L306:
	movq	512(%rsp), %rsi
	movslq	224(%rsp), %rbp
	movq	%r14, %rdi
	jmp	.L85
.L304:
	movq	512(%rsp), %rsi
	movslq	304(%rsp), %rbp
	movq	%r14, %rdi
	vzeroupper
	jmp	.L85
.L445:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC8(%rip), %rdx
.LEHB14:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE14:
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$8, 128(%rsp)
	movq	504(%rsp), %rdi
	cmpq	%rdi, 128(%rsp)
	jne	.L36
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L437:
	movq	64(%rsp), %rsi
	movq	%r13, %rbx
	movabsq	$4294967296, %rax
	movq	%rdx, %r13
	xorl	%edx, %edx
	movq	192(%rsp), %r9
	movq	%rcx, 224(%rsp)
	movslq	%esi, %rbp
	movq	%r13, _ZL6g_sink(%rip)
	sarl	%esi
	movq	160(%rsp), %rdi
	divq	%rbp
	movq	%r9, 160(%rsp)
	leaq	-1(%rbp), %r12
	sarq	%r12
	movq	%rax, %r15
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 600(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movslq	%esi, %rcx
	xorl	%edx, %edx
	movl	%esi, 520(%rsp)
	negq	%rcx
	movq	%rax, 608(%rsp)
	movq	480(%rsp), %r8
	movq	%rcx, 528(%rsp)
	movl	96(%rsp), %eax
	movq	488(%rsp), %r10
	movq	160(%rsp), %r9
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L448:
	cmpq	%rcx, %r14
	jge	.L156
	addq	%rbp, %r14
	cmpq	%r14, %r12
	jge	.L446
.L158:
	subq	%rbp, %r14
.L159:
	cmpq	%r14, %rcx
	jg	.L330
	cmpq	%r14, %r12
	jl	.L330
.L156:
	addq	$1, %rdx
	movl	%r14d, %eax
	cmpq	%r10, %rdx
	je	.L447
.L161:
	addl	%r8d, %eax
	movslq	%eax, %r14
	movq	%r14, %rax
	imulq	%r15, %rax
	testq	%rax, %rax
	js	.L153
	sarq	$32, %rax
.L154:
	imulq	%rbp, %rax
	subq	%rax, %r14
	cmpq	%r12, %r14
	jle	.L448
	subq	%rbp, %r14
	cmpq	%r14, %r12
	jl	.L158
.L446:
	cmpq	%r14, %rcx
	jle	.L156
	addq	%rbp, %r14
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L153:
	movl	$4294967295, %r11d
	subq	%rax, %r11
	movl	$4294967295, %eax
	addq	%r11, %rax
	testq	%r11, %r11
	cmovns	%r11, %rax
	sarq	$32, %rax
	negq	%rax
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L447:
	movslq	%r14d, %r14
	movq	%r9, 160(%rsp)
	movq	%r14, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	64(%rsp), %r8
	movq	160(%rsp), %rdx
	movq	128(%rsp), %rcx
	movq	%rax, 616(%rsp)
.LEHB15:
	call	_ZN5reist6divideExx
	cmpq	%rdi, 648(%rsp)
	jne	.L164
	cmpq	%r13, %rdi
	jne	.L164
	cmpq	%r14, %rdi
	jne	.L164
	movq	96(%rsp), %rax
	movq	64(%rsp), %rdi
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	movq	%rdx, %rax
	js	.L449
	cmpq	%rdx, 224(%rsp)
	jg	.L171
.L168:
	subq	64(%rsp), %rax
.L171:
	movq	408(%rsp), %rdi
	movl	%eax, 512(%rsp)
	movl	%eax, 64(%rdi)
	movq	96(%rsp), %rax
	addq	$1, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L169
	cmpq	%rdx, 224(%rsp)
	jg	.L170
.L173:
	subq	64(%rsp), %rdx
.L170:
	movq	408(%rsp), %rax
	movl	%edx, 192(%rsp)
	movl	%edx, 68(%rax)
	movq	96(%rsp), %rax
	addq	$2, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L174
	cmpq	%rdx, 224(%rsp)
	jg	.L175
.L177:
	subq	64(%rsp), %rdx
.L175:
	movq	408(%rsp), %rax
	movl	%edx, 160(%rsp)
	movl	%edx, 72(%rax)
	movq	96(%rsp), %rax
	addq	$3, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L178
	cmpq	%rdx, 224(%rsp)
	jg	.L179
.L181:
	subq	64(%rsp), %rdx
.L179:
	movq	408(%rsp), %rax
	movl	%edx, 328(%rsp)
	movl	%edx, 76(%rax)
	movq	96(%rsp), %rax
	addq	$4, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L182
	cmpq	%rdx, 224(%rsp)
	jg	.L183
.L185:
	subq	64(%rsp), %rdx
.L183:
	movq	408(%rsp), %rax
	movl	%edx, 400(%rsp)
	movl	%edx, 80(%rax)
	movq	96(%rsp), %rax
	addq	$5, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L186
	cmpq	%rdx, 224(%rsp)
	jg	.L187
.L189:
	subq	64(%rsp), %rdx
.L187:
	movq	408(%rsp), %rax
	movl	%edx, 336(%rsp)
	movl	%edx, 84(%rax)
	movq	96(%rsp), %rax
	addq	$6, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	js	.L190
	cmpq	%rdx, 224(%rsp)
	jg	.L191
.L193:
	subq	64(%rsp), %rdx
.L191:
	movq	408(%rsp), %rax
	movl	%edx, 128(%rsp)
	movl	%edx, 88(%rax)
	movq	96(%rsp), %rax
	addq	$7, %rax
	cqto
	idivq	64(%rsp)
	testq	%rdx, %rdx
	movq	%rdx, %rdi
	js	.L194
.L196:
	movq	%rdi, %rax
	subq	64(%rsp), %rax
	cmpq	%rdi, 224(%rsp)
	cmovle	%rax, %rdi
.L195:
	movq	408(%rsp), %rsi
	movq	488(%rsp), %r14
	movl	%edi, 368(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 688(%rsp)
	movl	%edi, 92(%rsi)
	sarq	$3, %r14
	vmovdqu	%ymm0, 32(%rsi)
	vmovdqu	%ymm0, (%rsi)
	vmovdqu	%ymm0, 720(%rsp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vmovdqu	64(%rsi), %ymm0
	movl	128(%rsp), %esi
	movslq	480(%rsp), %r13
	movq	256(%rsp), %r9
	movq	%rax, 624(%rsp)
	movl	%esi, 96(%rsp)
	movl	336(%rsp), %esi
	cmpq	%r13, %r9
	movl	512(%rsp), %ecx
	movq	%r14, 416(%rsp)
	movl	%esi, 224(%rsp)
	movl	400(%rsp), %esi
	setle	%dl
	cmpq	%r13, %rbx
	setge	%al
	movq	%r12, 536(%rsp)
	movslq	%ecx, %r14
	movq	64(%rsp), %r12
	movl	%esi, 256(%rsp)
	movl	328(%rsp), %esi
	andl	%edx, %eax
	movq	%r15, 552(%rsp)
	movl	%edi, %r15d
	movl	%esi, 272(%rsp)
	movl	160(%rsp), %esi
	movb	%al, 448(%rsp)
	movl	%esi, 288(%rsp)
	movl	192(%rsp), %esi
	movq	%rbp, 544(%rsp)
	movl	%esi, 304(%rsp)
	xorl	%esi, %esi
	vmovdqu	%ymm0, 784(%rsp)
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L452:
	leaq	(%rdi,%r12), %rax
	cmpq	%rdi, %r9
	cmovg	%rax, %rdi
.L205:
	movslq	304(%rsp), %r11
	movslq	%edi, %r14
	cmpq	%r11, %r9
	jg	.L198
	cmpq	%r11, %rbx
	jl	.L198
	addq	%r13, %r11
	cmpq	%r11, %rbx
	jl	.L206
	leaq	(%r11,%r12), %rax
	cmpq	%r11, %r9
	cmovg	%rax, %r11
.L207:
	movslq	288(%rsp), %r10
	movl	%r11d, 304(%rsp)
	cmpq	%r10, %r9
	jg	.L198
	cmpq	%r10, %rbx
	jl	.L198
	addq	%r13, %r10
	cmpq	%r10, %rbx
	jl	.L208
	leaq	(%r10,%r12), %rax
	cmpq	%r10, %r9
	cmovg	%rax, %r10
.L209:
	movslq	272(%rsp), %rbp
	movl	%r10d, 288(%rsp)
	cmpq	%rbp, %r9
	jg	.L198
	cmpq	%rbp, %rbx
	jl	.L198
	addq	%r13, %rbp
	cmpq	%rbp, %rbx
	jl	.L210
	leaq	0(%rbp,%r12), %rax
	cmpq	%rbp, %r9
	cmovg	%rax, %rbp
.L211:
	movslq	256(%rsp), %r8
	movl	%ebp, 272(%rsp)
	cmpq	%r8, %r9
	jg	.L198
	cmpq	%r8, %rbx
	jl	.L198
	addq	%r13, %r8
	cmpq	%r8, %rbx
	jl	.L212
	leaq	(%r8,%r12), %rax
	cmpq	%r8, %r9
	cmovg	%rax, %r8
.L213:
	movslq	224(%rsp), %rcx
	movl	%r8d, 256(%rsp)
	cmpq	%rcx, %r9
	jg	.L198
	cmpq	%rcx, %rbx
	jl	.L198
	addq	%r13, %rcx
	cmpq	%rcx, %rbx
	jl	.L214
	leaq	(%rcx,%r12), %rax
	cmpq	%rcx, %r9
	cmovg	%rax, %rcx
.L215:
	movslq	96(%rsp), %rdx
	movl	%ecx, 224(%rsp)
	cmpq	%rdx, %r9
	jg	.L198
	cmpq	%rdx, %rbx
	jl	.L198
	addq	%r13, %rdx
	cmpq	%rdx, %rbx
	jl	.L216
	leaq	(%rdx,%r12), %rax
	cmpq	%rdx, %r9
	cmovg	%rax, %rdx
.L217:
	movslq	%r15d, %rax
	movl	%edx, 96(%rsp)
	cmpq	%rax, %r9
	jg	.L198
	cmpq	%rax, %rbx
	jl	.L198
	addq	%r13, %rax
	cmpq	%rax, %rbx
	jge	.L450
	subq	%r12, %rax
.L201:
	addq	$1, %rsi
	cmpq	%rsi, 416(%rsp)
	movl	%eax, %r15d
	je	.L451
.L197:
	cmpq	%r14, %r9
	jg	.L198
	cmpb	$0, 448(%rsp)
	je	.L198
	cmpq	%r14, %rbx
	jl	.L198
	leaq	0(%r13,%r14), %rdi
	cmpq	%rdi, %rbx
	jge	.L452
	subq	%r12, %rdi
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L450:
	leaq	(%rax,%r12), %r15
	cmpq	%rax, %r9
	cmovg	%r15, %rax
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L216:
	subq	%r12, %rdx
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L214:
	subq	%r12, %rcx
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L212:
	subq	%r12, %r8
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L210:
	subq	%r12, %rbp
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L208:
	subq	%r12, %r10
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L206:
	subq	%r12, %r11
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L451:
	movl	96(%rsp), %esi
	movl	%edi, %edi
	movl	%r11d, %r11d
	movl	%r10d, %r10d
	movl	%ebp, %r9d
	movl	%r8d, %r8d
	movl	%ecx, %ecx
	movl	%edx, %edx
	movl	%esi, 808(%rsp)
	movl	224(%rsp), %esi
	movl	%r14d, %ebx
	movl	%eax, 812(%rsp)
	movl	%eax, %eax
	movq	416(%rsp), %r14
	movl	%esi, 804(%rsp)
	movl	256(%rsp), %esi
	movl	%ebx, 784(%rsp)
	movq	536(%rsp), %r12
	movl	%esi, 800(%rsp)
	movl	272(%rsp), %esi
	movq	544(%rsp), %rbp
	movq	552(%rsp), %r15
	movl	%esi, 796(%rsp)
	movl	288(%rsp), %esi
	movl	%esi, 792(%rsp)
	movl	304(%rsp), %esi
	movl	%esi, 788(%rsp)
	movabsq	$1469598103934665603, %rsi
	vmovdqu	784(%rsp), %ymm0
	xorq	%rsi, %rdi
	movabsq	$1099511628211, %rsi
	vmovdqu	%ymm0, 688(%rsp)
	imulq	%rsi, %rdi
	xorq	%rdi, %r11
	imulq	%rsi, %r11
	xorq	%r11, %r10
	imulq	%rsi, %r10
	xorq	%r10, %r9
	imulq	%rsi, %r9
	xorq	%r9, %r8
	imulq	%rsi, %r8
	xorq	%r8, %rcx
	imulq	%rsi, %rcx
	xorq	%rcx, %rdx
	imulq	%rsi, %rdx
	xorq	%rdx, %rax
	imulq	%rsi, %rax
	btrq	$63, %rax
	movq	%rax, _ZL6g_sink(%rip)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rsi
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r14, 224(%rsp)
	movq	480(%rsp), %rdi
	movq	%rsi, 256(%rsp)
	movl	512(%rsp), %r14d
	movq	%rax, 272(%rsp)
	movq	528(%rsp), %rsi
	movq	$0, 96(%rsp)
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L462:
	cmpq	%rbx, %rsi
	jle	.L224
	addq	%rbp, %rbx
	cmpq	%rbx, %r12
	jge	.L453
.L226:
	subq	%rbp, %rbx
.L227:
	cmpq	%rbx, %rsi
	jg	.L228
	cmpq	%rbx, %r12
	jl	.L228
.L224:
	movl	192(%rsp), %r13d
	movq	%r15, %rdx
	addl	%edi, %r13d
	movslq	%r13d, %r13
	imulq	%r13, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L230
	movl	$4294967295, %eax
	movl	$4294967295, %ecx
	subq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L230:
	imulq	%rbp, %rax
	movq	%r13, %r11
	subq	%rax, %r11
	cmpq	%r11, %r12
	jl	.L231
	cmpq	%r11, %rsi
	jle	.L232
	addq	%rbp, %r11
	cmpq	%r11, %r12
	jge	.L454
.L234:
	subq	%rbp, %r11
.L235:
	cmpq	%r11, %rsi
	jg	.L228
	cmpq	%r11, %r12
	jl	.L228
.L232:
	movl	160(%rsp), %r10d
	movq	%r15, %rdx
	addl	%edi, %r10d
	movslq	%r10d, %r10
	imulq	%r10, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L237
	movl	$4294967295, %eax
	movl	$4294967295, %ecx
	subq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L237:
	imulq	%rbp, %rax
	subq	%rax, %r10
	cmpq	%r10, %r12
	jl	.L238
	cmpq	%r10, %rsi
	jle	.L239
	addq	%rbp, %r10
	cmpq	%r10, %r12
	jge	.L455
.L241:
	subq	%rbp, %r10
.L242:
	cmpq	%r10, %rsi
	jg	.L228
	cmpq	%r10, %r12
	jl	.L228
.L239:
	movl	328(%rsp), %r9d
	movq	%r15, %rdx
	addl	%edi, %r9d
	movslq	%r9d, %r9
	imulq	%r9, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L244
	movl	$4294967295, %eax
	movl	$4294967295, %ecx
	subq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L244:
	imulq	%rbp, %rax
	subq	%rax, %r9
	cmpq	%r9, %r12
	jl	.L245
	cmpq	%r9, %rsi
	jle	.L246
	addq	%rbp, %r9
	cmpq	%r9, %r12
	jge	.L456
.L248:
	subq	%rbp, %r9
.L249:
	cmpq	%r9, %rsi
	jg	.L228
	cmpq	%r9, %r12
	jl	.L228
.L246:
	movl	400(%rsp), %r8d
	movq	%r15, %rdx
	addl	%edi, %r8d
	movslq	%r8d, %r8
	imulq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L251
	movl	$4294967295, %eax
	movl	$4294967295, %ecx
	subq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L251:
	imulq	%rbp, %rax
	subq	%rax, %r8
	cmpq	%r8, %r12
	jl	.L252
	cmpq	%r8, %rsi
	jle	.L253
	addq	%rbp, %r8
	cmpq	%r8, %r12
	jge	.L457
.L255:
	subq	%rbp, %r8
.L256:
	cmpq	%r8, %rsi
	jg	.L228
	cmpq	%r8, %r12
	jl	.L228
.L253:
	movl	336(%rsp), %ecx
	movq	%r15, %rdx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	imulq	%rcx, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L258
	movl	$4294967295, %eax
	subq	%rdx, %rax
	movl	$4294967295, %edx
	addq	%rax, %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L258:
	imulq	%rbp, %rax
	subq	%rax, %rcx
	cmpq	%rcx, %r12
	jl	.L259
	cmpq	%rcx, %rsi
	jle	.L260
	addq	%rbp, %rcx
	cmpq	%rcx, %r12
	jge	.L458
.L262:
	subq	%rbp, %rcx
.L263:
	cmpq	%rcx, %rsi
	jg	.L228
	cmpq	%rcx, %r12
	jl	.L228
.L260:
	movl	128(%rsp), %edx
	movq	%r15, %r13
	addl	%edi, %edx
	movslq	%edx, %rdx
	imulq	%rdx, %r13
	movq	%r13, %rax
	sarq	$32, %rax
	testq	%r13, %r13
	jns	.L265
	movl	$4294967295, %eax
	movl	$4294967295, %r14d
	subq	%r13, %rax
	leaq	(%rax,%r14), %r13
	cmovs	%r13, %rax
	sarq	$32, %rax
	negq	%rax
.L265:
	imulq	%rbp, %rax
	subq	%rax, %rdx
	cmpq	%rdx, %r12
	jl	.L266
	cmpq	%rdx, %rsi
	jle	.L267
	addq	%rbp, %rdx
	cmpq	%rdx, %r12
	jge	.L459
.L269:
	subq	%rbp, %rdx
.L270:
	cmpq	%rdx, %rsi
	jg	.L228
	cmpq	%rdx, %r12
	jl	.L228
.L267:
	movl	368(%rsp), %eax
	movq	%r15, %r14
	addl	%edi, %eax
	cltq
	imulq	%rax, %r14
	movq	%r14, %r13
	sarq	$32, %r13
	testq	%r14, %r14
	jns	.L272
	movl	$4294967295, %r13d
	subq	%r14, %r13
	movl	$4294967295, %r14d
	addq	%r13, %r14
	testq	%r13, %r13
	cmovs	%r14, %r13
	sarq	$32, %r13
	negq	%r13
.L272:
	imulq	%rbp, %r13
	subq	%r13, %rax
	cmpq	%rax, %r12
	jl	.L273
	cmpq	%rax, %rsi
	jle	.L274
	addq	%rbp, %rax
	cmpq	%rax, %r12
	jge	.L460
.L276:
	subq	%rbp, %rax
.L277:
	cmpq	%rax, %rsi
	jg	.L228
	cmpq	%rax, %r12
	jl	.L228
.L274:
	addq	$1, 96(%rsp)
	movq	96(%rsp), %r13
	movl	%ebx, %r14d
	cmpq	%r13, 224(%rsp)
	movl	%r11d, 192(%rsp)
	movl	%r10d, 160(%rsp)
	movl	%r9d, 328(%rsp)
	movl	%r8d, 400(%rsp)
	movl	%ecx, 336(%rsp)
	movl	%edx, 128(%rsp)
	movl	%eax, 368(%rsp)
	je	.L461
.L219:
	addl	%edi, %r14d
	movq	%r15, %rdx
	movslq	%r14d, %r14
	imulq	%r14, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	testq	%rdx, %rdx
	jns	.L222
	movl	$4294967295, %eax
	movl	$4294967295, %ecx
	subq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	cmovs	%rdx, %rax
	sarq	$32, %rax
	negq	%rax
.L222:
	imulq	%rbp, %rax
	movq	%r14, %rbx
	subq	%rax, %rbx
	cmpq	%rbx, %r12
	jge	.L462
	subq	%rbp, %rbx
	cmpq	%rbx, %r12
	jl	.L226
.L453:
	cmpq	%rbx, %rsi
	jle	.L224
	addq	%rbp, %rbx
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L273:
	subq	%rbp, %rax
	cmpq	%rax, %r12
	jl	.L276
.L460:
	cmpq	%rax, %rsi
	jle	.L274
	addq	%rbp, %rax
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L245:
	subq	%rbp, %r9
	cmpq	%r9, %r12
	jl	.L248
.L456:
	cmpq	%r9, %rsi
	jle	.L246
	addq	%rbp, %r9
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L252:
	subq	%rbp, %r8
	cmpq	%r8, %r12
	jl	.L255
.L457:
	cmpq	%r8, %rsi
	jle	.L253
	addq	%rbp, %r8
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L259:
	subq	%rbp, %rcx
	cmpq	%rcx, %r12
	jl	.L262
.L458:
	cmpq	%rcx, %rsi
	jle	.L260
	addq	%rbp, %rcx
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L266:
	subq	%rbp, %rdx
	cmpq	%rdx, %r12
	jl	.L269
.L459:
	cmpq	%rdx, %rsi
	jle	.L267
	addq	%rbp, %rdx
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L231:
	subq	%rbp, %r11
	cmpq	%r11, %r12
	jl	.L234
.L454:
	cmpq	%r11, %rsi
	jle	.L232
	addq	%rbp, %r11
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L238:
	subq	%rbp, %r10
	cmpq	%r10, %r12
	jl	.L241
.L455:
	cmpq	%r10, %rsi
	jle	.L239
	addq	%rbp, %r10
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L461:
	vmovd	%ebx, %xmm3
	vmovd	%r10d, %xmm4
	movl	%ebx, %ebx
	movl	%r10d, %r10d
	movabsq	$1469598103934665603, %rbp
	vpinsrd	$1, %r11d, %xmm3, %xmm0
	movl	%r11d, %r11d
	movq	224(%rsp), %r14
	xorq	%rbp, %rbx
	vmovd	%r8d, %xmm5
	movl	%r8d, %r8d
	movabsq	$1099511628211, %rbp
	imulq	%rbp, %rbx
	vmovd	%edx, %xmm3
	vmovq	%xmm0, 720(%rsp)
	vpinsrd	$1, %r9d, %xmm4, %xmm0
	movl	%r9d, %r9d
	movl	%edx, %edx
	vmovq	%xmm0, 728(%rsp)
	vpinsrd	$1, %ecx, %xmm5, %xmm0
	movl	%ecx, %ecx
	movq	256(%rsp), %rsi
	vmovq	%xmm0, 736(%rsp)
	vpinsrd	$1, %eax, %xmm3, %xmm0
	xorq	%rbx, %r11
	movl	%eax, %eax
	vmovq	%xmm0, 744(%rsp)
	movq	272(%rsp), %rdi
	imulq	%rbp, %r11
	xorq	%r11, %r10
	imulq	%rbp, %r10
	xorq	%r10, %r9
	imulq	%rbp, %r9
	xorq	%r9, %r8
	imulq	%rbp, %r8
	xorq	%r8, %rcx
	imulq	%rbp, %rcx
	xorq	%rcx, %rdx
	imulq	%rbp, %rdx
	xorq	%rdx, %rax
	imulq	%rbp, %rax
	btrq	$63, %rax
	movq	%rax, _ZL6g_sink(%rip)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vpbroadcastd	64(%rsp), %ymm2
	vpbroadcastd	480(%rsp), %ymm5
	movq	%rax, %rbx
	movq	408(%rsp), %rax
	vmovdqu	64(%rax), %ymm1
	movl	520(%rsp), %eax
	negl	%eax
	vmovdqa	%ymm1, %ymm0
	vmovd	%eax, %xmm3
	movl	64(%rsp), %eax
	vpbroadcastd	%xmm3, %ymm3
	subl	$1, %eax
	sarl	%eax
	vmovd	%eax, %xmm4
	xorl	%eax, %eax
	vpbroadcastd	%xmm4, %ymm4
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L278:
	vpaddd	%ymm0, %ymm5, %ymm0
	addq	$1, %rax
	vpcmpgtd	%ymm0, %ymm3, %ymm7
	cmpq	%rax, %r14
	vpand	%ymm7, %ymm2, %ymm7
	vpaddd	%ymm7, %ymm0, %ymm7
	vpcmpgtd	%ymm4, %ymm0, %ymm0
	vpand	%ymm0, %ymm2, %ymm0
	vpsubd	%ymm0, %ymm7, %ymm7
	vmovdqa	%ymm7, %ymm0
	jne	.L278
	movq	408(%rsp), %rax
	vmovd	%xmm7, %edx
	movabsq	$1099511628211, %rcx
	vmovdqu	%ymm2, 224(%rsp)
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm7, 32(%rax)
	movabsq	$1469598103934665603, %rax
	xorq	%rax, %rdx
	vpextrd	$1, %xmm7, %eax
	vmovdqu	%ymm4, 160(%rsp)
	imulq	%rcx, %rdx
	vmovdqu	%ymm1, 96(%rsp)
	vmovdqu	%ymm3, 128(%rsp)
	xorq	%rdx, %rax
	vpextrd	$2, %xmm7, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$3, %xmm7, %eax
	vextracti128	$0x1, %ymm7, %xmm7
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	vmovd	%xmm7, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$1, %xmm7, %eax
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	vpextrd	$2, %xmm7, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$3, %xmm7, %eax
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	imulq	%rcx, %rax
	btrq	$63, %rax
	movq	%rax, _ZL6g_sink(%rip)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r13
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vmovd	%r15d, %xmm7
	vmovdqu	96(%rsp), %ymm1
	vmovdqu	224(%rsp), %ymm2
	vmovdqu	192(%rsp), %ymm5
	movq	%rax, %rbp
	vpbroadcastd	%xmm7, %ymm7
	xorl	%eax, %eax
	vmovdqu	160(%rsp), %ymm4
	vmovdqu	128(%rsp), %ymm3
	.p2align 4,,10
	.p2align 3
.L279:
	vpaddd	%ymm1, %ymm5, %ymm1
	addq	$1, %rax
	vpsrlq	$32, %ymm1, %ymm8
	vpmuldq	%ymm7, %ymm1, %ymm0
	cmpq	%rax, %r14
	vpmuldq	%ymm7, %ymm8, %ymm8
	vpsrlq	$32, %ymm0, %ymm0
	vpsrlq	$32, %ymm8, %ymm8
	vpshufd	$136, %ymm0, %ymm0
	vpshufd	$136, %ymm8, %ymm8
	vpunpckldq	%ymm8, %ymm0, %ymm0
	vpmulld	%ymm2, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm1
	vpcmpgtd	%ymm1, %ymm3, %ymm0
	vpand	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vpcmpgtd	%ymm4, %ymm1, %ymm1
	vpand	%ymm1, %ymm2, %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vpcmpgtd	%ymm0, %ymm3, %ymm1
	vpand	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm1
	vpcmpgtd	%ymm4, %ymm0, %ymm0
	vpand	%ymm0, %ymm2, %ymm0
	vpsubd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	jne	.L279
	vmovd	%xmm0, %edx
	movq	408(%rsp), %r15
	movabsq	$1469598103934665603, %rax
	movabsq	$1099511628211, %rcx
	xorq	%rax, %rdx
	vpextrd	$1, %xmm0, %eax
	imulq	%rcx, %rdx
	vmovdqu	%ymm0, (%r15)
	xorq	%rdx, %rax
	vpextrd	$2, %xmm0, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$3, %xmm0, %eax
	vextracti128	$0x1, %ymm0, %xmm0
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	vmovd	%xmm0, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$1, %xmm0, %eax
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	vpextrd	$2, %xmm0, %edx
	imulq	%rcx, %rax
	xorq	%rax, %rdx
	vpextrd	$3, %xmm0, %eax
	imulq	%rcx, %rdx
	xorq	%rdx, %rax
	imulq	%rcx, %rax
	btrq	$63, %rax
	movq	%rax, _ZL6g_sink(%rip)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vmovdqu	32(%r15), %ymm0
	vpxor	688(%rsp), %ymm0, %ymm1
	vptest	%ymm1, %ymm1
	je	.L463
.L282:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$45, %r8d
	leaq	.LC35(%rip), %rdx
	movq	%rbx, %rcx
	vzeroupper
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L421:
	movq	64(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
	movl	$3, 96(%rsp)
	jmp	.L297
.L148:
	movq	%rsi, %rcx
	movq	%rsi, %rax
	andl	$1, %ecx
	sarq	%rax
	addq	%rax, %rcx
	jmp	.L149
.L463:
	vmovdqu	(%r15), %ymm1
	vpxor	720(%rsp), %ymm1, %ymm1
	vptest	%ymm1, %ymm1
	jne	.L282
	vpxor	(%r15), %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	jne	.L282
	xorl	%edx, %edx
	vmovsd	.LC33(%rip), %xmm1
	subq	%rdi, %r12
	subq	%rbp, %rax
	movl	%edx, 96(%rsp)
	movq	568(%rsp), %rdx
	movl	$10, %r8d
	subq	560(%rsp), %rdx
	subq	624(%rsp), %rsi
	vcvtsi2sdq	%rdx, %xmm6, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm12
	movq	584(%rsp), %rdx
	subq	576(%rsp), %rdx
	vcvtsi2sdq	%rdx, %xmm6, %xmm0
	movq	600(%rsp), %rdx
	subq	592(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	vdivsd	%xmm1, %xmm0, %xmm11
	vcvtsi2sdq	%rdx, %xmm6, %xmm0
	movq	616(%rsp), %rdx
	subq	608(%rsp), %rdx
	vdivsd	%xmm1, %xmm0, %xmm5
	vcvtsi2sdq	%rdx, %xmm6, %xmm0
	movq	%r13, %rdx
	subq	%rbx, %rdx
	vmovapd	%xmm5, %xmm13
	vdivsd	%xmm1, %xmm0, %xmm5
	vcvtsi2sdq	%rsi, %xmm6, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm10
	vcvtsi2sdq	%r12, %xmm6, %xmm0
	vmovq	%xmm5, %r15
	vdivsd	%xmm1, %xmm0, %xmm8
	vcvtsi2sdq	%rdx, %xmm6, %xmm0
	leaq	.LC34(%rip), %rdx
	vdivsd	%xmm1, %xmm0, %xmm9
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm7
	vzeroupper
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$24, %r8d
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC37(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm12, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm11, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$32, %r8d
	leaq	.LC40(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm13, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$32, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovq	%r15, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC42(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	%xmm11, %xmm12, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$29, %r8d
	leaq	.LC44(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%r14, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$19, %r8d
	leaq	.LC45(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC46(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm10, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC47(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm9, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC48(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm8, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC49(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovapd	%xmm7, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$2, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC50(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	%xmm9, %xmm10, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC51(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$33, %r8d
	leaq	.LC52(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	%xmm7, %xmm8, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$8, 496(%rsp)
	movq	504(%rsp), %rdi
	cmpq	%rdi, 496(%rsp)
	jne	.L288
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$6, %r8d
	leaq	.LC54(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	_ZL6g_sink(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
	jmp	.L297
.L449:
	leaq	(%rdx,%rdi), %rax
	cmpq	%rax, 224(%rsp)
	jle	.L168
	movq	408(%rsp), %rsi
	movl	%eax, 512(%rsp)
	movl	%eax, 64(%rsi)
	movq	96(%rsp), %rax
	addq	$1, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L170
.L169:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L173
	movq	408(%rsp), %rax
	movl	%edx, 192(%rsp)
	movl	%edx, 68(%rax)
	movq	96(%rsp), %rax
	addq	$2, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L175
.L174:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L177
	movq	408(%rsp), %rax
	movl	%edx, 160(%rsp)
	movl	%edx, 72(%rax)
	movq	96(%rsp), %rax
	addq	$3, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L179
.L178:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L181
	movq	408(%rsp), %rax
	movl	%edx, 328(%rsp)
	movl	%edx, 76(%rax)
	movq	96(%rsp), %rax
	addq	$4, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L183
.L182:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L185
	movq	408(%rsp), %rax
	movl	%edx, 400(%rsp)
	movl	%edx, 80(%rax)
	movq	96(%rsp), %rax
	addq	$5, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L187
.L186:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L189
	movq	408(%rsp), %rax
	movl	%edx, 336(%rsp)
	movl	%edx, 84(%rax)
	movq	96(%rsp), %rax
	addq	$6, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L191
.L190:
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpq	%rdx, 224(%rsp)
	jle	.L193
	movq	408(%rsp), %rax
	movl	%edx, 128(%rsp)
	movl	%edx, 88(%rax)
	movq	96(%rsp), %rax
	addq	$7, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	movq	%rdx, %rdi
	je	.L195
.L194:
	addq	64(%rsp), %rdi
	jmp	.L196
.L164:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$40, %r8d
	leaq	.LC32(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE15:
	jmp	.L421
.L408:
	movq	64(%rsp), %rsi
	movq	224(%rsp), %rdi
.L107:
	movq	%rdx, 32(%rsp)
	movq	160(%rsp), %rdx
	movq	%rax, %r9
	leaq	.LC23(%rip), %rcx
.LEHB16:
	call	_ZN12_GLOBAL__N_1L24report_preflight_failureEPKcxxxx.isra.0
.LEHE16:
	jmp	.L418
.L309:
	movq	64(%rsp), %rsi
	movq	224(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%rbx, %r8
	jmp	.L107
.L441:
	movq	%rdi, %rcx
	jmp	.L21
.L434:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB17:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE17:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB18:
	call	__cxa_throw
.LEHE18:
.L315:
	movq	%rax, %rbx
	vzeroupper
.L132:
	movq	632(%rsp), %rcx
	movl	$40, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB19:
	call	_Unwind_Resume
.LEHE19:
.L321:
.L414:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L132
.L435:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB20:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE20:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB21:
	call	__cxa_throw
.LEHE21:
.L145:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB22:
	call	_ZNSt11logic_errorC1EPKc
.LEHE22:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB23:
	call	__cxa_throw
.LEHE23:
.L322:
	jmp	.L414
.L324:
	jmp	.L414
.L136:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB24:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE24:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB25:
	call	__cxa_throw
.LEHE25:
.L47:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB26:
	call	_ZNSt11logic_errorC1EPKc
.LEHE26:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB27:
	call	__cxa_throw
.LEHE27:
.L323:
	jmp	.L414
.L318:
	movq	%rsi, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rbp
	vzeroupper
	call	__cxa_free_exception
.L56:
	subq	$1, %rbp
	jne	.L132
	movq	%rbx, %rcx
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$39, %r8d
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rcx
.LEHB28:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	call	*16(%rax)
	movq	%rbx, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE28:
	call	__cxa_end_catch
	jmp	.L40
.L329:
	movl	$16, %ecx
	movq	224(%rsp), %rsi
	movq	272(%rsp), %rdi
	call	__cxa_allocate_exception
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB29:
	call	_ZNSt11logic_errorC1EPKc
.LEHE29:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB30:
	call	__cxa_throw
.L328:
	movq	%rax, %rbx
	movq	%rdx, %rbp
	vzeroupper
.L80:
	testq	%rdi, %rdi
	je	.L56
	subq	%rdi, %rsi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	call	_ZdlPvy
	jmp	.L56
.L319:
.L411:
	movq	%r12, %rcx
	movq	%rax, %rbx
	movq	%rdx, %rbp
	vzeroupper
	call	__cxa_free_exception
	jmp	.L80
.L316:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	jmp	.L132
.L428:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.LEHE30:
.L438:
	leaq	.LC6(%rip), %rcx
.LEHB31:
	call	_ZSt19__throw_logic_errorPKc
.LEHE31:
.L314:
	movq	%rax, %rbx
	movq	%rdx, %rbp
	vzeroupper
	jmp	.L56
.L311:
	movq	%rax, %rcx
	movq	%rdx, %rsi
	vzeroupper
.L292:
	subq	$1, %rsi
	jne	.L416
	call	__cxa_begin_catch
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$25, %r8d
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rcx
.LEHB32:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	call	*16(%rax)
	movq	%rbx, %rcx
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.isra.0
.LEHE32:
	call	__cxa_end_catch
	jmp	.L33
.L228:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB33:
	call	_ZNSt11logic_errorC1EPKc
.LEHE33:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB34:
	call	__cxa_throw
.LEHE34:
.L330:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB35:
	call	_ZNSt11logic_errorC1EPKc
.LEHE35:
	leaq	_ZNSt11logic_errorD1Ev(%rip), %r8
	leaq	_ZTISt11logic_error(%rip), %rdx
	movq	%rsi, %rcx
.LEHB36:
	call	__cxa_throw
.LEHE36:
.L327:
	jmp	.L414
.L325:
	jmp	.L414
.L443:
	leaq	.LC7(%rip), %rcx
.LEHB37:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE37:
.L317:
	vzeroupper
	movq	%rax, %rsi
	movq	%rdx, %rbp
	call	*%rbx
	cmpl	$0, (%rax)
	jne	.L30
	call	*%rbx
	movl	%r12d, (%rax)
.L30:
	movq	%rsi, %rbx
	movq	%rbp, %rsi
	jmp	.L31
.L442:
	leaq	.LC7(%rip), %rcx
.LEHB38:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE38:
.L312:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
.L31:
	movq	784(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L291
	movq	800(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L291:
	movq	%rbx, %rcx
	jmp	.L292
.L198:
	movl	$16, %ecx
	vzeroupper
	call	__cxa_allocate_exception
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB39:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE39:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%rsi, %rcx
.LEHB40:
	call	__cxa_throw
.LEHE40:
.L103:
	movl	$16, %ecx
	movq	64(%rsp), %rsi
	movq	224(%rsp), %rdi
	call	__cxa_allocate_exception
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB41:
	call	_ZNSt16invalid_argumentC1EPKc
.LEHE41:
	leaq	_ZNSt16invalid_argumentD1Ev(%rip), %r8
	leaq	_ZTISt16invalid_argument(%rip), %rdx
	movq	%r12, %rcx
.LEHB42:
	call	__cxa_throw
.LEHE42:
.L326:
	jmp	.L414
.L320:
	jmp	.L411
.L313:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
.L416:
.LEHB43:
	call	_Unwind_Resume
	nop
.LEHE43:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA12847:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12847-.LLSDATTD12847
.LLSDATTD12847:
	.byte	0x1
	.uleb128 .LLSDACSE12847-.LLSDACSB12847
.LLSDACSB12847:
	.uleb128 .LEHB2-.LFB12847
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB12847
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L314-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB4-.LFB12847
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB5-.LFB12847
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L314-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB12847
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB7-.LFB12847
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB8-.LFB12847
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L314-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB12847
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L312-.LFB12847
	.uleb128 0x7
	.uleb128 .LEHB10-.LFB12847
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L317-.LFB12847
	.uleb128 0x7
	.uleb128 .LEHB11-.LFB12847
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB12847
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB13-.LFB12847
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L311-.LFB12847
	.uleb128 0x5
	.uleb128 .LEHB14-.LFB12847
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB12847
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB16-.LFB12847
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB17-.LFB12847
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L321-.LFB12847
	.uleb128 0
	.uleb128 .LEHB18-.LFB12847
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB19-.LFB12847
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB12847
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L322-.LFB12847
	.uleb128 0
	.uleb128 .LEHB21-.LFB12847
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB22-.LFB12847
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L324-.LFB12847
	.uleb128 0
	.uleb128 .LEHB23-.LFB12847
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB24-.LFB12847
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L323-.LFB12847
	.uleb128 0
	.uleb128 .LEHB25-.LFB12847
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB26-.LFB12847
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L318-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB27-.LFB12847
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L314-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB28-.LFB12847
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L316-.LFB12847
	.uleb128 0
	.uleb128 .LEHB29-.LFB12847
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L319-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB30-.LFB12847
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB31-.LFB12847
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L311-.LFB12847
	.uleb128 0x5
	.uleb128 .LEHB32-.LFB12847
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L313-.LFB12847
	.uleb128 0
	.uleb128 .LEHB33-.LFB12847
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L327-.LFB12847
	.uleb128 0
	.uleb128 .LEHB34-.LFB12847
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB35-.LFB12847
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L325-.LFB12847
	.uleb128 0
	.uleb128 .LEHB36-.LFB12847
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB37-.LFB12847
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L317-.LFB12847
	.uleb128 0x7
	.uleb128 .LEHB38-.LFB12847
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L317-.LFB12847
	.uleb128 0x7
	.uleb128 .LEHB39-.LFB12847
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L326-.LFB12847
	.uleb128 0
	.uleb128 .LEHB40-.LFB12847
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L315-.LFB12847
	.uleb128 0
	.uleb128 .LEHB41-.LFB12847
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L320-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB42-.LFB12847
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L328-.LFB12847
	.uleb128 0x3
	.uleb128 .LEHB43-.LFB12847
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE12847:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	.LDFCM0-.
.LLSDATT12847:
	.section	.text.startup,"x"
	.seh_endproc
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt11logic_error
	.section	.rdata$_ZTSSt11logic_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt11logic_error:
	.ascii "St11logic_error\0"
	.globl	_ZTISt11logic_error
	.section	.rdata$_ZTISt11logic_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt16invalid_argument
	.section	.rdata$_ZTSSt16invalid_argument,"dr"
	.linkonce same_size
	.align 16
_ZTSSt16invalid_argument:
	.ascii "St16invalid_argument\0"
	.globl	_ZTISt16invalid_argument
	.section	.rdata$_ZTISt16invalid_argument,"dr"
	.linkonce same_size
	.align 8
_ZTISt16invalid_argument:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16invalid_argument
	.quad	_ZTISt11logic_error
.lcomm _ZL6g_sink,8,8
	.section .rdata,"dr"
	.align 32
.LC10:
	.quad	257
	.quad	65537
	.quad	1000003
	.quad	10000019
	.align 16
.LC12:
	.quad	-9223372036854775808
	.quad	-9223372036854775807
	.align 16
.LC13:
	.quad	9223372036854775806
	.quad	9223372036854775807
	.align 8
.LC16:
	.long	-2147483648
	.long	-2147483647
	.align 8
.LC17:
	.long	0
	.long	1
	.align 8
.LC33:
	.long	0
	.long	1104006501
	.data
	.align 8
.LDFCM0:
	.quad	_ZTISt9exception
	.def	__modti3;	.scl	2;	.type	32;	.endef
	.def	__udivti3;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt16invalid_argumentD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt11logic_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt11logic_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZNSt11logic_errorD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt11logic_errorD1Ev
	.linkonce	discard
.refptr._ZNSt11logic_errorD1Ev:
	.quad	_ZNSt11logic_errorD1Ev
	.section	.rdata$.refptr._ZNSt16invalid_argumentD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt16invalid_argumentD1Ev
	.linkonce	discard
.refptr._ZNSt16invalid_argumentD1Ev:
	.quad	_ZNSt16invalid_argumentD1Ev
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
