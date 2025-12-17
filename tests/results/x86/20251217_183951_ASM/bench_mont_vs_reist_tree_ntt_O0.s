	.file	"bench_mont_vs_reist_tree_ntt.cpp"
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB192:
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
.LFB194:
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
	.section	.text$_ZSt17__size_to_integery,"x"
	.linkonce discard
	.globl	_ZSt17__size_to_integery
	.def	_ZSt17__size_to_integery;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt17__size_to_integery
_ZSt17__size_to_integery:
.LFB887:
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
	.section	.text$_ZStanSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStanSt13_Ios_FmtflagsS_
	.def	_ZStanSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStanSt13_Ios_FmtflagsS_
_ZStanSt13_Ios_FmtflagsS_:
.LFB1790:
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
.LFB1791:
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
.LFB1793:
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
.LFB1794:
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
.LFB1795:
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
.LFB1824:
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
.LFB1854:
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
.LFB2879:
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
.LFB2881:
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
.LFB3167:
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
.lcomm _ZL6g_sink,8,8
	.section .rdata,"dr"
	.align 4
_ZL1Q:
	.long	8380417
	.align 4
_ZL6HALF_Q:
	.long	4190208
	.text
	.def	_ZL18reist_add_centeredii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18reist_add_centeredii
_ZL18reist_add_centeredii:
.LFB3187:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L26
	movl	$8380417, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	addl	%eax, -8(%rbp)
	cmpl	$8380416, -8(%rbp)
	jle	.L28
	movl	$8380417, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	subl	%eax, -8(%rbp)
	cmpl	$4190208, -8(%rbp)
	jle	.L30
	movl	$8380417, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZL18reist_sub_centeredii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18reist_sub_centeredii
_ZL18reist_sub_centeredii:
.LFB3188:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	subl	24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L34
	movl	$8380417, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	addl	%eax, -8(%rbp)
	cmpl	$8380416, -8(%rbp)
	jle	.L36
	movl	$8380417, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	subl	%eax, -8(%rbp)
	cmpl	$4190208, -8(%rbp)
	jle	.L38
	movl	$8380417, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
_ZL4MU32:
	.long	512
	.text
	.def	_ZL23barrett_mul_to_centeredii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23barrett_mul_to_centeredii
_ZL23barrett_mul_to_centeredii:
.LFB3189:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$0, 16(%rbp)
	jns	.L42
	movl	16(%rbp), %eax
	addl	$8380417, %eax
	movl	%eax, -4(%rbp)
	jmp	.L43
.L42:
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
.L43:
	cmpl	$0, 24(%rbp)
	jns	.L44
	movl	24(%rbp), %eax
	addl	$8380417, %eax
	movl	%eax, -8(%rbp)
	jmp	.L45
.L44:
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
.L45:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	imulq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$9, %rax
	shrq	$32, %rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	imulq	$8380417, %rax, %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$8380416, %rax
	jle	.L46
	subq	$8380417, -16(%rbp)
.L46:
	movq	-16(%rbp), %rax
	cmpq	$8380416, %rax
	jle	.L47
	subq	$8380417, -16(%rbp)
.L47:
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
	cmpl	$4190208, -20(%rbp)
	jle	.L48
	subl	$8380417, -20(%rbp)
.L48:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Montgomery requires odd modulus\12\0"
	.section	.text$_ZN6Mont32C1Ej,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6Mont32C1Ej
	.def	_ZN6Mont32C1Ej;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Mont32C1Ej
_ZN6Mont32C1Ej:
.LFB3192:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L51
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	abort
.L51:
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L52
.L53:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	imull	-4(%rbp), %eax
	movl	$2, %edx
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L52:
	cmpl	$4, -8(%rbp)
	jle	.L53
	movl	-4(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movabsq	$4294967296, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %eax
	imulq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6Mont323addEjjj,"x"
	.linkonce discard
	.globl	_ZN6Mont323addEjjj
	.def	_ZN6Mont323addEjjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Mont323addEjjj
_ZN6Mont323addEjjj:
.LFB3193:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jnb	.L55
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jnb	.L56
.L55:
	movl	32(%rbp), %eax
	subl	%eax, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6Mont323subEjjj,"x"
	.linkonce discard
	.globl	_ZN6Mont323subEjjj
	.def	_ZN6Mont323subEjjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Mont323subEjjj
_ZN6Mont323subEjjj:
.LFB3194:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	16(%rbp), %eax
	subl	24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	16(%rbp), %eax
	cmpl	24(%rbp), %eax
	jnb	.L59
	movl	32(%rbp), %eax
	addl	%eax, -4(%rbp)
.L59:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK6Mont324redcEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6Mont324redcEy
	.def	_ZNK6Mont324redcEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6Mont324redcEy
_ZNK6Mont324redcEy:
.LFB3195:
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
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movq	24(%rbp), %rdx
	addq	%rdx, %rax
	shrq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L62
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, -4(%rbp)
.L62:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK6Mont327to_montEj,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6Mont327to_montEj
	.def	_ZNK6Mont327to_montEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6Mont327to_montEj
_ZNK6Mont327to_montEj:
.LFB3196:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movl	8(%rdx), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movq	16(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNK6Mont324redcEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK6Mont329from_montEj,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6Mont329from_montEj
	.def	_ZNK6Mont329from_montEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6Mont329from_montEj
_ZNK6Mont329from_montEj:
.LFB3197:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	movq	16(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNK6Mont324redcEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK6Mont323mulEjj,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6Mont323mulEjj
	.def	_ZNK6Mont323mulEjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6Mont323mulEjj
_ZNK6Mont323mulEjj:
.LFB3198:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	24(%rbp), %edx
	movl	32(%rbp), %eax
	imulq	%rdx, %rax
	movq	16(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNK6Mont324redcEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_ZL5lcg32Rj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL5lcg32Rj
_ZL5lcg32Rj:
.LFB3199:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	imull	$1664525, %eax, %eax
	leal	1013904223(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZL13init_centeredRSt6vectorIiSaIiEES2_S2_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13init_centeredRSt6vectorIiSaIiEES2_S2_
_ZL13init_centeredRSt6vectorIiSaIiEES2_S2_:
.LFB3200:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movl	$1, -36(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L73
.L77:
	leaq	-36(%rbp), %rax
	movq	%rax, %rcx
	call	_ZL5lcg32Rj
	movl	%eax, %edx
	imulq	$1074791297, %rdx, %rdx
	shrq	$32, %rdx
	shrl	$21, %edx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edx
	imull	$8380417, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -24(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rcx
	call	_ZL5lcg32Rj
	movl	%eax, %edx
	imulq	$1074791297, %rdx, %rdx
	shrq	$32, %rdx
	shrl	$21, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	imull	$8380417, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rcx
	call	_ZL5lcg32Rj
	movl	%eax, %edx
	imulq	$1074791297, %rdx, %rdx
	shrq	$32, %rdx
	shrl	$21, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	imull	$8380417, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$4190208, -12(%rbp)
	jle	.L74
	subl	$8380417, -12(%rbp)
.L74:
	movl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$4190208, -16(%rbp)
	jle	.L75
	subl	$8380417, -16(%rbp)
.L75:
	movl	-32(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$4190208, -20(%rbp)
	jle	.L76
	subl	$8380417, -20(%rbp)
.L76:
	movl	-12(%rbp), %ebx
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, (%rax)
	movl	-16(%rbp), %ebx
	movq	-8(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, (%rax)
	movl	-20(%rbp), %ebx
	movq	-8(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, (%rax)
	addq	$1, -8(%rbp)
.L73:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L77
	nop
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZL27reist_tree_butterfly_scalarRSt6vectorIiSaIiEES2_RKS1_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27reist_tree_butterfly_scalarRSt6vectorIiSaIiEES2_RKS1_i
_ZL27reist_tree_butterfly_scalarRSt6vectorIiSaIiEES2_RKS1_i:
.LFB3201:
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
	movq	%r8, 48(%rbp)
	movl	%r9d, 56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L79
.L82:
	movl	$0, -8(%rbp)
	jmp	.L80
.L81:
	movl	-8(%rbp), %eax
	cltq
	movq	48(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNKSt6vectorIiSaIiEEixEy
	movl	(%rax), %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_ZL23barrett_mul_to_centeredii
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	call	_ZL18reist_add_centeredii
	movl	%eax, %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, (%rax)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	call	_ZL18reist_sub_centeredii
	movl	%eax, %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, (%rax)
	addl	$1, -8(%rbp)
.L80:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L81
	addl	$1, -4(%rbp)
.L79:
	movl	-4(%rbp), %eax
	cmpl	56(%rbp), %eax
	jl	.L82
	movq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	addl	%ebx, %eax
	movl	%eax, %edx
	movq	_ZL6g_sink(%rip), %rax
	xorq	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZL14mont_butterflyRSt6vectorIjSaIjEES2_RKS1_RK6Mont32i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14mont_butterflyRSt6vectorIjSaIjEES2_RKS1_RK6Mont32i
_ZL14mont_butterflyRSt6vectorIjSaIjEES2_RKS1_RK6Mont32i:
.LFB3202:
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
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIjSaIjEE4sizeEv
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L84
.L87:
	movl	$0, -8(%rbp)
	jmp	.L85
.L86:
	movl	-8(%rbp), %eax
	cltq
	movq	48(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNKSt6vectorIjSaIjEEixEy
	movl	(%rax), %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %edx
	movq	56(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_ZNK6Mont323mulEjj
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	56(%rbp), %rax
	movl	(%rax), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	_ZN6Mont323addEjjj
	movl	%eax, %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	%ebx, (%rax)
	movq	56(%rbp), %rax
	movl	(%rax), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	_ZN6Mont323subEjjj
	movl	%eax, %ebx
	movl	-8(%rbp), %eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	%ebx, (%rax)
	addl	$1, -8(%rbp)
.L85:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L86
	addl	$1, -4(%rbp)
.L84:
	movl	-4(%rbp), %eax
	cmpl	64(%rbp), %eax
	jl	.L87
	movq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %ebx
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movq	40(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %eax
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6Mont329from_montEj
	movl	%eax, %edx
	movq	_ZL6g_sink(%rip), %rax
	xorq	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE_clEv
_ZZ4mainENKUlvE_clEv:
.LFB3204:
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
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE0:
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE1:
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %r8d
	movq	32(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZL27reist_tree_butterfly_scalarRSt6vectorIiSaIiEES2_RKS1_i
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, %ebx
	leaq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	addl	%ebx, %eax
	movl	%eax, %edx
	movq	_ZL6g_sink(%rip), %rax
	xorq	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	jmp	.L91
.L90:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
.L91:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3204:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3204-.LLSDACSB3204
.LLSDACSB3204:
	.uleb128 .LEHB0-.LFB3204
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3204
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L90-.LFB3204
	.uleb128 0
	.uleb128 .LEHB2-.LFB3204
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3204:
	.text
	.seh_endproc
	.align 2
	.def	_ZZ4mainENKUlvE0_clEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZ4mainENKUlvE0_clEv
_ZZ4mainENKUlvE0_clEv:
.LFB3205:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE3:
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE4:
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movq	32(%rbp), %rax
	movq	24(%rax), %r9
	movq	32(%rbp), %rax
	movq	16(%rax), %r8
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	%ecx, 32(%rsp)
	movq	%rax, %rcx
	call	_ZL14mont_butterflyRSt6vectorIjSaIjEES2_RKS1_RK6Mont32i
	movq	32(%rbp), %rax
	movq	24(%rax), %rbx
	leaq	-32(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %esi
	leaq	-64(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	(%rax), %eax
	xorl	%esi, %eax
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZNK6Mont329from_montEj
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	_ZL6g_sink(%rip), %rdx
	xorq	%rdx, %rax
	movq	%rax, _ZL6g_sink(%rip)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	jmp	.L95
.L94:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
.L95:
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3205:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3205-.LLSDACSB3205
.LLSDACSB3205:
	.uleb128 .LEHB3-.LFB3205
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3205
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L94-.LFB3205
	.uleb128 0
	.uleb128 .LEHB5-.LFB3205
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE3205:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "Montgomery vs REIST-Tree NTT Butterfly Benchmark\12\0"
.LC2:
	.ascii "Modulus Q = \0"
.LC3:
	.ascii ", n = \0"
.LC4:
	.ascii ", rounds = \0"
.LC5:
	.ascii "\12\0"
	.align 8
.LC6:
	.ascii "NEON: not available, using scalar\12\0"
.LC7:
	.ascii "Results (seconds)\12\0"
.LC8:
	.ascii "REIST-Tree scalar : \0"
.LC9:
	.ascii "Montgomery (stay) : \0"
.LC10:
	.ascii "\12\12\0"
.LC11:
	.ascii "Speedups\12\0"
.LC12:
	.ascii "Mont vs REIST-Tree scalar  : \0"
.LC13:
	.ascii "x\12\0"
.LC14:
	.ascii "\12Sink: \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3203:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$552, %rsp
	.seh_stackalloc	552
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	%ecx, 448(%rbp)
	movq	%rdx, 456(%rbp)
	call	__main
	movl	$1024, 412(%rbp)
	movl	$5000, 244(%rbp)
	movb	$1, 395(%rbp)
	cmpl	$1, 448(%rbp)
	jle	.L97
	movq	456(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, 412(%rbp)
.L97:
	cmpl	$2, 448(%rbp)
	jle	.L98
	movq	456(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, 244(%rbp)
.L98:
	leaq	_ZSt5fixedRSt8ios_base(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSolsEPFRSt8ios_baseS0_E
	movq	%rax, %rbx
	movl	$6, %ecx
	call	_ZSt12setprecisioni
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$8380417, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	412(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	244(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movb	$0, 395(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE6:
	leaq	250(%rbp), %rax
	movq	%rax, 368(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	250(%rbp), %rcx
	leaq	208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_
.LEHE7:
	leaq	250(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	leaq	251(%rbp), %rax
	movq	%rax, 360(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	251(%rbp), %rcx
	leaq	176(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_
.LEHE8:
	leaq	251(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	leaq	252(%rbp), %rax
	movq	%rax, 352(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	252(%rbp), %rcx
	leaq	144(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB9:
	call	_ZNSt6vectorIiSaIiEEC1EyRKS0_
.LEHE9:
	leaq	252(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	leaq	144(%rbp), %rcx
	leaq	176(%rbp), %rdx
	leaq	208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZL13init_centeredRSt6vectorIiSaIiEES2_S2_
	leaq	132(%rbp), %rax
	movl	$8380417, %edx
	movq	%rax, %rcx
.LEHB10:
	call	_ZN6Mont32C1Ej
.LEHE10:
	leaq	253(%rbp), %rax
	movq	%rax, 344(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	253(%rbp), %rcx
	leaq	96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB11:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_
.LEHE11:
	leaq	253(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	leaq	254(%rbp), %rax
	movq	%rax, 336(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	254(%rbp), %rcx
	leaq	64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB12:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_
.LEHE12:
	leaq	254(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	leaq	255(%rbp), %rax
	movq	%rax, 328(%rbp)
	nop
	nop
	movl	412(%rbp), %eax
	movslq	%eax, %rdx
	leaq	255(%rbp), %rcx
	leaq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB13:
	call	_ZNSt6vectorIjSaIjEEC1EyRKS0_
.LEHE13:
	leaq	255(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	movl	$0, 408(%rbp)
	jmp	.L99
.L106:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	208(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L100
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	208(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, 404(%rbp)
	jmp	.L101
.L100:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	208(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	addl	$8380417, %eax
	movl	%eax, 404(%rbp)
.L101:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L102
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, 400(%rbp)
	jmp	.L103
.L102:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	addl	$8380417, %eax
	movl	%eax, 400(%rbp)
.L103:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L104
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, 396(%rbp)
	jmp	.L105
.L104:
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	addl	$8380417, %eax
	movl	%eax, 396(%rbp)
.L105:
	movl	404(%rbp), %edx
	leaq	132(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6Mont327to_montEj
	movl	%eax, %ebx
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	%ebx, (%rax)
	movl	400(%rbp), %edx
	leaq	132(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6Mont327to_montEj
	movl	%eax, %ebx
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	%ebx, (%rax)
	movl	396(%rbp), %edx
	leaq	132(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6Mont327to_montEj
	movl	%eax, %ebx
	movl	408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEEixEy
	movl	%ebx, (%rax)
	addl	$1, 408(%rbp)
.L99:
	movl	408(%rbp), %eax
	cmpl	412(%rbp), %eax
	jl	.L106
	leaq	208(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rax, %rcx
.LEHB14:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE14:
	leaq	176(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB15:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE15:
	leaq	96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB16:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE16:
	leaq	64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB17:
	call	_ZNSt6vectorIjSaIjEEC1ERKS1_
.LEHE17:
	movq	%rbp, %rax
	movq	%rax, 256(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, 264(%rbp)
	leaq	144(%rbp), %rax
	movq	%rax, 272(%rbp)
	leaq	244(%rbp), %rax
	movq	%rax, 280(%rbp)
	leaq	256(%rbp), %rax
	movq	%rax, %rcx
.LEHB18:
	call	_Z13bench_secondsIZ4mainEUlvE_EdOT_
	movq	%xmm0, %rax
	movq	%rax, 384(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, 288(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, 296(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, 304(%rbp)
	leaq	132(%rbp), %rax
	movq	%rax, 312(%rbp)
	leaq	244(%rbp), %rax
	movq	%rax, 320(%rbp)
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
	call	_Z13bench_secondsIZ4mainEUlvE0_EdOT_
	movq	%xmm0, %rax
	movq	%rax, 376(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	384(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC9(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	376(%rbp), %xmm0
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
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	384(%rbp), %xmm0
	divsd	376(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	_ZL6g_sink(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEy
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE18:
	movl	$0, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	leaq	144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	208(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movl	%ebx, %eax
	jmp	.L136
.L124:
	movq	%rax, %rbx
	leaq	250(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB19:
	call	_Unwind_Resume
.L125:
	movq	%rax, %rbx
	leaq	251(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	jmp	.L110
.L126:
	movq	%rax, %rbx
	leaq	252(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	jmp	.L112
.L128:
	movq	%rax, %rbx
	leaq	253(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	jmp	.L114
.L129:
	movq	%rax, %rbx
	leaq	254(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	jmp	.L116
.L130:
	movq	%rax, %rbx
	leaq	255(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	jmp	.L118
.L135:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	jmp	.L120
.L134:
	movq	%rax, %rbx
.L120:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	jmp	.L121
.L133:
	movq	%rax, %rbx
.L121:
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	jmp	.L122
.L132:
	movq	%rax, %rbx
.L122:
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	jmp	.L123
.L131:
	movq	%rax, %rbx
.L123:
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
.L118:
	leaq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
.L116:
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIjSaIjEED1Ev
	jmp	.L114
.L127:
	movq	%rax, %rbx
.L114:
	leaq	144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
.L112:
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
.L110:
	leaq	208(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE19:
.L136:
	addq	$552, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3203:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3203-.LLSDACSB3203
.LLSDACSB3203:
	.uleb128 .LEHB6-.LFB3203
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB3203
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L124-.LFB3203
	.uleb128 0
	.uleb128 .LEHB8-.LFB3203
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L125-.LFB3203
	.uleb128 0
	.uleb128 .LEHB9-.LFB3203
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L126-.LFB3203
	.uleb128 0
	.uleb128 .LEHB10-.LFB3203
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L127-.LFB3203
	.uleb128 0
	.uleb128 .LEHB11-.LFB3203
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L128-.LFB3203
	.uleb128 0
	.uleb128 .LEHB12-.LFB3203
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L129-.LFB3203
	.uleb128 0
	.uleb128 .LEHB13-.LFB3203
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L130-.LFB3203
	.uleb128 0
	.uleb128 .LEHB14-.LFB3203
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L131-.LFB3203
	.uleb128 0
	.uleb128 .LEHB15-.LFB3203
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L132-.LFB3203
	.uleb128 0
	.uleb128 .LEHB16-.LFB3203
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L133-.LFB3203
	.uleb128 0
	.uleb128 .LEHB17-.LFB3203
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L134-.LFB3203
	.uleb128 0
	.uleb128 .LEHB18-.LFB3203
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L135-.LFB3203
	.uleb128 0
	.uleb128 .LEHB19-.LFB3203
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3203:
	.text
	.seh_endproc
	.section	.text$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.def	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv:
.LFB3482:
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
	.section	.text$_ZNKSt6vectorIiSaIiEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE4sizeEv
	.def	_ZNKSt6vectorIiSaIiEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE4sizeEv
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB3525:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "__n < this->size()\0"
	.align 8
.LC16:
	.ascii "std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = int; _Alloc = std::allocator<int>; reference = int&; size_type = long long unsigned int]\0"
	.align 8
.LC17:
	.ascii "C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h\0"
	.section	.text$_ZNSt6vectorIiSaIiEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEixEy
	.def	_ZNSt6vectorIiSaIiEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEixEy
_ZNSt6vectorIiSaIiEEixEy:
.LFB3526:
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
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L143
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1263, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L143:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "std::vector<_Tp, _Alloc>::const_reference std::vector<_Tp, _Alloc>::operator[](size_type) const [with _Tp = int; _Alloc = std::allocator<int>; const_reference = const int&; size_type = long long unsigned int]\0"
	.section	.text$_ZNKSt6vectorIiSaIiEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEEixEy
	.def	_ZNKSt6vectorIiSaIiEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEEixEy
_ZNKSt6vectorIiSaIiEEixEy:
.LFB3527:
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
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L146
	leaq	.LC15(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1282, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L146:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIjSaIjEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIjSaIjEE4sizeEv
	.def	_ZNKSt6vectorIjSaIjEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIjSaIjEE4sizeEv
_ZNKSt6vectorIjSaIjEE4sizeEv:
.LFB3528:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = unsigned int; _Alloc = std::allocator<unsigned int>; reference = unsigned int&; size_type = long long unsigned int]\0"
	.section	.text$_ZNSt6vectorIjSaIjEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIjSaIjEEixEy
	.def	_ZNSt6vectorIjSaIjEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEEixEy
_ZNSt6vectorIjSaIjEEixEy:
.LFB3529:
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
	call	_ZNKSt6vectorIjSaIjEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L152
	leaq	.LC15(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1263, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L152:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "std::vector<_Tp, _Alloc>::const_reference std::vector<_Tp, _Alloc>::operator[](size_type) const [with _Tp = unsigned int; _Alloc = std::allocator<unsigned int>; const_reference = const unsigned int&; size_type = long long unsigned int]\0"
	.section	.text$_ZNKSt6vectorIjSaIjEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIjSaIjEEixEy
	.def	_ZNKSt6vectorIjSaIjEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIjSaIjEEixEy
_ZNKSt6vectorIjSaIjEEixEy:
.LFB3530:
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
	call	_ZNKSt6vectorIjSaIjEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L155
	leaq	.LC15(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1282, %edx
	movq	%rax, %rcx
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_
.L155:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEC1EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEC1EyRKS0_
	.def	_ZNSt6vectorIiSaIiEEC1EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1EyRKS0_
_ZNSt6vectorIiSaIiEEC1EyRKS0_:
.LFB3541:
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
	movq	32(%rbp), %rbx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB20:
	call	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
.LEHE20:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB21:
	call	_ZNSt6vectorIiSaIiEE21_M_default_initializeEy
.LEHE21:
	jmp	.L160
.L159:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB22:
	call	_Unwind_Resume
	nop
.LEHE22:
.L160:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3541:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3541-.LLSDACSB3541
.LLSDACSB3541:
	.uleb128 .LEHB20-.LFB3541
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB3541
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L159-.LFB3541
	.uleb128 0
	.uleb128 .LEHB22-.LFB3541
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE3541:
	.section	.text$_ZNSt6vectorIiSaIiEEC1EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEED1Ev
	.def	_ZNSt6vectorIiSaIiEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEED1Ev
_ZNSt6vectorIiSaIiEED1Ev:
.LFB3544:
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
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
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
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIjSaIjEEC1EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIjSaIjEEC1EyRKS0_
	.def	_ZNSt6vectorIjSaIjEEC1EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEEC1EyRKS0_
_ZNSt6vectorIjSaIjEEC1EyRKS0_:
.LFB3553:
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
	movq	32(%rbp), %rbx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB23:
	call	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_
.LEHE23:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB24:
	call	_ZNSt6vectorIjSaIjEE21_M_default_initializeEy
.LEHE24:
	jmp	.L165
.L164:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB25:
	call	_Unwind_Resume
	nop
.LEHE25:
.L165:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3553:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3553-.LLSDACSB3553
.LLSDACSB3553:
	.uleb128 .LEHB23-.LFB3553
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB3553
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L164-.LFB3553
	.uleb128 0
	.uleb128 .LEHB25-.LFB3553
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE3553:
	.section	.text$_ZNSt6vectorIjSaIjEEC1EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIjSaIjEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIjSaIjEED1Ev
	.def	_ZNSt6vectorIjSaIjEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEED1Ev
_ZNSt6vectorIjSaIjEED1Ev:
.LFB3556:
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
	call	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
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
	call	_ZSt8_DestroyIPjEvT_S1_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEC1ERKS1_
	.def	_ZNSt6vectorIiSaIiEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1ERKS1_
_ZNSt6vectorIiSaIiEEC1ERKS1_:
.LFB3559:
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
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
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
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	leaq	-49(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB26:
	call	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
.LEHE26:
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movq	(%rax), %rdi
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE3endEv
	movq	%rax, %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE5beginEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB27:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E
.LEHE27:
	movq	48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L174
.L172:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB28:
	call	_Unwind_Resume
.L173:
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE28:
.L174:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3559:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3559-.LLSDACSB3559
.LLSDACSB3559:
	.uleb128 .LEHB26-.LFB3559
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L172-.LFB3559
	.uleb128 0
	.uleb128 .LEHB27-.LFB3559
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L173-.LFB3559
	.uleb128 0
	.uleb128 .LEHB28-.LFB3559
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE3559:
	.section	.text$_ZNSt6vectorIiSaIiEEC1ERKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIjSaIjEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIjSaIjEEC1ERKS1_
	.def	_ZNSt6vectorIjSaIjEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEEC1ERKS1_
_ZNSt6vectorIjSaIjEEC1ERKS1_:
.LFB3562:
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
	call	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
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
	call	_ZNKSt6vectorIjSaIjEE4sizeEv
	leaq	-49(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB29:
	call	_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_
.LEHE29:
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movq	(%rax), %rdi
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIjSaIjEE3endEv
	movq	%rax, %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIjSaIjEE5beginEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB30:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E
.LEHE30:
	movq	48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L182
.L180:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB31:
	call	_Unwind_Resume
.L181:
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE31:
.L182:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3562:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3562-.LLSDACSB3562
.LLSDACSB3562:
	.uleb128 .LEHB29-.LFB3562
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L180-.LFB3562
	.uleb128 0
	.uleb128 .LEHB30-.LFB3562
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L181-.LFB3562
	.uleb128 0
	.uleb128 .LEHB31-.LFB3562
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE3562:
	.section	.text$_ZNSt6vectorIjSaIjEEC1ERKS1_,"x"
	.linkonce discard
	.seh_endproc
	.text
	.def	_Z13bench_secondsIZ4mainEUlvE_EdOT_;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z13bench_secondsIZ4mainEUlvE_EdOT_
_Z13bench_secondsIZ4mainEUlvE_EdOT_:
.LFB3563:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE_clEv
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
	.def	_Z13bench_secondsIZ4mainEUlvE0_EdOT_;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z13bench_secondsIZ4mainEUlvE0_EdOT_
_Z13bench_secondsIZ4mainEUlvE0_EdOT_:
.LFB3565:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZ4mainENKUlvE0_clEv
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
	.section	.text$_ZNSt15__new_allocatorIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiED2Ev
	.def	_ZNSt15__new_allocatorIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiED2Ev
_ZNSt15__new_allocatorIiED2Ev:
.LFB3697:
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
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "cannot create std::vector larger than max_size()\0"
	.section	.text$_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_
	.def	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_:
.LFB3699:
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
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	cmpq	32(%rbp), %rax
	setb	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	testb	%bl, %bl
	je	.L189
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L189:
	movq	32(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev:
.LFB3703:
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
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_:
.LFB3704:
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
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB32:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
.LEHE32:
	jmp	.L195
.L194:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB33:
	call	_Unwind_Resume
	nop
.LEHE33:
.L195:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3704-.LLSDACSB3704
.LLSDACSB3704:
	.uleb128 .LEHB32-.LFB3704
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L194-.LFB3704
	.uleb128 0
	.uleb128 .LEHB33-.LFB3704
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE3704:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEED2Ev
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB3707:
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
	sarq	$2, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3707:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3707-.LLSDACSB3707
.LLSDACSB3707:
.LLSDACSE3707:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE21_M_default_initializeEy
	.def	_ZNSt6vectorIiSaIiEE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE21_M_default_initializeEy
_ZNSt6vectorIiSaIiEE21_M_default_initializeEy:
.LFB3709:
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
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E
	movq	16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3710:
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
	.section	.text$_ZNSt15__new_allocatorIjED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIjED2Ev
	.def	_ZNSt15__new_allocatorIjED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIjED2Ev
_ZNSt15__new_allocatorIjED2Ev:
.LFB3716:
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
	.section	.text$_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_
	.def	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_
_ZNSt6vectorIjSaIjEE17_S_check_init_lenEyRKS0_:
.LFB3718:
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
	call	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	cmpq	32(%rbp), %rax
	setb	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	testb	%bl, %bl
	je	.L202
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L202:
	movq	32(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev:
.LFB3722:
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
	call	_ZNSt15__new_allocatorIjED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_
_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_:
.LFB3723:
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
	call	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB34:
	call	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy
.LEHE34:
	jmp	.L208
.L207:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB35:
	call	_Unwind_Resume
	nop
.LEHE35:
.L208:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3723:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3723-.LLSDACSB3723
.LLSDACSB3723:
	.uleb128 .LEHB34-.LFB3723
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L207-.LFB3723
	.uleb128 0
	.uleb128 .LEHB35-.LFB3723
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE3723:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEED2Ev
	.def	_ZNSt12_Vector_baseIjSaIjEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEED2Ev
_ZNSt12_Vector_baseIjSaIjEED2Ev:
.LFB3726:
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
	sarq	$2, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3726-.LLSDACSB3726
.LLSDACSB3726:
.LLSDACSE3726:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIjSaIjEE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIjSaIjEE21_M_default_initializeEy
	.def	_ZNSt6vectorIjSaIjEE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEE21_M_default_initializeEy
_ZNSt6vectorIjSaIjEE21_M_default_initializeEy:
.LFB3728:
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
	call	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E
	movq	16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv:
.LFB3729:
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
	.section	.text$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3731:
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
	.section	.text$_ZNKSt6vectorIiSaIiEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE5beginEv
	.def	_ZNKSt6vectorIiSaIiEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE5beginEv
_ZNKSt6vectorIiSaIiEE5beginEv:
.LFB3733:
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
	.section	.text$_ZNKSt6vectorIiSaIiEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE3endEv
	.def	_ZNKSt6vectorIiSaIiEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE3endEv
_ZNKSt6vectorIiSaIiEE3endEv:
.LFB3734:
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
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_PiiET1_T_T0_S9_RSaIT2_E:
.LFB3735:
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
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv:
.LFB3736:
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
	.section	.text$_ZNKSt6vectorIjSaIjEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIjSaIjEE5beginEv
	.def	_ZNKSt6vectorIjSaIjEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIjSaIjEE5beginEv
_ZNKSt6vectorIjSaIjEE5beginEv:
.LFB3738:
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
	.section	.text$_ZNKSt6vectorIjSaIjEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIjSaIjEE3endEv
	.def	_ZNKSt6vectorIjSaIjEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIjSaIjEE3endEv
_ZNKSt6vectorIjSaIjEE3endEv:
.LFB3739:
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
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_PjjET1_T_T0_S9_RSaIT2_E:
.LFB3740:
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
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.def	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB3741:
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
.LFB3744:
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
.LFB3745:
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
.LFB3778:
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
	jnb	.L235
	movq	24(%rbp), %rax
	jmp	.L236
.L235:
	movq	16(%rbp), %rax
.L236:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB3818:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$2305843009213693951, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$2305843009213693951, %rax
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
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_:
.LFB3824:
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
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy:
.LFB3825:
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
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	.def	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy:
.LFB3826:
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
	je	.L246
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
	call	_ZNSt15__new_allocatorIiE10deallocateEPiy
	nop
.L246:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPiyiET_S1_T0_RSaIT1_E:
.LFB3827:
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
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt25__uninitialized_default_nIPiyET_S1_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiEvT_S1_
	.def	_ZSt8_DestroyIPiEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiEvT_S1_
_ZSt8_DestroyIPiEvT_S1_:
.LFB3828:
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
	.section	.text$_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_:
.LFB3830:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$2305843009213693951, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$2305843009213693951, %rax
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
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_:
.LFB3836:
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
	call	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy
_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEy:
.LFB3837:
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
	call	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy
	.def	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy
_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjy:
.LFB3838:
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
	je	.L259
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
	call	_ZNSt15__new_allocatorIjE10deallocateEPjy
	nop
.L259:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPjyjET_S1_T0_RSaIT1_E:
.LFB3839:
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
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt25__uninitialized_default_nIPjyET_S1_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPjEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPjEvT_S1_
	.def	_ZSt8_DestroyIPjEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPjEvT_S1_
_ZSt8_DestroyIPjEvT_S1_:
.LFB3840:
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
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB3846:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L267
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
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
	salq	$2, %rax
	addq	%rax, 32(%rbp)
.L267:
	movq	32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_:
.LFB3855:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L276
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
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
	salq	$2, %rax
	addq	%rax, 32(%rbp)
.L276:
	movq	32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.def	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB3860:
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
.LFB3861:
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
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3929:
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
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy:
.LFB3931:
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
	je	.L287
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiE8allocateEyPKv
	nop
	jmp	.L289
.L287:
	movl	$0, %eax
.L289:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPiyET_S1_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPiyET_S1_T0_
	.def	_ZSt25__uninitialized_default_nIPiyET_S1_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPiyET_S1_T0_
_ZSt25__uninitialized_default_nIPiyET_S1_T0_:
.LFB3933:
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
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev:
.LFB3939:
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
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy
_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEy:
.LFB3941:
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
	je	.L295
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIjE8allocateEyPKv
	nop
	jmp	.L297
.L295:
	movl	$0, %eax
.L297:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPjyET_S1_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPjyET_S1_T0_
	.def	_ZSt25__uninitialized_default_nIPjyET_S1_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPjyET_S1_T0_
_ZSt25__uninitialized_default_nIPjyET_S1_T0_:
.LFB3943:
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
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE:
.LFB3948:
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
	movsd	.LC22(%rip), %xmm1
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
	.section	.text$_ZNSt15__new_allocatorIiE10deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiE10deallocateEPiy
	.def	_ZNSt15__new_allocatorIiE10deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiE10deallocateEPiy
_ZNSt15__new_allocatorIiE10deallocateEPiy:
.LFB3981:
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
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPiyEET_S3_T0_:
.LFB3982:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L306
	movq	16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt10_ConstructIiJEEvPT_DpOT0_
	addq	$4, 16(%rbp)
	movq	24(%rbp), %rax
	subq	$1, %rax
	movq	16(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt17__size_to_integery
	movq	-88(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L309
	movq	-32(%rbp), %rax
	jmp	.L310
.L309:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt9__fill_a1IPiiEvT_S1_RKT0_
	nop
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L310:
	nop
	movq	%rax, 16(%rbp)
.L306:
	movq	16(%rbp), %rax
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIjE10deallocateEPjy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIjE10deallocateEPjy
	.def	_ZNSt15__new_allocatorIjE10deallocateEPjy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIjE10deallocateEPjy
_ZNSt15__new_allocatorIjE10deallocateEPjy:
.LFB3985:
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
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjyEET_S3_T0_:
.LFB3986:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L316
	movq	16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt10_ConstructIjJEEvPT_DpOT0_
	addq	$4, 16(%rbp)
	movq	24(%rbp), %rax
	subq	$1, %rax
	movq	16(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt17__size_to_integery
	movq	-88(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L319
	movq	-32(%rbp), %rax
	jmp	.L320
.L319:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt9__fill_a1IPjjEvT_S1_RKT0_
	nop
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L320:
	nop
	movq	%rax, 16(%rbp)
.L316:
	movq	16(%rbp), %rax
	subq	$-128, %rsp
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
.LFB3989:
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
	.section	.text$_ZNSt15__new_allocatorIiE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIiE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiE8allocateEyPKv
_ZNSt15__new_allocatorIiE8allocateEyPKv:
.LFB4004:
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
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L326
	movabsq	$4611686018427387903, %rax
	cmpq	24(%rbp), %rax
	jnb	.L327
	call	_ZSt28__throw_bad_array_new_lengthv
.L327:
	call	_ZSt17__throw_bad_allocv
.L326:
	movq	24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructIiJEEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructIiJEEvPT_DpOT0_
	.def	_ZSt10_ConstructIiJEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructIiJEEvPT_DpOT0_
_ZSt10_ConstructIiJEEvPT_DpOT0_:
.LFB4006:
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
	movq	32(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movl	$0, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L330
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L330:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIjE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIjE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIjE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIjE8allocateEyPKv
_ZNSt15__new_allocatorIjE8allocateEyPKv:
.LFB4009:
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
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L333
	movabsq	$4611686018427387903, %rax
	cmpq	24(%rbp), %rax
	jnb	.L334
	call	_ZSt28__throw_bad_array_new_lengthv
.L334:
	call	_ZSt17__throw_bad_allocv
.L333:
	movq	24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructIjJEEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructIjJEEvPT_DpOT0_
	.def	_ZSt10_ConstructIjJEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructIjJEEvPT_DpOT0_
_ZSt10_ConstructIjJEEvPT_DpOT0_:
.LFB4011:
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
	movq	32(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movl	$0, (%rax)
	movl	$0, %edx
	testb	%dl, %dl
	je	.L337
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZdlPvS_
.L337:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9__fill_a1IPiiEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt9__fill_a1IPiiEvT_S1_RKT0_
	.def	_ZSt9__fill_a1IPiiEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9__fill_a1IPiiEvT_S1_RKT0_
_ZSt9__fill_a1IPiiEvT_S1_RKT0_:
.LFB4025:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L339
.L340:
	movq	16(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	addq	$4, 16(%rbp)
.L339:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L340
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9__fill_a1IPjjEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt9__fill_a1IPjjEvT_S1_RKT0_
	.def	_ZSt9__fill_a1IPjjEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9__fill_a1IPjjEvT_S1_RKT0_
_ZSt9__fill_a1IPjjEvT_S1_RKT0_:
.LFB4026:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L342
.L343:
	movq	16(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	addq	$4, 16(%rbp)
.L342:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L343
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	abort;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSt8ios_baseS0_E;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_ZSt21__glibcxx_assert_failPKciS0_S0_;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
