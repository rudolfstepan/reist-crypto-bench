	.file	"bench_modadd_suite.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "PRECHECK FAILED for B=\0"
.LC1:
	.ascii ", sum=\0"
.LC2:
	.ascii ": got \0"
.LC3:
	.ascii ", expected \0"
.LC4:
	.ascii "\12\0"
.LC5:
	.ascii " after update \0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L18preflight_sequenceExx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
_ZN12_GLOBAL__N_1L18preflight_sequenceExx:
.LFB13909:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rcx, %rbx
	shrq	$63, %rdx
	movq	%rbx, %rsi
	addq	%rcx, %rdx
	sarq	%rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	subq	%rdx, %rsi
	negq	%rcx
	notq	%rax
	leaq	-1(%rsi), %rbp
	cmpq	%rdx, %rbx
	cmove	%rcx, %rax
	movq	%rax, %r9
	movq	%rcx, %rax
	cqto
	idivq	%rbx
	cmpq	%rsi, %rcx
	movq	%rdx, %rdi
	jge	.L3
	testq	%rdx, %rdx
	js	.L73
	cmpq	%rdx, %rsi
	jle	.L74
	cmpq	%rdx, %rcx
	jne	.L146
	movq	%rbp, %rax
	cqto
	idivq	%rbx
	cmpq	%rbp, %rcx
	movq	%rdx, %rdi
	jg	.L69
.L70:
	cmpq	%rdi, %rsi
	jle	.L78
	cmpq	%rdi, %rbp
	jne	.L12
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	movq	%rdx, %rdi
.L23:
	cmpq	%rdi, %rsi
	jle	.L26
	cmpq	%rdi, %rcx
	jne	.L5
.L94:
	movq	%r9, %rax
	movq	%rcx, %r10
	cqto
	idivq	%rbx
	cmpq	%r9, %rsi
	movq	%rdx, %rdi
	jg	.L147
	movq	%r9, %rcx
	subq	%rbx, %rcx
.L36:
	testq	%rdx, %rdx
	js	.L34
.L33:
	cmpq	%rdi, %rsi
	jg	.L31
.L32:
	subq	%rbx, %rdi
.L31:
	cmpq	%rcx, %r10
	jg	.L80
	cmpq	%rcx, %rdi
	jne	.L80
	cmpq	%rcx, %rsi
	movq	%r9, %rbp
	jle	.L88
.L30:
	leaq	-1(%rbx), %rbp
	movq	%rbp, %rax
	cqto
	idivq	%rbx
	cmpq	%rbp, %rsi
	movq	%rdx, %rdi
	jg	.L148
	movq	$-1, %rcx
.L37:
	testq	%rdx, %rdx
	js	.L43
.L42:
	cmpq	%rdi, %rsi
	jg	.L40
.L41:
	subq	%rbx, %rdi
.L40:
	cmpq	%rcx, %r10
	jg	.L88
	cmpq	%rcx, %rdi
	jne	.L88
	cmpq	%rcx, %rsi
	jle	.L88
.L39:
	movl	$1, %ebp
	subq	%rbx, %rbp
	movq	%rbp, %rax
	cqto
	idivq	%rbx
	cmpq	%rbp, %rsi
	movq	%rdx, %rdi
	jg	.L149
	movq	%rbp, %rcx
	subq	%rbx, %rcx
.L52:
	testq	%rdx, %rdx
	js	.L51
.L50:
	cmpq	%rdi, %rsi
	jg	.L48
.L49:
	subq	%rbx, %rdi
.L48:
	cmpq	%rcx, %r10
	jg	.L88
	cmpq	%rcx, %rdi
	jne	.L88
	cmpq	%rcx, %rsi
	jle	.L88
	testq	%rsi, %rsi
	jg	.L53
	movq	%rbx, %rcx
	negq	%rcx
	movq	%rcx, %rdi
.L54:
	cmpq	%rcx, %rdi
	jne	.L95
	cmpq	%r10, %rcx
	jl	.L95
	xorl	%ebp, %ebp
	cmpq	%rcx, %rsi
	jle	.L88
.L55:
	movl	$3, %eax
	cqto
	idivq	%rbx
	cmpq	%rsi, %rdx
	movq	%rdx, %r9
	jl	.L60
	subq	%rbx, %r9
.L60:
	testq	%r8, %r8
	jle	.L92
	movl	$4096, %eax
	cmpq	%rax, %r8
	cmovg	%rax, %r8
	movl	$3, %eax
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	divq	%rbx
	movq	%rdx, %r11
	xorl	%edx, %edx
.L68:
	addq	%r9, %rcx
	cmpq	%rsi, %rcx
	jl	.L63
	subq	%rbx, %rcx
.L64:
	cmpq	%r10, %rcx
	jl	.L66
	cmpq	%rsi, %rcx
	jl	.L65
.L66:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$22, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC5(%rip), %rdx
	movl	$14, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	1(%rdi), %rdx
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rcx, %rax
	subq	%rbx, %rax
	testq	%rdx, %rdx
	js	.L11
.L10:
	cmpq	%rdi, %rsi
	jle	.L9
.L8:
	cmpq	%rdi, %rax
	jne	.L72
	cmpq	%rax, %rcx
	jg	.L72
	cmpq	%rax, %rsi
	jg	.L6
	movq	%rcx, %rbp
	movq	%rax, %rcx
.L88:
	movq	%rbp, %rsi
	jmp	.L5
.L74:
	movq	%rcx, %rax
.L9:
	subq	%rbx, %rdi
	jmp	.L8
.L72:
	movq	%rcx, %rsi
	movq	%rax, %rcx
.L5:
	movq	%rcx, %rbp
.L58:
	movq	.refptr._ZSt4cerr(%rip), %r12
	movl	$22, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$6, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$6, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC3(%rip), %rdx
	movl	$11, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
.L144:
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	xorl	%eax, %eax
.L1:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L73:
	movq	%rcx, %rax
.L11:
	leaq	(%rdx,%rbx), %rdi
	jmp	.L10
.L6:
	movq	%rbp, %rax
	cqto
	idivq	%rbx
	cmpq	%rbp, %rcx
	movq	%rdx, %rdi
	jg	.L14
	testq	%rdx, %rdx
	movq	%rbp, %rax
	jns	.L70
.L20:
	leaq	(%rdx,%rbx), %rdi
.L19:
	cmpq	%rdi, %rsi
	jg	.L17
.L18:
	subq	%rbx, %rdi
.L17:
	cmpq	%rdi, %rax
	jne	.L76
	cmpq	%rcx, %rax
	jl	.L76
	cmpq	%rsi, %rax
	jl	.L16
	movq	%rax, %rcx
	jmp	.L88
.L14:
	testq	%rdx, %rdx
	leaq	(%rbx,%rbp), %rax
	js	.L20
	jmp	.L19
.L76:
	movq	%rbp, %rsi
	movq	%rax, %rcx
	jmp	.L5
.L69:
	leaq	(%rbx,%rbp), %rax
	jmp	.L19
.L63:
	cmpq	%r10, %rcx
	jge	.L65
	addq	%rbx, %rcx
	jmp	.L64
.L65:
	leaq	(%r11,%rdx), %rax
	xorl	%edx, %edx
	divq	%rbx
	testq	%rcx, %rcx
	leaq	(%rbx,%rcx), %rax
	cmovns	%rcx, %rax
	cmpq	%rax, %rdx
	jne	.L66
	addq	$1, %rdi
	cmpq	%rdi, %r8
	jg	.L68
.L92:
	movl	$1, %eax
	jmp	.L1
.L16:
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	movq	%rdx, %rdi
	jns	.L23
	addq	%rbx, %rdi
	jmp	.L23
.L26:
	subq	%rbx, %rdi
	cmpq	%rdi, %rcx
	jne	.L5
	cmpq	%rcx, %rsi
	jg	.L94
	movq	%rsi, %rbp
	jmp	.L88
.L78:
	movq	%rbp, %rax
	jmp	.L18
.L80:
	movq	%r9, %rsi
	jmp	.L5
.L147:
	cmpq	%rcx, %r9
	jge	.L35
	leaq	(%rbx,%r9), %rcx
	jmp	.L36
.L81:
	movq	%r9, %rcx
.L34:
	leaq	(%rdx,%rbx), %rdi
	jmp	.L33
.L35:
	testq	%rdx, %rdx
	js	.L81
	cmpq	%rdx, %rsi
	jle	.L82
	cmpq	%rdx, %r9
	je	.L30
	movq	%r9, %rbp
.L12:
	movq	%rbp, %rsi
	jmp	.L58
.L146:
	movq	%rcx, %rbp
	jmp	.L12
.L148:
	cmpq	%r10, %rbp
	leaq	(%rbx,%rbp), %rcx
	jl	.L37
	testq	%rdx, %rdx
	js	.L86
	cmpq	%rdx, %rsi
	jle	.L87
	cmpq	%rdx, %rbp
	je	.L39
	jmp	.L12
.L86:
	movq	%rbp, %rcx
.L43:
	leaq	(%rdx,%rbx), %rdi
	jmp	.L42
.L82:
	movq	%r9, %rcx
	jmp	.L32
.L149:
	cmpq	%r10, %rbp
	jl	.L89
	testq	%rdx, %rdx
	js	.L90
	cmpq	%rdx, %rsi
	jle	.L91
	cmpq	%rdx, %rbp
	jne	.L12
.L53:
	cmpq	$-1, %rbx
	jge	.L55
	movq	%rbx, %rcx
	xorl	%edi, %edi
	jmp	.L54
.L90:
	movq	%rbp, %rcx
.L51:
	leaq	(%rdx,%rbx), %rdi
	jmp	.L50
.L87:
	movq	%rbp, %rcx
	jmp	.L41
.L89:
	movl	$1, %ecx
	jmp	.L52
.L95:
	xorl	%esi, %esi
	jmp	.L5
.L91:
	movq	%rbp, %rcx
	jmp	.L49
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "[\0"
.LC7:
	.ascii "]\12\0"
.LC8:
	.ascii "Modulus B = \0"
.LC9:
	.ascii "  classic_mod: \0"
.LC10:
	.ascii " s\12\0"
.LC11:
	.ascii "  reist_sym  : \0"
.LC13:
	.ascii "  speedup    : \0"
	.align 8
.LC14:
	.ascii "x (classic / canonical REIST)\12\0"
.LC15:
	.ascii "  results    : \0"
.LC16:
	.ascii " / \0"
	.align 8
.LC17:
	.ascii " (congruent, canonical checked)\12\12\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
_ZN12_GLOBAL__N_1L10print_caseExPKcddyx:
.LFB13913:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	vmovups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$1, %r8d
	movq	144(%rsp), %rdi
	movq	152(%rsp), %rsi
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%rbx, %rcx
	vmovsd	%xmm2, 40(%rsp)
	leaq	.LC6(%rip), %rdx
	vmovapd	%xmm3, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$12, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$15, %r8d
	leaq	.LC9(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovsd	40(%rsp), %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$15, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	vmovapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	vxorpd	%xmm0, %xmm0, %xmm0
	vcomisd	%xmm0, %xmm6
	jbe	.L151
	leaq	.LC13(%rip), %rdx
	movl	$15, %r8d
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovsd	40(%rsp), %xmm2
	movq	%rbx, %rcx
	vdivsd	%xmm6, %xmm2, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L151:
	movl	$15, %r8d
	movq	%rbx, %rcx
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$3, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	nop
	vmovups	48(%rsp), %xmm6
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "basic_string: construction from null is not valid\0"
.LC20:
	.ascii "stoll\0"
	.text
	.p2align 4
	.def	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx:
.LFB13920:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	leaq	64(%rsp), %r12
	testq	%rcx, %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movq	%r12, 48(%rsp)
	je	.L179
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	ja	.L180
	cmpq	$1, %rax
	je	.L181
	testq	%rax, %rax
	jne	.L182
.L159:
	movq	48(%rsp), %rax
	movq	%rbx, 56(%rsp)
	movb	$0, (%rax,%rbx)
	movq	__imp__errno(%rip), %rbx
	movq	48(%rsp), %rdi
.LEHB0:
	call	*%rbx
	movl	(%rax), %r14d
	call	*%rbx
.LEHE0:
	movl	$0, (%rax)
	leaq	40(%rsp), %rdx
	movl	$10, %r8d
	movq	%rdi, %rcx
	call	strtoll
	cmpq	40(%rsp), %rdi
	movq	%rax, %r13
	je	.L183
.LEHB1:
	call	*%rbx
.LEHE1:
	cmpl	$34, (%rax)
	je	.L184
	movq	40(%rsp), %rsi
	call	*%rbx
	movq	%rax, %rdx
	movq	56(%rsp), %rax
	movl	(%rdx), %edx
	testl	%edx, %edx
	je	.L185
.L163:
	subq	%rdi, %rsi
	cmpq	%rax, %rsi
	jne	.L172
	testq	%r13, %r13
	jle	.L172
	movq	%r13, 0(%rbp)
	movl	$1, %ebx
.L167:
	movq	48(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L154
	movq	64(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L154:
	movl	%ebx, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L181:
	movzbl	(%rsi), %eax
	movb	%al, 64(%rsp)
	jmp	.L159
.L172:
	xorl	%ebx, %ebx
	jmp	.L167
.L180:
	leaq	1(%rax), %rcx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rax, 48(%rsp)
	movq	%rax, %rcx
	movq	%rbx, 64(%rsp)
.L157:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	memcpy
	jmp	.L159
.L185:
	call	*%rbx
	movl	%r14d, (%rax)
	movq	56(%rsp), %rax
	jmp	.L163
.L182:
	movq	%r12, %rcx
	jmp	.L157
.L179:
	leaq	.LC19(%rip), %rcx
.LEHB3:
	call	_ZSt19__throw_logic_errorPKc
.LEHE3:
.L174:
	movq	%rax, %rsi
	vzeroupper
.L166:
	movq	48(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L169
	movq	64(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L169:
	movq	%rsi, %rcx
	jmp	.L170
.L183:
	leaq	.LC20(%rip), %rcx
.LEHB4:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE4:
.L175:
	vzeroupper
	movq	%rax, %rsi
	call	*%rbx
	cmpl	$0, (%rax)
	jne	.L166
	call	*%rbx
	movl	%r14d, (%rax)
	jmp	.L166
.L184:
	leaq	.LC20(%rip), %rcx
.LEHB5:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE5:
.L173:
	movq	%rax, %rcx
	vzeroupper
.L170:
	call	__cxa_begin_catch
	xorl	%ebx, %ebx
.LEHB6:
	call	__cxa_end_catch
.LEHE6:
	jmp	.L154
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA13920:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT13920-.LLSDATTD13920
.LLSDATTD13920:
	.byte	0x1
	.uleb128 .LLSDACSE13920-.LLSDACSB13920
.LLSDACSB13920:
	.uleb128 .LEHB0-.LFB13920
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L174-.LFB13920
	.uleb128 0x3
	.uleb128 .LEHB1-.LFB13920
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L175-.LFB13920
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB13920
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L173-.LFB13920
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB13920
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L173-.LFB13920
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB13920
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L175-.LFB13920
	.uleb128 0x3
	.uleb128 .LEHB5-.LFB13920
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L175-.LFB13920
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB13920
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE13920:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT13920:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
.LFB16324:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rdx, %rdi
	call	strlen
	movq	(%rbx), %r11
	leaq	16(%rbx), %r10
	movq	%rax, %rsi
	cmpq	%r10, %r11
	je	.L207
	movq	16(%rbx), %rax
	cmpq	%rsi, %rax
	jb	.L190
.L188:
	cmpq	%r11, %rdi
	jnb	.L208
.L191:
	testq	%rsi, %rsi
	je	.L194
	cmpq	$1, %rsi
	je	.L209
	movq	%r11, %rcx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	(%rbx), %r11
.L194:
	movq	%rsi, 8(%rbx)
	movb	$0, (%r11,%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r14
	ret
.L208:
	movq	8(%rbx), %r8
	leaq	(%r11,%r8), %rax
	cmpq	%rdi, %rax
	jb	.L191
	xorl	%eax, %eax
	movq	%rsi, 32(%rsp)
	movq	%r11, %rdx
	movq	%rdi, %r9
	movq	%rax, 40(%rsp)
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy
	movq	(%rbx), %r11
	jmp	.L194
.L190:
	leaq	(%rax,%rax), %r9
	cmpq	%r9, %rsi
	jb	.L196
.L201:
	leaq	1(%rsi), %rcx
	movq	%rsi, %r9
.L197:
	movq	%r11, 72(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r10, 56(%rsp)
	call	_Znwy
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	call	memcpy
	movq	72(%rsp), %r11
	cmpq	56(%rsp), %r11
	movq	64(%rsp), %r9
	je	.L199
.L202:
	movq	16(%rbx), %rax
	movq	%r11, %rcx
	movq	%r9, 56(%rsp)
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	movq	56(%rsp), %r9
.L199:
	movq	%r14, (%rbx)
	movq	%r14, %r11
	movq	%r9, 16(%rbx)
	jmp	.L194
.L196:
	movabsq	$9223372036854775806, %rax
	cmpq	%r9, %rax
	jnb	.L200
	movabsq	$9223372036854775807, %rcx
	movq	%r11, 56(%rsp)
	call	_Znwy
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	call	memcpy
	movq	56(%rsp), %r11
	movabsq	$9223372036854775806, %r9
	jmp	.L202
.L207:
	cmpq	$15, %rax
	jbe	.L188
	cmpq	$29, %rax
	movl	$30, %r9d
	ja	.L201
.L200:
	leaq	1(%r9), %rcx
	jmp	.L197
.L209:
	movzbl	(%rdi), %eax
	movb	%al, (%r11)
	movq	(%rbx), %r11
	jmp	.L194
	.seh_endproc
	.section .rdata,"dr"
.LC21:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0:
.LFB16326:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rcx), %r8
	movq	16(%rcx), %r10
	cmpq	%r10, %r8
	movq	%rcx, %r9
	je	.L211
	vmovdqu	(%rdx), %ymm0
	addq	$40, %r8
	vmovdqu	%ymm0, -40(%r8)
	movq	32(%rdx), %rax
	movq	%rax, -8(%r8)
	movq	%r8, 8(%rcx)
	vzeroupper
.L223:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L211:
	movq	(%rcx), %rax
	subq	%rax, %r8
	movq	%rax, %rbx
	movabsq	$-3689348814741910323, %rax
	movq	%r8, %rcx
	sarq	$3, %rcx
	imulq	%rax, %rcx
	movabsq	$230584300921369395, %rax
	cmpq	%rax, %rcx
	je	.L224
	testq	%rcx, %rcx
	movl	$1, %eax
	movq	%rdx, 104(%rsp)
	cmovne	%rcx, %rax
	movq	%r9, 96(%rsp)
	movq	%r8, 56(%rsp)
	addq	%rcx, %rax
	movq	%r10, 32(%rsp)
	movabsq	$230584300921369395, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	imulq	$40, %rax, %rcx
	imulq	$40, %rax, %rsi
	call	_Znwy
	movq	104(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	%rax, %r11
	movq	32(%rsp), %r10
	movq	96(%rsp), %r9
	vmovdqu	(%rdx), %ymm0
	testq	%r8, %r8
	vmovdqu	%ymm0, (%rax,%r8)
	movq	32(%rdx), %rax
	movq	%rax, 32(%r11,%r8)
	jne	.L225
	vzeroupper
.L214:
	leaq	40(%r11,%r8), %rax
	vmovq	%r11, %xmm1
	testq	%rbx, %rbx
	vpinsrq	$1, %rax, %xmm1, %xmm0
	je	.L215
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movq	%r11, 56(%rsp)
	subq	%rbx, %rdx
	movq	%r9, 96(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	call	_ZdlPvy
	movq	56(%rsp), %r11
	movq	96(%rsp), %r9
	vmovdqu	32(%rsp), %xmm0
.L215:
	leaq	(%r11,%rsi), %rax
	vmovdqu	%xmm0, (%r9)
	movq	%rax, 16(%r9)
	jmp	.L223
.L225:
	movq	%r10, 56(%rsp)
	movq	%r11, %rcx
	movq	%rbx, %rdx
	movq	%r8, 32(%rsp)
	vzeroupper
	call	memcpy
	movq	96(%rsp), %r9
	movq	56(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L214
.L224:
	leaq	.LC21(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt7__cxx119to_stringEm,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt7__cxx119to_stringEm
	.def	_ZNSt7__cxx119to_stringEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEm
_ZNSt7__cxx119to_stringEm:
.LFB2458:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	cmpl	$9, %edx
	movq	%rcx, %r9
	movl	%edx, %r10d
	jbe	.L227
	movl	%edx, %eax
	movl	$1, %r8d
	movl	$3518437209, %ecx
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L228:
	cmpl	$999, %eax
	jbe	.L243
	cmpl	$9999, %eax
	jbe	.L244
	movl	%eax, %edx
	leal	4(%r8), %r11d
	imulq	%rcx, %rdx
	shrq	$45, %rdx
	cmpl	$99999, %eax
	jbe	.L232
	movl	%r11d, %r8d
	movl	%edx, %eax
.L233:
	cmpl	$99, %eax
	ja	.L228
	leal	1(%r8), %r11d
.L229:
	leaq	16(%r9), %rcx
	cmpl	$15, %r11d
	movb	$0, 16(%r9)
	movl	%r11d, %ebx
	movq	%rcx, (%r9)
	movq	$0, 8(%r9)
	jbe	.L235
	cmpq	$29, %rbx
	jbe	.L240
	leaq	1(%rbx), %rcx
	movq	%rbx, %rsi
.L236:
	movl	%r10d, 296(%rsp)
	movq	%r9, 288(%rsp)
	movl	%r8d, 44(%rsp)
	call	_Znwy
	movq	288(%rsp), %r9
	movl	44(%rsp), %r8d
	movb	$0, (%rax)
	movl	296(%rsp), %r10d
	movq	%rax, %rcx
	movq	%rax, (%r9)
	movq	%rsi, 16(%r9)
.L235:
	vmovdqu	.LC22(%rip), %ymm0
	cmpl	$99, %r10d
	movabsq	$4122263930388298034, %rax
	movabsq	$16106987313379638, %rdx
	movq	%rdx, 241(%rsp)
	vmovdqu	%ymm0, 48(%rsp)
	vmovdqu	.LC23(%rip), %ymm0
	vmovdqu	%ymm0, 80(%rsp)
	vmovdqu	.LC24(%rip), %ymm0
	vmovdqu	%ymm0, 112(%rsp)
	vmovdqu	.LC25(%rip), %ymm0
	vmovdqu	%ymm0, 144(%rsp)
	vmovdqu	.LC26(%rip), %ymm0
	vmovdqu	%ymm0, 176(%rsp)
	vmovdqu	.LC27(%rip), %ymm0
	vmovdqu	%ymm0, 208(%rsp)
	movq	%rax, 233(%rsp)
	jbe	.L237
	.p2align 4,,10
	.p2align 3
.L238:
	movl	%r10d, %edx
	movl	%r10d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r11d
	subl	%r11d, %eax
	movl	%r10d, %r11d
	movl	%edx, %r10d
	movl	%r8d, %edx
	addl	%eax, %eax
	leal	1(%rax), %esi
	movzbl	48(%rsp,%rax), %eax
	movzbl	48(%rsp,%rsi), %esi
	movb	%sil, (%rcx,%rdx)
	leal	-1(%r8), %edx
	subl	$2, %r8d
	cmpl	$9999, %r11d
	movb	%al, (%rcx,%rdx)
	ja	.L238
	cmpl	$999, %r11d
	ja	.L237
	vzeroupper
.L234:
	addl	$48, %r10d
.L239:
	movb	%r10b, (%rcx)
	movq	(%r9), %rax
	movq	%rbx, 8(%r9)
	movb	$0, (%rax,%rbx)
	movq	%r9, %rax
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	addl	%r10d, %r10d
	leal	1(%r10), %eax
	movzbl	48(%rsp,%r10), %r10d
	movzbl	48(%rsp,%rax), %eax
	movb	%al, 1(%rcx)
	vzeroupper
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L243:
	leal	2(%r8), %r11d
	addl	$1, %r8d
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L244:
	leal	3(%r8), %r11d
	addl	$2, %r8d
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L232:
	addl	$3, %r8d
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L240:
	movl	$30, %esi
	movl	$31, %ecx
	jmp	.L236
.L227:
	leaq	16(%rcx), %rcx
	movb	$0, 16(%r9)
	movl	$1, %ebx
	movq	%rcx, (%r9)
	jmp	.L234
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2458:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2458-.LLSDACSB2458
.LLSDACSB2458:
.LLSDACSE2458:
	.section	.text$_ZNSt7__cxx119to_stringEm,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx119to_stringEy,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt7__cxx119to_stringEy
	.def	_ZNSt7__cxx119to_stringEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEy
_ZNSt7__cxx119to_stringEy:
.LFB2463:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	cmpq	$9, %rdx
	movq	%rcx, %r11
	movq	%rdx, %r9
	jbe	.L246
	movq	%rdx, %rcx
	movl	$1, %esi
	movabsq	$3777893186295716171, %r10
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L247:
	cmpq	$999, %rcx
	jbe	.L261
	cmpq	$9999, %rcx
	jbe	.L262
	movq	%rcx, %rax
	addl	$4, %esi
	mulq	%r10
	cmpq	$99999, %rcx
	jbe	.L248
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L251:
	cmpq	$99, %rcx
	ja	.L247
	addl	$1, %esi
.L248:
	leaq	16(%r11), %r10
	cmpl	$15, %esi
	movb	$0, 16(%r11)
	movl	%esi, %ebx
	movq	%r10, (%r11)
	movq	$0, 8(%r11)
	jbe	.L253
	cmpq	$29, %rbx
	jbe	.L258
	leaq	1(%rbx), %rcx
	movq	%rbx, %rdi
.L254:
	movq	%r9, 280(%rsp)
	movq	%r11, 272(%rsp)
	call	_Znwy
	movq	272(%rsp), %r11
	movq	280(%rsp), %r9
	movb	$0, (%rax)
	movq	%rax, %r10
	movq	%rax, (%r11)
	movq	%rdi, 16(%r11)
.L253:
	vmovdqu	.LC22(%rip), %ymm0
	cmpq	$99, %r9
	movabsq	$4122263930388298034, %rax
	movabsq	$16106987313379638, %rdx
	movq	%rdx, 225(%rsp)
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	.LC23(%rip), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	vmovdqu	.LC24(%rip), %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	vmovdqu	.LC25(%rip), %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	vmovdqu	.LC26(%rip), %ymm0
	vmovdqu	%ymm0, 160(%rsp)
	vmovdqu	.LC27(%rip), %ymm0
	vmovdqu	%ymm0, 192(%rsp)
	movq	%rax, 217(%rsp)
	jbe	.L255
	leal	-1(%rsi), %ecx
	movabsq	$2951479051793528259, %rsi
	.p2align 4,,10
	.p2align 3
.L256:
	movq	%r9, %rdx
	movq	%r9, %r8
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%rsi
	shrq	$2, %rdx
	imulq	$100, %rdx, %rax
	subq	%rax, %r8
	movq	%r9, %rax
	movq	%rdx, %r9
	movl	%ecx, %edx
	movzbl	33(%rsp,%r8,2), %edi
	movzbl	32(%rsp,%r8,2), %r8d
	movb	%dil, (%r10,%rdx)
	leal	-1(%rcx), %edx
	subl	$2, %ecx
	cmpq	$9999, %rax
	movb	%r8b, (%r10,%rdx)
	ja	.L256
	cmpq	$999, %rax
	ja	.L255
	vzeroupper
.L252:
	leal	48(%r9), %eax
.L257:
	movb	%al, (%r10)
	movq	(%r11), %rax
	movq	%rbx, 8(%r11)
	movb	$0, (%rax,%rbx)
	movq	%r11, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L255:
	movzbl	33(%rsp,%r9,2), %eax
	movb	%al, 1(%r10)
	movzbl	32(%rsp,%r9,2), %eax
	vzeroupper
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L261:
	addl	$2, %esi
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L262:
	addl	$3, %esi
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L258:
	movl	$30, %edi
	movl	$31, %ecx
	jmp	.L254
.L246:
	leaq	16(%rcx), %r10
	movb	$0, 16(%rcx)
	movl	$1, %ebx
	movq	%r10, (%rcx)
	jmp	.L252
	.seh_endproc
	.text
	.p2align 4
	.globl	classic_modadd_runtime_kernel
	.def	classic_modadd_runtime_kernel;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_runtime_kernel
classic_modadd_runtime_kernel:
.LFB13927:
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rdx, %r10
	jle	.L266
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L265:
	leaq	(%r8,%rdx), %rax
	addq	$1, %r9
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%r9, %r10
	jne	.L265
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L266:
	xorl	%edx, %edx
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_runtime_kernel
	.def	reist_modadd_runtime_kernel;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_runtime_kernel
reist_modadd_runtime_kernel:
.LFB13928:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testq	%rdx, %rdx
	jle	.L273
	movq	%rcx, %rax
	movq	%rcx, %r10
	xorl	%r9d, %r9d
	shrq	$63, %rax
	addq	%rcx, %rax
	sarq	%rax
	movq	%rax, %rbx
	subq	%rax, %r10
	xorl	%eax, %eax
	negq	%rbx
	jmp	.L272
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L276:
	addq	$1, %r9
	subq	%rcx, %rax
	cmpq	%r9, %rdx
	je	.L275
.L272:
	addq	%r8, %rax
	cmpq	%rax, %r10
	jle	.L276
	cmpq	%rax, %rbx
	leaq	(%rax,%rcx), %r11
	cmovg	%r11, %rax
	addq	$1, %r9
	cmpq	%r9, %rdx
	jne	.L272
.L275:
	movq	%rax, %rdx
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_257
	.def	classic_modadd_const_257;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_257
classic_modadd_const_257:
.LFB13929:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L280
	movabsq	$-71777214294589695, %r10
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L279:
	leaq	3(%rax), %r9
	addq	$1, %r8
	movq	%r9, %rax
	mulq	%r10
	movq	%rdx, %rax
	xorb	%dl, %dl
	shrq	$8, %rax
	addq	%rax, %rdx
	movq	%r9, %rax
	subq	%rdx, %rax
	cmpq	%r8, %rcx
	jne	.L279
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	xorl	%eax, %eax
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_257
	.def	reist_modadd_const_257;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_257
reist_modadd_const_257:
.LFB13930:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L283
.L290:
	leaq	3(%rax), %r8
	cmpq	$128, %r8
	jle	.L284
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L285
	leaq	1(%r9), %rdx
	leaq	-251(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L292
.L295:
	leaq	3(%r8), %rax
	cmpq	$128, %rax
	jle	.L289
	leaq	2(%r9), %rdx
	leaq	-254(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L288
	subq	$251, %r8
.L284:
	addq	$260, %rax
	cmpq	$-128, %r8
	jge	.L294
.L289:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L290
.L288:
	movq	%rax, %rdx
.L283:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L285:
	subq	$254, %rax
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L294:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L295
	.p2align 4,,10
	.p2align 3
.L292:
	movq	%r8, %rax
	jmp	.L288
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_997
	.def	classic_modadd_const_997;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_997
classic_modadd_const_997:
.LFB13931:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L299
	movabsq	$4736576211504157687, %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L298:
	leaq	3(%rdx), %r9
	addq	$1, %r8
	movq	%r9, %rax
	mulq	%r10
	shrq	$8, %rdx
	imulq	$997, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	cmpq	%r8, %rcx
	jne	.L298
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	xorl	%edx, %edx
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_997
	.def	reist_modadd_const_997;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_997
reist_modadd_const_997:
.LFB13932:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L302
.L309:
	leaq	3(%rax), %r8
	cmpq	$498, %r8
	jle	.L303
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L304
	leaq	1(%r9), %rdx
	leaq	-991(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L311
.L314:
	leaq	3(%r8), %rax
	cmpq	$498, %rax
	jle	.L308
	leaq	2(%r9), %rdx
	leaq	-994(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L307
	subq	$991, %r8
.L303:
	addq	$1000, %rax
	cmpq	$-498, %r8
	jge	.L313
.L308:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L309
.L307:
	movq	%rax, %rdx
.L302:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L304:
	subq	$994, %rax
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L313:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L314
	.p2align 4,,10
	.p2align 3
.L311:
	movq	%r8, %rax
	jmp	.L307
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_10007
	.def	classic_modadd_const_10007;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_10007
classic_modadd_const_10007:
.LFB13933:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L318
	movabsq	$7550501021876119059, %r10
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L317:
	leaq	3(%rax), %r8
	addq	$1, %r9
	movq	%r8, %rax
	imulq	%r10
	movq	%rdx, %rax
	movq	%r8, %rdx
	sarq	$63, %rdx
	sarq	$12, %rax
	subq	%rdx, %rax
	imulq	$10007, %rax, %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	cmpq	%r9, %rcx
	jne	.L317
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L318:
	xorl	%eax, %eax
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_10007
	.def	reist_modadd_const_10007;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_10007
reist_modadd_const_10007:
.LFB13934:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L321
.L328:
	leaq	3(%rax), %r8
	cmpq	$5003, %r8
	jle	.L322
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L323
	leaq	1(%r9), %rdx
	leaq	-10001(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L330
.L333:
	leaq	3(%r8), %rax
	cmpq	$5003, %rax
	jle	.L327
	leaq	2(%r9), %rdx
	leaq	-10004(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L326
	subq	$10001, %r8
.L322:
	addq	$10010, %rax
	cmpq	$-5003, %r8
	jge	.L332
.L327:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L328
.L326:
	movq	%rax, %rdx
.L321:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L323:
	subq	$10004, %rax
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L332:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L333
	.p2align 4,,10
	.p2align 3
.L330:
	movq	%r8, %rax
	jmp	.L326
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_1000003
	.def	classic_modadd_const_1000003;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_1000003
classic_modadd_const_1000003:
.LFB13935:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L337
	movabsq	$896011011859258473, %r10
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L336:
	leaq	3(%rax), %r8
	addq	$1, %r9
	movq	%r8, %rax
	mulq	%r10
	movq	%r8, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$19, %rax
	imulq	$1000003, %rax, %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	cmpq	%r9, %rcx
	jne	.L336
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L337:
	xorl	%eax, %eax
	movq	%rax, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_1000003
	.def	reist_modadd_const_1000003;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_1000003
reist_modadd_const_1000003:
.LFB13936:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L340
.L347:
	leaq	3(%rax), %r8
	cmpq	$500001, %r8
	jle	.L341
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L342
	leaq	1(%r9), %rdx
	leaq	-999997(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L349
.L352:
	leaq	3(%r8), %rax
	cmpq	$500001, %rax
	jle	.L346
	leaq	2(%r9), %rdx
	leaq	-1000000(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L345
	subq	$999997, %r8
.L341:
	addq	$1000006, %rax
	cmpq	$-500001, %r8
	jge	.L351
.L346:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L347
.L345:
	movq	%rax, %rdx
.L340:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	subq	$1000000, %rax
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L351:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L352
	.p2align 4,,10
	.p2align 3
.L349:
	movq	%r8, %rax
	jmp	.L345
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_10000019
	.def	classic_modadd_const_10000019;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_10000019
classic_modadd_const_10000019:
.LFB13937:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L356
	movabsq	$-2972522983662369269, %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L355:
	leaq	3(%rdx), %r9
	addq	$1, %r8
	movq	%r9, %rax
	mulq	%r10
	shrq	$23, %rdx
	imulq	$10000019, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	cmpq	%r8, %rcx
	jne	.L355
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L356:
	xorl	%edx, %edx
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_10000019
	.def	reist_modadd_const_10000019;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_10000019
reist_modadd_const_10000019:
.LFB13938:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L359
.L366:
	leaq	3(%rax), %r8
	cmpq	$5000009, %r8
	jle	.L360
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L361
	leaq	1(%r9), %rdx
	leaq	-10000013(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L368
.L371:
	leaq	3(%r8), %rax
	cmpq	$5000009, %rax
	jle	.L365
	leaq	2(%r9), %rdx
	leaq	-10000016(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L364
	subq	$10000013, %r8
.L360:
	addq	$10000022, %rax
	cmpq	$-5000009, %r8
	jge	.L370
.L365:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L366
.L364:
	movq	%rax, %rdx
.L359:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L361:
	subq	$10000016, %rax
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L370:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L371
	.p2align 4,,10
	.p2align 3
.L368:
	movq	%r8, %rax
	jmp	.L364
	.seh_endproc
	.p2align 4
	.globl	classic_modadd_const_1000000007
	.def	classic_modadd_const_1000000007;	.scl	2;	.type	32;	.endef
	.seh_proc	classic_modadd_const_1000000007
classic_modadd_const_1000000007:
.LFB13939:
	.seh_endprologue
	testq	%rcx, %rcx
	jle	.L375
	movabsq	$-8543223828751151131, %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L374:
	leaq	3(%rdx), %r9
	addq	$1, %r8
	movq	%r9, %rax
	mulq	%r10
	shrq	$29, %rdx
	imulq	$1000000007, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	cmpq	%r8, %rcx
	jne	.L374
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L375:
	xorl	%edx, %edx
	movq	%rdx, %rax
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.seh_endproc
	.p2align 4
	.globl	reist_modadd_const_1000000007
	.def	reist_modadd_const_1000000007;	.scl	2;	.type	32;	.endef
	.seh_proc	reist_modadd_const_1000000007
reist_modadd_const_1000000007:
.LFB13940:
	.seh_endprologue
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.L378
.L385:
	leaq	3(%rax), %r8
	cmpq	$500000003, %r8
	jle	.L379
	leaq	1(%rdx), %r9
	cmpq	%r9, %rcx
	je	.L380
	leaq	1(%r9), %rdx
	leaq	-1000000001(%rax), %r8
	cmpq	%rdx, %rcx
	je	.L387
.L390:
	leaq	3(%r8), %rax
	cmpq	$500000003, %rax
	jle	.L384
	leaq	2(%r9), %rdx
	leaq	-1000000004(%r8), %rax
	cmpq	%rdx, %rcx
	je	.L383
	subq	$1000000001, %r8
.L379:
	addq	$1000000010, %rax
	cmpq	$-500000003, %r8
	jge	.L389
.L384:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L385
.L383:
	movq	%rax, %rdx
.L378:
	movq	%rdx, reist_modadd_benchmark_sink(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	subq	$1000000004, %rax
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L389:
	movq	%rdx, %r9
	leaq	1(%r9), %rdx
	cmpq	%rdx, %rcx
	jne	.L390
	.p2align 4,,10
	.p2align 3
.L387:
	movq	%r8, %rax
	jmp	.L383
	.seh_endproc
	.section .rdata,"dr"
.LC28:
	.ascii "Usage: \0"
.LC29:
	.ascii " [N>0] [B>0]\12\0"
	.align 8
.LC30:
	.ascii "N must be a positive 64-bit integer\12\0"
	.align 8
.LC31:
	.ascii "========================================\12\0"
	.align 8
.LC32:
	.ascii "REIST canonical modular-add benchmark\12\0"
.LC33:
	.ascii "Windows\0"
	.align 8
.LC34:
	.ascii "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\0"
.LC35:
	.ascii "ProcessorNameString\0"
.LC36:
	.ascii "~MHz\0"
.LC37:
	.ascii "basic_string::append\0"
.LC38:
	.ascii "System Information:\12\0"
.LC39:
	.ascii "  Hostname: \0"
.LC40:
	.ascii "  OS: \0"
.LC41:
	.ascii "  CPU Model: \0"
.LC42:
	.ascii "  CPU MHz: \0"
.LC43:
	.ascii "  Memory: \0"
	.align 8
.LC44:
	.ascii "========================================\12\12\0"
.LC45:
	.ascii "Updates per modulus N = \0"
.LC46:
	.ascii "Source step = \0"
	.align 8
.LC47:
	.ascii " (centered once before the REIST loop)\12\0"
	.align 8
.LC48:
	.ascii "Canonical interval: [-floor(B/2), ceil(B/2))\12\12\0"
.LC49:
	.ascii "B must be in [1, INT64_MAX]\12\0"
	.align 8
.LC50:
	.ascii "PRECHECK FAILED in runtime kernels for B=\0"
	.align 8
.LC51:
	.ascii "POSTCHECK FAILED for runtime B=\0"
.LC52:
	.ascii "runtime\0"
.LC53:
	.ascii "reist_sym\0"
.LC55:
	.ascii "classic_mod\0"
.LC56:
	.ascii "runtime modulus\0"
	.align 8
.LC57:
	.ascii "PRECHECK FAILED in compile-time kernels for B=\0"
	.align 8
.LC58:
	.ascii "POSTCHECK FAILED for compile-time B=\0"
.LC59:
	.ascii "compile_time\0"
.LC60:
	.ascii "compile-time template modulus\0"
.LC61:
	.ascii "results_modadd_suite.csv\0"
	.align 8
.LC62:
	.ascii "ERROR: could not write results_modadd_suite.csv\12\0"
	.align 8
.LC63:
	.ascii "modulus,N,scenario,seconds,ops_per_sec,mode\12\0"
	.align 8
.LC64:
	.ascii "CSV written to results_modadd_suite.csv\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13941:
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
	subq	$1656, %rsp
	.seh_stackalloc	1656
	vmovups	%xmm6, 1616(%rsp)
	.seh_savexmm	%xmm6, 1616
	vmovups	%xmm7, 1632(%rsp)
	.seh_savexmm	%xmm7, 1632
	.seh_endprologue
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	call	__main
	cmpl	$3, %ebp
	jg	.L705
	movq	$50000000, 168(%rsp)
	cmpl	$1, %ebp
	jg	.L706
	xorl	%ecx, %ecx
	movq	%rcx, 176(%rsp)
.L397:
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$41, %r8d
	leaq	896(%rsp), %rdi
	leaq	624(%rsp), %r13
	leaq	672(%rsp), %r12
	leaq	768(%rsp), %r14
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	movq	-24(%rax), %rdx
	addq	%rbx, %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC31(%rip), %rdx
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$38, %r8d
	movq	%rbx, %rcx
	leaq	.LC32(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	leaq	576(%rsp), %rax
	movq	%rdi, %rcx
	leaq	416(%rsp), %rdx
	movq	%rax, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, 560(%rsp)
	leaq	720(%rsp), %rax
	movq	$0, 568(%rsp)
	movb	$0, 576(%rsp)
	movq	%r13, 608(%rsp)
	movq	$0, 616(%rsp)
	movb	$0, 624(%rsp)
	movq	%r12, 656(%rsp)
	movq	$0, 664(%rsp)
	movb	$0, 672(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rax, 704(%rsp)
	movq	$0, 712(%rsp)
	movb	$0, 720(%rsp)
	movq	%r14, 752(%rsp)
	movq	$0, 760(%rsp)
	movb	$0, 768(%rsp)
	movl	$256, 416(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rdi, 120(%rsp)
	vmovdqu	%ymm0, 896(%rsp)
	vmovdqu	%ymm0, 928(%rsp)
	vmovdqu	%ymm0, 960(%rsp)
	vmovdqu	%ymm0, 992(%rsp)
	vmovdqu	%ymm0, 1024(%rsp)
	vmovdqu	%ymm0, 1056(%rsp)
	vmovdqu	%ymm0, 1088(%rsp)
	vmovdqu	%ymm0, 1120(%rsp)
	vzeroupper
.LEHB8:
	call	*__imp_GetComputerNameA(%rip)
	testl	%eax, %eax
	jne	.L707
.L401:
	leaq	752(%rsp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	movl	$131097, %r9d
	leaq	512(%rsp), %rax
	xorl	%r8d, %r8d
	movq	$-2147483646, %rcx
	movq	%rax, 112(%rsp)
	leaq	.LC34(%rip), %rdx
	movq	%rax, 32(%rsp)
	call	*__imp_RegOpenKeyExA(%rip)
	testl	%eax, %eax
	je	.L635
	leaq	1152(%rsp), %rax
	movq	%rax, 64(%rsp)
.L402:
	movl	$64, 1152(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	64(%rsp), %rcx
	vmovdqu	%ymm0, 1156(%rsp)
	vmovdqu	%ymm0, 1184(%rsp)
	vzeroupper
	call	*__imp_GlobalMemoryStatusEx(%rip)
	testl	%eax, %eax
	je	.L413
	leaq	800(%rsp), %rcx
	movl	$20, %eax
	shrx	%rax, 1160(%rsp), %rdx
	call	_ZNSt7__cxx119to_stringEy
	movq	808(%rsp), %rsi
	movabsq	$-9223372036854775804, %rax
	addq	%rsi, %rax
	cmpq	$2, %rax
	jbe	.L708
	movq	800(%rsp), %r9
	leaq	816(%rsp), %r15
	leaq	3(%rsi), %r10
	cmpq	%r15, %r9
	je	.L415
	movq	816(%rsp), %rax
	cmpq	%r10, %rax
	jb	.L416
.L544:
	movw	$19744, (%r9,%rsi)
	movb	$66, 2(%r9,%rsi)
.L417:
	movq	800(%rsp), %rax
	movq	%r10, 808(%rsp)
	leaq	864(%rsp), %rdx
	movb	$0, 3(%rax,%rsi)
	movq	800(%rsp), %rax
	movq	%rdx, 848(%rsp)
	movq	808(%rsp), %r8
	cmpq	%r15, %rax
	je	.L709
	movq	%rax, 848(%rsp)
	movq	816(%rsp), %rax
	movq	%rax, 864(%rsp)
.L422:
	movq	656(%rsp), %rcx
	movq	%r8, 856(%rsp)
	movq	%r15, 800(%rsp)
	cmpq	%r12, %rcx
	movb	$0, 816(%rsp)
	je	.L710
	movq	848(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L541
	vmovq	%r8, %xmm3
	testq	%rcx, %rcx
	vpinsrq	$1, 864(%rsp), %xmm3, %xmm0
	movq	672(%rsp), %r9
	movq	%rax, 656(%rsp)
	vmovdqu	%xmm0, 664(%rsp)
	je	.L429
	movq	%rcx, 848(%rsp)
	movq	%r9, 864(%rsp)
.L428:
	movq	848(%rsp), %rax
	movb	$0, (%rax)
	movq	848(%rsp), %rcx
	cmpq	%rdx, %rcx
	je	.L430
	movq	864(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L430:
	movq	800(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L413
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L413:
	movl	$20, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC39(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	712(%rsp), %r8
	movq	704(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$6, %r8d
	leaq	.LC40(%rip), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	760(%rsp), %r8
	movq	752(%rsp), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$13, %r8d
	leaq	.LC41(%rip), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	568(%rsp), %r8
	movq	560(%rsp), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$11, %r8d
	leaq	.LC42(%rip), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	616(%rsp), %r8
	movq	608(%rsp), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$10, %r8d
	leaq	.LC43(%rip), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	664(%rsp), %r8
	movq	656(%rsp), %rdx
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE8:
	movq	752(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L432
	movq	768(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L432:
	movq	704(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L433
	movq	720(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L433:
	movq	656(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L434
	movq	672(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L434:
	movq	608(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L435
	movq	624(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L435:
	movq	560(%rsp), %rcx
	cmpq	48(%rsp), %rcx
	je	.L436
	movq	576(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L436:
	movl	$42, %r8d
	leaq	.LC44(%rip), %rdx
	movq	%rbx, %rcx
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$24, %r8d
	leaq	.LC45(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	168(%rsp), %r12
	movq	%rbx, %rcx
	movq	%r12, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$1, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	movq	%r13, %rcx
	leaq	.LC46(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %rcx
	movl	$3, %edx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$39, %r8d
	leaq	.LC47(%rip), %rdx
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	.LC48(%rip), %rdx
	movq	%r13, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpl	$3, %ebp
	je	.L711
	movl	$480, %ecx
	call	_Znwy
.LEHE9:
	movq	%r12, %rdx
	movl	$257, %ecx
	movq	%rax, %rbp
	leaq	480(%rax), %r14
.LEHB10:
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L551
	movl	$4096, %r13d
	cmpq	%r13, %r12
	cmovle	%r12, %r13
	movq	%r13, %rcx
	call	classic_modadd_const_257
	movq	%rax, %r10
	call	reist_modadd_const_257
	leaq	128(%rax), %rdx
	cmpq	$256, %rdx
	jbe	.L712
.L461:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L685:
	movl	$257, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
.L681:
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE10:
	movq	%r14, %rdx
	movl	$1, %r15d
	subq	%rbp, %rdx
.L447:
	movq	%rbp, %rcx
	call	_ZdlPvy
	nop
.L391:
	vmovups	1616(%rsp), %xmm6
	movl	%r15d, %eax
	vmovups	1632(%rsp), %xmm7
	addq	$1656, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L635:
	movl	$256, %ecx
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	leaq	1152(%rsp), %rdi
	leaq	464(%rsp), %rsi
	movl	$256, 464(%rsp)
	movq	__imp_RegQueryValueExA(%rip), %r15
	rep stosb
	leaq	1152(%rsp), %rdi
	movq	%rsi, 40(%rsp)
	movq	512(%rsp), %rcx
	movq	%rdi, 64(%rsp)
	leaq	.LC35(%rip), %rdx
	movq	%rdi, 32(%rsp)
.LEHB11:
	call	*%r15
	testl	%eax, %eax
	jne	.L403
	leaq	560(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.L403:
	xorl	%eax, %eax
	movq	%rsi, 40(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%eax, 800(%rsp)
	leaq	800(%rsp), %rax
	movq	512(%rsp), %rcx
	leaq	.LC36(%rip), %rdx
	movl	$4, 464(%rsp)
	movq	%rax, 32(%rsp)
	call	*%r15
	testl	%eax, %eax
	jne	.L404
	movl	800(%rsp), %edx
	leaq	848(%rsp), %rcx
	call	_ZNSt7__cxx119to_stringEm
	movq	608(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L713
	movq	848(%rsp), %rax
	leaq	864(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L546
	vmovq	856(%rsp), %xmm3
	testq	%rcx, %rcx
	vpinsrq	$1, 864(%rsp), %xmm3, %xmm0
	movq	%rax, 608(%rsp)
	movq	624(%rsp), %r8
	vmovdqu	%xmm0, 616(%rsp)
	je	.L411
	movq	%rcx, 848(%rsp)
	movq	%r8, 864(%rsp)
.L410:
	movq	848(%rsp), %rax
	movb	$0, (%rax)
	movq	848(%rsp), %rcx
	cmpq	%rdx, %rcx
	je	.L404
	movq	864(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L404:
	movq	512(%rsp), %rcx
	call	*__imp_RegCloseKey(%rip)
	jmp	.L402
.L707:
	leaq	704(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
.LEHE11:
	jmp	.L401
.L706:
	movq	8(%rbx), %rcx
	leaq	168(%rsp), %rdx
.LEHB12:
	call	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
	testb	%al, %al
	je	.L714
	xorl	%edx, %edx
	cmpl	$3, %ebp
	movq	%rdx, 176(%rsp)
	jne	.L397
	movq	16(%rbx), %rcx
	leaq	176(%rsp), %rdx
	call	_ZN12_GLOBAL__N_1L18parse_positive_i64EPKcRx
	testb	%al, %al
	jne	.L397
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L393
.L711:
	movl	$80, %ecx
	call	_Znwy
.LEHE12:
	movq	176(%rsp), %r13
	movq	%r12, %rdx
	movq	%rax, %rbp
	leaq	80(%rax), %r14
	movq	%r13, %rcx
.LEHB13:
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L549
	movl	$4096, %r11d
	movl	$3, %eax
	movl	$2, %ecx
	movq	%r13, %r9
	cmpq	%r11, %r12
	cmovle	%r12, %r11
	xorl	%edx, %edx
	divq	%r13
	movl	$3, %eax
	movq	%rdx, 48(%rsp)
	cqto
	idivq	%r13
	movq	%r13, %rax
	movq	%rdx, %r15
	cqto
	idivq	%rcx
	subq	%rax, %r9
	movq	%rax, %rsi
	cmpq	%r9, %r15
	jl	.L448
	subq	%r13, %r15
.L448:
	movq	48(%rsp), %r8
	movq	%r11, %rdx
	movq	%r13, %rcx
	movq	%r9, 72(%rsp)
	negq	%rsi
	call	classic_modadd_runtime_kernel
	movq	%r15, %r8
	movq	%r11, %rdx
	movq	%rax, %rdi
	call	reist_modadd_runtime_kernel
	cmpq	%rsi, %rax
	jl	.L449
	movq	72(%rsp), %r9
	cmpq	%rax, %r9
	jg	.L715
.L449:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$41, %r8d
	leaq	.LC50(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L687:
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	jmp	.L681
.L551:
	movl	$480, %edx
	movl	$1, %r15d
	jmp	.L447
.L549:
	movl	$80, %edx
	movl	$1, %r15d
	jmp	.L447
.L712:
	testq	%rax, %rax
	js	.L716
.L462:
	cmpq	%rax, %r10
	jne	.L461
	movq	%r12, 192(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 48(%rsp)
	movq	192(%rsp), %rcx
	call	classic_modadd_const_257
	movq	%rax, %r15
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 72(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 128(%rsp)
	movq	192(%rsp), %rcx
	call	reist_modadd_const_257
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdx
	leaq	128(%rsi), %rax
	cmpq	$256, %rax
	jbe	.L717
.L464:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE13:
	jmp	.L685
.L705:
	movq	.refptr._ZSt4cerr(%rip), %rsi
	movl	$7, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rsi, %rcx
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE14:
.L393:
	movl	$2, %r15d
	jmp	.L391
.L710:
	movq	848(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L541
	vmovq	%r8, %xmm3
	movq	%rax, 656(%rsp)
	vpinsrq	$1, 864(%rsp), %xmm3, %xmm0
	vmovdqu	%xmm0, 664(%rsp)
.L429:
	movq	%rdx, 848(%rsp)
	jmp	.L428
.L415:
	cmpq	$15, %r10
	jbe	.L544
	movq	$30, 128(%rsp)
.L545:
	movq	128(%rsp), %rax
	leaq	1(%rax), %rcx
.L419:
	movq	%r9, 144(%rsp)
	movq	%r10, 152(%rsp)
.LEHB15:
	call	_Znwy
.LEHE15:
	movq	144(%rsp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	memcpy
	movq	144(%rsp), %r9
	movw	$19744, (%rdi,%rsi)
	movb	$66, 2(%rdi,%rsi)
	movq	152(%rsp), %r10
	cmpq	%r15, %r9
	je	.L420
	movq	816(%rsp), %rax
	movq	%r9, %rcx
	movq	%r10, 144(%rsp)
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	movq	144(%rsp), %r10
.L420:
	movq	128(%rsp), %rax
	movq	%rdi, 800(%rsp)
	movq	%rax, 816(%rsp)
	jmp	.L417
.L541:
	testq	%r8, %r8
	je	.L425
	cmpq	$1, %r8
	je	.L718
	movq	%rdx, 128(%rsp)
	call	memcpy
	movq	128(%rsp), %rdx
.L427:
	movq	856(%rsp), %r8
	movq	656(%rsp), %rcx
.L425:
	movq	%r8, 664(%rsp)
	movb	$0, (%rcx,%r8)
	jmp	.L428
.L709:
	leal	1(%r8), %ecx
	movq	%rdx, %rdi
	movq	%r15, %rsi
	rep movsb
	jmp	.L422
.L713:
	movq	848(%rsp), %rax
	leaq	864(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L546
	vmovq	856(%rsp), %xmm3
	movq	%rax, 608(%rsp)
	vpinsrq	$1, 864(%rsp), %xmm3, %xmm0
	vmovdqu	%xmm0, 616(%rsp)
.L411:
	movq	%rdx, 848(%rsp)
	jmp	.L410
.L716:
	addq	$257, %rax
	jmp	.L462
.L416:
	addq	%rax, %rax
	cmpq	%rax, %r10
	movq	%rax, 128(%rsp)
	jb	.L418
	movq	%r10, 128(%rsp)
	leaq	4(%rsi), %rcx
	jmp	.L419
.L715:
	testq	%rax, %rax
	js	.L719
.L450:
	cmpq	%rax, %rdi
	jne	.L449
	movq	%r9, 72(%rsp)
	movq	%r12, 184(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	movq	184(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	%r13, %rcx
	call	classic_modadd_runtime_kernel
	movq	%rax, %rdi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 48(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 112(%rsp)
	movq	184(%rsp), %rdx
	movq	%r15, %r8
	movq	%r13, %rcx
	call	reist_modadd_runtime_kernel
	movq	%rax, %r15
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	cmpq	%r15, %rsi
	jg	.L453
	cmpq	%r15, 72(%rsp)
	jg	.L720
.L453:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$31, %r8d
	leaq	.LC51(%rip), %rdx
	movq	%rbx, %rcx
.LEHB16:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE16:
	jmp	.L687
.L714:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC30(%rip), %rdx
.LEHB17:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE17:
	jmp	.L393
.L546:
	movq	856(%rsp), %r8
	testq	%r8, %r8
	je	.L407
	cmpq	$1, %r8
	je	.L721
	movq	%rdx, 128(%rsp)
	call	memcpy
	movq	128(%rsp), %rdx
.L409:
	movq	856(%rsp), %r8
	movq	608(%rsp), %rcx
.L407:
	movq	%r8, 616(%rsp)
	movb	$0, (%rcx,%r8)
	jmp	.L410
.L418:
	movabsq	$9223372036854775806, %rax
	cmpq	128(%rsp), %rax
	jnb	.L545
	movq	%rax, 128(%rsp)
	movabsq	$9223372036854775807, %rcx
	jmp	.L419
.L718:
	movzbl	864(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.L427
.L719:
	addq	%r13, %rax
	jmp	.L450
.L721:
	movzbl	864(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.L409
.L717:
	testq	%rsi, %rsi
	leaq	257(%rsi), %rax
	cmovns	%rsi, %rax
	cmpq	%r15, %rax
	jne	.L464
	vmovq	.LC67(%rip), %xmm3
	leaq	.LC59(%rip), %rax
	subq	128(%rsp), %rdx
	movl	$257, %edi
	vmovq	%rdi, %xmm0
	movq	%r14, 256(%rsp)
	vpinsrq	$1, %rax, %xmm3, %xmm6
	vmovq	.LC68(%rip), %xmm3
	vpinsrq	$1, %r12, %xmm0, %xmm0
	vmovdqu	%xmm0, 416(%rsp)
	vmovdqu	%xmm0, 128(%rsp)
	vpinsrq	$1, %rax, %xmm3, %xmm4
	movq	72(%rsp), %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	subq	48(%rsp), %rax
	vmovdqa	%xmm4, %xmm7
	vmovdqu	%xmm4, 432(%rsp)
	vcvtsi2sdq	%rax, %xmm3, %xmm2
	leaq	240(%rsp), %rax
	vcvtsi2sdq	%rdx, %xmm3, %xmm3
	movq	80(%rsp), %rdx
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	vmovsd	%xmm3, 144(%rsp)
	vmovq	%rbp, %xmm3
	vpunpcklqdq	%xmm3, %xmm3, %xmm1
	vmovsd	%xmm2, 72(%rsp)
	vmovsd	%xmm2, 448(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB18:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE18:
	vmovsd	72(%rsp), %xmm2
	movq	48(%rsp), %rcx
	leaq	368(%rsp), %rdx
	vmovdqu	%xmm6, 384(%rsp)
	vmovsd	144(%rsp), %xmm3
	vmovdqu	128(%rsp), %xmm0
	vmovsd	%xmm2, 80(%rsp)
	vmovdqu	%xmm0, 368(%rsp)
	vmovsd	%xmm3, 400(%rsp)
	vmovsd	%xmm3, 72(%rsp)
.LEHB19:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE19:
	movq	%rsi, 40(%rsp)
	movq	248(%rsp), %rax
	leaq	.LC60(%rip), %rdx
	movl	$257, %ecx
	movq	%r15, 32(%rsp)
	vmovsd	72(%rsp), %xmm3
	vmovsd	80(%rsp), %xmm2
	movq	%rax, 128(%rsp)
	movq	240(%rsp), %rbp
	movq	256(%rsp), %r14
.LEHB20:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
	movq	%r12, %rdx
	movl	$997, %ecx
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L648
	movq	%r13, %rcx
	call	classic_modadd_const_997
	movq	%rax, %r10
	call	reist_modadd_const_997
	leaq	498(%rax), %rdx
	cmpq	$996, %rdx
	jbe	.L722
.L474:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L702:
	movl	$997, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
.L677:
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L648:
	movl	$1, %r15d
.L478:
	movq	%r14, %rdx
	subq	%rbp, %rdx
	testq	%rbp, %rbp
	je	.L391
	jmp	.L447
.L722:
	testq	%rax, %rax
	js	.L723
.L475:
	cmpq	%rax, %r10
	jne	.L474
	movq	%r12, 200(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdi
	movq	200(%rsp), %rcx
	call	classic_modadd_const_997
	movq	%rax, %r15
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 72(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	movq	200(%rsp), %rcx
	call	reist_modadd_const_997
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdx
	leaq	498(%rsi), %rax
	cmpq	$996, %rax
	jbe	.L724
.L477:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE20:
	jmp	.L702
.L723:
	addq	$997, %rax
	jmp	.L475
.L720:
	testq	%r15, %r15
	leaq	0(%r13,%r15), %rdx
	cmovns	%r15, %rdx
	cmpq	%rdi, %rdx
	jne	.L453
	vmovq	.LC67(%rip), %xmm3
	leaq	.LC52(%rip), %rcx
	movq	48(%rsp), %rdx
	movq	%r14, 256(%rsp)
	vmovsd	.LC54(%rip), %xmm1
	subq	80(%rsp), %rdx
	vpinsrq	$1, %rcx, %xmm3, %xmm0
	vmovq	%r13, %xmm3
	subq	112(%rsp), %rax
	vpinsrq	$1, %r12, %xmm3, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovdqu	%xmm0, 96(%rsp)
	vcvtsi2sdq	%rdx, %xmm3, %xmm2
	vcvtsi2sdq	%rax, %xmm3, %xmm3
	vdivsd	%xmm1, %xmm3, %xmm3
	leaq	320(%rsp), %rdx
	vmovdqu	%xmm4, 320(%rsp)
	vmovdqu	%xmm4, 48(%rsp)
	vdivsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm3, 80(%rsp)
	vmovq	.LC68(%rip), %xmm3
	vpinsrq	$1, %rcx, %xmm3, %xmm1
	vmovq	%rbp, %xmm3
	leaq	240(%rsp), %rcx
	vmovdqu	%xmm1, 336(%rsp)
	vpunpcklqdq	%xmm3, %xmm3, %xmm1
	vmovdqu	%xmm1, 240(%rsp)
	vmovsd	%xmm2, 352(%rsp)
	vmovsd	%xmm2, 72(%rsp)
.LEHB21:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE21:
	vmovdqu	48(%rsp), %xmm4
	vmovsd	80(%rsp), %xmm3
	leaq	272(%rsp), %rdx
	leaq	240(%rsp), %rcx
	vmovdqu	96(%rsp), %xmm0
	vmovdqu	%xmm4, 272(%rsp)
	vmovdqu	%xmm0, 288(%rsp)
	vmovsd	%xmm3, 304(%rsp)
	vmovsd	%xmm3, 48(%rsp)
.LEHB22:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE22:
	movq	%r15, 40(%rsp)
	vmovsd	48(%rsp), %xmm3
	leaq	.LC56(%rip), %rdx
	movq	%r13, %rcx
	movq	%rdi, 32(%rsp)
	vmovsd	72(%rsp), %xmm2
	movq	240(%rsp), %rbp
	movq	248(%rsp), %r12
	movq	256(%rsp), %r14
.LEHB23:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
.L460:
	movq	64(%rsp), %rcx
	movl	$16, %r8d
	leaq	.LC61(%rip), %rdx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE23:
	movl	1384(%rsp), %r15d
	andl	$5, %r15d
	jne	.L725
	movq	64(%rsp), %rcx
	leaq	.LC63(%rip), %rdx
.LEHB24:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpq	%r12, %rbp
	movq	%rbp, %r13
	je	.L535
	.p2align 4,,10
	.p2align 3
.L534:
	vmovsd	32(%r13), %xmm1
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%esi, %esi
	vcomisd	%xmm5, %xmm1
	jbe	.L532
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdq	8(%r13), %xmm4, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm2
	vmovq	%xmm2, %rsi
.L532:
	movq	0(%r13), %rdx
	movq	64(%rsp), %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	8(%r13), %rdx
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	16(%r13), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	vmovsd	32(%r13), %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	vmovq	%rsi, %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	24(%r13), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L534
.L535:
	leaq	.LC64(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L530:
	movq	64(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L478
.L725:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE24:
	movl	$1, %r15d
	jmp	.L530
.L724:
	testq	%rsi, %rsi
	leaq	997(%rsi), %rax
	cmovns	%rsi, %rax
	cmpq	%r15, %rax
	jne	.L477
	movl	$997, %eax
	subq	80(%rsp), %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	48(%rsp), %rcx
	vmovq	%rax, %xmm0
	movq	72(%rsp), %rax
	movq	%r14, 256(%rsp)
	vmovdqu	%xmm7, 528(%rsp)
	vpinsrq	$1, %r12, %xmm0, %xmm0
	subq	%rdi, %rax
	vmovdqu	%xmm0, 80(%rsp)
	vmovdqu	%xmm0, 512(%rsp)
	vcvtsi2sdq	%rax, %xmm3, %xmm2
	vcvtsi2sdq	%rdx, %xmm3, %xmm3
	movq	112(%rsp), %rdx
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	vmovsd	%xmm3, 144(%rsp)
	vmovq	%rbp, %xmm3
	vpinsrq	$1, 128(%rsp), %xmm3, %xmm1
	vmovsd	%xmm2, 72(%rsp)
	vmovsd	%xmm2, 544(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB25:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE25:
	vmovsd	72(%rsp), %xmm2
	vmovdqu	80(%rsp), %xmm0
	leaq	464(%rsp), %rdx
	vmovdqu	%xmm6, 480(%rsp)
	vmovsd	144(%rsp), %xmm3
	movq	48(%rsp), %rcx
	vmovsd	%xmm2, 80(%rsp)
	vmovdqu	%xmm0, 464(%rsp)
	vmovsd	%xmm3, 496(%rsp)
	vmovsd	%xmm3, 72(%rsp)
.LEHB26:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE26:
	movq	%rsi, 40(%rsp)
	movq	248(%rsp), %rax
	leaq	.LC60(%rip), %rdx
	movl	$997, %ecx
	movq	%r15, 32(%rsp)
	vmovsd	72(%rsp), %xmm3
	vmovsd	80(%rsp), %xmm2
	movq	%rax, 112(%rsp)
	movq	240(%rsp), %rbp
	movq	256(%rsp), %r14
.LEHB27:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
	movq	%r12, %rdx
	movl	$10007, %ecx
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L648
	movq	%r13, %rcx
	call	classic_modadd_const_10007
	movq	%rax, %r10
	call	reist_modadd_const_10007
	leaq	5003(%rax), %rdx
	cmpq	$10006, %rdx
	jbe	.L726
.L486:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L700:
	movl	$10007, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	jmp	.L677
.L726:
	testq	%rax, %rax
	js	.L727
.L487:
	cmpq	%rax, %r10
	jne	.L486
	movq	%r12, 208(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdi
	movq	208(%rsp), %rcx
	call	classic_modadd_const_10007
	movq	%rax, %r15
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 72(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	movq	208(%rsp), %rcx
	call	reist_modadd_const_10007
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdx
	leaq	5003(%rsi), %rax
	cmpq	$10006, %rax
	jbe	.L728
.L489:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE27:
	jmp	.L700
.L727:
	addq	$10007, %rax
	jmp	.L487
.L728:
	testq	%rsi, %rsi
	leaq	10007(%rsi), %rax
	cmovns	%rsi, %rax
	cmpq	%r15, %rax
	jne	.L489
	movl	$10007, %eax
	subq	80(%rsp), %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	48(%rsp), %rcx
	vmovq	%rax, %xmm0
	movq	72(%rsp), %rax
	movq	%r14, 256(%rsp)
	vmovdqu	%xmm7, 624(%rsp)
	vpinsrq	$1, %r12, %xmm0, %xmm0
	subq	%rdi, %rax
	vmovdqu	%xmm0, 80(%rsp)
	vmovdqu	%xmm0, 608(%rsp)
	vcvtsi2sdq	%rax, %xmm3, %xmm2
	vcvtsi2sdq	%rdx, %xmm3, %xmm3
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	leaq	608(%rsp), %rdx
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	vmovsd	%xmm3, 128(%rsp)
	vmovq	%rbp, %xmm3
	vpinsrq	$1, 112(%rsp), %xmm3, %xmm1
	vmovsd	%xmm2, 72(%rsp)
	vmovsd	%xmm2, 640(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB28:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE28:
	vmovsd	72(%rsp), %xmm2
	vmovdqu	80(%rsp), %xmm0
	leaq	560(%rsp), %rdx
	vmovdqu	%xmm6, 576(%rsp)
	vmovsd	128(%rsp), %xmm3
	movq	48(%rsp), %rcx
	vmovsd	%xmm2, 80(%rsp)
	vmovdqu	%xmm0, 560(%rsp)
	vmovsd	%xmm3, 592(%rsp)
	vmovsd	%xmm3, 72(%rsp)
.LEHB29:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE29:
	movq	%rsi, 40(%rsp)
	movq	248(%rsp), %rax
	leaq	.LC60(%rip), %rdx
	movl	$10007, %ecx
	movq	%r15, 32(%rsp)
	vmovsd	72(%rsp), %xmm3
	vmovsd	80(%rsp), %xmm2
	movq	%rax, 128(%rsp)
	movq	240(%rsp), %rbp
	movq	256(%rsp), %r14
.LEHB30:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
	movq	%r12, %rdx
	movl	$1000003, %ecx
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L648
	movq	%r13, %rcx
	call	classic_modadd_const_1000003
	movq	%rax, %r10
	call	reist_modadd_const_1000003
	leaq	500001(%rax), %rdx
	cmpq	$1000002, %rdx
	jbe	.L729
.L497:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L704:
	movl	$1000003, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	jmp	.L677
.L729:
	testq	%rax, %rax
	js	.L730
.L498:
	cmpq	%rax, %r10
	jne	.L497
	movq	%r12, 216(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 72(%rsp)
	movq	216(%rsp), %rcx
	call	classic_modadd_const_1000003
	movq	%rax, %r15
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 112(%rsp)
	movq	216(%rsp), %rcx
	call	reist_modadd_const_1000003
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	leaq	500001(%rsi), %rdx
	cmpq	$1000002, %rdx
	jbe	.L731
.L500:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE30:
	jmp	.L704
.L730:
	addq	$1000003, %rax
	jmp	.L498
.L731:
	testq	%rsi, %rsi
	leaq	1000003(%rsi), %rdx
	cmovns	%rsi, %rdx
	cmpq	%r15, %rdx
	jne	.L500
	movq	80(%rsp), %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
	subq	72(%rsp), %rdx
	movl	$1000003, %edi
	subq	112(%rsp), %rax
	vcvtsi2sdq	%rdx, %xmm3, %xmm2
	vmovq	%rdi, %xmm0
	movq	48(%rsp), %rcx
	vcvtsi2sdq	%rax, %xmm3, %xmm3
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	vmovsd	%xmm3, 112(%rsp)
	vmovq	%rbp, %xmm3
	vpinsrq	$1, %r12, %xmm0, %xmm0
	leaq	704(%rsp), %rdx
	vpinsrq	$1, 128(%rsp), %xmm3, %xmm1
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	movq	%r14, 256(%rsp)
	vmovdqu	%xmm0, 704(%rsp)
	vmovdqu	%xmm0, 80(%rsp)
	vmovdqu	%xmm7, 720(%rsp)
	vmovsd	%xmm2, 736(%rsp)
	vmovsd	%xmm2, 72(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB31:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE31:
	vmovsd	72(%rsp), %xmm2
	vmovdqu	80(%rsp), %xmm0
	leaq	656(%rsp), %rdx
	vmovdqu	%xmm6, 672(%rsp)
	vmovsd	112(%rsp), %xmm3
	movq	48(%rsp), %rcx
	vmovsd	%xmm2, 80(%rsp)
	vmovdqu	%xmm0, 656(%rsp)
	vmovsd	%xmm3, 688(%rsp)
	vmovsd	%xmm3, 72(%rsp)
.LEHB32:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE32:
	movq	%rsi, 40(%rsp)
	vmovsd	80(%rsp), %xmm2
	leaq	.LC60(%rip), %rdx
	movl	$1000003, %ecx
	movq	%r15, 32(%rsp)
	movq	248(%rsp), %rax
	vmovsd	72(%rsp), %xmm3
	movq	240(%rsp), %rbp
	movq	%rax, 80(%rsp)
	movq	256(%rsp), %r14
.LEHB33:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
	movq	%r12, %rdx
	movl	$10000019, %ecx
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L648
	movq	%r13, %rcx
	call	classic_modadd_const_10000019
	movq	%rax, %r10
	call	reist_modadd_const_10000019
	leaq	5000009(%rax), %rdx
	cmpq	$10000018, %rdx
	jbe	.L732
.L508:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L689:
	movl	$10000019, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	jmp	.L677
.L732:
	testq	%rax, %rax
	js	.L733
.L509:
	cmpq	%rax, %r10
	jne	.L508
	movq	%r12, 224(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r15
	movq	224(%rsp), %rcx
	call	classic_modadd_const_10000019
	movq	%rax, 72(%rsp)
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 112(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 128(%rsp)
	movq	224(%rsp), %rcx
	call	reist_modadd_const_10000019
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	leaq	5000009(%rsi), %rdx
	cmpq	$10000018, %rdx
	jbe	.L734
.L511:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE33:
	jmp	.L689
.L733:
	addq	$10000019, %rax
	jmp	.L509
.L734:
	testq	%rsi, %rsi
	leaq	10000019(%rsi), %rdx
	cmovns	%rsi, %rdx
	cmpq	72(%rsp), %rdx
	jne	.L511
	movq	112(%rsp), %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
	movl	$10000019, %edi
	subq	128(%rsp), %rax
	vmovq	%rdi, %xmm0
	movq	48(%rsp), %rcx
	movq	%r14, 256(%rsp)
	subq	%r15, %rdx
	vpinsrq	$1, %r12, %xmm0, %xmm0
	vmovdqu	%xmm7, 816(%rsp)
	vmovdqu	%xmm0, 800(%rsp)
	vcvtsi2sdq	%rdx, %xmm3, %xmm2
	vcvtsi2sdq	%rax, %xmm3, %xmm3
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	leaq	800(%rsp), %rdx
	vmovsd	%xmm3, 144(%rsp)
	vmovq	%rbp, %xmm3
	vpinsrq	$1, 80(%rsp), %xmm3, %xmm1
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	vmovsd	%xmm2, 112(%rsp)
	vmovdqu	%xmm0, 128(%rsp)
	vmovsd	%xmm2, 832(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB34:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE34:
	vmovsd	144(%rsp), %xmm3
	movq	96(%rsp), %rdx
	vmovdqu	%xmm6, 768(%rsp)
	vmovdqu	128(%rsp), %xmm0
	movq	48(%rsp), %rcx
	vmovsd	%xmm3, 784(%rsp)
	vmovdqu	%xmm0, 752(%rsp)
	vmovsd	%xmm3, 80(%rsp)
.LEHB35:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE35:
	movq	72(%rsp), %rax
	movq	%rsi, 40(%rsp)
	leaq	.LC60(%rip), %rdx
	movl	$10000019, %ecx
	vmovsd	80(%rsp), %xmm3
	vmovsd	112(%rsp), %xmm2
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rbp
	movq	248(%rsp), %r15
	movq	256(%rsp), %r14
.LEHB36:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
	movq	%r12, %rdx
	movl	$1000000007, %ecx
	call	_ZN12_GLOBAL__N_1L18preflight_sequenceExx
	testb	%al, %al
	je	.L648
	movq	%r13, %rcx
	call	classic_modadd_const_1000000007
	movq	%rax, %r10
	call	reist_modadd_const_1000000007
	leaq	500000003(%rax), %rdx
	cmpq	$1000000006, %rdx
	jbe	.L735
.L519:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$46, %r8d
	leaq	.LC57(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L691:
	movl	$1000000007, %edx
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIxEERSoT_
	jmp	.L677
.L735:
	testq	%rax, %rax
	js	.L736
.L520:
	cmpq	%rax, %r10
	jne	.L519
	movq	%r12, 232(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 72(%rsp)
	movq	232(%rsp), %rcx
	call	classic_modadd_const_1000000007
	movq	%rax, %rsi
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 80(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 112(%rsp)
	movq	232(%rsp), %rcx
	call	reist_modadd_const_1000000007
	movq	%rax, %r13
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	leaq	500000003(%r13), %rdx
	cmpq	$1000000006, %rdx
	jbe	.L737
.L522:
	movq	.refptr._ZSt4cerr(%rip), %rbx
	movl	$36, %r8d
	leaq	.LC58(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE36:
	jmp	.L691
.L736:
	addq	$1000000007, %rax
	jmp	.L520
.L737:
	testq	%r13, %r13
	leaq	1000000007(%r13), %rdx
	cmovns	%r13, %rdx
	cmpq	%rsi, %rdx
	jne	.L522
	movq	80(%rsp), %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
	subq	72(%rsp), %rdx
	movl	$1000000007, %edi
	subq	112(%rsp), %rax
	vcvtsi2sdq	%rdx, %xmm3, %xmm2
	vmovq	%rdi, %xmm0
	movq	120(%rsp), %rdx
	vcvtsi2sdq	%rax, %xmm3, %xmm3
	movq	48(%rsp), %rcx
	vdivsd	.LC54(%rip), %xmm3, %xmm3
	vmovsd	%xmm3, 112(%rsp)
	vmovq	%rbp, %xmm3
	vpinsrq	$1, %r12, %xmm0, %xmm0
	vdivsd	.LC54(%rip), %xmm2, %xmm2
	movq	%r14, 256(%rsp)
	vpinsrq	$1, %r15, %xmm3, %xmm1
	vmovdqu	%xmm0, 80(%rsp)
	vmovdqu	%xmm0, 896(%rsp)
	vmovdqu	%xmm7, 912(%rsp)
	vmovsd	%xmm2, 928(%rsp)
	vmovsd	%xmm2, 72(%rsp)
	vmovdqu	%xmm1, 240(%rsp)
.LEHB37:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE37:
	vmovsd	72(%rsp), %xmm2
	vmovdqu	80(%rsp), %xmm0
	leaq	848(%rsp), %rdx
	vmovdqu	%xmm6, 864(%rsp)
	vmovsd	112(%rsp), %xmm3
	movq	48(%rsp), %rcx
	vmovsd	%xmm2, 80(%rsp)
	vmovdqu	%xmm0, 848(%rsp)
	vmovsd	%xmm3, 880(%rsp)
	vmovsd	%xmm3, 72(%rsp)
.LEHB38:
	call	_ZNSt6vectorIN12_GLOBAL__N_16ResultESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.isra.0
.LEHE38:
	movq	%r13, 40(%rsp)
	vmovsd	72(%rsp), %xmm3
	movl	$1000000007, %ecx
	leaq	.LC60(%rip), %rdx
	movq	%rsi, 32(%rsp)
	vmovsd	80(%rsp), %xmm2
	movq	240(%rsp), %rbp
	movq	248(%rsp), %r12
	movq	256(%rsp), %r14
.LEHB39:
	call	_ZN12_GLOBAL__N_1L10print_caseExPKcddyx
.LEHE39:
	jmp	.L460
.L577:
.L679:
	movq	240(%rsp), %rbp
	movq	256(%rsp), %r14
	vzeroupper
.L459:
	testq	%rbp, %rbp
	je	.L539
.L540:
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	%rax, 64(%rsp)
	subq	%rbp, %rdx
	call	_ZdlPvy
	movq	64(%rsp), %rax
.L539:
	movq	%rax, %rcx
.LEHB40:
	call	_Unwind_Resume
.LEHE40:
.L576:
	jmp	.L679
.L579:
	jmp	.L679
.L578:
	jmp	.L679
.L575:
	jmp	.L679
.L574:
	jmp	.L679
.L573:
	jmp	.L679
.L572:
	jmp	.L679
.L571:
	jmp	.L679
.L570:
	jmp	.L679
.L567:
	jmp	.L679
.L566:
	jmp	.L679
.L563:
	movq	64(%rsp), %rcx
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	jmp	.L459
.L580:
	vzeroupper
	jmp	.L459
.L569:
	jmp	.L679
.L568:
	jmp	.L679
.L708:
	leaq	.LC37(%rip), %rcx
	leaq	816(%rsp), %r15
.LEHB41:
	call	_ZSt20__throw_length_errorPKc
.LEHE41:
.L581:
	vzeroupper
	jmp	.L540
.L564:
	movq	%rax, %rbx
	vzeroupper
.L441:
	movq	752(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L442
	movq	768(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L442:
	movq	704(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L443
	movq	720(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L443:
	movq	656(%rsp), %rcx
	cmpq	%r12, %rcx
	jne	.L738
.L444:
	movq	608(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L445
	movq	624(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L445:
	movq	560(%rsp), %rcx
	cmpq	48(%rsp), %rcx
	jne	.L739
.L446:
	movq	%rbx, %rcx
.LEHB42:
	call	_Unwind_Resume
.LEHE42:
.L565:
	movq	800(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	jne	.L740
	vzeroupper
	jmp	.L441
.L740:
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
	jmp	.L441
.L738:
	movq	672(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L444
.L739:
	movq	576(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L446
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA13941:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13941-.LLSDACSB13941
.LLSDACSB13941:
	.uleb128 .LEHB7-.LFB13941
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB13941
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L564-.LFB13941
	.uleb128 0
	.uleb128 .LEHB9-.LFB13941
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB13941
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L581-.LFB13941
	.uleb128 0
	.uleb128 .LEHB11-.LFB13941
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L564-.LFB13941
	.uleb128 0
	.uleb128 .LEHB12-.LFB13941
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB13941
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L581-.LFB13941
	.uleb128 0
	.uleb128 .LEHB14-.LFB13941
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB13941
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L565-.LFB13941
	.uleb128 0
	.uleb128 .LEHB16-.LFB13941
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L581-.LFB13941
	.uleb128 0
	.uleb128 .LEHB17-.LFB13941
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB13941
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L568-.LFB13941
	.uleb128 0
	.uleb128 .LEHB19-.LFB13941
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L569-.LFB13941
	.uleb128 0
	.uleb128 .LEHB20-.LFB13941
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB21-.LFB13941
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L566-.LFB13941
	.uleb128 0
	.uleb128 .LEHB22-.LFB13941
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L567-.LFB13941
	.uleb128 0
	.uleb128 .LEHB23-.LFB13941
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB24-.LFB13941
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L563-.LFB13941
	.uleb128 0
	.uleb128 .LEHB25-.LFB13941
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L570-.LFB13941
	.uleb128 0
	.uleb128 .LEHB26-.LFB13941
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L571-.LFB13941
	.uleb128 0
	.uleb128 .LEHB27-.LFB13941
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB28-.LFB13941
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L572-.LFB13941
	.uleb128 0
	.uleb128 .LEHB29-.LFB13941
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L573-.LFB13941
	.uleb128 0
	.uleb128 .LEHB30-.LFB13941
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB31-.LFB13941
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L574-.LFB13941
	.uleb128 0
	.uleb128 .LEHB32-.LFB13941
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L575-.LFB13941
	.uleb128 0
	.uleb128 .LEHB33-.LFB13941
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB34-.LFB13941
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L576-.LFB13941
	.uleb128 0
	.uleb128 .LEHB35-.LFB13941
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L577-.LFB13941
	.uleb128 0
	.uleb128 .LEHB36-.LFB13941
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB37-.LFB13941
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L578-.LFB13941
	.uleb128 0
	.uleb128 .LEHB38-.LFB13941
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L579-.LFB13941
	.uleb128 0
	.uleb128 .LEHB39-.LFB13941
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L580-.LFB13941
	.uleb128 0
	.uleb128 .LEHB40-.LFB13941
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB13941
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L565-.LFB13941
	.uleb128 0
	.uleb128 .LEHB42-.LFB13941
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE13941:
	.section	.text.startup,"x"
	.seh_endproc
	.globl	reist_modadd_benchmark_sink
	.bss
	.align 8
reist_modadd_benchmark_sink:
	.space 8
	.section .rdata,"dr"
	.align 32
.LC22:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.quad	3544667369688283184
	.quad	3832902143785906737
	.align 32
.LC23:
	.quad	4121136918051239473
	.quad	3689066235924983858
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 32
.LC24:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.quad	3689629194468470836
	.quad	3977863968733803572
	.align 32
.LC25:
	.quad	3545793286775257140
	.quad	3834028060872880693
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 32
.LC26:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.quad	3834591019416367671
	.quad	4122825793681700407
	.align 32
.LC27:
	.quad	3690755111555444792
	.quad	3978989885820777528
	.quad	3546919203862231096
	.quad	3835153977959854649
	.align 8
.LC54:
	.long	0
	.long	1104006501
	.align 8
.LC67:
	.quad	.LC53
	.align 8
.LC68:
	.quad	.LC55
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strtoll;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
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
