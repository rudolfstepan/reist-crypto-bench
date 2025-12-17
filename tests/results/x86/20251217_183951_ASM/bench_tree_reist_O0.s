	.file	"bench_tree_reist.cpp"
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB149:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZdlPvS_,"x"
	.linkonce discard
	.globl	_ZdlPvS_
	.def	_ZdlPvS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdlPvS_
_ZdlPvS_:
.LFB151:
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
	.section	.text$_ZNSt11char_traitsIcE6assignERcRKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6assignERcRKc
	.def	_ZNSt11char_traitsIcE6assignERcRKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6assignERcRKc
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB221:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	movq	16(%rbp), %rdx
	movb	%al, (%rdx)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6assignEPcyc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6assignEPcyc
	.def	_ZNSt11char_traitsIcE6assignEPcyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6assignEPcyc
_ZNSt11char_traitsIcE6assignEPcyc:
.LFB229:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movb	%al, 32(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L6
	movq	16(%rbp), %rax
	jmp	.L7
.L6:
	movsbl	32(%rbp), %eax
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	memset
	nop
.L7:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3absx,"x"
	.linkonce discard
	.globl	_ZSt3absx
	.def	_ZSt3absx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3absx
_ZSt3absx:
.LFB1333:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	cqto
	xorq	%rdx, %rax
	subq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
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
	.section	.text$_ZSt3minIxERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIxERKT_S2_S2_
	.def	_ZSt3minIxERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIxERKT_S2_S2_
_ZSt3minIxERKT_S2_S2_:
.LFB1883:
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
	jge	.L25
	movq	24(%rbp), %rax
	jmp	.L26
.L25:
	movq	16(%rbp), %rax
.L26:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12setprecisioni,"x"
	.linkonce discard
	.globl	_ZSt12setprecisioni
	.def	_ZSt12setprecisioni;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12setprecisioni
_ZSt12setprecisioni:
.LFB3441:
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
	.section	.text$_ZSt4setwi,"x"
	.linkonce discard
	.globl	_ZSt4setwi
	.def	_ZSt4setwi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4setwi
_ZSt4setwi:
.LFB3444:
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
	.section	.text$_ZN12ReistTreeCtxC1Ex,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12ReistTreeCtxC1Ex
	.def	_ZN12ReistTreeCtxC1Ex;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ReistTreeCtxC1Ex
_ZN12ReistTreeCtxC1Ex:
.LFB3461:
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
	js	.L32
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L33
.L32:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L33:
	mulsd	-8(%rbp), %xmm0
	comisd	.LC1(%rip), %xmm0
	jnb	.L34
	cvttsd2siq	%xmm0, %rax
	jmp	.L35
.L34:
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L35:
	movq	16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z15approx_quotientxRK12ReistTreeCtx,"x"
	.linkonce discard
	.globl	_Z15approx_quotientxRK12ReistTreeCtx
	.def	_Z15approx_quotientxRK12ReistTreeCtx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15approx_quotientxRK12ReistTreeCtx
_Z15approx_quotientxRK12ReistTreeCtx:
.LFB3462:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
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
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z12reist_linearxRK12ReistTreeCtx,"x"
	.linkonce discard
	.globl	_Z12reist_linearxRK12ReistTreeCtx
	.def	_Z12reist_linearxRK12ReistTreeCtx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12reist_linearxRK12ReistTreeCtx
_Z12reist_linearxRK12ReistTreeCtx:
.LFB3463:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_Z15approx_quotientxRK12ReistTreeCtx
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	imulq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	jmp	.L39
.L40:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L39:
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jg	.L40
	jmp	.L41
.L42:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -16(%rbp)
	subq	$1, -8(%rbp)
.L41:
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	negq	%rax
	cmpq	%rax, -16(%rbp)
	jle	.L42
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z24compute_correction_countxRK12ReistTreeCtx,"x"
	.linkonce discard
	.globl	_Z24compute_correction_countxRK12ReistTreeCtx
	.def	_Z24compute_correction_countxRK12ReistTreeCtx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z24compute_correction_countxRK12ReistTreeCtx
_Z24compute_correction_countxRK12ReistTreeCtx:
.LFB3464:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 16(%rbp)
	jle	.L45
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	subq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	24(%rbp), %rdx
	movq	(%rdx), %rcx
	cqto
	idivq	%rcx
	jmp	.L46
.L45:
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	negq	%rax
	cmpq	%rax, 16(%rbp)
	jg	.L47
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	subq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	movq	24(%rbp), %rdx
	movq	(%rdx), %rcx
	cqto
	idivq	%rcx
	negq	%rax
	jmp	.L46
.L47:
	movl	$0, %eax
.L46:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE,"x"
	.linkonce discard
	.globl	_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE
	.def	_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE
_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE:
.LFB3466:
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
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE5clearEv
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3absx
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE7reserveEy
	cmpq	$0, 16(%rbp)
	jle	.L49
	movq	$0, -8(%rbp)
	jmp	.L50
.L51:
	movq	24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE9push_backERKx
	addq	$1, -8(%rbp)
.L50:
	movq	-8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L51
	jmp	.L55
.L49:
	cmpq	$0, 16(%rbp)
	jns	.L55
	movq	$0, -16(%rbp)
	jmp	.L53
.L54:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIxSaIxEE9push_backEOx
	addq	$1, -16(%rbp)
.L53:
	movq	16(%rbp), %rax
	negq	%rax
	cmpq	%rax, -16(%rbp)
	jl	.L54
.L55:
	nop
	addq	$64, %rsp
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
.LFB3473:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.def	_ZNSt12_Vector_baseIxSaIxEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEEC2Ev
_ZNSt12_Vector_baseIxSaIxEEC2Ev:
.LFB3474:
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
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEC1Ev
	.def	_ZNSt6vectorIxSaIxEEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEC1Ev
_ZNSt6vectorIxSaIxEEC1Ev:
.LFB3477:
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
	call	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "  Level \0"
.LC3:
	.ascii " (size=\0"
.LC4:
	.ascii "): [\0"
.LC5:
	.ascii ", \0"
.LC6:
	.ascii ", ...\0"
.LC7:
	.ascii "]\12\0"
.LC8:
	.ascii " (size=1): [\0"
	.section	.text$_Z11tree_reduceRKSt6vectorIxSaIxEEb,"x"
	.linkonce discard
	.globl	_Z11tree_reduceRKSt6vectorIxSaIxEEb
	.def	_Z11tree_reduceRKSt6vectorIxSaIxEEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11tree_reduceRKSt6vectorIxSaIxEEb
_Z11tree_reduceRKSt6vectorIxSaIxEEb:
.LFB3467:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	160(%rsp), %rbp
	.seh_setframe	%rbp, 160
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movl	%edx, %eax
	movb	%al, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE5emptyEv
	testb	%al, %al
	je	.L60
	movl	$0, %ebx
	jmp	.L75
.L60:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	$1, %rax
	sete	%al
	testb	%al, %al
	je	.L62
	movq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEEixEy
	movq	(%rax), %rbx
	jmp	.L75
.L62:
	movq	32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt6vectorIxSaIxEEC1ERKS1_
.LEHE0:
	movl	$0, -4(%rbp)
	jmp	.L63
.L73:
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEC1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	addq	$1, %rax
	shrq	%rax
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt6vectorIxSaIxEE7reserveEy
	cmpb	$0, 40(%rbp)
	je	.L64
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSolsEy
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	$0, -16(%rbp)
	jmp	.L65
.L67:
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEixEy
	movq	(%rax), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	$4, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	setb	%al
	testb	%al, %al
	je	.L66
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L66:
	addq	$1, -16(%rbp)
.L65:
	movq	$4, -48(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L67
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	$4, %rax
	seta	%al
	testb	%al, %al
	je	.L68
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L68:
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L64:
	movq	$0, -24(%rbp)
	jmp	.L69
.L70:
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEixEy
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEixEy
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE9push_backEOx
	addq	$2, -24(%rbp)
.L69:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L70
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	andl	$1, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L71
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE4backEv
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE9push_backERKx
.LEHE1:
.L71:
	leaq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEaSEOS1_
	addl	$1, -4(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
.L63:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	jne	.L73
	cmpb	$0, 40(%rbp)
	je	.L74
	cmpl	$0, -4(%rbp)
	jle	.L74
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEixEy
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE2:
.L74:
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEixEy
	movq	(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
.L75:
	movq	%rbx, %rax
	jmp	.L80
.L78:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	jmp	.L77
.L79:
	movq	%rax, %rbx
.L77:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L80:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3467:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3467-.LLSDACSB3467
.LLSDACSB3467:
	.uleb128 .LEHB0-.LFB3467
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3467
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L78-.LFB3467
	.uleb128 0
	.uleb128 .LEHB2-.LFB3467
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L79-.LFB3467
	.uleb128 0
	.uleb128 .LEHB3-.LFB3467
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE3467:
	.section	.text$_Z11tree_reduceRKSt6vectorIxSaIxEEb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC9:
	.ascii "Initial: Q=\0"
.LC10:
	.ascii ", R=\0"
.LC11:
	.ascii "\12\0"
.LC12:
	.ascii "Corrections needed: k=\0"
	.align 8
.LC13:
	.ascii "Using linear correction (k too small)\12\0"
.LC14:
	.ascii "Correction terms: k=\0"
.LC15:
	.ascii " terms of \0"
.LC16:
	.ascii " each\12\0"
.LC17:
	.ascii "Tree reduction:\12\0"
.LC18:
	.ascii "Total correction: \0"
.LC19:
	.ascii "After correction: R=\0"
.LC20:
	.ascii "\342\232\240\357\270\217  Warning: \0"
.LC21:
	.ascii " final corrections needed!\12\0"
	.section	.text$_Z10reist_treexRK12ReistTreeCtxb,"x"
	.linkonce discard
	.globl	_Z10reist_treexRK12ReistTreeCtxb
	.def	_Z10reist_treexRK12ReistTreeCtxb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10reist_treexRK12ReistTreeCtxb
_Z10reist_treexRK12ReistTreeCtxb:
.LFB3481:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movb	%al, 48(%rbp)
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_Z15approx_quotientxRK12ReistTreeCtx
	movq	%rax, -24(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	imulq	-24(%rbp), %rax
	movq	32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	cmpb	$0, 48(%rbp)
	je	.L82
	leaq	.LC9(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L82:
	movq	40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_Z24compute_correction_countxRK12ReistTreeCtx
	movq	%rax, -32(%rbp)
	cmpb	$0, 48(%rbp)
	je	.L83
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L83:
	cmpq	$0, -32(%rbp)
	jne	.L84
	movq	-8(%rbp), %rbx
	jmp	.L103
.L84:
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3absx
	cmpq	$2, %rax
	setle	%al
	testb	%al, %al
	je	.L86
	cmpb	$0, 48(%rbp)
	je	.L88
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE4:
	jmp	.L88
.L89:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, -8(%rbp)
.L88:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jg	.L89
	jmp	.L90
.L91:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
.L90:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jle	.L91
	movq	-8(%rbp), %rbx
	jmp	.L103
.L86:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEC1Ev
	leaq	-64(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB5:
	call	_Z27evaluate_corrections_simplexRK12ReistTreeCtxRSt6vectorIxSaIxEE
	cmpb	$0, 48(%rbp)
	je	.L92
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSolsEy
	movq	%rax, %rcx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	cmpq	$0, -32(%rbp)
	jle	.L93
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L94
.L93:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	negq	%rax
.L94:
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L92:
	cmpb	$0, 48(%rbp)
	je	.L95
	leaq	.LC17(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L95:
	movzbl	48(%rbp), %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_Z11tree_reduceRKSt6vectorIxSaIxEEb
	movq	%rax, -40(%rbp)
	cmpb	$0, 48(%rbp)
	je	.L96
	leaq	.LC18(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L96:
	movq	-40(%rbp), %rax
	subq	%rax, -8(%rbp)
	cmpb	$0, 48(%rbp)
	je	.L97
	leaq	.LC19(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L97:
	movl	$0, -12(%rbp)
	jmp	.L98
.L99:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L98:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jg	.L99
	jmp	.L100
.L101:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
	subl	$1, -12(%rbp)
.L100:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jle	.L101
	cmpb	$0, 48(%rbp)
	je	.L102
	cmpl	$0, -12(%rbp)
	je	.L102
	leaq	.LC20(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE5:
.L102:
	movq	-8(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
.L103:
	movq	%rbx, %rax
	jmp	.L106
.L105:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L106:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3481:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3481-.LLSDACSB3481
.LLSDACSB3481:
	.uleb128 .LEHB4-.LFB3481
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB3481
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L105-.LFB3481
	.uleb128 0
	.uleb128 .LEHB6-.LFB3481
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE3481:
	.section	.text$_Z10reist_treexRK12ReistTreeCtxb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "\12--- Testing Independent Evaluation Formula ---\12\0"
.LC23:
	.ascii "R0=\0"
.LC24:
	.ascii ", B=\0"
.LC25:
	.ascii ", half=\0"
.LC26:
	.ascii "\12\12\0"
.LC27:
	.ascii "k = \0"
	.align 8
.LC28:
	.ascii "Testing condition: c_i = B if (R0 - i*B) > half\12\0"
.LC29:
	.ascii "i\0"
.LC30:
	.ascii "R0 - i*B\0"
.LC31:
	.ascii "> half?\0"
.LC32:
	.ascii "c_i\0"
.LC33:
	.ascii "YES\0"
.LC34:
	.ascii "NO\0"
.LC35:
	.ascii "  ... (\0"
.LC36:
	.ascii " more corrections)\12\0"
	.text
	.globl	_Z27test_independent_evaluationxxx
	.def	_Z27test_independent_evaluationxxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27test_independent_evaluationxxx
_Z27test_independent_evaluationxxx:
.LFB3482:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	leaq	.LC22(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB7:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC23(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	32(%rbp), %rax
	cmpq	48(%rbp), %rax
	jle	.L108
	movq	32(%rbp), %rax
	subq	48(%rbp), %rax
	movq	40(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	cqto
	idivq	40(%rbp)
	movq	%rax, -8(%rbp)
	jmp	.L109
.L108:
	movq	48(%rbp), %rax
	negq	%rax
	cmpq	%rax, 32(%rbp)
	jg	.L110
	movq	48(%rbp), %rax
	subq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	cqto
	idivq	40(%rbp)
	negq	%rax
	movq	%rax, -8(%rbp)
	jmp	.L109
.L110:
	movq	$0, -8(%rbp)
.L109:
	leaq	.LC27(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpq	$0, -8(%rbp)
	jle	.L122
	leaq	.LC28(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$5, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$15, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$15, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$10, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	leaq	-57(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	nop
	leaq	-57(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	$45, %r8d
	movl	$45, %edx
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE8:
	leaq	-96(%rbp), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rax, %rdx
.LEHB9:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE9:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-57(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	$0, -16(%rbp)
	jmp	.L112
.L117:
	movq	-16(%rbp), %rax
	imulq	40(%rbp), %rax
	movq	32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	48(%rbp), %rax
	setg	%al
	movb	%al, -25(%rbp)
	movl	$5, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
.LEHB10:
	call	_ZNSolsEx
	movq	%rax, %rbx
	movl	$15, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rbx
	movl	$15, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	cmpb	$0, -25(%rbp)
	je	.L113
	leaq	.LC33(%rip), %rax
	jmp	.L114
.L113:
	leaq	.LC34(%rip), %rax
.L114:
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$10, %ecx
	call	_ZSt4setwi
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rcx
	cmpb	$0, -25(%rbp)
	je	.L115
	movq	40(%rbp), %rax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -16(%rbp)
.L112:
	movq	$10, -56(%rbp)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIxERKT_S2_S2_
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	setl	%al
	testb	%al, %al
	jne	.L117
	cmpq	$10, -8(%rbp)
	jle	.L122
	leaq	.LC35(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	subq	$10, %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L122
.L121:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L119
.L120:
	movq	%rax, %rbx
.L119:
	leaq	-57(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE10:
.L122:
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3482:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3482-.LLSDACSB3482
.LLSDACSB3482:
	.uleb128 .LEHB7-.LFB3482
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB3482
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L120-.LFB3482
	.uleb128 0
	.uleb128 .LEHB9-.LFB3482
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L121-.LFB3482
	.uleb128 0
	.uleb128 .LEHB10-.LFB3482
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3482:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC37:
	.ascii "\12========================================\12\0"
.LC38:
	.ascii "Testing: T=\0"
	.align 8
.LC39:
	.ascii "========================================\12\0"
.LC40:
	.ascii "\12--- REIST-Linear ---\12\0"
.LC41:
	.ascii "Result: \0"
	.align 8
.LC42:
	.ascii "\12--- REIST-Tree (Corrected) ---\12\0"
.LC43:
	.ascii "\12--- Verification ---\12\0"
.LC44:
	.ascii "Linear result: \0"
.LC45:
	.ascii "Tree result:   \0"
.LC46:
	.ascii "\342\234\223 Results match!\12\0"
.LC47:
	.ascii "\342\234\227 MISMATCH!\12\0"
.LC48:
	.ascii "  Expected (linear): \0"
.LC49:
	.ascii "  Got (tree):        \0"
.LC50:
	.ascii "src\\bench_tree_reist.cpp\0"
	.align 8
.LC51:
	.ascii "false && \"Results don't match!\"\0"
	.align 8
.LC52:
	.ascii "r_linear > -ctx.half && r_linear <= ctx.half\0"
	.align 8
.LC53:
	.ascii "r_tree > -ctx.half && r_tree <= ctx.half\0"
	.align 8
.LC54:
	.ascii "T == q_linear * ctx.B + r_linear\0"
.LC55:
	.ascii "T == q_tree * ctx.B + r_tree\0"
	.text
	.globl	_Z16test_equivalencexx
	.def	_Z16test_equivalencexx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16test_equivalencexx
_Z16test_equivalencexx:
.LFB3483:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	leaq	.LC37(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC38(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC39(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	24(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN12ReistTreeCtxC1Ex
	leaq	.LC40(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-64(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	%rax, %rdx
	call	_Z12reist_linearxRK12ReistTreeCtx
	movq	%rax, -8(%rbp)
	leaq	.LC41(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC42(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-64(%rbp), %rax
	movq	16(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdx
	call	_Z10reist_treexRK12ReistTreeCtxb
	movq	%rax, -16(%rbp)
	leaq	.LC41(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC43(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC44(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC45(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L124
	leaq	.LC46(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-56(%rbp), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jg	.L125
	jmp	.L126
.L124:
	leaq	.LC47(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC48(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC49(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC50(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movl	$312, %r8d
	movq	%rax, %rcx
	movq	__imp__assert(%rip), %rax
	call	*%rax
.L125:
	movq	-56(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jle	.L127
.L126:
	leaq	.LC50(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movl	$316, %r8d
	movq	%rax, %rcx
	movq	__imp__assert(%rip), %rax
	call	*%rax
.L127:
	movq	-56(%rbp), %rax
	negq	%rax
	cmpq	%rax, -16(%rbp)
	jle	.L128
	movq	-56(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jle	.L129
.L128:
	leaq	.LC50(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movl	$317, %r8d
	movq	%rax, %rcx
	movq	__imp__assert(%rip), %rax
	call	*%rax
.L129:
	movq	16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	%rax, 16(%rbp)
	je	.L130
	leaq	.LC50(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movl	$321, %r8d
	movq	%rax, %rcx
	movq	__imp__assert(%rip), %rax
	call	*%rax
.L130:
	movq	16(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	%rax, 16(%rbp)
	je	.L132
	leaq	.LC50(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movl	$324, %r8d
	movq	%rax, %rcx
	movq	__imp__assert(%rip), %rax
	call	*%rax
.L132:
	nop
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC56:
	.ascii "\12--- Complexity Analysis ---\12\0"
.LC57:
	.ascii "T=\0"
.LC58:
	.ascii "Initial remainder R=\0"
.LC59:
	.ascii "\12Linear method:\12\0"
.LC60:
	.ascii "  Critical path: O(\0"
.LC61:
	.ascii ") = \0"
.LC62:
	.ascii " sequential steps\12\0"
.LC63:
	.ascii "  Total work: \0"
.LC64:
	.ascii " corrections\12\0"
	.align 8
.LC65:
	.ascii "  Parallelism: None (fully sequential)\12\0"
.LC66:
	.ascii "\12Tree method:\12\0"
.LC67:
	.ascii "  Critical path: O(log \0"
.LC68:
	.ascii " levels\12\0"
.LC69:
	.ascii " corrections (same)\12\0"
.LC70:
	.ascii "  Parallelism: Up to \0"
.LC71:
	.ascii " parallel evaluations\12\0"
.LC72:
	.ascii "\12Theoretical speedup: \0"
.LC73:
	.ascii "x\12\0"
	.align 8
.LC74:
	.ascii "(assuming perfect parallelization)\12\0"
	.align 8
.LC75:
	.ascii "\12SIMD Analysis (AVX2, 8-wide):\12\0"
.LC76:
	.ascii "  Evaluation phase: \0"
.LC77:
	.ascii " SIMD operations\12\0"
.LC78:
	.ascii "  Reduction phase: \0"
	.text
	.globl	_Z18analyze_complexityxx
	.def	_Z18analyze_complexityxx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18analyze_complexityxx
_Z18analyze_complexityxx:
.LFB3484:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN12ReistTreeCtxC1Ex
	leaq	-96(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_Z15approx_quotientxRK12ReistTreeCtx
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	leaq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	call	_Z24compute_correction_countxRK12ReistTreeCtx
	movq	%rax, -40(%rbp)
	leaq	.LC56(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC57(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC58(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpq	$0, -40(%rbp)
	je	.L137
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3absx
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L135
.L136:
	addl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -16(%rbp)
.L135:
	cmpq	$1, -16(%rbp)
	jg	.L136
	leaq	.LC59(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC60(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC62(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC63(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC65(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC66(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC67(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC63(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC70(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-48(%rbp), %xmm0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	leaq	.LC72(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	_ZSt5fixedRSt8ios_base(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSt8ios_baseS0_E
	movq	%rax, %rbx
	movl	$2, %ecx
	call	_ZSt12setprecisioni
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision
	movsd	-56(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC74(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$8, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rbx
	cqto
	idivq	%rbx
	movl	%eax, -64(%rbp)
	leaq	.LC75(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC76(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC77(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC78(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L137:
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC79:
	.ascii "REIST Tree: Corrected Scalar Implementation\12\0"
	.align 8
.LC80:
	.ascii "============================================\12\0"
	.align 8
.LC81:
	.ascii "Using CEILING division for correct k calculation\12\0"
	.align 8
.LC82:
	.ascii "Independent evaluation: c_i = B if (R0 - i*B) > half\12\12\0"
	.align 8
.LC83:
	.ascii "All tests completed successfully! \342\234\223\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3485:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	.LC79(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC80(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC81(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC82(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$6, %r8d
	movl	$13, %edx
	movl	$53, %ecx
	call	_Z27test_independent_evaluationxxx
	movl	$6, %r8d
	movl	$13, %edx
	movl	$10000010, %ecx
	call	_Z27test_independent_evaluationxxx
	movl	$13, %edx
	movl	$157, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$157, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$10013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$10013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$1000013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$1000013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$10000013, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$10000013, %ecx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movq	$-500007, %rcx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movq	$-500007, %rcx
	call	_Z18analyze_complexityxx
	movl	$13, %edx
	movl	$13006, %ecx
	call	_Z16test_equivalencexx
	movl	$13, %edx
	movl	$13007, %ecx
	call	_Z16test_equivalencexx
	leaq	.LC37(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC83(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC39(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB3588:
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
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev:
.LFB3593:
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
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3593-.LLSDACSB3593
.LLSDACSB3593:
.LLSDACSE3593:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE5clearEv
	.def	_ZNSt6vectorIxSaIxEE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE5clearEv
_ZNSt6vectorIxSaIxEE5clearEv:
.LFB3827:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC84:
	.ascii "vector::reserve\0"
	.section	.text$_ZNSt6vectorIxSaIxEE7reserveEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE7reserveEy
	.def	_ZNSt6vectorIxSaIxEE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE7reserveEy
_ZNSt6vectorIxSaIxEE7reserveEy:
.LFB3828:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	cmpq	24(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L144
	leaq	.LC84(%rip), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L144:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE8capacityEv
	cmpq	24(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L146
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %r8
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	movq	16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
.L146:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE9push_backERKx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE9push_backERKx
	.def	_ZNSt6vectorIxSaIxEE9push_backERKx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE9push_backERKx
_ZNSt6vectorIxSaIxEE9push_backERKx:
.LFB3832:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L148
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L151
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L151:
	nop
	nop
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L153
.L148:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
.L153:
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE9push_backEOx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE9push_backEOx
	.def	_ZNSt6vectorIxSaIxEE9push_backEOx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE9push_backEOx
_ZNSt6vectorIxSaIxEE9push_backEOx:
.LFB3833:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE5emptyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE5emptyEv
	.def	_ZNKSt6vectorIxSaIxEE5emptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE5emptyEv
_ZNKSt6vectorIxSaIxEE5emptyEv:
.LFB3834:
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
	call	_ZNKSt6vectorIxSaIxEE3endEv
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE5beginEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE4sizeEv
	.def	_ZNKSt6vectorIxSaIxEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE4sizeEv
_ZNKSt6vectorIxSaIxEE4sizeEv:
.LFB3835:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC85:
	.ascii "__n < this->size()\0"
	.align 8
.LC86:
	.ascii "std::vector<_Tp, _Alloc>::const_reference std::vector<_Tp, _Alloc>::operator[](size_type) const [with _Tp = long long int; _Alloc = std::allocator<long long int>; const_reference = const long long int&; size_type = long long unsigned int]\0"
	.align 8
.LC87:
	.ascii "C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h\0"
	.section	.text$_ZNKSt6vectorIxSaIxEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEEixEy
	.def	_ZNKSt6vectorIxSaIxEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEEixEy
_ZNKSt6vectorIxSaIxEEixEy:
.LFB3836:
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
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L165
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC87(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1282, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L165:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEC1ERKS1_
	.def	_ZNSt6vectorIxSaIxEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEC1ERKS1_
_ZNSt6vectorIxSaIxEEC1ERKS1_:
.LFB3839:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	48(%rbp), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, -8(%rbp)
	leaq	-49(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	nop
	nop
	nop
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	leaq	-49(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB11:
	call	_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_
.LEHE11:
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movq	(%rax), %rdi
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE3endEv
	movq	%rax, %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE5beginEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB12:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E
.LEHE12:
	movq	48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L174
.L172:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB13:
	call	_Unwind_Resume
.L173:
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE13:
.L174:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3839:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3839-.LLSDACSB3839
.LLSDACSB3839:
	.uleb128 .LEHB11-.LFB3839
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L172-.LFB3839
	.uleb128 0
	.uleb128 .LEHB12-.LFB3839
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L173-.LFB3839
	.uleb128 0
	.uleb128 .LEHB13-.LFB3839
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3839:
	.section	.text$_ZNSt6vectorIxSaIxEEC1ERKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEED1Ev
	.def	_ZNSt6vectorIxSaIxEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEED1Ev
_ZNSt6vectorIxSaIxEED1Ev:
.LFB3842:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev:
.LFB3845:
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
	movq	%rax, -16(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	nop
	addq	$48, %rsp
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
.LFB3850:
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
.LLSDA3850:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3850-.LLSDACSB3850
.LLSDACSB3850:
.LLSDACSE3850:
	.section	.text$_ZNSt12_Vector_baseIxSaIxEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB3854:
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
	jnb	.L179
	movq	24(%rbp), %rax
	jmp	.L180
.L179:
	movq	16(%rbp), %rax
.L180:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC88:
	.ascii "std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = long long int; _Alloc = std::allocator<long long int>; reference = long long int&; size_type = long long unsigned int]\0"
	.section	.text$_ZNSt6vectorIxSaIxEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEixEy
	.def	_ZNSt6vectorIxSaIxEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEixEy
_ZNSt6vectorIxSaIxEEixEy:
.LFB3855:
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
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L182
	leaq	.LC85(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC87(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1263, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L182:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC89:
	.ascii "!this->empty()\0"
	.align 8
.LC90:
	.ascii "std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::back() [with _Tp = long long int; _Alloc = std::allocator<long long int>; reference = long long int&]\0"
	.section	.text$_ZNSt6vectorIxSaIxEE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE4backEv
	.def	_ZNSt6vectorIxSaIxEE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE4backEv
_ZNSt6vectorIxSaIxEE4backEv:
.LFB3857:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE5emptyEv
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L185
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC87(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1370, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L185:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, -32(%rbp)
	movq	$1, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEEaSEOS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEaSEOS1_
	.def	_ZNSt6vectorIxSaIxEEaSEOS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEaSEOS1_
_ZNSt6vectorIxSaIxEEaSEOS1_:
.LFB3859:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_:
.LFB3863:
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
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movq	%r9, 56(%rbp)
	movb	%al, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	movsbl	48(%rbp), %ecx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE14:
	jmp	.L195
.L194:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB15:
	call	_Unwind_Resume
	nop
.LEHE15:
.L195:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3863:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3863-.LLSDACSB3863
.LLSDACSB3863:
	.uleb128 .LEHB14-.LFB3863
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L194-.LFB3863
	.uleb128 0
	.uleb128 .LEHB15-.LFB3863
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3863:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
.LFB3871:
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
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB3872:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy:
.LFB3877:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy
	movb	$0, -1(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	24(%rbp), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-1(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt11char_traitsIcE6assignERcRKc
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB3878:
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
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L203
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
.L203:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB3881:
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
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
.LFB3883:
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
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L207
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$15, %rax
	movl	$1, %eax
	jmp	.L209
.L207:
	movl	$0, %eax
.L209:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
.LFB3885:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy:
.LFB3886:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy:
.LFB3887:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcED2Ev
	.def	_ZNSt15__new_allocatorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcED2Ev
_ZNSt15__new_allocatorIcED2Ev:
.LFB3923:
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
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_:
.LFB3927:
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
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
	.def	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx:
.LFB4031:
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
	movq	8(%rax), %rax
	subq	24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L217
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPxEvT_S1_
	nop
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L217:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.def	_ZNKSt6vectorIxSaIxEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE8max_sizeEv
_ZNKSt6vectorIxSaIxEE8max_sizeEv:
.LFB4032:
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
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE8capacityEv
	.def	_ZNKSt6vectorIxSaIxEE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE8capacityEv
_ZNKSt6vectorIxSaIxEE8capacityEv:
.LFB4033:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
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
.LFB4034:
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
	je	.L224
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
	jmp	.L226
.L224:
	movl	$0, %eax
.L226:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.def	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_:
.LFB4035:
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
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	addq	$32, %rsp
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
.LFB4036:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
	.def	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy:
.LFB4037:
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
	je	.L234
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
.L234:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC91:
	.ascii "vector::_M_realloc_append\0"
	.section	.text$_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
	.def	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_
_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJRKxEEEvDpOT_:
.LFB4039:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	leaq	224(%rsp), %rbp
	.seh_setframe	%rbp, 224
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	leaq	.LC91(%rip), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, -160(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E
	movq	40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	-96(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L244
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L244:
	nop
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	movq	%rax, -48(%rbp)
	addq	$8, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
	.def	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_:
.LFB4041:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L246
	movq	40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L250
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L250:
	nop
	nop
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L251
.L246:
	movq	40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_
.L251:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE4backEv
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE5beginEv
	.def	_ZNKSt6vectorIxSaIxEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE5beginEv
_ZNKSt6vectorIxSaIxEE5beginEv:
.LFB4042:
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
	.section	.text$_ZNKSt6vectorIxSaIxEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE3endEv
	.def	_ZNKSt6vectorIxSaIxEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE3endEv
_ZNKSt6vectorIxSaIxEE3endEv:
.LFB4043:
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
	.section	.text$_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB4045:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_
_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_:
.LFB4048:
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
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB16:
	call	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy
.LEHE16:
	jmp	.L263
.L262:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB17:
	call	_Unwind_Resume
	nop
.LEHE17:
.L263:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4048-.LLSDACSB4048
.LLSDACSB4048:
	.uleb128 .LEHB16-.LFB4048
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L262-.LFB4048
	.uleb128 0
	.uleb128 .LEHB17-.LFB4048
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE4048:
	.section	.text$_ZNSt12_Vector_baseIxSaIxEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEES7_PxxET1_T_T0_S9_RSaIT2_E:
.LFB4050:
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
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
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
.LFB4056:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
	.def	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev:
.LFB4057:
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
	.section	.text$_ZNSt15__new_allocatorIxED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIxED2Ev
	.def	_ZNSt15__new_allocatorIxED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIxED2Ev
_ZNSt15__new_allocatorIxED2Ev:
.LFB4059:
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
	.section	.text$_ZNSt6vectorIxSaIxEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE3endEv
	.def	_ZNSt6vectorIxSaIxEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE3endEv
_ZNSt6vectorIxSaIxEE3endEv:
.LFB4062:
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
	.section	.text$_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.def	_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
_ZNSt6vectorIxSaIxEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB4065:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv
	leaq	-25(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEEC1ERKS0_
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIxED2Ev
	nop
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	40(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rbx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEED1Ev
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc:
.LFB4066:
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
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movb	%al, 48(%rbp)
	movq	40(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L274
	leaq	40(%rbp), %rax
	movq	32(%rbp), %rcx
	movl	$0, %r8d
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	jmp	.L275
.L274:
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L275:
	movq	40(%rbp), %rax
	testq	%rax, %rax
	je	.L276
	movsbl	48(%rbp), %esi
	movq	40(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movl	%esi, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc
.L276:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.def	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc:
.LFB4067:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy:
.LFB4071:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	%rax, -8(%rbp)
	movq	%rbx, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcE10deallocateEPcy
	nop
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC92:
	.ascii "basic_string::_M_create\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy:
.LFB4073:
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
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	cmpq	%rbx, %rax
	setb	%al
	testb	%al, %al
	je	.L283
	leaq	.LC92(%rip), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L283:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, 48(%rbp)
	jnb	.L284
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, %rdx
	jnb	.L284
	movq	48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	cmpq	%rbx, %rax
	setb	%al
	testb	%al, %al
	je	.L284
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	movq	40(%rbp), %rdx
	movq	%rax, (%rdx)
.L284:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB4075:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
.LFB4098:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$9223372036854775807, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	subq	$1, %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_:
.LFB4163:
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
	.section	.text$_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.def	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_:
.LFB4165:
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
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rbp), %r8
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc
_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc:
.LFB4169:
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
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L304
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L304:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L305
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	cmpq	-8(%rbp), %rax
	jnb	.L306
.L305:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	jmp	.L308
.L306:
	movq	-8(%rbp), %rax
.L308:
	addq	$56, %rsp
	popq	%rbx
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
.LFB4170:
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
	.section	.text$_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E
	.def	_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E
_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E:
.LFB4174:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev
	.def	_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev
_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev:
.LFB4177:
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
	testq	%rax, %rax
	je	.L314
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxy
.L314:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_
	.def	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_
_ZNSt6vectorIxSaIxEE17_M_realloc_appendIJxEEEvDpOT_:
.LFB4181:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	leaq	224(%rsp), %rbp
	.seh_setframe	%rbp, 224
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	leaq	.LC91(%rip), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorIxSaIxEE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, -160(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE12_Guard_allocC1EPxyRSt12_Vector_baseIxS0_E
	movq	40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	-96(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L324
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L324:
	nop
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	movq	%rax, -48(%rbp)
	addq	$8, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIxSaIxEE12_Guard_allocD1Ev
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$232, %rsp
	popq	%rbx
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
.LFB4189:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy
_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEy:
.LFB4190:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_:
.LFB4191:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L331
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, 32(%rbp)
.L331:
	movq	32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPxEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPxEvT_S1_
	.def	_ZSt8_DestroyIPxEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPxEvT_S1_
_ZSt8_DestroyIPxEvT_S1_:
.LFB4194:
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
	.section	.text$_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv
	.def	_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv
_ZNKSt12_Vector_baseIxSaIxEE13get_allocatorEv:
.LFB4202:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	nop
	movq	16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIxSaIxEEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIxSaIxEEC1ERKS0_
	.def	_ZNSt6vectorIxSaIxEEC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIxSaIxEEC1ERKS0_
_ZNSt6vectorIxSaIxEEC1ERKS0_:
.LFB4205:
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
	call	_ZNSt12_Vector_baseIxSaIxEEC2ERKS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_
	.def	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB4206:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
	movq	16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_
	leaq	-32(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc:
.LFB4208:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movb	%al, 32(%rbp)
	cmpq	$1, 24(%rbp)
	jne	.L342
	leaq	32(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt11char_traitsIcE6assignERcRKc
	jmp	.L344
.L342:
	movzbl	32(%rbp), %eax
	movsbl	%al, %ecx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE6assignEPcyc
.L344:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y:
.LFB4214:
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
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcE8allocateEyPKv
	nop
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.def	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
.LFB4215:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB4230:
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
	.section	.text$_ZNSt15__new_allocatorIxE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIxE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIxE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIxE8allocateEyPKv
_ZNSt15__new_allocatorIxE8allocateEyPKv:
.LFB4283:
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
	je	.L356
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	jnb	.L357
	call	_ZSt28__throw_bad_array_new_lengthv
.L357:
	call	_ZSt17__throw_bad_allocv
.L356:
	movq	24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.def	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB4285:
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
	movq	%r9, 40(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L360
	movq	-8(%rbp), %rax
	salq	$3, %rax
	movq	32(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	%rax, %r8
	call	memcpy
.L360:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
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
.LFB4286:
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
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB4287:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L365
	movq	24(%rbp), %rax
	jmp	.L366
.L365:
	movq	16(%rbp), %rax
.L366:
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
.LFB4295:
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
	.section	.text$_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_
	.def	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB4297:
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
	movq	24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcE10deallocateEPcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcE10deallocateEPcy
	.def	_ZNSt15__new_allocatorIcE10deallocateEPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcE10deallocateEPcy
_ZNSt15__new_allocatorIcE10deallocateEPcy:
.LFB4300:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIcE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcE8allocateEyPKv
_ZNSt15__new_allocatorIcE8allocateEyPKv:
.LFB4338:
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
	movabsq	$9223372036854775807, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L373
	call	_ZSt17__throw_bad_allocv
.L373:
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSt8ios_baseS0_E;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt21__glibcxx_assert_failPKciS0_S0_;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
