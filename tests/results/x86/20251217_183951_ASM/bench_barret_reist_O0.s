	.file	"bench_barret_reist.cpp"
	.text
	.section	.text$_ZStanSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStanSt13_Ios_FmtflagsS_
	.def	_ZStanSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStanSt13_Ios_FmtflagsS_
_ZStanSt13_Ios_FmtflagsS_:
.LFB1773:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	andl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStorSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_FmtflagsS_
	.def	_ZStorSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_FmtflagsS_
_ZStorSt13_Ios_FmtflagsS_:
.LFB1774:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStcoSt13_Ios_Fmtflags,"x"
	.linkonce discard
	.globl	_ZStcoSt13_Ios_Fmtflags
	.def	_ZStcoSt13_Ios_Fmtflags;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStcoSt13_Ios_Fmtflags
_ZStcoSt13_Ios_Fmtflags:
.LFB1776:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	notl	%eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStoRRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStoRRSt13_Ios_FmtflagsS_
	.def	_ZStoRRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStoRRSt13_Ios_FmtflagsS_
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1777:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStorSt13_Ios_FmtflagsS_
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStaNRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStaNRSt13_Ios_FmtflagsS_
	.def	_ZStaNRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStaNRSt13_Ios_FmtflagsS_
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1778:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.def	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB1807:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStcoSt13_Ios_Fmtflags
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStaNRSt13_Ios_FmtflagsS_
	movl	32(%rbp), %edx
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStoRRSt13_Ios_FmtflagsS_
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt5fixedRSt8ios_base,"x"
	.linkonce discard
	.globl	_ZSt5fixedRSt8ios_base
	.def	_ZSt5fixedRSt8ios_base;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt5fixedRSt8ios_base
_ZSt5fixedRSt8ios_base:
.LFB1837:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	$260, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
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
	.section	.text$_ZSt12setprecisioni,"x"
	.linkonce discard
	.globl	_ZSt12setprecisioni
	.def	_ZSt12setprecisioni;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12setprecisioni
_ZSt12setprecisioni:
.LFB3150:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z14classic_modaddxxx,"x"
	.linkonce discard
	.globl	_Z14classic_modaddxxx
	.def	_Z14classic_modaddxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14classic_modaddxxx
_Z14classic_modaddxxx:
.LFB8765:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	cqto
	idivq	32(%rbp)
	movq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z8center64xx,"x"
	.linkonce discard
	.globl	_Z8center64xx
	.def	_Z8center64xx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8center64xx
_Z8center64xx:
.LFB8766:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	cqto
	idivq	24(%rbp)
	movq	%rdx, 16(%rbp)
	movq	16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jle	.L23
	movq	24(%rbp), %rax
	subq	%rax, 16(%rbp)
.L23:
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z8center32ii,"x"
	.linkonce discard
	.globl	_Z8center32ii
	.def	_Z8center32ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8center32ii
_Z8center32ii:
.LFB8767:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	16(%rbp), %eax
	cltd
	idivl	24(%rbp)
	movl	%edx, 16(%rbp)
	movl	16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L26
	movl	24(%rbp), %eax
	subl	%eax, 16(%rbp)
.L26:
	movl	16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z21reist_v1_modadd_nodivxxx,"x"
	.linkonce discard
	.globl	_Z21reist_v1_modadd_nodivxxx
	.def	_Z21reist_v1_modadd_nodivxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21reist_v1_modadd_nodivxxx
_Z21reist_v1_modadd_nodivxxx:
.LFB8768:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	sarq	%rax
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L29
	movq	32(%rbp), %rax
	subq	%rax, -8(%rbp)
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jg	.L30
	movq	32(%rbp), %rax
	addq	%rax, -8(%rbp)
.L30:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN14BarretReistCtxC1Ex,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14BarretReistCtxC1Ex
	.def	_ZN14BarretReistCtxC1Ex;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14BarretReistCtxC1Ex
_ZN14BarretReistCtxC1Ex:
.LFB8771:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movl	$32, 24(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC0(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L33
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L34
.L33:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L34:
	mulsd	-8(%rbp), %xmm0
	comisd	.LC1(%rip), %xmm0
	jnb	.L35
	cvttsd2siq	%xmm0, %rax
	jmp	.L36
.L35:
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L36:
	movq	16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN16BarretReistCtx32C1Ei,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16BarretReistCtx32C1Ei
	.def	_ZN16BarretReistCtx32C1Ei;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16BarretReistCtx32C1Ei
_ZN16BarretReistCtx32C1Ei:
.LFB8774:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movl	24(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	16(%rbp), %rax
	movl	$32, 12(%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC0(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	js	.L38
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L39
.L38:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L39:
	mulsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z19Barret_reist_reducexRK14BarretReistCtx,"x"
	.linkonce discard
	.globl	_Z19Barret_reist_reducexRK14BarretReistCtx
	.def	_Z19Barret_reist_reducexRK14BarretReistCtx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19Barret_reist_reducexRK14BarretReistCtx
_Z19Barret_reist_reducexRK14BarretReistCtx:
.LFB8775:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	imulq	16(%rbp), %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	imulq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jle	.L41
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, -8(%rbp)
	jmp	.L42
.L41:
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jg	.L42
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
.L42:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z21Barret_reist_reduce32iRK16BarretReistCtx32,"x"
	.linkonce discard
	.globl	_Z21Barret_reist_reduce32iRK16BarretReistCtx32
	.def	_Z21Barret_reist_reduce32iRK16BarretReistCtx32;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21Barret_reist_reduce32iRK16BarretReistCtx32
_Z21Barret_reist_reduce32iRK16BarretReistCtx32:
.LFB8776:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	16(%rbp), %eax
	cltq
	movq	24(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rax, %rdx
	movq	24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, -8(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	imull	-8(%rbp), %eax
	movl	16(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movq	24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L45
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, -4(%rbp)
	jmp	.L46
.L45:
	movq	24(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	cmpl	%eax, -4(%rbp)
	jg	.L46
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -4(%rbp)
.L46:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.align 2
	.def	_ZZ4mainENKUlxE_clEx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlxE_clEx
_ZZ4mainENKUlxE_clEx:
.LFB8782:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L49
.L50:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_Z14classic_modaddxxx
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L49:
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jl	.L50
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlxE0_clEx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlxE0_clEx
_ZZ4mainENKUlxE0_clEx:
.LFB8783:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L52
.L53:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_Z21reist_v1_modadd_nodivxxx
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L52:
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jl	.L53
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlxE1_clEx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlxE1_clEx
_ZZ4mainENKUlxE1_clEx:
.LFB8784:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L55
.L56:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	call	_Z19Barret_reist_reducexRK14BarretReistCtx
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L55:
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jl	.L56
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlxE2_clEx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlxE2_clEx
_ZZ4mainENKUlxE2_clEx:
.LFB8785:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L58
.L59:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	call	_Z21Barret_reist_reduce32iRK16BarretReistCtx32
	movl	%eax, -4(%rbp)
	addq	$1, -16(%rbp)
.L58:
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jl	.L59
	movq	16(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, (%rdx)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "=============================================\12\0"
	.align 8
.LC3:
	.ascii "Barret-REIST v2 Benchmark (Division-Free)\12\0"
.LC4:
	.ascii "Iterations per modulus: \0"
.LC5:
	.ascii "\12\12\0"
	.align 8
.LC6:
	.ascii "---------------------------------------------\12\0"
.LC7:
	.ascii "Modulus = \0"
.LC8:
	.ascii "\12\0"
.LC9:
	.ascii "Classic modulo           : \0"
.LC10:
	.ascii " s\12\0"
.LC11:
	.ascii "REIST v1 scalar          : \0"
.LC12:
	.ascii "Barret-REIST v2 scalar     : \0"
.LC13:
	.ascii "Barret-REIST v2 int32      : \0"
.LC14:
	.ascii "Speedups:\12\0"
	.align 8
.LC15:
	.ascii "  REIST v1 scalar vs Classic        : \0"
.LC16:
	.ascii "x\12\0"
	.align 8
.LC17:
	.ascii "  Barret-REIST scalar vs Classic      : \0"
	.align 8
.LC18:
	.ascii "  Barret-REIST int32 vs scalar        : \0"
.LC19:
	.ascii "\12Sink: \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8778:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$424, %rsp
	.seh_stackalloc	424
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movq	$10000000, 280(%rbp)
	leaq	C.0.0(%rip), %rsi
	movl	$5, %edi
	leaq	79(%rbp), %rax
	movq	%rax, 224(%rbp)
	nop
	nop
	movq	%rsi, -96(%rbp)
	movq	%rdi, -88(%rbp)
	leaq	79(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_
.LEHE0:
	leaq	79(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	leaq	_ZSt5fixedRSt8ios_base(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSolsEPFRSt8ios_baseS0_E
	movq	%rax, %rbx
	movl	$6, %ecx
	call	_ZSt12setprecisioni
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10000000, %edx
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	48(%rbp), %rax
	movq	%rax, 272(%rbp)
	movq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, 32(%rbp)
	movq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, 24(%rbp)
	jmp	.L61
.L67:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 40(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	40(%rbp), %rcx
	movl	$1234567, %eax
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movq	%rax, 16(%rbp)
	movq	40(%rbp), %rcx
	movl	$891011, %eax
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movq	%rax, 8(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movl	$1234567, %ecx
	call	_Z8center64xx
	movq	%rax, 0(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movl	$891011, %ecx
	call	_Z8center64xx
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movl	%eax, 268(%rbp)
	movq	40(%rbp), %rcx
	movl	$1234567, %eax
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movl	%eax, %ecx
	movl	268(%rbp), %eax
	movl	%eax, %edx
	call	_Z8center32ii
	movl	%eax, -12(%rbp)
	movq	40(%rbp), %rcx
	movl	$891011, %eax
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movl	%eax, %ecx
	movl	268(%rbp), %eax
	movl	%eax, %edx
	call	_Z8center32ii
	movl	%eax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	40(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN14BarretReistCtxC1Ex
	movl	268(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16BarretReistCtx32C1Ei
	leaq	16(%rbp), %rax
	movq	%rax, 80(%rbp)
	leaq	8(%rbp), %rax
	movq	%rax, 88(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, 96(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, 104(%rbp)
	leaq	80(%rbp), %rax
	movl	$10000000, %edx
	movq	%rax, %rcx
	call	_Z9time_loopIZ4mainEUlxE_EdOT_x
	movq	%xmm0, %rax
	movq	%rax, 256(%rbp)
	movq	%rbp, %rax
	movq	%rax, 112(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, 120(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, 128(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, 136(%rbp)
	leaq	112(%rbp), %rax
	movl	$10000000, %edx
	movq	%rax, %rcx
	call	_Z9time_loopIZ4mainEUlxE0_EdOT_x
	movq	%xmm0, %rax
	movq	%rax, 248(%rbp)
	movq	%rbp, %rax
	movq	%rax, 144(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, 152(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 160(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, 168(%rbp)
	leaq	144(%rbp), %rax
	movl	$10000000, %edx
	movq	%rax, %rcx
	call	_Z9time_loopIZ4mainEUlxE1_EdOT_x
	movq	%xmm0, %rax
	movq	%rax, 240(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, 176(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, 184(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, 192(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, 200(%rbp)
	leaq	176(%rbp), %rax
	movl	$10000000, %edx
	movq	%rax, %rcx
	call	_Z9time_loopIZ4mainEUlxE2_EdOT_x
	movq	%xmm0, %rax
	movq	%rax, 232(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	256(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	248(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	240(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	232(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC15(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	256(%rbp), %xmm0
	divsd	248(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	256(%rbp), %xmm0
	divsd	240(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	240(%rbp), %xmm0
	divsd	232(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC19(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE1:
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, 32(%rbp)
	nop
.L61:
	leaq	32(%rbp), %rax
	movq	%rax, 216(%rbp)
	movq	216(%rbp), %rax
	movq	(%rax), %rdx
	leaq	24(%rbp), %rax
	movq	%rax, 208(%rbp)
	movq	208(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	testb	%al, %al
	jne	.L67
	movl	$0, %ebx
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	movl	%ebx, %eax
	jmp	.L73
.L71:
	movq	%rax, %rbx
	leaq	79(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB2:
	call	_Unwind_Resume
.L72:
	movq	%rax, %rbx
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE2:
.L73:
	addq	$424, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8778-.LLSDACSB8778
.LLSDACSB8778:
	.uleb128 .LEHB0-.LFB8778
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L71-.LFB8778
	.uleb128 0
	.uleb128 .LEHB1-.LFB8778
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L72-.LFB8778
	.uleb128 0
	.uleb128 .LEHB2-.LFB8778
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8778:
	.text
	.seh_endproc
	.section	.text$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.def	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv:
.LFB9062:
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
	.section	.text$_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_
	.def	_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_
_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_:
.LFB9112:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIxE4sizeEv
	movq	%rax, %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIxE3endEv
	movq	%rax, %rbx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIxE5beginEv
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rsi, %r9
	movq	%rbx, %r8
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y
.LEHE3:
	jmp	.L79
.L78:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
.L79:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9112:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9112-.LLSDACSB9112
.LLSDACSB9112:
	.uleb128 .LEHB3-.LFB9112
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L78-.LFB9112
	.uleb128 0
	.uleb128 .LEHB4-.LFB9112
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9112:
	.section	.text$_ZNSt6vectorIxSaIxEEC1ESt16initializer_listIxERKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEED1Ev
	.def	_ZNSt6vectorIxSaIxEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEED1Ev
_ZNSt6vectorIxSaIxEED1Ev:
.LFB9115:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPxEvT_S1_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE5beginEv
	.def	_ZNSt6vectorIxSaIxEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE5beginEv
_ZNSt6vectorIxSaIxEE5beginEv:
.LFB9120:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE3endEv
	.def	_ZNSt6vectorIxSaIxEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE3endEv
_ZNSt6vectorIxSaIxEE3endEv:
.LFB9121:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_Z9time_loopIZ4mainEUlxE_EdOT_x;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9time_loopIZ4mainEUlxE_EdOT_x
_Z9time_loopIZ4mainEUlxE_EdOT_x:
.LFB9123:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlxE_clEx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z9time_loopIZ4mainEUlxE0_EdOT_x;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9time_loopIZ4mainEUlxE0_EdOT_x
_Z9time_loopIZ4mainEUlxE0_EdOT_x:
.LFB9125:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlxE0_clEx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z9time_loopIZ4mainEUlxE1_EdOT_x;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9time_loopIZ4mainEUlxE1_EdOT_x
_Z9time_loopIZ4mainEUlxE1_EdOT_x:
.LFB9126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlxE1_clEx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z9time_loopIZ4mainEUlxE2_EdOT_x;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9time_loopIZ4mainEUlxE2_EdOT_x
_Z9time_loopIZ4mainEUlxE2_EdOT_x:
.LFB9127:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlxE2_clEx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIxED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIxED2Ev
	.def	_ZNSt15__new_allocatorIxED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIxED2Ev
_ZNSt15__new_allocatorIxED2Ev:
.LFB9257:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev:
.LFB9262:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_
	.def	_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_
_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_:
.LFB9263:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEED2Ev
	.def	_ZNSt12_Vector_baseIxSaIxEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEED2Ev
_ZNSt12_Vector_baseIxSaIxEED2Ev:
.LFB9266:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9266-.LLSDACSB9266
.LLSDACSB9266:
.LLSDACSE9266:
	.section	.text$_ZNSt12_Vector_baseIxSaIxEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIxE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIxE5beginEv
	.def	_ZNKSt16initializer_listIxE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIxE5beginEv
_ZNKSt16initializer_listIxE5beginEv:
.LFB9268:
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
	.section	.text$_ZNKSt16initializer_listIxE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIxE3endEv
	.def	_ZNKSt16initializer_listIxE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIxE3endEv
_ZNKSt16initializer_listIxE3endEv:
.LFB9269:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIxE5beginEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIxE4sizeEv
	salq	$3, %rax
	addq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIxE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIxE4sizeEv
	.def	_ZNKSt16initializer_listIxE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIxE4sizeEv
_ZNKSt16initializer_listIxE4sizeEv:
.LFB9270:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y
	.def	_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y
_ZNSt6vectorIxSaIxEE21_M_range_initialize_nIPKxS4_EEvT_T0_y:
.LFB9271:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	leaq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %r8
	movq	48(%rbp), %rdx
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E
	movq	32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB9272:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.def	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB9278:
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
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE:
.LFB9281:
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
	movq	%rax, %xmm0
	movsd	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	movq	%xmm0, %rax
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
.LFB9282:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB9315:
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
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L113
	movq	24(%rbp), %rax
	jmp	.L114
.L113:
	movq	16(%rbp), %rax
.L114:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_:
.LFB9356:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
	.def	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy:
.LFB9357:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L118
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxE10deallocateEPxy
	nop
.L118:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "cannot create std::vector larger than max_size()\0"
	.section	.text$_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_
	.def	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_
_ZNSt6vectorIxSaIxEE17_S_check_init_lenEyRKS0_:
.LFB9358:
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
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-25(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	cmpq	32(%rbp), %rax
	setb	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	testb	%bl, %bl
	je	.L120
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L120:
	movq	32(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy:
.LFB9359:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L123
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxE8allocateEyPKv
	nop
	jmp	.L125
.L123:
	movl	$0, %eax
.L125:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E
	.def	_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E
_ZSt22__uninitialized_copy_aIPKxS1_PxxET1_T_T0_S3_RSaIT2_E:
.LFB9361:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPxEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPxEvT_S1_
	.def	_ZSt8_DestroyIPxEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPxEvT_S1_
_ZSt8_DestroyIPxEvT_S1_:
.LFB9362:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.def	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB9364:
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
.LFB9365:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev:
.LFB9432:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_:
.LFB9435:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$1152921504606846975, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$1152921504606846975, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_
	.def	_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_
_ZSt18uninitialized_copyIPKxPxET0_T_S4_S3_:
.LFB9437:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L141
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, 32(%rbp)
.L141:
	movq	32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE:
.LFB9440:
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
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIxE10deallocateEPxy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIxE10deallocateEPxy
	.def	_ZNSt15__new_allocatorIxE10deallocateEPxy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIxE10deallocateEPxy
_ZNSt15__new_allocatorIxE10deallocateEPxy:
.LFB9474:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIxE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIxE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIxE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIxE8allocateEyPKv
_ZNSt15__new_allocatorIxE8allocateEyPKv:
.LFB9476:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L151
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	jnb	.L152
	call	_ZSt28__throw_bad_array_new_lengthv
.L152:
	call	_ZSt17__throw_bad_allocv
.L151:
	movq	24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
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
.LFB9481:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
C.0.0:
	.quad	257
	.quad	65537
	.quad	1000003
	.quad	10000019
	.quad	1000000007
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.align 8
.LC21:
	.long	0
	.long	1104006501
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZNSolsEPFRSt8ios_baseS0_E;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
