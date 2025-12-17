	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z15test_scalar_addx           ; -- Begin function _Z15test_scalar_addx
	.p2align	2
__Z15test_scalar_addx:                  ; @_Z15test_scalar_addx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #16]
	str	xzr, [sp, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB0_1
LBB0_4:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13test_neon_addx             ; -- Begin function _Z13test_neon_addx
	.p2align	2
__Z13test_neon_addx:                    ; @_Z13test_neon_addx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #352]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 368
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	add	x8, sp, #160
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; implicit-def: $q0
	str	x0, [sp, #104]
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #252]
	ldr	s1, [sp, #252]
                                        ; implicit-def: $q2
	fmov	s2, s1
	mov.16b	v1, v0
	mov.s	v1[0], v2[0]
	ldr	s3, [sp, #252]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[1], v2[0]
	ldr	s3, [sp, #252]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[2], v2[0]
	ldr	s3, [sp, #252]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[3], v2[0]
	str	q1, [x8, #48]
	ldr	q1, [x8, #48]
	str	q1, [x8, #64]
	ldr	q1, [x8, #64]
	str	q1, [sp, #80]
	add	x10, sp, #204
	mov	w11, #2                         ; =0x2
	str	w11, [sp, #204]
	mov.16b	v1, v0
	ld1.s	{ v1 }[0], [x10]
	ld1.s	{ v1 }[1], [x10]
	ld1.s	{ v1 }[2], [x10]
	ld1.s	{ v1 }[3], [x10]
	str	q1, [x8]
	ldr	q1, [x8]
	str	q1, [x8, #16]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	add	x8, sp, #156
	str	w9, [sp, #156]
	ld1.s	{ v0 }[0], [x8]
	ld1.s	{ v0 }[1], [x8]
	ld1.s	{ v0 }[2], [x8]
	ld1.s	{ v0 }[3], [x8]
	str	q0, [sp, #112]
	ldr	q0, [sp, #112]
	str	q0, [sp, #128]
	ldr	q0, [sp, #128]
	str	q0, [sp, #48]
	str	xzr, [sp, #40]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #104]
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	subs	x8, x8, x9
	b.ge	LBB1_4
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	q1, [sp, #80]
	ldr	q0, [sp, #64]
	str	q1, [x8, #176]
	str	q0, [x8, #160]
	ldr	q0, [x8, #176]
	ldr	q1, [x8, #160]
	add.4s	v0, v0, v1
	str	q0, [x8, #144]
	ldr	q0, [x8, #144]
	str	q0, [sp, #80]
	ldr	q1, [sp, #80]
	ldr	q0, [sp, #48]
	str	q1, [x8, #128]
	str	q0, [x8, #112]
	ldr	q0, [x8, #128]
	ldr	q1, [x8, #112]
	add.4s	v0, v0, v1
	str	q0, [x8, #96]
	ldr	q0, [x8, #96]
	str	q0, [sp, #64]
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	str	x8, [sp, #40]
	b	LBB1_1
LBB1_4:
	ldr	q0, [sp, #80]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
                                        ; kill: def $s0 killed $s0 killed $q0
	str	s0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #36]
	ldp	x28, x27, [sp, #352]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z19test_scalar_barrettxRK7Context ; -- Begin function _Z19test_scalar_barrettxRK7Context
	.p2align	2
__Z19test_scalar_barrettxRK7Context:    ; @_Z19test_scalar_barrettxRK7Context
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #28]
	str	xzr, [sp, #16]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	b.ge	LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldrsw	x8, [sp, #28]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #8]
                                        ; kill: def $x9 killed $w9
	mul	x8, x8, x9
	asr	x8, x8, #32
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	ldr	x10, [sp, #32]
	ldr	w10, [x10]
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB2_1
LBB2_4:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17test_neon_barrettxRK7Context ; -- Begin function _Z17test_neon_barrettxRK7Context
	.p2align	2
__Z17test_neon_barrettxRK7Context:      ; @_Z17test_neon_barrettxRK7Context
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #480
	stp	x28, x27, [sp, #448]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #464]            ; 16-byte Folded Spill
	add	x29, sp, #464
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x8, sp, #144
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; implicit-def: $q0
	str	x0, [x8, #8]
	str	x1, [x8]
	mov	w9, #12345                      ; =0x3039
	stur	w9, [x29, #-164]
	ldur	s1, [x29, #-164]
                                        ; implicit-def: $q2
	fmov	s2, s1
	mov.16b	v1, v0
	mov.s	v1[0], v2[0]
	ldur	s3, [x29, #-164]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[1], v2[0]
	ldur	s3, [x29, #-164]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[2], v2[0]
	ldur	s3, [x29, #-164]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[3], v2[0]
	str	q1, [x8, #112]
	ldr	q1, [x8, #112]
	str	q1, [x8, #128]
	ldr	q1, [x8, #128]
	str	q1, [sp, #128]
	ldr	x9, [x8]
	ldr	w10, [x9]
	sub	x9, x29, #212
	stur	w10, [x29, #-212]
	mov.16b	v1, v0
	ld1.s	{ v1 }[0], [x9]
	ld1.s	{ v1 }[1], [x9]
	ld1.s	{ v1 }[2], [x9]
	ld1.s	{ v1 }[3], [x9]
	str	q1, [x8, #64]
	ldr	q1, [x8, #64]
	str	q1, [x8, #80]
	ldr	q1, [x8, #80]
	str	q1, [sp, #112]
	add	x9, sp, #204
	mov	w10, #1                         ; =0x1
	str	w10, [sp, #204]
	ld1.s	{ v0 }[0], [x9]
	ld1.s	{ v0 }[1], [x9]
	ld1.s	{ v0 }[2], [x9]
	ld1.s	{ v0 }[3], [x9]
	str	q0, [x8, #16]
	ldr	q0, [x8, #16]
	str	q0, [x8, #32]
	ldr	q0, [x8, #32]
	str	q0, [sp, #96]
	str	xzr, [sp, #88]
	b	LBB3_1
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #88]
	ldr	x9, [x9, #8]
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	subs	x8, x8, x9
	b.ge	LBB3_4
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	q0, [sp, #128]
	ldr	x8, [x8]
	ldr	w0, [x8, #8]
	bl	__Z13approx_q_neon17__simd128_int32_tj
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	q0, [sp, #64]
	ldr	q1, [sp, #128]
	ldr	q2, [sp, #64]
	ldr	q0, [sp, #112]
	str	q2, [x8, #288]
	str	q0, [x8, #272]
	ldr	q0, [x8, #288]
	ldr	q2, [x8, #272]
	mul.4s	v0, v0, v2
	str	q0, [x8, #256]
	ldr	q0, [x8, #256]
	str	q1, [x8, #240]
	str	q0, [x8, #224]
	ldr	q0, [x8, #240]
	ldr	q1, [x8, #224]
	sub.4s	v0, v0, v1
	str	q0, [x8, #208]
	ldr	q0, [x8, #208]
	str	q0, [sp, #48]
	ldr	q1, [sp, #48]
	ldr	q0, [sp, #96]
	str	q1, [x8, #192]
	str	q0, [x8, #176]
	ldr	q0, [x8, #192]
	ldr	q1, [x8, #176]
	add.4s	v0, v0, v1
	str	q0, [x8, #160]
	ldr	q0, [x8, #160]
	str	q0, [sp, #128]
	b	LBB3_3
LBB3_3:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	x8, [sp, #88]
	add	x8, x8, #1
	str	x8, [sp, #88]
	b	LBB3_1
LBB3_4:
	ldr	q0, [sp, #128]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
                                        ; kill: def $s0 killed $s0 killed $q0
	str	s0, [sp, #40]
	ldr	w8, [sp, #40]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #44]
	ldp	x29, x30, [sp, #464]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #448]            ; 16-byte Folded Reload
	add	sp, sp, #480
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13approx_q_neon17__simd128_int32_tj ; -- Begin function _Z13approx_q_neon17__simd128_int32_tj
	.weak_definition	__Z13approx_q_neon17__simd128_int32_tj
	.p2align	2
__Z13approx_q_neon17__simd128_int32_tj: ; @_Z13approx_q_neon17__simd128_int32_tj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 384
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	add	x8, sp, #160
	str	q0, [x8]
	str	w0, [sp, #156]
	ldr	q0, [x8]
	str	q0, [x8, #32]
	ldr	q0, [x8, #32]
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #184]
	ldr	d0, [sp, #184]
	str	d0, [sp, #144]
	ldr	q0, [x8]
	str	q0, [x8, #64]
	ldr	q0, [x8, #64]
	ext.16b	v0, v0, v0, #8
                                        ; kill: def $d0 killed $d0 killed $q0
	str	d0, [sp, #216]
	ldr	d0, [sp, #216]
	str	d0, [sp, #136]
	ldr	w9, [sp, #156]
	str	w9, [sp, #268]
	add	x9, sp, #268
	ld1r.2s	{ v0 }, [x9]
	str	d0, [sp, #248]
	ldr	d0, [sp, #248]
	str	d0, [sp, #256]
	ldr	d0, [sp, #256]
	str	d0, [sp, #128]
	ldr	d1, [sp, #144]
	ldr	d0, [sp, #128]
	str	d1, [sp, #328]
	str	d0, [sp, #320]
	ldr	d0, [sp, #328]
	ldr	d1, [sp, #320]
	smull.2d	v0, v0, v1
	str	q0, [x8, #144]
	ldr	q0, [x8, #144]
	str	q0, [sp, #112]
	ldr	d1, [sp, #136]
	ldr	d0, [sp, #128]
	str	d1, [sp, #296]
	str	d0, [sp, #288]
	ldr	d0, [sp, #296]
	ldr	d1, [sp, #288]
	smull.2d	v0, v0, v1
	str	q0, [x8, #112]
	ldr	q0, [x8, #112]
	str	q0, [sp, #96]
	ldr	q0, [sp, #112]
	str	q0, [sp, #64]
	ldr	q0, [sp, #64]
	shrn.2s	v0, v0, #32
	str	d0, [sp, #80]
	ldr	d0, [sp, #80]
	str	d0, [sp, #56]
	ldr	d0, [sp, #56]
	str	d0, [sp, #88]
	ldr	q0, [sp, #96]
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
	shrn.2s	v0, v0, #32
	str	d0, [sp, #40]
	ldr	d0, [sp, #40]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	str	d0, [sp, #48]
	ldr	d1, [sp, #88]
	ldr	d0, [sp, #48]
	str	d1, [sp, #360]
	str	d0, [sp, #352]
	ldr	d2, [sp, #360]
	ldr	d0, [sp, #352]
                                        ; implicit-def: $q1
	fmov	d1, d0
                                        ; implicit-def: $q0
	fmov	d0, d2
	mov.d	v0[1], v1[0]
	str	q0, [x8, #176]
	ldr	q0, [x8, #176]
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_scalar_fullxRK7Context ; -- Begin function _Z16test_scalar_fullxRK7Context
	.p2align	2
__Z16test_scalar_fullxRK7Context:       ; @_Z16test_scalar_fullxRK7Context
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #28]
	str	xzr, [sp, #16]
	b	LBB5_1
LBB5_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_3 Depth 2
                                        ;     Child Loop BB5_6 Depth 2
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	b.ge	LBB5_10
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldrsw	x8, [sp, #28]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #8]
                                        ; kill: def $x9 killed $w9
	mul	x8, x8, x9
	asr	x8, x8, #32
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	ldr	x10, [sp, #32]
	ldr	w10, [x10]
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #8]
	b	LBB5_3
LBB5_3:                                 ;   Parent Loop BB5_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.le	LBB5_5
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_3 Depth=2
	ldr	x8, [sp, #32]
	ldr	w9, [x8]
	ldr	w8, [sp, #8]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	b	LBB5_3
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_6
LBB5_6:                                 ;   Parent Loop BB5_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #32]
	ldr	w10, [x9, #4]
	mov	w9, #0                          ; =0x0
	subs	w9, w9, w10
	subs	w8, w8, w9
	b.gt	LBB5_8
	b	LBB5_7
LBB5_7:                                 ;   in Loop: Header=BB5_6 Depth=2
	ldr	x8, [sp, #32]
	ldr	w9, [x8]
	ldr	w8, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp, #8]
	b	LBB5_6
LBB5_8:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #100
	str	w8, [sp, #28]
	b	LBB5_9
LBB5_9:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB5_1
LBB5_10:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z14test_neon_fullxRK7Context  ; -- Begin function _Z14test_neon_fullxRK7Context
	.p2align	2
__Z14test_neon_fullxRK7Context:         ; @_Z14test_neon_fullxRK7Context
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1024
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x9, sp, #432
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, sp, #168
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
                                        ; implicit-def: $q0
	str	x0, [x8, #96]
	str	x1, [x8, #88]
	mov	w10, #12345                     ; =0x3039
	str	w10, [sp, #460]
	ldr	s1, [sp, #460]
                                        ; implicit-def: $q2
	fmov	s2, s1
	mov.16b	v1, v0
	mov.s	v1[0], v2[0]
	ldr	s3, [sp, #460]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[1], v2[0]
	ldr	s3, [sp, #460]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[2], v2[0]
	ldr	s3, [sp, #460]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v1[3], v2[0]
	stur	q1, [x8, #248]
	ldur	q1, [x8, #248]
	str	q1, [x9]
	ldr	q1, [x9]
	stur	q1, [x8, #72]
	ldr	x10, [x8, #88]
	ldr	w11, [x10]
	add	x10, sp, #412
	str	w11, [sp, #412]
	mov.16b	v1, v0
	ld1.s	{ v1 }[0], [x10]
	ld1.s	{ v1 }[1], [x10]
	ld1.s	{ v1 }[2], [x10]
	ld1.s	{ v1 }[3], [x10]
	stur	q1, [x8, #200]
	ldur	q1, [x8, #200]
	stur	q1, [x8, #216]
	ldur	q1, [x8, #216]
	stur	q1, [x8, #56]
	ldr	x10, [x8, #88]
	ldr	w11, [x10, #4]
	add	x10, sp, #364
	str	w11, [sp, #364]
	mov.16b	v1, v0
	ld1.s	{ v1 }[0], [x10]
	ld1.s	{ v1 }[1], [x10]
	ld1.s	{ v1 }[2], [x10]
	ld1.s	{ v1 }[3], [x10]
	stur	q1, [x8, #152]
	ldur	q1, [x8, #152]
	stur	q1, [x8, #168]
	ldur	q1, [x8, #168]
	stur	q1, [x8, #40]
	ldur	q1, [x8, #40]
	str	q1, [x9, #288]
	ldr	q1, [x9, #288]
	neg.4s	v1, v1
	str	q1, [x9, #272]
	ldr	q1, [x9, #272]
	stur	q1, [x8, #24]
	add	x9, sp, #316
	mov	w10, #100                       ; =0x64
	str	w10, [sp, #316]
	ld1.s	{ v0 }[0], [x9]
	ld1.s	{ v0 }[1], [x9]
	ld1.s	{ v0 }[2], [x9]
	ld1.s	{ v0 }[3], [x9]
	stur	q0, [x8, #104]
	ldur	q0, [x8, #104]
	stur	q0, [x8, #120]
	ldur	q0, [x8, #120]
	stur	q0, [x8, #8]
	str	xzr, [x8]
	b	LBB6_1
LBB6_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_3 Depth 2
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x9, [x9, #96]
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	subs	x8, x8, x9
	b.ge	LBB6_8
	b	LBB6_2
LBB6_2:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	q0, [x8, #72]
	ldr	x8, [x8, #88]
	ldr	w0, [x8, #8]
	bl	__Z13approx_q_neon17__simd128_int32_tj
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	q0, [sp, #144]
	ldur	q1, [x9, #72]
	ldr	q2, [sp, #144]
	ldur	q0, [x9, #56]
	str	q2, [x8, #256]
	str	q0, [x8, #240]
	ldr	q0, [x8, #256]
	ldr	q2, [x8, #240]
	mul.4s	v0, v0, v2
	str	q0, [x8, #224]
	ldr	q0, [x8, #224]
	str	q1, [x8, #208]
	str	q0, [x8, #192]
	ldr	q0, [x8, #208]
	ldr	q1, [x8, #192]
	sub.4s	v0, v0, v1
	str	q0, [x8, #176]
	ldr	q0, [x8, #176]
	str	q0, [sp, #128]
	str	wzr, [sp, #124]
	b	LBB6_3
LBB6_3:                                 ;   Parent Loop BB6_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #124]
	subs	w8, w8, #2
	b.ge	LBB6_6
	b	LBB6_4
LBB6_4:                                 ;   in Loop: Header=BB6_3 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	q1, [sp, #128]
	ldur	q0, [x9, #40]
	str	q1, [x8, #384]
	str	q0, [x8, #368]
	ldr	q0, [x8, #384]
	ldr	q1, [x8, #368]
	cmgt.4s	v0, v0, v1
	str	q0, [x8, #352]
	ldr	q0, [x8, #352]
	str	q0, [sp, #96]
	ldr	q1, [sp, #128]
	ldur	q0, [x9, #24]
	str	q1, [x8, #336]
	str	q0, [x8, #320]
	ldr	q0, [x8, #336]
	ldr	q1, [x8, #320]
	cmgt.4s	v0, v0, v1
	str	q0, [x8, #304]
	ldr	q0, [x8, #304]
	str	q0, [sp, #80]
	ldr	q0, [sp, #80]
	str	q0, [x8, #416]
	ldr	q0, [x8, #416]
	mvn.16b	v0, v0
	str	q0, [x8, #400]
	ldr	q0, [x8, #400]
	str	q0, [sp, #64]
	ldr	q1, [sp, #128]
	ldr	q0, [sp, #96]
	str	q0, [x8, #576]
	ldr	q0, [x8, #576]
	str	q0, [x8, #560]
	ldr	q2, [x8, #560]
	ldur	q0, [x9, #56]
	str	q2, [x8, #512]
	str	q0, [x8, #496]
	ldr	q0, [x8, #512]
	ldr	q2, [x8, #496]
	and.16b	v0, v0, v2
	str	q0, [x8, #480]
	ldr	q0, [x8, #480]
	str	q1, [x8, #160]
	str	q0, [x8, #144]
	ldr	q0, [x8, #160]
	ldr	q1, [x8, #144]
	sub.4s	v0, v0, v1
	str	q0, [x8, #128]
	ldr	q0, [x8, #128]
	str	q0, [sp, #128]
	ldr	q1, [sp, #128]
	ldr	q0, [sp, #64]
	str	q0, [x8, #544]
	ldr	q0, [x8, #544]
	str	q0, [x8, #528]
	ldr	q2, [x8, #528]
	ldur	q0, [x9, #56]
	str	q2, [x8, #464]
	str	q0, [x8, #448]
	ldr	q0, [x8, #464]
	ldr	q2, [x8, #448]
	and.16b	v0, v0, v2
	str	q0, [x8, #432]
	ldr	q0, [x8, #432]
	str	q1, [x8, #112]
	str	q0, [x8, #96]
	ldr	q0, [x8, #112]
	ldr	q1, [x8, #96]
	add.4s	v0, v0, v1
	str	q0, [x8, #80]
	ldr	q0, [x8, #80]
	str	q0, [sp, #128]
	b	LBB6_5
LBB6_5:                                 ;   in Loop: Header=BB6_3 Depth=2
	ldr	w8, [sp, #124]
	add	w8, w8, #1
	str	w8, [sp, #124]
	b	LBB6_3
LBB6_6:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	q1, [sp, #128]
	ldur	q0, [x8, #8]
	str	q1, [x9, #64]
	str	q0, [x9, #48]
	ldr	q0, [x9, #64]
	ldr	q1, [x9, #48]
	add.4s	v0, v0, v1
	str	q0, [x9, #32]
	ldr	q0, [x9, #32]
	stur	q0, [x8, #72]
	b	LBB6_7
LBB6_7:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	b	LBB6_1
LBB6_8:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	q0, [x8, #72]
	str	q0, [sp, #32]
	ldr	q0, [sp, #32]
                                        ; kill: def $s0 killed $s0 killed $q0
	str	s0, [sp, #56]
	ldr	w8, [sp, #56]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #60]
	add	sp, sp, #1024
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18test_scalar_memoryxPi      ; -- Begin function _Z18test_scalar_memoryxPi
	.p2align	2
__Z18test_scalar_memoryxPi:             ; @_Z18test_scalar_memoryxPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	xzr, [sp, #8]
	b	LBB7_1
LBB7_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ge	LBB7_4
	b	LBB7_2
LBB7_2:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	x8, [sp, #8]
	lsl	x8, x8, #3
	mov	x10, #1024                      ; =0x400
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	add	w8, w8, #1
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	b	LBB7_3
LBB7_3:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB7_1
LBB7_4:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_neon_memoryxPi        ; -- Begin function _Z16test_neon_memoryxPi
	.p2align	2
__Z16test_neon_memoryxPi:               ; @_Z16test_neon_memoryxPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
                                        ; implicit-def: $q0
	str	x0, [sp, #104]
	str	x1, [sp, #96]
	str	xzr, [sp, #88]
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #88]
	ldr	x9, [sp, #104]
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	subs	x8, x8, x9
	b.ge	LBB8_4
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldr	q0, [sp]                        ; 16-byte Folded Reload
	ldr	x8, [sp, #88]
	lsl	x8, x8, #2
	mov	x10, #256                       ; =0x100
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #84]
	ldr	x8, [sp, #96]
	ldr	w9, [sp, #84]
	lsl	w10, w9, #2
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	lsl	x9, x9, #2
	ldr	q1, [x8, x9]
	str	q1, [sp, #48]
	ldr	q1, [sp, #48]
	str	q1, [sp, #32]
	ldr	q1, [sp, #32]
	str	q1, [sp, #64]
	ldr	q1, [sp, #64]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #156]
	ldr	s3, [sp, #156]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v0[0], v2[0]
	ldr	s3, [sp, #156]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v0[1], v2[0]
	ldr	s3, [sp, #156]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v0[2], v2[0]
	ldr	s3, [sp, #156]
                                        ; implicit-def: $q2
	fmov	s2, s3
	mov.s	v0[3], v2[0]
	str	q0, [sp, #112]
	ldr	q0, [sp, #112]
	str	q0, [sp, #128]
	ldr	q0, [sp, #128]
	str	q1, [sp, #192]
	str	q0, [sp, #176]
	ldr	q0, [sp, #192]
	ldr	q1, [sp, #176]
	add.4s	v0, v0, v1
	str	q0, [sp, #160]
	ldr	q0, [sp, #160]
	str	q0, [sp, #64]
	ldr	q0, [sp, #64]
	str	q0, [sp, #16]
	ldr	x8, [sp, #96]
	ldr	w9, [sp, #84]
	lsl	w10, w9, #2
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	lsl	x9, x9, #2
	ldr	q0, [sp, #16]
	str	q0, [x8, x9]
	b	LBB8_3
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldr	x8, [sp, #88]
	add	x8, x8, #1
	str	x8, [sp, #88]
	b	LBB8_1
LBB8_4:
	add	sp, sp, #208
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	x8, #57600                      ; =0xe100
	movk	x8, #1525, lsl #16
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	stur	wzr, [x29, #-20]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	adrp	x8, l___const.main.ctx13@PAGE
	add	x8, x8, l___const.main.ctx13@PAGEOFF
	ldr	x9, [x8]
	sub	x10, x29, #48
	str	x10, [sp, #104]                 ; 8-byte Folded Spill
	stur	x9, [x29, #-48]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-40]
	mov	w8, #15123                      ; =0x3b13
	movk	w8, #5041, lsl #16
	stur	w8, [x29, #-40]
	adrp	x8, l___const.main.ctx257@PAGE
	add	x8, x8, l___const.main.ctx257@PAGEOFF
	ldr	x9, [x8]
	stur	x9, [x29, #-64]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-56]
	mov	w8, #16711935                   ; =0xff00ff
	stur	w8, [x29, #-56]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	str	x1, [sp, #80]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	str	x1, [sp, #88]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	sub	x0, x29, #73
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	str	x1, [sp, #96]                   ; 8-byte Folded Spill
	bl	__Z5benchIZ4mainE3$_0EdOT_PKc
	stur	d0, [x29, #-72]
	sub	x0, x29, #89
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	str	x1, [sp, #112]                  ; 8-byte Folded Spill
	bl	__Z5benchIZ4mainE3$_1EdOT_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	stur	d0, [x29, #-88]
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	str	x1, [sp, #128]                  ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-72]
	ldur	d1, [x29, #-88]
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	str	x1, [sp, #144]                  ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	sub	x0, x29, #112
	stur	x8, [x29, #-112]
	bl	__Z5benchIZ4mainE3$_2EdOT_PKc
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	stur	d0, [x29, #-104]
	sub	x0, x29, #128
	stur	x8, [x29, #-128]
	bl	__Z5benchIZ4mainE3$_3EdOT_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	stur	d0, [x29, #-120]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	str	x1, [sp, #120]                  ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-104]
	ldur	d1, [x29, #-120]
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	sub	x0, x29, #144
	stur	x8, [x29, #-144]
	bl	__Z5benchIZ4mainE3$_4EdOT_PKc
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	stur	d0, [x29, #-136]
	sub	x0, x29, #160
	stur	x8, [x29, #-160]
	bl	__Z5benchIZ4mainE3$_5EdOT_PKc
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	stur	d0, [x29, #-152]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-136]
	ldur	d1, [x29, #-152]
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x0, #4096                       ; =0x1000
	bl	__Znam
	stur	x0, [x29, #-176]
	stur	wzr, [x29, #-180]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-180]
	subs	w8, w8, #1024
	b.ge	LBB9_4
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldur	w8, [x29, #-180]
	ldur	x9, [x29, #-176]
	ldursw	x10, [x29, #-180]
	str	w8, [x9, x10, lsl #2]
	b	LBB9_3
LBB9_3:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldur	w8, [x29, #-180]
	add	w8, w8, #1
	stur	w8, [x29, #-180]
	b	LBB9_1
LBB9_4:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	add	x0, sp, #168
	sub	x8, x29, #176
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	str	x8, [sp, #168]
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__Z5benchIZ4mainE3$_6EdOT_PKc
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	d0, [sp, #176]
	add	x0, sp, #152
	str	x8, [sp, #152]
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__Z5benchIZ4mainE3$_7EdOT_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	str	d0, [sp, #160]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #176]
	ldr	d1, [sp, #160]
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-176]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	cbz	x8, LBB9_6
	b	LBB9_5
LBB9_5:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZdaPv
	b	LBB9_6
LBB9_6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-72]
	ldur	d1, [x29, #-88]
	fdiv	d0, d0, d1
	fmov	d1, #1.50000000
	fcmp	d0, d1
	b.pl	LBB9_8
	b	LBB9_7
LBB9_7:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB9_11
LBB9_8:
	ldur	d0, [x29, #-72]
	ldur	d1, [x29, #-88]
	fdiv	d0, d0, d1
	fmov	d1, #3.00000000
	fcmp	d0, d1
	b.le	LBB9_10
	b	LBB9_9
LBB9_9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB9_10
LBB9_10:
	b	LBB9_11
LBB9_11:
	ldur	d0, [x29, #-104]
	ldur	d1, [x29, #-120]
	fdiv	d0, d0, d1
	fmov	d1, #1.50000000
	fcmp	d0, d1
	b.pl	LBB9_13
	b	LBB9_12
LBB9_12:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB9_14
LBB9_13:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB9_14
LBB9_14:
	ldur	d0, [x29, #-136]
	ldur	d1, [x29, #-152]
	fdiv	d0, d0, d1
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16371, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB9_16
	b	LBB9_15
LBB9_15:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.34@PAGE
	add	x1, x1, l_.str.34@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB9_16
LBB9_16:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #352]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_0EdOT_PKc
__Z5benchIZ4mainE3$_0EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_0EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_0clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_1EdOT_PKc
__Z5benchIZ4mainE3$_1EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_1EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_1clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_2EdOT_PKc
__Z5benchIZ4mainE3$_2EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_2EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_2clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_3EdOT_PKc
__Z5benchIZ4mainE3$_3EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_3EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_3clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_4EdOT_PKc
__Z5benchIZ4mainE3$_4EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_4EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_4clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_5EdOT_PKc
__Z5benchIZ4mainE3$_5EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_5EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_5clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_6EdOT_PKc
__Z5benchIZ4mainE3$_6EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_6EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_6clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_7EdOT_PKc
__Z5benchIZ4mainE3$_7EdOT_PKc:          ; @"_Z5benchIZ4mainE3$_7EdOT_PKc"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	__ZZ4mainENK3$_7clEv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	str	d0, [sp, #40]
	ldur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp5:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp6:
	b	LBB19_1
LBB19_1:
Ltmp8:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp9:
	b	LBB19_2
LBB19_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB19_18
	b	LBB19_3
LBB19_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp10:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp11:
	b	LBB19_4
LBB19_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB19_6
	b	LBB19_5
LBB19_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB19_7
LBB19_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB19_7
LBB19_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp12:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp13:
	b	LBB19_8
LBB19_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp14:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp15:
	b	LBB19_9
LBB19_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB19_17
	b	LBB19_10
LBB19_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp16:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp17:
	b	LBB19_11
LBB19_11:
	b	LBB19_17
LBB19_12:
Ltmp7:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB19_14
LBB19_13:
Ltmp18:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB19_14
LBB19_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp19:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp20:
	b	LBB19_15
LBB19_15:
	bl	___cxa_end_catch
	b	LBB19_16
LBB19_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB19_17:
	b	LBB19_18
LBB19_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB19_16
LBB19_19:
Ltmp21:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp22:
	bl	___cxa_end_catch
Ltmp23:
	b	LBB19_20
LBB19_20:
	b	LBB19_21
LBB19_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB19_22:
Ltmp24:
	bl	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp17-Ltmp8                   ;   Call between Ltmp8 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp19-Ltmp17                  ;   Call between Ltmp17 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp22-Ltmp20                  ;   Call between Ltmp20 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin0            ;     jumps to Ltmp24
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp23              ;   Call between Ltmp23 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB22_2
	b	LBB22_1
LBB22_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_23
LBB22_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB22_4
	b	LBB22_3
LBB22_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB22_5
LBB22_4:
	str	xzr, [sp, #72]
	b	LBB22_5
LBB22_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB22_9
	b	LBB22_6
LBB22_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB22_8
	b	LBB22_7
LBB22_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_23
LBB22_8:
	b	LBB22_9
LBB22_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB22_18
	b	LBB22_10
LBB22_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp26:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp27:
	b	LBB22_11
LBB22_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB22_14
	b	LBB22_12
LBB22_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB22_15
LBB22_13:
Ltmp28:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB22_24
LBB22_14:
	str	wzr, [sp, #24]
	b	LBB22_15
LBB22_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB22_17
	b	LBB22_16
LBB22_16:
	b	LBB22_23
LBB22_17:
	b	LBB22_18
LBB22_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB22_22
	b	LBB22_19
LBB22_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB22_21
	b	LBB22_20
LBB22_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_23
LBB22_21:
	b	LBB22_22
LBB22_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_23
LBB22_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB22_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table22:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp26-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin1            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp27              ;   Call between Ltmp27 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne200100Ev: ; @_ZNKSt3__18ios_base5flagsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	tbnz	w0, #0, LBB25_2
	b	LBB25_1
LBB25_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB25_2
LBB25_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne200100Ev: ; @_ZNKSt3__18ios_base5widthB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	bl	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne200100El ; -- Begin function _ZNSt3__18ios_base5widthB8ne200100El
	.globl	__ZNSt3__18ios_base5widthB8ne200100El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne200100El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne200100El:  ; @_ZNSt3__18ios_base5widthB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne200100IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB39_2
	b	LBB39_1
LBB39_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB39_3
LBB39_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB39_3
LBB39_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne200100ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp38:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp39:
	b	LBB44_1
LBB44_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB44_2:
Ltmp40:
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp38-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin2            ;     jumps to Ltmp40
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne200100Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp42:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp43:
	b	LBB48_1
LBB48_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp44:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp45:
	b	LBB48_2
LBB48_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB48_3:
Ltmp46:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB48_4
LBB48_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table48:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp42-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp45-Ltmp42                  ;   Call between Ltmp42 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin3            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp45              ;   Call between Ltmp45 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne200100Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne200100Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne200100Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne200100Ej: ; @_ZNSt3__18ios_base8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEv
__ZZ4mainENK3$_0clEv:                   ; @"_ZZ4mainENK3$_0clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z15test_scalar_addx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB8ne200100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne200100IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne200100IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB8ne200100INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB8ne200100ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne200100Ev
	scvtf	d0, x0
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B8ne200100IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEv
__ZZ4mainENK3$_1clEv:                   ; @"_ZZ4mainENK3$_1clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z13test_neon_addx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_2clEv
__ZZ4mainENK3$_2clEv:                   ; @"_ZZ4mainENK3$_2clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z19test_scalar_barrettxRK7Context
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_3clEv
__ZZ4mainENK3$_3clEv:                   ; @"_ZZ4mainENK3$_3clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z17test_neon_barrettxRK7Context
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_4clEv
__ZZ4mainENK3$_4clEv:                   ; @"_ZZ4mainENK3$_4clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z16test_scalar_fullxRK7Context
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_5clEv
__ZZ4mainENK3$_5clEv:                   ; @"_ZZ4mainENK3$_5clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z14test_neon_fullxRK7Context
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_6clEv
__ZZ4mainENK3$_6clEv:                   ; @"_ZZ4mainENK3$_6clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z18test_scalar_memoryxPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_7clEv
__ZZ4mainENK3$_7clEv:                   ; @"_ZZ4mainENK3$_7clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x1, [x8]
	mov	x0, #57600                      ; =0xe100
	movk	x0, #1525, lsl #16
	bl	__Z16test_neon_memoryxPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"REIST Performance Diagnosis (NEON)\n"

l_.str.1:                               ; @.str.1
	.asciz	"============================\n\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.ctx13
l___const.main.ctx13:
	.long	13                              ; 0xd
	.long	6                               ; 0x6
	.long	0                               ; 0x0

	.p2align	2, 0x0                          ; @__const.main.ctx257
l___const.main.ctx257:
	.long	257                             ; 0x101
	.long	128                             ; 0x80
	.long	0                               ; 0x0

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Test 1: Pure Addition ("

l_.str.3:                               ; @.str.3
	.asciz	" iterations)\n"

l_.str.4:                               ; @.str.4
	.asciz	"----------------------------------------------\n"

l_.str.5:                               ; @.str.5
	.asciz	"Scalar"

l_.str.6:                               ; @.str.6
	.asciz	"NEON  "

l_.str.7:                               ; @.str.7
	.asciz	"Expected speedup: ~4x (4 values in parallel)\n"

l_.str.8:                               ; @.str.8
	.asciz	"Actual speedup: "

l_.str.9:                               ; @.str.9
	.asciz	"x\n\n"

l_.str.10:                              ; @.str.10
	.asciz	"Test 2: Barrett Approximation, B=13 ("

l_.str.11:                              ; @.str.11
	.asciz	"Expected speedup: ~2-4x\n"

l_.str.12:                              ; @.str.12
	.asciz	"Test 3: Full Reduction with Centering, B=13 ("

l_.str.13:                              ; @.str.13
	.asciz	"Test 4: Memory Bandwidth ("

l_.str.14:                              ; @.str.14
	.asciz	"Expected speedup: ~2-3x (memory bound)\n"

l_.str.15:                              ; @.str.15
	.asciz	"============================\n"

l_.str.16:                              ; @.str.16
	.asciz	"Analysis\n"

l_.str.17:                              ; @.str.17
	.asciz	"\342\232\240 WARNING: Pure addition speedup < 1.5x\n"

l_.str.18:                              ; @.str.18
	.asciz	"   Possible causes:\n"

l_.str.19:                              ; @.str.19
	.asciz	"   - Compiler is auto-vectorizing scalar code\n"

l_.str.20:                              ; @.str.20
	.asciz	"   - CPU throttling NEON (thermal/power limits)\n"

l_.str.21:                              ; @.str.21
	.asciz	"   - Measurement error\n\n"

l_.str.22:                              ; @.str.22
	.asciz	"   Try: Compile with -fno-tree-vectorize\n\n"

l_.str.23:                              ; @.str.23
	.asciz	"\342\234\223 Good: NEON providing expected speedup on pure compute\n\n"

l_.str.24:                              ; @.str.24
	.asciz	"\342\232\240 WARNING: Barrett speedup < 1.5x\n"

l_.str.25:                              ; @.str.25
	.asciz	"   - 64-bit multiply overhead\n"

l_.str.26:                              ; @.str.26
	.asciz	"   - Shuffle/extract overhead dominates\n"

l_.str.27:                              ; @.str.27
	.asciz	"   - Memory pressure from wider registers\n\n"

l_.str.28:                              ; @.str.28
	.asciz	"\342\234\223 Good: Barrett benefits from NEON\n\n"

l_.str.29:                              ; @.str.29
	.asciz	"\342\232\240 WARNING: Full reduction speedup < 1.2x\n"

l_.str.30:                              ; @.str.30
	.asciz	"   Likely causes:\n"

l_.str.31:                              ; @.str.31
	.asciz	"   - Branch misprediction costs dominate\n"

l_.str.32:                              ; @.str.32
	.asciz	"   - Correction loops have unpredictable iterations\n"

l_.str.33:                              ; @.str.33
	.asciz	"   - SIMD overhead outweighs parallel benefit\n\n"

l_.str.34:                              ; @.str.34
	.asciz	"   Recommendation: REIST-Linear may not benefit from NEON\n"

l_.str.35:                              ; @.str.35
	.asciz	"   for this workload. Consider alternative approaches.\n\n"

l_.str.36:                              ; @.str.36
	.asciz	"CPU Info Check:\n"

l_.str.37:                              ; @.str.37
	.asciz	"Run: sysctl -a | grep -E 'machdep.cpu|hw.optional'\n"

l_.str.38:                              ; @.str.38
	.asciz	"Look for NEON/ASIMD support and check CPU frequency\n\n"

l_.str.39:                              ; @.str.39
	.asciz	": "

l_.str.40:                              ; @.str.40
	.asciz	" ms\n"

.subsections_via_symbols
