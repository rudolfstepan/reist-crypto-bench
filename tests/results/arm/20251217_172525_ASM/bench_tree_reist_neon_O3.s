	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z15test_scalar_addx           ; -- Begin function _Z15test_scalar_addx
	.p2align	2
__Z15test_scalar_addx:                  ; @_Z15test_scalar_addx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #8]
	cmp	x0, #1
	b.lt	LBB0_2
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w8, w9, w8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #8]
	subs	x0, x0, #1
	b.ne	LBB0_1
LBB0_2:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13test_neon_addx             ; -- Begin function _Z13test_neon_addx
	.p2align	2
__Z13test_neon_addx:                    ; @_Z13test_neon_addx
	.cfi_startproc
; %bb.0:
	add	x8, x0, #3
	cmp	x0, #0
	csel	x8, x8, x0, lt
	movi.4s	v0, #1
	cmp	x0, #4
	b.lt	LBB1_3
; %bb.1:
	asr	x8, x8, #2
	movi.4s	v2, #2
	movi.4s	v1, #1
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	add.4s	v0, v0, v2
	add.4s	v2, v0, v1
	subs	x8, x8, #1
	b.ne	LBB1_2
LBB1_3:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, #12]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z19test_scalar_barrettxRK7Context ; -- Begin function _Z19test_scalar_barrettxRK7Context
	.p2align	2
__Z19test_scalar_barrettxRK7Context:    ; @_Z19test_scalar_barrettxRK7Context
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #12]
	cmp	x0, #1
	b.lt	LBB2_3
; %bb.1:
	ldr	w8, [x1, #8]
	ldr	w9, [x1]
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x10, [sp, #12]
	mul	x10, x8, x10
	lsr	x10, x10, #32
	ldr	w11, [sp, #12]
	msub	w10, w9, w10, w11
	add	w10, w10, #1
	str	w10, [sp, #12]
	subs	x0, x0, #1
	b.ne	LBB2_2
LBB2_3:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17test_neon_barrettxRK7Context ; -- Begin function _Z17test_neon_barrettxRK7Context
	.p2align	2
__Z17test_neon_barrettxRK7Context:      ; @_Z17test_neon_barrettxRK7Context
	.cfi_startproc
; %bb.0:
	add	x8, x0, #3
	cmp	x0, #0
	csel	x8, x8, x0, lt
	mov	w9, #12345                      ; =0x3039
	cmp	x0, #4
	b.lt	LBB3_3
; %bb.1:
	asr	x8, x8, #2
	ldr	d1, [x1]
	ldr	s0, [x1, #8]
	neg.2s	v1, v1
	dup.4s	v2, v1[0]
	dup.4s	v1, w9
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	smull.2d	v3, v1, v0[0]
	smull2.2d	v4, v1, v0[0]
	uzp2.4s	v3, v3, v4
	mvn.16b	v1, v1
	neg.4s	v1, v1
	mla.4s	v1, v2, v3
	subs	x8, x8, #1
	b.ne	LBB3_2
	b	LBB3_4
LBB3_3:
	dup.4s	v1, w9
LBB3_4:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s1, [sp, #12]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_scalar_fullxRK7Context ; -- Begin function _Z16test_scalar_fullxRK7Context
	.p2align	2
__Z16test_scalar_fullxRK7Context:       ; @_Z16test_scalar_fullxRK7Context
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #12]
	cmp	x0, #1
	b.lt	LBB4_5
; %bb.1:
	mov	x8, #0                          ; =0x0
	ldp	w11, w9, [x1, #4]
	ldr	w10, [x1]
	mov	w12, #1                         ; =0x1
	sub	w12, w12, w11
	cmp	w10, #1
	csinc	w13, w10, wzr, hi
LBB4_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_3 Depth 2
	ldrsw	x14, [sp, #12]
	mul	x14, x9, x14
	lsr	x14, x14, #32
	ldr	w16, [sp, #12]
	msub	w15, w10, w14, w10
	add	w15, w16, w15
	sub	w14, w14, #1
	neg	w16, w16
	madd	w16, w10, w14, w16
	add	w14, w15, #100
LBB4_3:                                 ;   Parent Loop BB4_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w15, w15, w10
	add	w16, w16, w10
	sub	w14, w14, w10
	sub	w17, w14, #100
	cmp	w17, w11
	b.gt	LBB4_3
; %bb.4:                                ;   in Loop: Header=BB4_2 Depth=1
	cmp	w15, w12
	csel	w15, w15, w12, gt
	adds	w15, w15, w16
	cset	w16, ne
	sub	w15, w15, w16
	udiv	w15, w15, w13
	cinc	w15, w15, ne
	madd	w14, w10, w15, w14
	str	w14, [sp, #12]
	add	x8, x8, #1
	cmp	x8, x0
	b.ne	LBB4_2
LBB4_5:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z14test_neon_fullxRK7Context  ; -- Begin function _Z14test_neon_fullxRK7Context
	.p2align	2
__Z14test_neon_fullxRK7Context:         ; @_Z14test_neon_fullxRK7Context
	.cfi_startproc
; %bb.0:
	add	x8, x0, #3
	cmp	x0, #0
	csel	x8, x8, x0, lt
	mov	w9, #12345                      ; =0x3039
	cmp	x0, #4
	b.lt	LBB5_3
; %bb.1:
	ldr	d0, [x1]
	dup.4s	v0, v0[0]
	ldur	d1, [x1, #4]
	dup.4s	v2, v1[0]
	neg.4s	v3, v2
	asr	x8, x8, #2
	dup.4s	v5, w9
	movi.4s	v4, #100
LBB5_2:                                 ; =>This Inner Loop Header: Depth=1
	smull.2d	v6, v5, v1[1]
	smull2.2d	v7, v5, v1[1]
	uzp2.4s	v6, v6, v7
	mls.4s	v5, v0, v6
	cmgt.4s	v6, v5, v2
	cmgt.4s	v7, v5, v3
	and.16b	v6, v0, v6
	sub.4s	v5, v5, v6
	bic.16b	v6, v0, v7
	add.4s	v5, v5, v6
	cmgt.4s	v6, v5, v2
	cmgt.4s	v7, v5, v3
	and.16b	v6, v0, v6
	sub.4s	v5, v5, v6
	bic.16b	v6, v0, v7
	add.4s	v6, v6, v4
	add.4s	v5, v5, v6
	subs	x8, x8, #1
	b.ne	LBB5_2
	b	LBB5_4
LBB5_3:
	dup.4s	v5, w9
LBB5_4:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s5, [sp, #12]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18test_scalar_memoryxPi      ; -- Begin function _Z18test_scalar_memoryxPi
	.p2align	2
__Z18test_scalar_memoryxPi:             ; @_Z18test_scalar_memoryxPi
	.cfi_startproc
; %bb.0:
	cmp	x0, #1
	b.lt	LBB6_3
; %bb.1:
	mov	x8, #0                          ; =0x0
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	and	x9, x8, #0x3f8
	ldr	w10, [x1, x9, lsl #2]
	add	w10, w10, #1
	str	w10, [x1, x9, lsl #2]
	add	x8, x8, #8
	subs	x0, x0, #1
	b.ne	LBB6_2
LBB6_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_neon_memoryxPi        ; -- Begin function _Z16test_neon_memoryxPi
	.p2align	2
__Z16test_neon_memoryxPi:               ; @_Z16test_neon_memoryxPi
	.cfi_startproc
; %bb.0:
	add	x8, x0, #3
	cmp	x0, #0
	csel	x9, x8, x0, lt
	cmp	x0, #4
	b.lt	LBB7_3
; %bb.1:
	mov	x8, #0                          ; =0x0
	asr	x9, x9, #2
	movi.4s	v0, #1
LBB7_2:                                 ; =>This Inner Loop Header: Depth=1
	and	x10, x8, #0x3f0
	lsl	x10, x10, #2
	ldr	q1, [x1, x10]
	add.4s	v1, v1, v0
	str	q1, [x1, x10]
	add	x8, x8, #16
	subs	x9, x9, #1
	b.ne	LBB7_2
LBB7_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI8_0:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	d13, d12, [sp, #48]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	mov	w21, #57600                     ; =0xe100
	movk	w21, #1525, lsl #16
Lloh0:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x19
	mov	w2, #35                         ; =0x23
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x19
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #13                         ; =0xd
	movk	x8, #6, lsl #32
	str	x8, [sp, #24]
	mov	w8, #15123                      ; =0x3b13
	movk	w8, #5041, lsl #16
	str	w8, [sp, #32]
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x19
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #57600                      ; =0xe100
	movk	w1, #1525, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh8:
	adrp	x1, l_.str.3@PAGE
Lloh9:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh10:
	adrp	x1, l_.str.4@PAGE
Lloh11:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x19
	mov	w2, #47                         ; =0x2f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #44]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #40]
	mov	w8, #57600                      ; =0xe100
	movk	w8, #1525, lsl #16
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #44]
	ldr	w10, [sp, #40]
	add	w9, w10, w9
	str	w9, [sp, #44]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	str	w9, [sp, #40]
	subs	x8, x8, #1
	b.ne	LBB8_1
; %bb.2:
	mov	w20, #30784                     ; =0x7840
	movk	w20, #381, lsl #16
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d8, d0, d1
Lloh12:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh13:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh14:
	adrp	x1, l_.str.5@PAGE
Lloh15:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh16:
	adrp	x1, l_.str.40@PAGE
Lloh17:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d8, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh18:
	adrp	x1, l_.str.41@PAGE
Lloh19:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	movi.4s	v2, #2
	movi.4s	v1, #1
	mov	x19, x0
	mov	w8, #30784                      ; =0x7840
	movk	w8, #381, lsl #16
	movi.4s	v0, #1
LBB8_3:                                 ; =>This Inner Loop Header: Depth=1
	add.4s	v0, v2, v0
	add.4s	v2, v0, v1
	subs	x8, x8, #1
	b.ne	LBB8_3
; %bb.4:
	mov	w22, #15123                     ; =0x3b13
	movk	w22, #5041, lsl #16
	str	s0, [sp, #44]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
Lloh20:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh21:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh22:
	adrp	x1, l_.str.6@PAGE
Lloh23:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	x0, x19
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh24:
	adrp	x1, l_.str.40@PAGE
Lloh25:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d9, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh26:
	adrp	x1, l_.str.41@PAGE
Lloh27:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh28:
	adrp	x1, l_.str.7@PAGE
Lloh29:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	x0, x19
	mov	w2, #45                         ; =0x2d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh30:
	adrp	x1, l_.str.8@PAGE
Lloh31:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	x0, x19
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fdiv	d8, d8, d9
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh32:
	adrp	x1, l_.str.9@PAGE
Lloh33:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh34:
	adrp	x1, l_.str.10@PAGE
Lloh35:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	x0, x19
	mov	w2, #37                         ; =0x25
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #57600                      ; =0xe100
	movk	w1, #1525, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh36:
	adrp	x1, l_.str.3@PAGE
Lloh37:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh38:
	adrp	x1, l_.str.4@PAGE
Lloh39:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x19
	mov	w2, #47                         ; =0x2f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	w8, #12345                      ; =0x3039
	str	w8, [sp, #44]
	mov	w8, #-13                        ; =0xfffffff3
	mov	w9, #57600                      ; =0xe100
	movk	w9, #1525, lsl #16
LBB8_5:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x10, [sp, #44]
	smull	x10, w10, w22
	lsr	x10, x10, #32
	ldr	w11, [sp, #44]
	madd	w10, w10, w8, w11
	add	w10, w10, #1
	str	w10, [sp, #44]
	subs	x9, x9, #1
	b.ne	LBB8_5
; %bb.6:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
Lloh40:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh41:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh42:
	adrp	x1, l_.str.5@PAGE
Lloh43:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh44:
	adrp	x1, l_.str.40@PAGE
Lloh45:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d9, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh46:
	adrp	x1, l_.str.41@PAGE
Lloh47:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w8, #12345                      ; =0x3039
	dup.4s	v0, w8
	str	q0, [sp]                        ; 16-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	q4, [sp]                        ; 16-byte Folded Reload
	mov	x19, x0
	mov	w8, #15123                      ; =0x3b13
	movk	w8, #5041, lsl #16
	dup.4s	v0, w8
	mvni.4s	v1, #12
	mov	w8, #30784                      ; =0x7840
	movk	w8, #381, lsl #16
LBB8_7:                                 ; =>This Inner Loop Header: Depth=1
	smull.2d	v2, v4, v0
	smull2.2d	v3, v4, v0
	uzp2.4s	v2, v2, v3
	mvn.16b	v3, v4
	neg.4s	v4, v3
	mla.4s	v4, v2, v1
	subs	x8, x8, #1
	b.ne	LBB8_7
; %bb.8:
	str	s4, [sp, #44]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d10, d0, d1
Lloh48:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh49:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh50:
	adrp	x1, l_.str.6@PAGE
Lloh51:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w23, #6                         ; =0x6
	mov	x0, x19
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh52:
	adrp	x1, l_.str.40@PAGE
Lloh53:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d10, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh54:
	adrp	x1, l_.str.41@PAGE
Lloh55:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh56:
	adrp	x1, l_.str.11@PAGE
Lloh57:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	x0, x19
	mov	w2, #24                         ; =0x18
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh58:
	adrp	x1, l_.str.8@PAGE
Lloh59:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	x0, x19
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fdiv	d9, d9, d10
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh60:
	adrp	x1, l_.str.9@PAGE
Lloh61:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh62:
	adrp	x1, l_.str.12@PAGE
Lloh63:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	x0, x19
	mov	w2, #45                         ; =0x2d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #57600                      ; =0xe100
	movk	w1, #1525, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh64:
	adrp	x1, l_.str.3@PAGE
Lloh65:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w24, #13                        ; =0xd
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh66:
	adrp	x1, l_.str.4@PAGE
Lloh67:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x19
	mov	w2, #47                         ; =0x2f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	x8, #0                          ; =0x0
	mov	w9, #12345                      ; =0x3039
	str	w9, [sp, #44]
	mov	w9, #60495                      ; =0xec4f
	movk	w9, #20164, lsl #16
	mov	w10, #-5                        ; =0xfffffffb
	mov	w11, #-13                       ; =0xfffffff3
	b	LBB8_11
LBB8_9:                                 ;   in Loop: Header=BB8_11 Depth=1
	add	w13, w16, w13
	sub	w13, w13, #13
	add	w12, w17, w12
	add	w12, w12, #13
LBB8_10:                                ;   in Loop: Header=BB8_11 Depth=1
	cmn	w12, #5
	csel	w14, w12, w10, gt
	adds	w13, w14, w13
	cset	w14, ne
	sub	w13, w13, w14
	umull	x13, w13, w9
	lsr	x13, x13, #34
	cinc	w13, w13, ne
	madd	w12, w13, w24, w12
	add	w12, w12, #100
	str	w12, [sp, #44]
	add	x8, x8, #1
	cmp	x8, x21
	b.eq	LBB8_18
LBB8_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_14 Depth 2
                                        ;     Child Loop BB8_17 Depth 2
	ldrsw	x12, [sp, #44]
	smull	x12, w12, w22
	lsr	x12, x12, #32
	ldr	w14, [sp, #44]
	mul	w15, w12, w24
	sub	w12, w14, w15
	sub	w13, w15, w14
	cmp	w12, #6
	csel	w16, w12, w23, lt
	sub	w14, w14, w15
	sub	w14, w14, w16
	add	w14, w14, #12
	cmp	w14, #39
	b.hs	LBB8_13
; %bb.12:                               ;   in Loop: Header=BB8_11 Depth=1
	mov	x14, x13
	mov	x15, x12
	b	LBB8_16
LBB8_13:                                ;   in Loop: Header=BB8_11 Depth=1
	umull	x14, w14, w9
	lsr	x14, x14, #34
	add	w0, w14, #1
	and	w1, w0, #0x3ffffffc
	mul	w16, w1, w24
	add	w14, w13, w16
	mul	w17, w1, w11
	add	w15, w12, w17
	mov	x2, x1
LBB8_14:                                ;   Parent Loop BB8_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	subs	w2, w2, #4
	b.ne	LBB8_14
; %bb.15:                               ;   in Loop: Header=BB8_11 Depth=1
	cmp	w0, w1
	b.eq	LBB8_9
LBB8_16:                                ;   in Loop: Header=BB8_11 Depth=1
	sub	w13, w14, #13
	add	w12, w15, #13
LBB8_17:                                ;   Parent Loop BB8_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w13, w13, #13
	sub	w12, w12, #13
	cmp	w12, #6
	b.gt	LBB8_17
	b	LBB8_10
LBB8_18:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d10, d0, d1
Lloh68:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh69:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh70:
	adrp	x1, l_.str.5@PAGE
Lloh71:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh72:
	adrp	x1, l_.str.40@PAGE
Lloh73:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d10, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh74:
	adrp	x1, l_.str.41@PAGE
Lloh75:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldur	d0, [sp, #28]
	dup.4s	v1, v0[0]
	neg.4s	v2, v1
	mov	w8, #12345                      ; =0x3039
	dup.4s	v6, w8
	mvni.4s	v3, #12
	movi.4s	v4, #13
	movi.4s	v5, #100
LBB8_19:                                ; =>This Inner Loop Header: Depth=1
	smull.2d	v7, v6, v0[1]
	smull2.2d	v16, v6, v0[1]
	uzp2.4s	v7, v7, v16
	mla.4s	v6, v7, v3
	cmgt.4s	v7, v6, v1
	cmgt.4s	v16, v6, v2
	bic.4s	v7, #12
	add.4s	v6, v7, v6
	bic.16b	v7, v4, v16
	add.4s	v6, v6, v7
	cmgt.4s	v7, v6, v1
	cmgt.4s	v16, v6, v2
	bic.4s	v7, #12
	bic.16b	v16, v4, v16
	add.4s	v6, v6, v7
	add.4s	v7, v16, v5
	add.4s	v6, v6, v7
	subs	x20, x20, #1
	b.ne	LBB8_19
; %bb.20:
	str	s6, [sp, #44]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x19
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d11, d0, d1
Lloh76:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh77:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh78:
	adrp	x1, l_.str.6@PAGE
Lloh79:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	x0, x19
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh80:
	adrp	x1, l_.str.40@PAGE
Lloh81:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d11, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh82:
	adrp	x1, l_.str.41@PAGE
Lloh83:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh84:
	adrp	x1, l_.str.11@PAGE
Lloh85:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	x0, x19
	mov	w2, #24                         ; =0x18
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh86:
	adrp	x1, l_.str.8@PAGE
Lloh87:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	x0, x19
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fdiv	d10, d10, d11
	fmov	d0, d10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh88:
	adrp	x1, l_.str.9@PAGE
Lloh89:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh90:
	adrp	x8, lCPI8_0@PAGE
Lloh91:
	ldr	q0, [x8, lCPI8_0@PAGEOFF]
	str	q0, [sp]                        ; 16-byte Folded Spill
	mov	w0, #4096                       ; =0x1000
	bl	__Znam
	ldr	q7, [sp]                        ; 16-byte Folded Reload
	mov	x19, x0
	mov	x8, #0                          ; =0x0
	movi.4s	v0, #4
	movi.4s	v1, #8
	movi.4s	v2, #12
	movi.4s	v3, #16
LBB8_21:                                ; =>This Inner Loop Header: Depth=1
	add.4s	v4, v7, v0
	add.4s	v5, v7, v1
	add.4s	v6, v7, v2
	add	x9, x19, x8
	stp	q7, q4, [x9]
	stp	q5, q6, [x9, #32]
	add.4s	v7, v7, v3
	add	x8, x8, #64
	cmp	x8, #1, lsl #12                 ; =4096
	b.ne	LBB8_21
; %bb.22:
Lloh92:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh93:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh94:
	adrp	x1, l_.str.13@PAGE
Lloh95:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	x0, x20
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #57600                      ; =0xe100
	movk	w1, #1525, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh96:
	adrp	x1, l_.str.3@PAGE
Lloh97:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh98:
	adrp	x1, l_.str.4@PAGE
Lloh99:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x20
	mov	w2, #47                         ; =0x2f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	mov	x8, #0                          ; =0x0
	mov	w9, #2048                       ; =0x800
	movk	w9, #12207, lsl #16
LBB8_23:                                ; =>This Inner Loop Header: Depth=1
	and	x10, x8, #0x3f8
	ldr	w11, [x19, x10, lsl #2]
	add	w11, w11, #1
	str	w11, [x19, x10, lsl #2]
	add	x8, x8, #8
	cmp	x8, x9
	b.ne	LBB8_23
; %bb.24:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d11, d0, d1
Lloh100:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh101:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh102:
	adrp	x1, l_.str.5@PAGE
Lloh103:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh104:
	adrp	x1, l_.str.40@PAGE
Lloh105:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d11, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh106:
	adrp	x1, l_.str.41@PAGE
Lloh107:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	mov	x8, #0                          ; =0x0
	movi.4s	v0, #1
	mov	w9, #33792                      ; =0x8400
	movk	w9, #6103, lsl #16
LBB8_25:                                ; =>This Inner Loop Header: Depth=1
	and	x10, x8, #0x3f0
	lsl	x10, x10, #2
	ldr	q1, [x19, x10]
	add.4s	v1, v1, v0
	str	q1, [x19, x10]
	add	x8, x8, #16
	cmp	x8, x9
	b.ne	LBB8_25
; %bb.26:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d12, d0, d1
Lloh108:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh109:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh110:
	adrp	x1, l_.str.6@PAGE
Lloh111:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	x0, x20
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh112:
	adrp	x1, l_.str.40@PAGE
Lloh113:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmul	d0, d12, d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh114:
	adrp	x1, l_.str.41@PAGE
Lloh115:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh116:
	adrp	x1, l_.str.14@PAGE
Lloh117:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	x0, x20
	mov	w2, #39                         ; =0x27
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh118:
	adrp	x1, l_.str.8@PAGE
Lloh119:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	x0, x20
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fdiv	d0, d11, d12
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh120:
	adrp	x1, l_.str.9@PAGE
Lloh121:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x0, x19
	bl	__ZdaPv
Lloh122:
	adrp	x1, l_.str.15@PAGE
Lloh123:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	x0, x20
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh124:
	adrp	x1, l_.str.16@PAGE
Lloh125:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	x0, x20
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh126:
	adrp	x1, l_.str.1@PAGE
Lloh127:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x20
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fmov	d0, #1.50000000
	fcmp	d8, d0
	b.pl	LBB8_28
; %bb.27:
Lloh128:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh129:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh130:
	adrp	x1, l_.str.17@PAGE
Lloh131:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	x0, x19
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh132:
	adrp	x1, l_.str.18@PAGE
Lloh133:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x19
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh134:
	adrp	x1, l_.str.19@PAGE
Lloh135:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x19
	mov	w2, #46                         ; =0x2e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh136:
	adrp	x1, l_.str.20@PAGE
Lloh137:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	x0, x19
	mov	w2, #48                         ; =0x30
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh138:
	adrp	x1, l_.str.21@PAGE
Lloh139:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	x0, x19
	mov	w2, #24                         ; =0x18
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh140:
	adrp	x1, l_.str.22@PAGE
Lloh141:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	x0, x19
	mov	w2, #42                         ; =0x2a
	b	LBB8_30
LBB8_28:
	fmov	d0, #3.00000000
	fcmp	d8, d0
	b.le	LBB8_31
; %bb.29:
Lloh142:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh143:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh144:
	adrp	x1, l_.str.23@PAGE
Lloh145:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #59                         ; =0x3b
LBB8_30:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB8_31:
	fmov	d0, #1.50000000
	fcmp	d9, d0
	b.pl	LBB8_33
; %bb.32:
Lloh146:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh147:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh148:
	adrp	x1, l_.str.24@PAGE
Lloh149:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x19
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh150:
	adrp	x1, l_.str.18@PAGE
Lloh151:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x19
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh152:
	adrp	x1, l_.str.25@PAGE
Lloh153:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	x0, x19
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh154:
	adrp	x1, l_.str.26@PAGE
Lloh155:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	x0, x19
	mov	w2, #40                         ; =0x28
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh156:
	adrp	x1, l_.str.27@PAGE
Lloh157:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	x0, x19
	mov	w2, #43                         ; =0x2b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16371, lsl #48
	fmov	d0, x8
	fcmp	d10, d0
	b.mi	LBB8_34
	b	LBB8_35
LBB8_33:
Lloh158:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh159:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh160:
	adrp	x1, l_.str.28@PAGE
Lloh161:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #38                         ; =0x26
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16371, lsl #48
	fmov	d0, x8
	fcmp	d10, d0
	b.pl	LBB8_35
LBB8_34:
Lloh162:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh163:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh164:
	adrp	x1, l_.str.29@PAGE
Lloh165:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	x0, x19
	mov	w2, #43                         ; =0x2b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh166:
	adrp	x1, l_.str.30@PAGE
Lloh167:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	x0, x19
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh168:
	adrp	x1, l_.str.31@PAGE
Lloh169:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	x0, x19
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh170:
	adrp	x1, l_.str.32@PAGE
Lloh171:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	x0, x19
	mov	w2, #52                         ; =0x34
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh172:
	adrp	x1, l_.str.33@PAGE
Lloh173:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	x0, x19
	mov	w2, #47                         ; =0x2f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh174:
	adrp	x1, l_.str.34@PAGE
Lloh175:
	add	x1, x1, l_.str.34@PAGEOFF
	mov	x0, x19
	mov	w2, #58                         ; =0x3a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh176:
	adrp	x1, l_.str.35@PAGE
Lloh177:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	x0, x19
	mov	w2, #56                         ; =0x38
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB8_35:
Lloh178:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh179:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh180:
	adrp	x1, l_.str.36@PAGE
Lloh181:
	add	x1, x1, l_.str.36@PAGEOFF
	mov	x0, x19
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh182:
	adrp	x1, l_.str.37@PAGE
Lloh183:
	add	x1, x1, l_.str.37@PAGEOFF
	mov	x0, x19
	mov	w2, #51                         ; =0x33
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh184:
	adrp	x1, l_.str.38@PAGE
Lloh185:
	add	x1, x1, l_.str.38@PAGEOFF
	mov	x0, x19
	mov	w2, #53                         ; =0x35
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpLdrGot	Lloh68, Lloh69
	.loh AdrpLdr	Lloh90, Lloh91
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh94, Lloh95
	.loh AdrpLdrGot	Lloh92, Lloh93
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpLdrGot	Lloh100, Lloh101
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpLdrGot	Lloh108, Lloh109
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh136, Lloh137
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpLdrGot	Lloh128, Lloh129
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpLdrGot	Lloh142, Lloh143
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh152, Lloh153
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpLdrGot	Lloh146, Lloh147
	.loh AdrpAdd	Lloh160, Lloh161
	.loh AdrpLdrGot	Lloh158, Lloh159
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpLdrGot	Lloh162, Lloh163
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpLdrGot	Lloh178, Lloh179
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp6:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp7:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB9_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB9_7
; %bb.3:
Ltmp9:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp10:
; %bb.4:
Ltmp11:
Lloh186:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh187:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp12:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp13:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp14:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB9_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp16:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp17:
; %bb.8:
	cbnz	x0, LBB9_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp19:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp20:
LBB9_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB9_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB9_12:
Ltmp21:
	b	LBB9_15
LBB9_13:
Ltmp15:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB9_16
LBB9_14:
Ltmp18:
LBB9_15:
	mov	x20, x0
LBB9_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB9_18
LBB9_17:
Ltmp8:
	mov	x20, x0
LBB9_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp22:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp23:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB9_11
LBB9_20:
Ltmp24:
	mov	x19, x0
Ltmp25:
	bl	___cxa_end_catch
Ltmp26:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_22:
Ltmp27:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh186, Lloh187
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp14-Ltmp11                  ;   Call between Ltmp11 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp22-Ltmp20                  ;   Call between Ltmp20 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin0            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp25-Ltmp23                  ;   Call between Ltmp23 and Ltmp25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Lfunc_end0-Ltmp26              ;   Call between Ltmp26 and Lfunc_end0
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
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB10_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB10_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB10_15
LBB10_3:
	cmp	x23, #1
	b.lt	LBB10_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB10_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB10_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB10_8
LBB10_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB10_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp28:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp29:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB10_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB10_15
	b	LBB10_12
LBB10_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB10_15
LBB10_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB10_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB10_15
LBB10_14:
	str	xzr, [x20, #24]
	b	LBB10_16
LBB10_15:
	mov	x19, #0                         ; =0x0
LBB10_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB10_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB10_18:
Ltmp30:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB10_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB10_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp28-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin1            ;     jumps to Ltmp30
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp29              ;   Call between Ltmp29 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh188:
	adrp	x0, l_.str.39@PAGE
Lloh189:
	add	x0, x0, l_.str.39@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh188, Lloh189
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp31:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp32:
; %bb.1:
Lloh190:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh191:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh192:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh193:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB13_2:
Ltmp33:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh192, Lloh193
	.loh AdrpLdrGot	Lloh190, Lloh191
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp31-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp31
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp32-Ltmp31                  ;   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin2            ;     jumps to Ltmp33
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp32              ;   Call between Ltmp32 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne200100EPKc
	.globl	__ZNSt12length_errorC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne200100EPKc:   ; @_ZNSt12length_errorC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh194:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh195:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh194, Lloh195
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"REIST Performance Diagnosis (NEON)\n"

l_.str.1:                               ; @.str.1
	.asciz	"============================\n\n"

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
	.asciz	"basic_string"

l_.str.40:                              ; @.str.40
	.asciz	": "

l_.str.41:                              ; @.str.41
	.asciz	" ms\n"

.subsections_via_symbols
