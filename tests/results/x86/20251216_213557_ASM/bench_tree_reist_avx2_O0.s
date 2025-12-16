	.file	"bench_tree_reist_avx2.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC5IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_:
.LFB2282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.set	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB2285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.text
	.globl	_Z15test_scalar_addl
	.type	_Z15test_scalar_addl, @function
_Z15test_scalar_addl:
.LFB7907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L5
.L6:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	addq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L6
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7907:
	.size	_Z15test_scalar_addl, .-_Z15test_scalar_addl
	.globl	_Z13test_avx2_addl
	.type	_Z13test_avx2_addl, @function
_Z13test_avx2_addl:
.LFB7908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$168, %rsp
	movq	%rdi, -112(%rsp)
	movl	$1, -84(%rsp)
	vpbroadcastd	-84(%rsp), %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	movl	$2, -88(%rsp)
	vpbroadcastd	-88(%rsp), %ymm0
	vmovdqa	%ymm0, -24(%rsp)
	movl	$1, -92(%rsp)
	vpbroadcastd	-92(%rsp), %ymm0
	vmovdqa	%ymm0, 8(%rsp)
	movq	$0, -80(%rsp)
	jmp	.L11
.L14:
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 104(%rsp)
	vmovdqa	-24(%rsp), %ymm0
	vmovdqa	%ymm0, 136(%rsp)
	vmovdqa	104(%rsp), %ymm1
	vmovdqa	136(%rsp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 40(%rsp)
	vmovdqa	8(%rsp), %ymm0
	vmovdqa	%ymm0, 72(%rsp)
	vmovdqa	40(%rsp), %ymm1
	vmovdqa	72(%rsp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, -24(%rsp)
	addq	$1, -80(%rsp)
.L11:
	movq	-112(%rsp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -80(%rsp)
	jl	.L14
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%xmm0, -72(%rsp)
	vmovdqa	-72(%rsp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -96(%rsp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7908:
	.size	_Z13test_avx2_addl, .-_Z13test_avx2_addl
	.section	.text._Z13approx_q_avx2Dv4_xj,"axG",@progbits,_Z13approx_q_avx2Dv4_xj,comdat
	.weak	_Z13approx_q_avx2Dv4_xj
	.type	_Z13approx_q_avx2Dv4_xj, @function
_Z13approx_q_avx2Dv4_xj:
.LFB7909:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$488, %rsp
	vmovdqa	%ymm0, -120(%rsp)
	movl	%edi, -76(%rsp)
	movl	-76(%rsp), %eax
	movl	%eax, -60(%rsp)
	vpbroadcastd	-60(%rsp), %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	vmovdqa	-120(%rsp), %ymm0
	vmovdqa	%ymm0, 424(%rsp)
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 456(%rsp)
	vmovdqa	456(%rsp), %ymm0
	vmovdqa	424(%rsp), %ymm1
	vpmuldq	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, -24(%rsp)
	vmovdqa	-120(%rsp), %ymm0
	vmovdqa	%ymm0, 392(%rsp)
	movl	$32, -64(%rsp)
	vmovdqa	392(%rsp), %ymm0
	vmovd	-64(%rsp), %xmm1
	vpsrlq	%xmm1, %ymm0, %ymm0
	nop
	vmovdqa	%ymm0, 8(%rsp)
	vmovdqa	8(%rsp), %ymm0
	vmovdqa	%ymm0, 328(%rsp)
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 360(%rsp)
	vmovdqa	360(%rsp), %ymm0
	vmovdqa	328(%rsp), %ymm1
	vpmuldq	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, 40(%rsp)
	vmovdqa	-24(%rsp), %ymm0
	vmovdqa	%ymm0, 296(%rsp)
	movl	$32, -68(%rsp)
	vmovdqa	296(%rsp), %ymm0
	vmovd	-68(%rsp), %xmm1
	vpsrlq	%xmm1, %ymm0, %ymm0
	nop
	vmovdqa	%ymm0, 72(%rsp)
	vmovdqa	40(%rsp), %ymm0
	vmovdqa	%ymm0, 264(%rsp)
	movl	$32, -72(%rsp)
	vmovdqa	264(%rsp), %ymm0
	vmovd	-72(%rsp), %xmm1
	vpsrlq	%xmm1, %ymm0, %ymm0
	nop
	vmovdqa	%ymm0, 104(%rsp)
	vmovdqa	72(%rsp), %ymm0
	vpshufd	$136, %ymm0, %ymm0
	vmovdqa	%ymm0, 136(%rsp)
	vmovdqa	104(%rsp), %ymm0
	vpshufd	$136, %ymm0, %ymm0
	vmovdqa	%ymm0, 168(%rsp)
	vmovdqa	136(%rsp), %ymm0
	vmovdqa	%ymm0, 200(%rsp)
	vmovdqa	168(%rsp), %ymm0
	vmovdqa	%ymm0, 232(%rsp)
	vmovdqa	232(%rsp), %ymm1
	vmovdqa	200(%rsp), %ymm0
	vpunpckldq	%ymm1, %ymm0, %ymm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7909:
	.size	_Z13approx_q_avx2Dv4_xj, .-_Z13approx_q_avx2Dv4_xj
	.text
	.globl	_Z19test_scalar_barrettlRK7Context
	.type	_Z19test_scalar_barrettlRK7Context, @function
_Z19test_scalar_barrettlRK7Context:
.LFB7910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$12345, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movl	-20(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	-16(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	addq	$1, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L26
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7910:
	.size	_Z19test_scalar_barrettlRK7Context, .-_Z19test_scalar_barrettlRK7Context
	.globl	_Z17test_avx2_barrettlRK7Context
	.type	_Z17test_avx2_barrettlRK7Context, @function
_Z17test_avx2_barrettlRK7Context:
.LFB7911:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$424, %rsp
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movl	$12345, -396(%rbp)
	vpbroadcastd	-396(%rbp), %ymm0
	vmovdqa	%ymm0, -368(%rbp)
	movq	-432(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -400(%rbp)
	vpbroadcastd	-400(%rbp), %ymm0
	vmovdqa	%ymm0, -336(%rbp)
	movl	$1, -404(%rbp)
	vpbroadcastd	-404(%rbp), %ymm0
	vmovdqa	%ymm0, -304(%rbp)
	movq	$0, -392(%rbp)
	jmp	.L31
.L35:
	movq	-432(%rbp), %rax
	movl	8(%rax), %eax
	vmovdqa	-368(%rbp), %ymm0
	movl	%eax, %edi
	call	_Z13approx_q_avx2Dv4_xj
	vmovdqa	%ymm0, -272(%rbp)
	vmovdqa	-272(%rbp), %ymm0
	vmovdqa	%ymm0, -80(%rbp)
	vmovdqa	-336(%rbp), %ymm0
	vmovdqa	%ymm0, -48(%rbp)
	vmovdqa	-80(%rbp), %ymm1
	vmovdqa	-48(%rbp), %ymm0
	vpmulld	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-368(%rbp), %ymm0
	vmovdqa	%ymm0, -144(%rbp)
	vmovdqa	%ymm1, -112(%rbp)
	vmovdqa	-144(%rbp), %ymm0
	vmovdqa	-112(%rbp), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -240(%rbp)
	vmovdqa	-240(%rbp), %ymm0
	vmovdqa	%ymm0, -208(%rbp)
	vmovdqa	-304(%rbp), %ymm0
	vmovdqa	%ymm0, -176(%rbp)
	vmovdqa	-208(%rbp), %ymm1
	vmovdqa	-176(%rbp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, -368(%rbp)
	addq	$1, -392(%rbp)
.L31:
	movq	-424(%rbp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -392(%rbp)
	jl	.L35
	vmovdqa	-368(%rbp), %ymm0
	vmovdqa	%xmm0, -384(%rbp)
	vmovdqa	-384(%rbp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -408(%rbp)
	nop
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7911:
	.size	_Z17test_avx2_barrettlRK7Context, .-_Z17test_avx2_barrettlRK7Context
	.globl	_Z16test_scalar_fulllRK7Context
	.type	_Z16test_scalar_fulllRK7Context, @function
_Z16test_scalar_fulllRK7Context:
.LFB7912:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$12345, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L37
.L42:
	movl	-20(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	-12(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	jmp	.L38
.L39:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, -16(%rbp)
.L38:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jg	.L39
	jmp	.L40
.L41:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -16(%rbp)
.L40:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	cmpl	%eax, -16(%rbp)
	jle	.L41
	movl	-16(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -20(%rbp)
	addq	$1, -8(%rbp)
.L37:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L42
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7912:
	.size	_Z16test_scalar_fulllRK7Context, .-_Z16test_scalar_fulllRK7Context
	.globl	_Z14test_avx2_fulllRK7Context
	.type	_Z14test_avx2_fulllRK7Context, @function
_Z14test_avx2_fulllRK7Context:
.LFB7913:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$1128, %rsp
	movq	%rdi, -1112(%rbp)
	movq	%rsi, -1120(%rbp)
	movl	$12345, -1072(%rbp)
	vpbroadcastd	-1072(%rbp), %ymm0
	vmovdqa	%ymm0, -1040(%rbp)
	movq	-1120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -1076(%rbp)
	vpbroadcastd	-1076(%rbp), %ymm0
	vmovdqa	%ymm0, -976(%rbp)
	movq	-1120(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -1080(%rbp)
	vpbroadcastd	-1080(%rbp), %ymm0
	vmovdqa	%ymm0, -944(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, -720(%rbp)
	vmovdqa	-944(%rbp), %ymm0
	vmovdqa	%ymm0, -688(%rbp)
	vmovdqa	-720(%rbp), %ymm0
	vmovdqa	-688(%rbp), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -912(%rbp)
	movl	$100, -1084(%rbp)
	vpbroadcastd	-1084(%rbp), %ymm0
	vmovdqa	%ymm0, -880(%rbp)
	movq	$0, -1064(%rbp)
	jmp	.L50
.L64:
	movq	-1120(%rbp), %rax
	movl	8(%rax), %eax
	vmovdqa	-1040(%rbp), %ymm0
	movl	%eax, %edi
	call	_Z13approx_q_avx2Dv4_xj
	vmovdqa	%ymm0, -848(%rbp)
	vmovdqa	-848(%rbp), %ymm0
	vmovdqa	%ymm0, -592(%rbp)
	vmovdqa	-976(%rbp), %ymm0
	vmovdqa	%ymm0, -560(%rbp)
	vmovdqa	-592(%rbp), %ymm1
	vmovdqa	-560(%rbp), %ymm0
	vpmulld	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-1040(%rbp), %ymm0
	vmovdqa	%ymm0, -656(%rbp)
	vmovdqa	%ymm1, -624(%rbp)
	vmovdqa	-656(%rbp), %ymm0
	vmovdqa	-624(%rbp), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -1008(%rbp)
	movl	$0, -1088(%rbp)
	jmp	.L53
.L62:
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	%ymm0, -144(%rbp)
	vmovdqa	-944(%rbp), %ymm0
	vmovdqa	%ymm0, -112(%rbp)
	vmovdqa	-144(%rbp), %ymm0
	vmovdqa	-112(%rbp), %ymm1
	vpcmpgtd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -816(%rbp)
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	%ymm0, -208(%rbp)
	vmovdqa	-912(%rbp), %ymm0
	vmovdqa	%ymm0, -176(%rbp)
	vmovdqa	-208(%rbp), %ymm0
	vmovdqa	-176(%rbp), %ymm1
	vpcmpgtd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -784(%rbp)
	movl	$-1, -1068(%rbp)
	vpbroadcastd	-1068(%rbp), %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-784(%rbp), %ymm0
	vmovdqa	%ymm0, -272(%rbp)
	vmovdqa	%ymm1, -240(%rbp)
	vmovdqa	-272(%rbp), %ymm1
	vmovdqa	-240(%rbp), %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, -752(%rbp)
	vmovdqa	-976(%rbp), %ymm0
	vmovdqa	%ymm0, -336(%rbp)
	vmovdqa	-816(%rbp), %ymm0
	vmovdqa	%ymm0, -304(%rbp)
	vmovdqa	-336(%rbp), %ymm1
	vmovdqa	-304(%rbp), %ymm0
	vpand	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	%ymm0, -400(%rbp)
	vmovdqa	%ymm1, -368(%rbp)
	vmovdqa	-400(%rbp), %ymm0
	vmovdqa	-368(%rbp), %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -1008(%rbp)
	vmovdqa	-976(%rbp), %ymm0
	vmovdqa	%ymm0, -464(%rbp)
	vmovdqa	-752(%rbp), %ymm0
	vmovdqa	%ymm0, -432(%rbp)
	vmovdqa	-464(%rbp), %ymm1
	vmovdqa	-432(%rbp), %ymm0
	vpand	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	%ymm0, -528(%rbp)
	vmovdqa	%ymm1, -496(%rbp)
	vmovdqa	-528(%rbp), %ymm1
	vmovdqa	-496(%rbp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, -1008(%rbp)
	addl	$1, -1088(%rbp)
.L53:
	cmpl	$1, -1088(%rbp)
	jle	.L62
	vmovdqa	-1008(%rbp), %ymm0
	vmovdqa	%ymm0, -80(%rbp)
	vmovdqa	-880(%rbp), %ymm0
	vmovdqa	%ymm0, -48(%rbp)
	vmovdqa	-80(%rbp), %ymm1
	vmovdqa	-48(%rbp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	nop
	vmovdqa	%ymm0, -1040(%rbp)
	addq	$1, -1064(%rbp)
.L50:
	movq	-1112(%rbp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -1064(%rbp)
	jl	.L64
	vmovdqa	-1040(%rbp), %ymm0
	vmovdqa	%xmm0, -1056(%rbp)
	vmovdqa	-1056(%rbp), %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -1092(%rbp)
	nop
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7913:
	.size	_Z14test_avx2_fulllRK7Context, .-_Z14test_avx2_fulllRK7Context
	.globl	_Z18test_scalar_memorylPi
	.type	_Z18test_scalar_memorylPi, @function
_Z18test_scalar_memorylPi:
.LFB7914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
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
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	addq	$1, -8(%rbp)
.L66:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L67
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7914:
	.size	_Z18test_scalar_memorylPi, .-_Z18test_scalar_memorylPi
	.globl	_Z16test_avx2_memorylPi
	.type	_Z16test_avx2_memorylPi, @function
_Z16test_avx2_memorylPi:
.LFB7915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$72, %rsp
	movq	%rdi, -96(%rsp)
	movq	%rsi, -104(%rsp)
	movq	$0, -80(%rsp)
	jmp	.L69
.L73:
	movq	-80(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$57, %rax
	addq	%rax, %rdx
	andl	$127, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -88(%rsp)
	movl	-88(%rsp), %eax
	sall	$3, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	movl	$1, -84(%rsp)
	vpbroadcastd	-84(%rsp), %ymm0
	vmovdqa	%ymm0, %ymm1
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 8(%rsp)
	vmovdqa	%ymm1, 40(%rsp)
	vmovdqa	8(%rsp), %ymm1
	vmovdqa	40(%rsp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	movl	-88(%rsp), %eax
	sall	$3, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rsp)
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, -24(%rsp)
	movq	-72(%rsp), %rax
	vmovdqa	-24(%rsp), %ymm0
	vmovdqa	%ymm0, (%rax)
	nop
	addq	$1, -80(%rsp)
.L69:
	movq	-96(%rsp), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -80(%rsp)
	jl	.L73
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7915:
	.size	_Z16test_avx2_memorylPi, .-_Z16test_avx2_memorylPi
	.align 2
	.type	_ZZ4mainENKUlvE_clEv, @function
_ZZ4mainENKUlvE_clEv:
.LFB7918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$100000000, %edi
	call	_Z15test_scalar_addl
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7918:
	.size	_ZZ4mainENKUlvE_clEv, .-_ZZ4mainENKUlvE_clEv
	.align 2
	.type	_ZZ4mainENKUlvE0_clEv, @function
_ZZ4mainENKUlvE0_clEv:
.LFB7919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$100000000, %edi
	call	_Z13test_avx2_addl
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7919:
	.size	_ZZ4mainENKUlvE0_clEv, .-_ZZ4mainENKUlvE0_clEv
	.align 2
	.type	_ZZ4mainENKUlvE1_clEv, @function
_ZZ4mainENKUlvE1_clEv:
.LFB7920:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z19test_scalar_barrettlRK7Context
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7920:
	.size	_ZZ4mainENKUlvE1_clEv, .-_ZZ4mainENKUlvE1_clEv
	.align 2
	.type	_ZZ4mainENKUlvE2_clEv, @function
_ZZ4mainENKUlvE2_clEv:
.LFB7921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z17test_avx2_barrettlRK7Context
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7921:
	.size	_ZZ4mainENKUlvE2_clEv, .-_ZZ4mainENKUlvE2_clEv
	.align 2
	.type	_ZZ4mainENKUlvE3_clEv, @function
_ZZ4mainENKUlvE3_clEv:
.LFB7922:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z16test_scalar_fulllRK7Context
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7922:
	.size	_ZZ4mainENKUlvE3_clEv, .-_ZZ4mainENKUlvE3_clEv
	.align 2
	.type	_ZZ4mainENKUlvE4_clEv, @function
_ZZ4mainENKUlvE4_clEv:
.LFB7923:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z14test_avx2_fulllRK7Context
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7923:
	.size	_ZZ4mainENKUlvE4_clEv, .-_ZZ4mainENKUlvE4_clEv
	.align 2
	.type	_ZZ4mainENKUlvE5_clEv, @function
_ZZ4mainENKUlvE5_clEv:
.LFB7924:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z18test_scalar_memorylPi
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7924:
	.size	_ZZ4mainENKUlvE5_clEv, .-_ZZ4mainENKUlvE5_clEv
	.align 2
	.type	_ZZ4mainENKUlvE6_clEv, @function
_ZZ4mainENKUlvE6_clEv:
.LFB7925:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$100000000, %edi
	call	_Z16test_avx2_memorylPi
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7925:
	.size	_ZZ4mainENKUlvE6_clEv, .-_ZZ4mainENKUlvE6_clEv
	.section	.rodata
.LC0:
	.string	"REIST Performance Diagnosis\n"
	.align 8
.LC1:
	.string	"============================\n\n"
.LC2:
	.string	"Test 1: Pure Addition ("
.LC3:
	.string	" iterations)\n"
	.align 8
.LC4:
	.string	"----------------------------------------------\n"
.LC5:
	.string	"Scalar"
.LC6:
	.string	"AVX2  "
	.align 8
.LC7:
	.string	"Expected speedup: ~8x (8 values in parallel)\n"
.LC8:
	.string	"Actual speedup: "
.LC9:
	.string	"x\n\n"
	.align 8
.LC10:
	.string	"Test 2: Barrett Approximation, B=13 ("
.LC11:
	.string	"Expected speedup: ~4-6x\n"
	.align 8
.LC12:
	.string	"Test 3: Full Reduction with Centering, B=13 ("
.LC13:
	.string	"Expected speedup: ~3-5x\n"
.LC14:
	.string	"Test 4: Memory Bandwidth ("
	.align 8
.LC15:
	.string	"Expected speedup: ~2-4x (memory bound)\n"
.LC16:
	.string	"============================\n"
.LC17:
	.string	"Analysis\n"
	.align 8
.LC19:
	.string	"\342\232\240 WARNING: Pure addition speedup < 2x\n"
.LC20:
	.string	"   Possible causes:\n"
	.align 8
.LC21:
	.string	"   - Compiler is auto-vectorizing scalar code\n"
	.align 8
.LC22:
	.string	"   - CPU throttling AVX2 (thermal/power limits)\n"
.LC23:
	.string	"   - Measurement error\n\n"
	.align 8
.LC24:
	.string	"   Try: Compile with -fno-tree-vectorize\n"
	.align 8
.LC25:
	.string	"   Try: Check CPU frequency: cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\n\n"
	.align 8
.LC27:
	.string	"\342\234\223 Good: AVX2 providing expected speedup on pure compute\n\n"
	.align 8
.LC28:
	.string	"\342\232\240 WARNING: Barrett speedup < 2x\n"
	.align 8
.LC29:
	.string	"   - 64-bit multiply (mul_epi32) is expensive\n"
	.align 8
.LC30:
	.string	"   - Shuffle overhead dominates\n"
	.align 8
.LC31:
	.string	"   - Memory pressure from wider registers\n\n"
	.align 8
.LC32:
	.string	"\342\234\223 Good: Barrett benefits from AVX2\n\n"
	.align 8
.LC34:
	.string	"\342\232\240 WARNING: Full reduction speedup < 1.5x\n"
.LC35:
	.string	"   Likely causes:\n"
	.align 8
.LC36:
	.string	"   - Branch misprediction costs dominate\n"
	.align 8
.LC37:
	.string	"   - Correction loops have unpredictable iterations\n"
	.align 8
.LC38:
	.string	"   - SIMD overhead outweighs parallel benefit\n\n"
	.align 8
.LC39:
	.string	"   Recommendation: REIST-Linear may not benefit from AVX2\n"
	.align 8
.LC40:
	.string	"   for this workload. Consider alternative approaches.\n\n"
.LC41:
	.string	"CPU Info Check:\n"
	.align 8
.LC42:
	.string	"Run: lscpu | grep -E '(Model name|MHz|Flags)'\n"
	.align 8
.LC43:
	.string	"Look for 'avx2' in flags and check CPU frequency\n\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7917:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$168, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC1(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	$100000000, -120(%rbp)
	movl	$13, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$330382099, -40(%rbp)
	movl	$257, -36(%rbp)
	movl	$128, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$16711935, -28(%rbp)
	leaq	.LC2(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$100000000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC5(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE0_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -104(%rbp)
	leaq	.LC7(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-112(%rbp), %xmm0
	vdivsd	-104(%rbp), %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC10(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$100000000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE1_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -96(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE2_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -88(%rbp)
	leaq	.LC11(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-96(%rbp), %xmm0
	vdivsd	-88(%rbp), %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC12(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$100000000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE3_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE4_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	leaq	.LC13(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-80(%rbp), %xmm0
	vdivsd	-72(%rbp), %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4096, %edi
	call	_Znam@PLT
	movq	%rax, -144(%rbp)
	movl	$0, -148(%rbp)
	jmp	.L83
.L84:
	movq	-144(%rbp), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -148(%rbp)
.L83:
	cmpl	$1023, -148(%rbp)
	jle	.L84
	leaq	.LC14(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$100000000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE5_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC6(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5benchIZ4mainEUlvE6_EdOT_PKc
	vmovq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	leaq	.LC15(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-64(%rbp), %xmm0
	vdivsd	-56(%rbp), %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L85
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L85:
	leaq	.LC16(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC17(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC1(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-112(%rbp), %xmm0
	vdivsd	-104(%rbp), %xmm0, %xmm1
	vmovsd	.LC18(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L101
	leaq	.LC19(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC21(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC22(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC23(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC24(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC25(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L88
.L101:
	vmovsd	-112(%rbp), %xmm0
	vdivsd	-104(%rbp), %xmm0, %xmm0
	vcomisd	.LC26(%rip), %xmm0
	jbe	.L88
	leaq	.LC27(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L88:
	vmovsd	-96(%rbp), %xmm0
	vdivsd	-88(%rbp), %xmm0, %xmm1
	vmovsd	.LC18(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L102
	leaq	.LC28(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC20(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC29(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC30(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC31(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L92
.L102:
	leaq	.LC32(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L92:
	vmovsd	-80(%rbp), %xmm0
	vdivsd	-72(%rbp), %xmm0, %xmm1
	vmovsd	.LC33(%rip), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L93
	leaq	.LC34(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC35(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC36(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC37(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC38(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC39(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC40(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L93:
	leaq	.LC41(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC42(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC43(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7917:
	.size	main, .-main
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB8202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8202:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB8234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8234:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.rodata
.LC44:
	.string	": "
.LC46:
	.string	" ms\n"
	.text
	.type	_Z5benchIZ4mainEUlvE_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE_EdOT_PKc:
.LFB8232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8232:
	.size	_Z5benchIZ4mainEUlvE_EdOT_PKc, .-_Z5benchIZ4mainEUlvE_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE0_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE0_EdOT_PKc:
.LFB8235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE0_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8235:
	.size	_Z5benchIZ4mainEUlvE0_EdOT_PKc, .-_Z5benchIZ4mainEUlvE0_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE1_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE1_EdOT_PKc:
.LFB8237:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE1_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8237:
	.size	_Z5benchIZ4mainEUlvE1_EdOT_PKc, .-_Z5benchIZ4mainEUlvE1_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE2_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE2_EdOT_PKc:
.LFB8238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE2_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8238:
	.size	_Z5benchIZ4mainEUlvE2_EdOT_PKc, .-_Z5benchIZ4mainEUlvE2_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE3_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE3_EdOT_PKc:
.LFB8239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE3_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L122
	call	__stack_chk_fail@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8239:
	.size	_Z5benchIZ4mainEUlvE3_EdOT_PKc, .-_Z5benchIZ4mainEUlvE3_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE4_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE4_EdOT_PKc:
.LFB8240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE4_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L125
	call	__stack_chk_fail@PLT
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8240:
	.size	_Z5benchIZ4mainEUlvE4_EdOT_PKc, .-_Z5benchIZ4mainEUlvE4_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE5_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE5_EdOT_PKc:
.LFB8241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE5_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8241:
	.size	_Z5benchIZ4mainEUlvE5_EdOT_PKc, .-_Z5benchIZ4mainEUlvE5_EdOT_PKc
	.type	_Z5benchIZ4mainEUlvE6_EdOT_PKc, @function
_Z5benchIZ4mainEUlvE6_EdOT_PKc:
.LFB8242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE6_clEv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LC45(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L131
	call	__stack_chk_fail@PLT
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8242:
	.size	_Z5benchIZ4mainEUlvE6_EdOT_PKc, .-_Z5benchIZ4mainEUlvE6_EdOT_PKc
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB8369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	vmovsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	vmovq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8369:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB8371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8371:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB8372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L138
	call	__stack_chk_fail@PLT
.L138:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8372:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB8445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8445:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB8508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	.LC47(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8508:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB8540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8540:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.rodata
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
	.ident	"GCC: (GNU) 15.2.1 20251112"
	.section	.note.GNU-stack,"",@progbits
