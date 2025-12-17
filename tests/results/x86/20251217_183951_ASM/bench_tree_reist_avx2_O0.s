	.file	"bench_tree_reist_avx2.cpp"
	.text
	.section	.text$_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
	.def	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_:
.LFB2489:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	.def	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv:
.LFB2491:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_Z15test_scalar_addx
	.def	_Z15test_scalar_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15test_scalar_addx
_Z15test_scalar_addx:
.LFB8111:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$1, -12(%rbp)
	movl	$2, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L5
.L6:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	addq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L6
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z13test_avx2_addx
	.def	_Z13test_avx2_addx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13test_avx2_addx
_Z13test_avx2_addx:
.LFB8112:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$288, %rsp
	.seh_stackalloc	288
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 176(%rbp)
	leaq	160(%rbp), %rax
	subq	$288, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movl	$1, 116(%rbp)
	vpbroadcastd	116(%rbp), %ymm0
	vmovdqa	%ymm0, 192(%rax)
	movl	$2, 120(%rbp)
	vpbroadcastd	120(%rbp), %ymm0
	vmovdqa	%ymm0, 160(%rax)
	movl	$1, 124(%rbp)
	vpbroadcastd	124(%rbp), %ymm0
	vmovdqa	%ymm0, 128(%rax)
	movq	$0, 152(%rbp)
	jmp	.L11
.L14:
	vmovdqa	192(%rax), %ymm0
	vmovdqa	%ymm0, 32(%rax)
	vmovdqa	160(%rax), %ymm0
	vmovdqa	%ymm0, (%rax)
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rax), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 192(%rax)
	vmovdqa	192(%rax), %ymm0
	vmovdqa	%ymm0, 96(%rax)
	vmovdqa	128(%rax), %ymm0
	vmovdqa	%ymm0, 64(%rax)
	vmovdqa	96(%rax), %ymm1
	vmovdqa	64(%rax), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, 160(%rax)
	addq	$1, 152(%rbp)
.L11:
	movq	176(%rbp), %rdx
	leaq	7(%rdx), %rcx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	sarq	$3, %rdx
	cmpq	%rdx, 152(%rbp)
	jl	.L14
	vmovdqa	192(%rax), %ymm0
	vmovdqa	%xmm0, 128(%rbp)
	vmovdqa	128(%rbp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, 112(%rbp)
	nop
	addq	$288, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z13approx_q_avx2Dv4_xj,"x"
	.linkonce discard
	.globl	_Z13approx_q_avx2Dv4_xj
	.def	_Z13approx_q_avx2Dv4_xj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13approx_q_avx2Dv4_xj
_Z13approx_q_avx2Dv4_xj:
.LFB8113:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$616, %rsp
	.seh_stackalloc	616
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 512(%rbp)
	movq	%rdx, %rbx
	vmovdqa	(%rbx), %ymm0
	vmovdqa	%ymm0, -128(%rbp)
	movl	%r8d, 528(%rbp)
	leaq	480(%rbp), %rax
	subq	$576, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movl	528(%rbp), %edx
	movl	%edx, 464(%rbp)
	vpbroadcastd	464(%rbp), %ymm0
	vmovdqa	%ymm0, 512(%rax)
	vmovdqa	-128(%rbp), %ymm0
	vmovdqa	%ymm0, 32(%rax)
	vmovdqa	512(%rax), %ymm0
	vmovdqa	%ymm0, (%rax)
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm1
	vpmuldq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 480(%rax)
	vmovdqa	-128(%rbp), %ymm0
	vmovdqa	%ymm0, 64(%rax)
	movl	$32, 468(%rbp)
	vmovdqa	64(%rax), %ymm1
	vmovd	468(%rbp), %xmm0
	vpsrlq	%xmm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 448(%rax)
	vmovdqa	448(%rax), %ymm0
	vmovdqa	%ymm0, 128(%rax)
	vmovdqa	512(%rax), %ymm0
	vmovdqa	%ymm0, 96(%rax)
	vmovdqa	96(%rax), %ymm0
	vmovdqa	128(%rax), %ymm1
	vpmuldq	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 416(%rax)
	vmovdqa	480(%rax), %ymm0
	vmovdqa	%ymm0, 160(%rax)
	movl	$32, 472(%rbp)
	vmovdqa	160(%rax), %ymm1
	vmovd	472(%rbp), %xmm0
	vpsrlq	%xmm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 384(%rax)
	vmovdqa	416(%rax), %ymm0
	vmovdqa	%ymm0, 192(%rax)
	movl	$32, 476(%rbp)
	vmovdqa	192(%rax), %ymm1
	vmovd	476(%rbp), %xmm0
	vpsrlq	%xmm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 352(%rax)
	vmovdqa	384(%rax), %ymm0
	vpshufd	$136, %ymm0, %ymm0
	vmovdqa	%ymm0, 320(%rax)
	vmovdqa	352(%rax), %ymm0
	vpshufd	$136, %ymm0, %ymm0
	vmovdqa	%ymm0, 288(%rax)
	vmovdqa	320(%rax), %ymm0
	vmovdqa	%ymm0, 256(%rax)
	vmovdqa	288(%rax), %ymm0
	vmovdqa	%ymm0, 224(%rax)
	vmovdqa	224(%rax), %ymm1
	vmovdqa	256(%rax), %ymm0
	vpunpckldq	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	%ymm1, %ymm0
	movq	512(%rbp), %rax
	vmovdqa	%ymm0, (%rax)
	movq	512(%rbp), %rax
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_Z19test_scalar_barrettxRK7Context
	.def	_Z19test_scalar_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19test_scalar_barrettxRK7Context
_Z19test_scalar_barrettxRK7Context:
.LFB8114:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$12345, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movl	-20(%rbp), %eax
	cltq
	movq	24(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	imull	-12(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	addq	$1, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L26
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z17test_avx2_barrettxRK7Context
	.def	_Z17test_avx2_barrettxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17test_avx2_barrettxRK7Context
_Z17test_avx2_barrettxRK7Context:
.LFB8115:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$520, %rsp
	.seh_stackalloc	520
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 416(%rbp)
	movq	%rdx, 424(%rbp)
	leaq	384(%rbp), %rax
	subq	$416, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, %rbx
	movl	$12345, 340(%rbp)
	vpbroadcastd	340(%rbp), %ymm0
	vmovdqa	%ymm0, 320(%rbx)
	movq	424(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, 344(%rbp)
	vpbroadcastd	344(%rbp), %ymm0
	vmovdqa	%ymm0, 288(%rbx)
	movl	$1, 348(%rbp)
	vpbroadcastd	348(%rbp), %ymm0
	vmovdqa	%ymm0, 256(%rbx)
	movq	$0, 376(%rbp)
	jmp	.L31
.L35:
	movq	424(%rbp), %rax
	movl	8(%rax), %ecx
	leaq	-64(%rbp), %rax
	vmovdqa	320(%rbx), %ymm0
	vmovdqa	%ymm0, -96(%rbp)
	leaq	-96(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_Z13approx_q_avx2Dv4_xj
	vmovdqa	-64(%rbp), %ymm0
	vmovdqa	%ymm0, 224(%rbx)
	vmovdqa	224(%rbx), %ymm0
	vmovdqa	%ymm0, 32(%rbx)
	vmovdqa	288(%rbx), %ymm0
	vmovdqa	%ymm0, (%rbx)
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%rbx), %ymm0
	vpmulld	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	320(%rbx), %ymm0
	vmovdqa	%ymm0, 96(%rbx)
	vmovdqa	%ymm1, 64(%rbx)
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%rbx), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 192(%rbx)
	vmovdqa	192(%rbx), %ymm0
	vmovdqa	%ymm0, 160(%rbx)
	vmovdqa	256(%rbx), %ymm0
	vmovdqa	%ymm0, 128(%rbx)
	vmovdqa	160(%rbx), %ymm1
	vmovdqa	128(%rbx), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, 320(%rbx)
	addq	$1, 376(%rbp)
.L31:
	movq	416(%rbp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, 376(%rbp)
	jl	.L35
	vmovdqa	320(%rbx), %ymm0
	vmovdqa	%xmm0, 352(%rbp)
	vmovdqa	352(%rbp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, 336(%rbp)
	nop
	addq	$520, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16test_scalar_fullxRK7Context
	.def	_Z16test_scalar_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_scalar_fullxRK7Context
_Z16test_scalar_fullxRK7Context:
.LFB8116:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$12345, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L37
.L42:
	movl	-20(%rbp), %eax
	cltq
	movq	24(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	imull	-16(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	jmp	.L38
.L39:
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, -12(%rbp)
.L38:
	movq	24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L39
	jmp	.L40
.L41:
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
.L40:
	movq	24(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	cmpl	%eax, -12(%rbp)
	jle	.L41
	movl	-12(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -20(%rbp)
	addq	$1, -8(%rbp)
.L37:
	movq	-8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L42
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z14test_avx2_fullxRK7Context
	.def	_Z14test_avx2_fullxRK7Context;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14test_avx2_fullxRK7Context
_Z14test_avx2_fullxRK7Context:
.LFB8117:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1208, %rsp
	.seh_stackalloc	1208
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 1104(%rbp)
	movq	%rdx, 1112(%rbp)
	leaq	1072(%rbp), %rax
	subq	$1104, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, %rbx
	movl	$12345, 1024(%rbp)
	vpbroadcastd	1024(%rbp), %ymm0
	vmovdqa	%ymm0, 992(%rbx)
	movq	1112(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, 1028(%rbp)
	vpbroadcastd	1028(%rbp), %ymm0
	vmovdqa	%ymm0, 928(%rbx)
	movq	1112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 1032(%rbp)
	vpbroadcastd	1032(%rbp), %ymm0
	vmovdqa	%ymm0, 896(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	%ymm1, 672(%rbx)
	vmovdqa	896(%rbx), %ymm0
	vmovdqa	%ymm0, 640(%rbx)
	vmovdqa	672(%rbx), %ymm0
	vmovdqa	640(%rbx), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 864(%rbx)
	movl	$100, 1036(%rbp)
	vpbroadcastd	1036(%rbp), %ymm0
	vmovdqa	%ymm0, 832(%rbx)
	movq	$0, 1064(%rbp)
	jmp	.L50
.L64:
	movq	1112(%rbp), %rax
	movl	8(%rax), %ecx
	leaq	-64(%rbp), %rax
	vmovdqa	992(%rbx), %ymm0
	vmovdqa	%ymm0, -96(%rbp)
	leaq	-96(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_Z13approx_q_avx2Dv4_xj
	vmovdqa	-64(%rbp), %ymm0
	vmovdqa	%ymm0, 800(%rbx)
	vmovdqa	800(%rbx), %ymm0
	vmovdqa	%ymm0, 544(%rbx)
	vmovdqa	928(%rbx), %ymm0
	vmovdqa	%ymm0, 512(%rbx)
	vmovdqa	544(%rbx), %ymm1
	vmovdqa	512(%rbx), %ymm0
	vpmulld	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	992(%rbx), %ymm0
	vmovdqa	%ymm0, 608(%rbx)
	vmovdqa	%ymm1, 576(%rbx)
	vmovdqa	608(%rbx), %ymm0
	vmovdqa	576(%rbx), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 960(%rbx)
	movl	$0, 1060(%rbp)
	jmp	.L53
.L62:
	vmovdqa	960(%rbx), %ymm0
	vmovdqa	%ymm0, 96(%rbx)
	vmovdqa	896(%rbx), %ymm0
	vmovdqa	%ymm0, 64(%rbx)
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%rbx), %ymm1
	vpcmpgtd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 768(%rbx)
	vmovdqa	960(%rbx), %ymm0
	vmovdqa	%ymm0, 160(%rbx)
	vmovdqa	864(%rbx), %ymm0
	vmovdqa	%ymm0, 128(%rbx)
	vmovdqa	160(%rbx), %ymm0
	vmovdqa	128(%rbx), %ymm1
	vpcmpgtd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 736(%rbx)
	movl	$-1, 1020(%rbp)
	vpbroadcastd	1020(%rbp), %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	736(%rbx), %ymm0
	vmovdqa	%ymm0, 224(%rbx)
	vmovdqa	%ymm1, 192(%rbx)
	vmovdqa	224(%rbx), %ymm1
	vmovdqa	192(%rbx), %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 704(%rbx)
	vmovdqa	928(%rbx), %ymm0
	vmovdqa	%ymm0, 288(%rbx)
	vmovdqa	768(%rbx), %ymm0
	vmovdqa	%ymm0, 256(%rbx)
	vmovdqa	288(%rbx), %ymm1
	vmovdqa	256(%rbx), %ymm0
	vpand	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	960(%rbx), %ymm0
	vmovdqa	%ymm0, 352(%rbx)
	vmovdqa	%ymm1, 320(%rbx)
	vmovdqa	352(%rbx), %ymm0
	vmovdqa	320(%rbx), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 960(%rbx)
	vmovdqa	928(%rbx), %ymm0
	vmovdqa	%ymm0, 416(%rbx)
	vmovdqa	704(%rbx), %ymm0
	vmovdqa	%ymm0, 384(%rbx)
	vmovdqa	416(%rbx), %ymm1
	vmovdqa	384(%rbx), %ymm0
	vpand	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	960(%rbx), %ymm0
	vmovdqa	%ymm0, 480(%rbx)
	vmovdqa	%ymm1, 448(%rbx)
	vmovdqa	480(%rbx), %ymm1
	vmovdqa	448(%rbx), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, 960(%rbx)
	addl	$1, 1060(%rbp)
.L53:
	cmpl	$1, 1060(%rbp)
	jle	.L62
	vmovdqa	960(%rbx), %ymm0
	vmovdqa	%ymm0, 32(%rbx)
	vmovdqa	832(%rbx), %ymm0
	vmovdqa	%ymm0, (%rbx)
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%rbx), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, 992(%rbx)
	addq	$1, 1064(%rbp)
.L50:
	movq	1104(%rbp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, 1064(%rbp)
	jl	.L64
	vmovdqa	992(%rbx), %ymm0
	vmovdqa	%xmm0, 1040(%rbp)
	vmovdqa	1040(%rbp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, 1016(%rbp)
	nop
	addq	$1208, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z18test_scalar_memoryxPi
	.def	_Z18test_scalar_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18test_scalar_memoryxPi
_Z18test_scalar_memoryxPi:
.LFB8118:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L66
.L67:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$54, %rax
	addq	%rax, %rdx
	andl	$1023, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	24(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	addq	$1, -8(%rbp)
.L66:
	movq	-8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L67
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16test_avx2_memoryxPi
	.def	_Z16test_avx2_memoryxPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_avx2_memoryxPi
_Z16test_avx2_memoryxPi:
.LFB8119:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%rbp, %rax
	subq	$192, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	$0, -8(%rbp)
	jmp	.L69
.L73:
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	%rcx, %rdx
	sarq	$63, %rdx
	shrq	$57, %rdx
	addq	%rdx, %rcx
	andl	$127, %ecx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	sall	$3, %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	%ymm0, 96(%rax)
	movl	$1, -28(%rbp)
	vpbroadcastd	-28(%rbp), %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	96(%rax), %ymm0
	vmovdqa	%ymm0, 32(%rax)
	vmovdqa	%ymm1, (%rax)
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rax), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 96(%rax)
	movl	-12(%rbp), %edx
	sall	$3, %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -24(%rbp)
	vmovdqa	96(%rax), %ymm0
	vmovdqa	%ymm0, 64(%rax)
	movq	-24(%rbp), %rdx
	vmovdqa	64(%rax), %ymm0
	vmovdqa	%ymm0, (%rdx)
	nop
	addq	$1, -8(%rbp)
.L69:
	movq	16(%rbp), %rdx
	leaq	7(%rdx), %rcx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	sarq	$3, %rdx
	cmpq	%rdx, -8(%rbp)
	jl	.L73
	nop
	nop
	addq	$192, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE_clEv
_ZZ4mainENKUlvE_clEv:
.LFB8122:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$100000000, %ecx
	call	_Z15test_scalar_addx
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE0_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE0_clEv
_ZZ4mainENKUlvE0_clEv:
.LFB8123:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$100000000, %ecx
	call	_Z13test_avx2_addx
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE1_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE1_clEv
_ZZ4mainENKUlvE1_clEv:
.LFB8124:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z19test_scalar_barrettxRK7Context
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE2_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE2_clEv
_ZZ4mainENKUlvE2_clEv:
.LFB8125:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z17test_avx2_barrettxRK7Context
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE3_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE3_clEv
_ZZ4mainENKUlvE3_clEv:
.LFB8126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z16test_scalar_fullxRK7Context
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE4_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE4_clEv
_ZZ4mainENKUlvE4_clEv:
.LFB8127:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z14test_avx2_fullxRK7Context
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE5_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE5_clEv
_ZZ4mainENKUlvE5_clEv:
.LFB8128:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z18test_scalar_memoryxPi
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE6_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE6_clEv
_ZZ4mainENKUlvE6_clEv:
.LFB8129:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$100000000, %ecx
	call	_Z16test_avx2_memoryxPi
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "REIST Performance Diagnosis\12\0"
	.align 8
.LC1:
	.ascii "============================\12\12\0"
.LC2:
	.ascii "Test 1: Pure Addition (\0"
.LC3:
	.ascii " iterations)\12\0"
	.align 8
.LC4:
	.ascii "----------------------------------------------\12\0"
.LC5:
	.ascii "Scalar\0"
.LC6:
	.ascii "AVX2  \0"
	.align 8
.LC7:
	.ascii "Expected speedup: ~8x (8 values in parallel)\12\0"
.LC8:
	.ascii "Actual speedup: \0"
.LC9:
	.ascii "x\12\12\0"
	.align 8
.LC10:
	.ascii "Test 2: Barrett Approximation, B=13 (\0"
.LC11:
	.ascii "Expected speedup: ~4-6x\12\0"
	.align 8
.LC12:
	.ascii "Test 3: Full Reduction with Centering, B=13 (\0"
.LC13:
	.ascii "Expected speedup: ~3-5x\12\0"
.LC14:
	.ascii "Test 4: Memory Bandwidth (\0"
	.align 8
.LC15:
	.ascii "Expected speedup: ~2-4x (memory bound)\12\0"
.LC16:
	.ascii "============================\12\0"
.LC17:
	.ascii "Analysis\12\0"
	.align 8
.LC19:
	.ascii "\342\232\240 WARNING: Pure addition speedup < 2x\12\0"
.LC20:
	.ascii "   Possible causes:\12\0"
	.align 8
.LC21:
	.ascii "   - Compiler is auto-vectorizing scalar code\12\0"
	.align 8
.LC22:
	.ascii "   - CPU throttling AVX2 (thermal/power limits)\12\0"
.LC23:
	.ascii "   - Measurement error\12\12\0"
	.align 8
.LC24:
	.ascii "   Try: Compile with -fno-tree-vectorize\12\0"
	.align 8
.LC25:
	.ascii "   Try: Check CPU frequency: cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\12\12\0"
	.align 8
.LC27:
	.ascii "\342\234\223 Good: AVX2 providing expected speedup on pure compute\12\12\0"
	.align 8
.LC28:
	.ascii "\342\232\240 WARNING: Barrett speedup < 2x\12\0"
	.align 8
.LC29:
	.ascii "   - 64-bit multiply (mul_epi32) is expensive\12\0"
	.align 8
.LC30:
	.ascii "   - Shuffle overhead dominates\12\0"
	.align 8
.LC31:
	.ascii "   - Memory pressure from wider registers\12\12\0"
	.align 8
.LC32:
	.ascii "\342\234\223 Good: Barrett benefits from AVX2\12\12\0"
	.align 8
.LC34:
	.ascii "\342\232\240 WARNING: Full reduction speedup < 1.5x\12\0"
.LC35:
	.ascii "   Likely causes:\12\0"
	.align 8
.LC36:
	.ascii "   - Branch misprediction costs dominate\12\0"
	.align 8
.LC37:
	.ascii "   - Correction loops have unpredictable iterations\12\0"
	.align 8
.LC38:
	.ascii "   - SIMD overhead outweighs parallel benefit\12\12\0"
	.align 8
.LC39:
	.ascii "   Recommendation: REIST-Linear may not benefit from AVX2\12\0"
	.align 8
.LC40:
	.ascii "   for this workload. Consider alternative approaches.\12\12\0"
.LC41:
	.ascii "CPU Info Check:\12\0"
	.align 8
.LC42:
	.ascii "Run: lscpu | grep -E '(Model name|MHz|Flags)'\12\0"
	.align 8
.LC43:
	.ascii "Look for 'avx2' in flags and check CPU frequency\12\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8121:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	leaq	224(%rsp), %rbp
	.seh_setframe	%rbp, 224
	.seh_endprologue
	movq	%rbp, %rax
	subq	$192, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, %rbx
	call	__main
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	$100000000, -16(%rbp)
	movl	$13, -144(%rbp)
	movl	$6, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$330382099, -136(%rbp)
	movl	$257, -156(%rbp)
	movl	$128, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	$16711935, -148(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$100000000, %edx
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC5(%rip), %rdx
	leaq	-130(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-129(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE0_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-24(%rbp), %xmm0
	vdivsd	-32(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC10(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$100000000, %edx
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE1_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE2_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-40(%rbp), %xmm0
	vdivsd	-48(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$100000000, %edx
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE3_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-104(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE4_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-56(%rbp), %xmm0
	vdivsd	-64(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$4096, %ecx
	call	_Znay
	movq	%rax, (%rbx)
	movl	$0, -4(%rbp)
	jmp	.L83
.L84:
	movq	(%rbx), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L83:
	cmpl	$1023, -4(%rbp)
	jle	.L84
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$100000000, %edx
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, -96(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE5_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movq	%rbx, -88(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_Z5benchIZ4mainEUlvE6_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	leaq	.LC15(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-72(%rbp), %xmm0
	vdivsd	-80(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L85
	movq	(%rbx), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L85:
	leaq	.LC16(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-24(%rbp), %xmm0
	vdivsd	-32(%rbp), %xmm0, %xmm1
	vmovsd	.LC18(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L100
	leaq	.LC19(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC21(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC22(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC23(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC24(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC25(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L88
.L100:
	vmovsd	-24(%rbp), %xmm0
	vdivsd	-32(%rbp), %xmm0, %xmm0
	vcomisd	.LC26(%rip), %xmm0
	jbe	.L88
	leaq	.LC27(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L88:
	vmovsd	-40(%rbp), %xmm0
	vdivsd	-48(%rbp), %xmm0, %xmm1
	vmovsd	.LC18(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L101
	leaq	.LC28(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC29(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC30(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC31(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L92
.L101:
	leaq	.LC32(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L92:
	vmovsd	-56(%rbp), %xmm0
	vdivsd	-64(%rbp), %xmm0, %xmm1
	vmovsd	.LC33(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L93
	leaq	.LC34(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC35(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC36(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC37(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC38(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC39(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC40(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L93:
	leaq	.LC41(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC42(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC43(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.def	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv:
.LFB8406:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.def	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB8438:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii ": \0"
.LC46:
	.ascii " ms\12\0"
	.text
	.def	_Z5benchIZ4mainEUlvE_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE_EdOT_PKc
_Z5benchIZ4mainEUlvE_EdOT_PKc:
.LFB8436:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE0_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE0_EdOT_PKc
_Z5benchIZ4mainEUlvE0_EdOT_PKc:
.LFB8439:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE0_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE1_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE1_EdOT_PKc
_Z5benchIZ4mainEUlvE1_EdOT_PKc:
.LFB8441:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE1_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE2_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE2_EdOT_PKc
_Z5benchIZ4mainEUlvE2_EdOT_PKc:
.LFB8442:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE2_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE3_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE3_EdOT_PKc
_Z5benchIZ4mainEUlvE3_EdOT_PKc:
.LFB8443:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE3_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE4_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE4_EdOT_PKc
_Z5benchIZ4mainEUlvE4_EdOT_PKc:
.LFB8444:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE4_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE5_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE5_EdOT_PKc
_Z5benchIZ4mainEUlvE5_EdOT_PKc:
.LFB8445:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE5_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z5benchIZ4mainEUlvE6_EdOT_PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z5benchIZ4mainEUlvE6_EdOT_PKc
_Z5benchIZ4mainEUlvE6_EdOT_PKc:
.LFB8446:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE6_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vmovsd	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE:
.LFB8574:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	vmovq	%rax, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	vmovq	%xmm0, %rax
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	.def	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv:
.LFB8575:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	vmovsd	(%rax), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.def	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB8576:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
	movq	-32(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.def	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB8649:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE:
.LFB8712:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	.LC47(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
	vmovsd	-16(%rbp), %xmm0
	vmovq	%xmm0, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_:
.LFB8745:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	vmovsd	(%rax), %xmm0
	movq	16(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.long	0
	.long	1073741824
	.align 8
.LC26:
	.long	0
	.long	1075314688
	.align 8
.LC33:
	.long	0
	.long	1073217536
	.align 8
.LC45:
	.long	0
	.long	1083129856
	.align 8
.LC47:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
