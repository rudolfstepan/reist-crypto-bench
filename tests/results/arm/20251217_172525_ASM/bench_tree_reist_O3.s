	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z27test_independent_evaluationxxx ; -- Begin function _Z27test_independent_evaluationxxx
	.p2align	2
__Z27test_independent_evaluationxxx:    ; @_Z27test_independent_evaluationxxx
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x26, x2
	mov	x20, x1
	mov	x21, x0
Lloh0:
	adrp	x22, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x22, [x22, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x22
	mov	w2, #48                         ; =0x30
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x22
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh8:
	adrp	x1, l_.str.3@PAGE
Lloh9:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh10:
	adrp	x1, l_.str.4@PAGE
Lloh11:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cmp	x21, x26
	b.le	LBB0_2
; %bb.1:
	mvn	x8, x26
	add	x9, x20, x21
	add	x8, x8, x9
	sdiv	x22, x8, x20
	b	LBB0_4
LBB0_2:
	mov	x22, #0                         ; =0x0
	neg	x8, x26
	cmp	x8, x21
	b.lt	LBB0_4
; %bb.3:
	mvn	x8, x21
	add	x9, x20, x26
	add	x8, x8, x9
	sdiv	x8, x8, x20
	neg	x22, x8
LBB0_4:
Lloh12:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh13:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh14:
	adrp	x1, l_.str.5@PAGE
Lloh15:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x0, x23
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh16:
	adrp	x1, l_.str.4@PAGE
Lloh17:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cmp	x22, #1
	b.lt	LBB0_11
; %bb.5:
Lloh18:
	adrp	x1, l_.str.6@PAGE
Lloh19:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	x0, x23
	mov	w2, #48                         ; =0x30
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x23]
	ldur	x8, [x8, #-24]
	add	x8, x23, x8
	mov	w9, #5                          ; =0x5
	str	x9, [x8, #24]
Lloh20:
	adrp	x1, l_.str.7@PAGE
Lloh21:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	x0, x23
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w19, #15                        ; =0xf
	str	x19, [x8, #24]
Lloh22:
	adrp	x1, l_.str.8@PAGE
Lloh23:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	str	x19, [x8, #24]
Lloh24:
	adrp	x1, l_.str.9@PAGE
Lloh25:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #10                         ; =0xa
	str	x9, [x8, #24]
Lloh26:
	adrp	x1, l_.str.10@PAGE
Lloh27:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh28:
	adrp	x1, l_.str.11@PAGE
Lloh29:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w0, #48                         ; =0x30
	bl	__Znwm
	mov	x24, x0
	movi.16b	v0, #45
	stp	q0, q0, [x0]
	stur	q0, [x0, #29]
	strb	wzr, [x0, #45]
Ltmp0:
	mov	x0, x23
	mov	x1, x24
	mov	w2, #45                         ; =0x2d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp1:
; %bb.6:
Ltmp2:
Lloh30:
	adrp	x1, l_.str.11@PAGE
Lloh31:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp3:
; %bb.7:
	mov	x0, x24
	bl	__ZdlPv
	mov	x24, #0                         ; =0x0
	mov	w8, #8                          ; =0x8
	cmp	x22, #8
	str	x22, [sp, #8]                   ; 8-byte Folded Spill
	csel	x8, x22, x8, lo
	add	x27, x8, #2
	mov	w22, #15                        ; =0xf
	mov	w28, #10                        ; =0xa
Lloh32:
	adrp	x25, l_.str.11@PAGE
Lloh33:
	add	x25, x25, l_.str.11@PAGEOFF
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x23]
	ldur	x8, [x8, #-24]
	add	x8, x23, x8
	mov	w9, #5                          ; =0x5
	str	x9, [x8, #24]
	mov	x0, x23
	mov	x1, x24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	str	x22, [x8, #24]
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	str	x22, [x8, #24]
	cmp	x21, x26
Lloh34:
	adrp	x8, l_.str.13@PAGE
Lloh35:
	add	x8, x8, l_.str.13@PAGEOFF
Lloh36:
	adrp	x9, l_.str.12@PAGE
Lloh37:
	add	x9, x9, l_.str.12@PAGEOFF
	csel	x1, x9, x8, gt
	mov	w8, #2                          ; =0x2
	cinc	x2, x8, gt
	mov	x19, x26
	csel	x26, x20, xzr, gt
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	str	x28, [x8, #24]
	mov	x1, x26
	mov	x26, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x25
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x24, x24, #1
	sub	x21, x21, x20
	cmp	x27, x24
	b.ne	LBB0_8
; %bb.9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x19, x8, #10
	b.le	LBB0_11
; %bb.10:
Lloh38:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh39:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh40:
	adrp	x1, l_.str.14@PAGE
Lloh41:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh42:
	adrp	x1, l_.str.15@PAGE
Lloh43:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #19                         ; =0x13
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB0_11:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB0_12:
Ltmp4:
	mov	x19, x0
	mov	x0, x24
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh38, Lloh39
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp3               ;   Call between Ltmp3 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	_strlen
	mov	x2, x0
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_equivalencexx         ; -- Begin function _Z16test_equivalencexx
	.p2align	2
__Z16test_equivalencexx:                ; @_Z16test_equivalencexx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x1
	mov	x19, x0
Lloh44:
	adrp	x21, __ZNSt3__14coutE@GOTPAGE
Lloh45:
	ldr	x21, [x21, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh46:
	adrp	x1, l_.str.16@PAGE
Lloh47:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	x0, x21
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh48:
	adrp	x1, l_.str.17@PAGE
Lloh49:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	x0, x21
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh50:
	adrp	x1, l_.str.2@PAGE
Lloh51:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh52:
	adrp	x1, l_.str.11@PAGE
Lloh53:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh54:
	adrp	x1, l_.str.18@PAGE
Lloh55:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x21
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	asr	x22, x20, #1
	stp	x20, x22, [sp]
	mov	w8, #32                         ; =0x20
	scvtf	d0, x20
	str	w8, [sp, #24]
	fmov	d1, #1.00000000
	fdiv	d0, d1, d0
	fcvtzu	x23, d0, #32
	str	x23, [sp, #16]
Lloh56:
	adrp	x1, l_.str.19@PAGE
Lloh57:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x21
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	asr	x8, x19, #63
	umulh	x9, x23, x19
	madd	w8, w23, w8, w9
	mul	x9, x23, x19
	extr	x9, x8, x9, #32
	msub	x8, x20, x9, x20
	add	x8, x19, x8
	sub	x9, x9, #1
	neg	x10, x19
	madd	x9, x20, x9, x10
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x9, x9, x20
	sub	x8, x8, x20
	cmp	x8, x22
	b.gt	LBB2_1
; %bb.2:
	mov	w10, #1                         ; =0x1
	sub	x10, x10, x22
	cmp	x8, x10
	csel	x10, x8, x10, gt
	adds	x9, x10, x9
	cset	w10, ne
	sub	x10, x9, x10
	cmp	x20, #1
	csinc	x11, x20, xzr, hi
	cmp	x9, #0
	udiv	x9, x10, x11
	cinc	x9, x9, ne
	madd	x20, x20, x9, x8
Lloh58:
	adrp	x21, __ZNSt3__14coutE@GOTPAGE
Lloh59:
	ldr	x21, [x21, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh60:
	adrp	x24, l_.str.20@PAGE
Lloh61:
	add	x24, x24, l_.str.20@PAGEOFF
	mov	x0, x21
	mov	x1, x24
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh62:
	adrp	x22, l_.str.11@PAGE
Lloh63:
	add	x22, x22, l_.str.11@PAGEOFF
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh64:
	adrp	x1, l_.str.21@PAGE
Lloh65:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	x0, x21
	mov	w2, #32                         ; =0x20
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, sp
	mov	x0, x19
	mov	w2, #1                          ; =0x1
	bl	__Z10reist_treexRK12ReistTreeCtxb
	mov	x23, x0
	mov	x0, x21
	mov	x1, x24
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh66:
	adrp	x1, l_.str.22@PAGE
Lloh67:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	x0, x21
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh68:
	adrp	x1, l_.str.23@PAGE
Lloh69:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	x0, x21
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh70:
	adrp	x1, l_.str.24@PAGE
Lloh71:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x21
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cmp	x20, x23
	b.ne	LBB2_8
; %bb.3:
Lloh72:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh73:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh74:
	adrp	x1, l_.str.25@PAGE
Lloh75:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [sp, #8]
	neg	x9, x8
	cmp	x20, x9
	ccmp	x20, x8, #0, gt
	b.gt	LBB2_6
; %bb.4:
	sub	x8, x19, x20
	ldr	x9, [sp]
	sdiv	x10, x8, x9
	msub	x8, x10, x9, x8
	cbnz	x8, LBB2_7
; %bb.5:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB2_6:
	bl	__Z16test_equivalencexx.cold.3
LBB2_7:
	bl	__Z16test_equivalencexx.cold.2
LBB2_8:
	mov	x0, x20
	mov	x1, x23
	bl	__Z16test_equivalencexx.cold.1
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpLdrGot	Lloh72, Lloh73
	.cfi_endproc
                                        ; -- End function
	.globl	__Z10reist_treexRK12ReistTreeCtxb ; -- Begin function _Z10reist_treexRK12ReistTreeCtxb
	.weak_def_can_be_hidden	__Z10reist_treexRK12ReistTreeCtxb
	.p2align	2
__Z10reist_treexRK12ReistTreeCtxb:      ; @_Z10reist_treexRK12ReistTreeCtxb
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x2
	mov	x20, x1
	asr	x8, x0, #63
	ldr	x9, [x1, #16]
	umulh	x10, x9, x0
	madd	x8, x9, x8, x10
	mul	x9, x9, x0
	ldr	w10, [x1, #24]
	asr	x11, x8, x10
	lsl	x8, x8, #1
	mvn	w12, w10
	lsl	x8, x8, x12
	lsr	x9, x9, x10
	orr	x8, x8, x9
	tst	x10, #0x40
	csel	x22, x11, x8, ne
	ldr	x8, [x1]
	msub	x19, x8, x22, x0
	cbz	w2, LBB3_2
; %bb.1:
Lloh76:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh77:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh78:
	adrp	x1, l_.str.64@PAGE
Lloh79:
	add	x1, x1, l_.str.64@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh80:
	adrp	x1, l_.str.65@PAGE
Lloh81:
	add	x1, x1, l_.str.65@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh82:
	adrp	x1, l_.str.11@PAGE
Lloh83:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB3_2:
	ldr	x8, [x20, #8]
	cmp	x8, x19
	b.ge	LBB3_4
; %bb.3:
	ldr	x9, [x20]
	mvn	x8, x8
	add	x8, x8, x9
	add	x8, x19, x8
	sdiv	x22, x8, x9
	cbz	w21, LBB3_6
	b	LBB3_9
LBB3_4:
	mov	x22, #0                         ; =0x0
	neg	x9, x8
	cmp	x19, x9
	b.le	LBB3_8
; %bb.5:
	cbnz	w21, LBB3_9
LBB3_6:
	cbnz	x22, LBB3_10
LBB3_7:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB3_8:
	ldr	x9, [x20]
	mvn	x10, x19
	add	x8, x8, x9
	add	x8, x8, x10
	sdiv	x8, x8, x9
	neg	x22, x8
	cbz	w21, LBB3_6
LBB3_9:
Lloh84:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh85:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh86:
	adrp	x1, l_.str.38@PAGE
Lloh87:
	add	x1, x1, l_.str.38@PAGEOFF
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh88:
	adrp	x1, l_.str.11@PAGE
Lloh89:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cbz	x22, LBB3_7
LBB3_10:
	cmp	x22, #0
	cneg	x8, x22, mi
	cmp	x8, #2
	b.hi	LBB3_18
; %bb.11:
	cbz	w21, LBB3_13
; %bb.12:
Lloh90:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh91:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh92:
	adrp	x1, l_.str.66@PAGE
Lloh93:
	add	x1, x1, l_.str.66@PAGEOFF
	mov	w2, #38                         ; =0x26
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB3_13:
	ldr	x8, [x20, #8]
	cmp	x19, x8
	b.le	LBB3_16
; %bb.14:
	ldr	x9, [x20]
LBB3_15:                                ; =>This Inner Loop Header: Depth=1
	sub	x19, x19, x9
	cmp	x19, x8
	b.gt	LBB3_15
LBB3_16:
	neg	x9, x8
	cmp	x19, x9
	b.gt	LBB3_7
; %bb.17:
	ldr	x9, [x20]
	add	x10, x19, x9
	mov	w11, #1                         ; =0x1
	sub	x8, x11, x8
	cmp	x10, x8
	csel	x11, x10, x8, gt
	cinc	x12, x10, lt
	sub	x11, x11, x12
	cmp	x9, #1
	csinc	x12, x9, xzr, hi
	cmp	x10, x8
	udiv	x8, x11, x12
	cinc	x8, x8, lt
	madd	x8, x9, x8, x9
	add	x19, x19, x8
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB3_18:
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
Ltmp5:
	add	x2, sp, #8
	mov	x0, x22
	mov	x1, x20
	bl	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
Ltmp6:
; %bb.19:
	cbz	w21, LBB3_26
; %bb.20:
Ltmp7:
Lloh94:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh95:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh96:
	adrp	x1, l_.str.67@PAGE
Lloh97:
	add	x1, x1, l_.str.67@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp8:
; %bb.21:
	ldp	x9, x8, [sp, #8]
	sub	x8, x8, x9
	asr	x1, x8, #3
Ltmp9:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp10:
; %bb.22:
Ltmp11:
Lloh98:
	adrp	x1, l_.str.68@PAGE
Lloh99:
	add	x1, x1, l_.str.68@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp12:
; %bb.23:
	ldr	x8, [x20]
	cmp	x22, #0
	cneg	x1, x8, le
Ltmp13:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp14:
; %bb.24:
Ltmp15:
Lloh100:
	adrp	x1, l_.str.69@PAGE
Lloh101:
	add	x1, x1, l_.str.69@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp16:
; %bb.25:
Ltmp17:
Lloh102:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh103:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh104:
	adrp	x1, l_.str.70@PAGE
Lloh105:
	add	x1, x1, l_.str.70@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp18:
LBB3_26:
Ltmp20:
	add	x0, sp, #8
	mov	x1, x21
	bl	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
Ltmp21:
; %bb.27:
	mov	x22, x0
	cbz	w21, LBB3_46
; %bb.28:
Ltmp22:
Lloh106:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh107:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh108:
	adrp	x1, l_.str.71@PAGE
Lloh109:
	add	x1, x1, l_.str.71@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp23:
; %bb.29:
Ltmp24:
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp25:
; %bb.30:
Ltmp26:
Lloh110:
	adrp	x1, l_.str.11@PAGE
Lloh111:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp27:
; %bb.31:
Ltmp28:
Lloh112:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh113:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh114:
	adrp	x1, l_.str.72@PAGE
Lloh115:
	add	x1, x1, l_.str.72@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp29:
; %bb.32:
Ltmp30:
	sub	x19, x19, x22
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp31:
; %bb.33:
Ltmp32:
Lloh116:
	adrp	x1, l_.str.11@PAGE
Lloh117:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp33:
; %bb.34:
	ldr	x8, [x20, #8]
	cmp	x19, x8
	b.le	LBB3_47
LBB3_35:
	mov	w22, #0                         ; =0x0
	ldr	x9, [x20]
LBB3_36:                                ; =>This Inner Loop Header: Depth=1
	add	w22, w22, #1
	sub	x19, x19, x9
	cmp	x19, x8
	b.gt	LBB3_36
; %bb.37:
	neg	x9, x8
	cmp	x19, x9
	b.gt	LBB3_39
LBB3_38:
	ldr	x9, [x20]
	add	x10, x19, x9
	mov	w11, #1                         ; =0x1
	sub	x8, x11, x8
	cmp	x10, x8
	csel	x11, x10, x8, gt
	cinc	x12, x10, lt
	sub	x11, x11, x12
	cmp	x9, #1
	csinc	x12, x9, xzr, hi
	cmp	x10, x8
	udiv	x8, x11, x12
	cinc	x8, x8, lt
	madd	x9, x9, x8, x9
	mvn	w8, w8
	add	w22, w22, w8
	add	x19, x19, x9
LBB3_39:
	cbz	w21, LBB3_44
; %bb.40:
	cbz	w22, LBB3_44
; %bb.41:
Ltmp35:
Lloh118:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh119:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh120:
	adrp	x1, l_.str.73@PAGE
Lloh121:
	add	x1, x1, l_.str.73@PAGEOFF
	mov	w2, #17                         ; =0x11
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp36:
; %bb.42:
Ltmp37:
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp38:
; %bb.43:
Ltmp39:
Lloh122:
	adrp	x1, l_.str.74@PAGE
Lloh123:
	add	x1, x1, l_.str.74@PAGEOFF
	mov	w2, #27                         ; =0x1b
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp40:
LBB3_44:
	ldr	x0, [sp, #8]
	cbz	x0, LBB3_7
; %bb.45:
	str	x0, [sp, #16]
	bl	__ZdlPv
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB3_46:
	sub	x19, x19, x22
	ldr	x8, [x20, #8]
	cmp	x19, x8
	b.gt	LBB3_35
LBB3_47:
	mov	w22, #0                         ; =0x0
	neg	x9, x8
	cmp	x19, x9
	b.le	LBB3_38
	b	LBB3_39
LBB3_48:
Ltmp41:
	b	LBB3_51
LBB3_49:
Ltmp34:
	b	LBB3_51
LBB3_50:
Ltmp19:
LBB3_51:
	mov	x19, x0
	ldr	x0, [sp, #8]
	cbz	x0, LBB3_53
; %bb.52:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB3_53:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpLdrGot	Lloh90, Lloh91
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpLdrGot	Lloh94, Lloh95
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpLdrGot	Lloh102, Lloh103
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpLdrGot	Lloh106, Lloh107
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpLdrGot	Lloh112, Lloh113
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpLdrGot	Lloh118, Lloh119
	.loh AdrpAdd	Lloh122, Lloh123
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp18-Ltmp5                   ;   Call between Ltmp5 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin1            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp33-Ltmp20                  ;   Call between Ltmp20 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin1            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp40-Ltmp35                  ;   Call between Ltmp35 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin1            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp40              ;   Call between Ltmp40 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z18analyze_complexityxx       ; -- Begin function _Z18analyze_complexityxx
	.p2align	2
__Z18analyze_complexityxx:              ; @_Z18analyze_complexityxx
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-80]!             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
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
	mov	x22, x1
	mov	x23, x0
	asr	x8, x1, #1
	scvtf	d0, x1
	fmov	d1, #1.00000000
	fdiv	d0, d1, d0
	fcvtzu	x9, d0, #32
	asr	x10, x0, #63
	umulh	x11, x9, x0
	madd	w10, w9, w10, w11
	mul	x9, x9, x0
	extr	x9, x10, x9, #32
	msub	x20, x9, x1, x0
	mvn	x9, x20
	add	x10, x8, x1
	add	x9, x10, x9
	sdiv	x9, x9, x1
	neg	x10, x8
	cmp	x20, x10
	csneg	x9, xzr, x9, gt
	mvn	x10, x8
	add	x10, x10, x1
	add	x10, x10, x20
	sdiv	x10, x10, x1
	cmp	x8, x20
	csel	x19, x9, x10, ge
Lloh124:
	adrp	x21, __ZNSt3__14coutE@GOTPAGE
Lloh125:
	ldr	x21, [x21, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh126:
	adrp	x1, l_.str.35@PAGE
Lloh127:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	x0, x21
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh128:
	adrp	x1, l_.str.36@PAGE
Lloh129:
	add	x1, x1, l_.str.36@PAGEOFF
	mov	x0, x21
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh130:
	adrp	x1, l_.str.2@PAGE
Lloh131:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh132:
	adrp	x22, l_.str.11@PAGE
Lloh133:
	add	x22, x22, l_.str.11@PAGEOFF
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh134:
	adrp	x1, l_.str.37@PAGE
Lloh135:
	add	x1, x1, l_.str.37@PAGEOFF
	mov	x0, x21
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh136:
	adrp	x1, l_.str.38@PAGE
Lloh137:
	add	x1, x1, l_.str.38@PAGEOFF
	mov	x0, x21
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cbz	x19, LBB4_4
; %bb.1:
	cmp	x19, #0
	cneg	x21, x19, mi
	cmp	x21, #2
	b.lo	LBB4_5
; %bb.2:
	mov	w19, #0                         ; =0x0
	mov	x8, x21
LBB4_3:                                 ; =>This Inner Loop Header: Depth=1
	add	w19, w19, #1
	add	x9, x8, #1
	lsr	x9, x9, #1
	cmp	x8, #2
	mov	x8, x9
	b.hi	LBB4_3
	b	LBB4_6
LBB4_4:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
	ret
LBB4_5:
	mov	w19, #0                         ; =0x0
LBB4_6:
Lloh138:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh139:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh140:
	adrp	x1, l_.str.39@PAGE
Lloh141:
	add	x1, x1, l_.str.39@PAGEOFF
	mov	x0, x20
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh142:
	adrp	x1, l_.str.40@PAGE
Lloh143:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	x0, x20
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh144:
	adrp	x22, l_.str.41@PAGE
Lloh145:
	add	x22, x22, l_.str.41@PAGEOFF
	mov	x1, x22
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh146:
	adrp	x1, l_.str.42@PAGE
Lloh147:
	add	x1, x1, l_.str.42@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh148:
	adrp	x23, l_.str.43@PAGE
Lloh149:
	add	x23, x23, l_.str.43@PAGEOFF
	mov	x0, x20
	mov	x1, x23
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh150:
	adrp	x1, l_.str.44@PAGE
Lloh151:
	add	x1, x1, l_.str.44@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh152:
	adrp	x1, l_.str.45@PAGE
Lloh153:
	add	x1, x1, l_.str.45@PAGEOFF
	mov	x0, x20
	mov	w2, #39                         ; =0x27
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh154:
	adrp	x1, l_.str.46@PAGE
Lloh155:
	add	x1, x1, l_.str.46@PAGEOFF
	mov	x0, x20
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh156:
	adrp	x1, l_.str.47@PAGE
Lloh157:
	add	x1, x1, l_.str.47@PAGEOFF
	mov	x0, x20
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x22
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	w24, w19, #1
	mov	x1, x24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh158:
	adrp	x22, l_.str.48@PAGE
Lloh159:
	add	x22, x22, l_.str.48@PAGEOFF
	mov	x1, x22
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x0, x20
	mov	x1, x23
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh160:
	adrp	x1, l_.str.49@PAGE
Lloh161:
	add	x1, x1, l_.str.49@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh162:
	adrp	x1, l_.str.50@PAGE
Lloh163:
	add	x1, x1, l_.str.50@PAGEOFF
	mov	x0, x20
	mov	w2, #21                         ; =0x15
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh164:
	adrp	x1, l_.str.51@PAGE
Lloh165:
	add	x1, x1, l_.str.51@PAGEOFF
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ucvtf	d0, x21
	ucvtf	d1, w24
	fdiv	d8, d0, d1
Lloh166:
	adrp	x1, l_.str.52@PAGE
Lloh167:
	add	x1, x1, l_.str.52@PAGEOFF
	mov	x0, x20
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh168:
	adrp	x1, l_.str.53@PAGE
Lloh169:
	add	x1, x1, l_.str.53@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh170:
	adrp	x1, l_.str.54@PAGE
Lloh171:
	add	x1, x1, l_.str.54@PAGEOFF
	mov	x0, x20
	mov	w2, #35                         ; =0x23
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	x8, x21, #7
	lsr	x21, x8, #3
Lloh172:
	adrp	x1, l_.str.55@PAGE
Lloh173:
	add	x1, x1, l_.str.55@PAGEOFF
	mov	x0, x20
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh174:
	adrp	x1, l_.str.56@PAGE
Lloh175:
	add	x1, x1, l_.str.56@PAGEOFF
	mov	x0, x20
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh176:
	adrp	x1, l_.str.57@PAGE
Lloh177:
	add	x1, x1, l_.str.57@PAGEOFF
	mov	w2, #17                         ; =0x11
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh178:
	adrp	x1, l_.str.58@PAGE
Lloh179:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x0, x20
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x1, x22
	mov	w2, #8                          ; =0x8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.loh AdrpAdd	Lloh136, Lloh137
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpLdrGot	Lloh124, Lloh125
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpAdd	Lloh160, Lloh161
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh152, Lloh153
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpLdrGot	Lloh138, Lloh139
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh180:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh181:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh182:
	adrp	x1, l_.str.59@PAGE
Lloh183:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	mov	w2, #44                         ; =0x2c
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh184:
	adrp	x1, l_.str.60@PAGE
Lloh185:
	add	x1, x1, l_.str.60@PAGEOFF
	mov	x0, x19
	mov	w2, #45                         ; =0x2d
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh186:
	adrp	x1, l_.str.61@PAGE
Lloh187:
	add	x1, x1, l_.str.61@PAGEOFF
	mov	x0, x19
	mov	w2, #49                         ; =0x31
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh188:
	adrp	x1, l_.str.62@PAGE
Lloh189:
	add	x1, x1, l_.str.62@PAGEOFF
	mov	x0, x19
	mov	w2, #54                         ; =0x36
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w0, #53                         ; =0x35
	mov	w1, #13                         ; =0xd
	mov	w2, #6                          ; =0x6
	bl	__Z27test_independent_evaluationxxx
	mov	w8, #38541                      ; =0x968d
	movk	w8, #152, lsl #16
	sub	x0, x8, #3
	mov	w1, #13                         ; =0xd
	mov	w2, #6                          ; =0x6
	bl	__Z27test_independent_evaluationxxx
	mov	w0, #157                        ; =0x9d
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	w0, #157                        ; =0x9d
	mov	w1, #13                         ; =0xd
	bl	__Z18analyze_complexityxx
	mov	w0, #10013                      ; =0x271d
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	w0, #10013                      ; =0x271d
	mov	w1, #13                         ; =0xd
	bl	__Z18analyze_complexityxx
	mov	w0, #16973                      ; =0x424d
	movk	w0, #15, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	w0, #16973                      ; =0x424d
	movk	w0, #15, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z18analyze_complexityxx
	mov	w0, #38541                      ; =0x968d
	movk	w0, #152, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	w0, #38541                      ; =0x968d
	movk	w0, #152, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z18analyze_complexityxx
	mov	x0, #-41255                     ; =0xffffffffffff5ed9
	movk	x0, #65528, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	x0, #-41255                     ; =0xffffffffffff5ed9
	movk	x0, #65528, lsl #16
	mov	w1, #13                         ; =0xd
	bl	__Z18analyze_complexityxx
	mov	w0, #13006                      ; =0x32ce
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
	mov	w0, #13007                      ; =0x32cf
	mov	w1, #13                         ; =0xd
	bl	__Z16test_equivalencexx
Lloh190:
	adrp	x1, l_.str.16@PAGE
Lloh191:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	x0, x19
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh192:
	adrp	x1, l_.str.63@PAGE
Lloh193:
	add	x1, x1, l_.str.63@PAGEOFF
	mov	x0, x19
	mov	w2, #38                         ; =0x26
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh194:
	adrp	x1, l_.str.18@PAGE
Lloh195:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x19
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpLdrGot	Lloh180, Lloh181
	.cfi_endproc
                                        ; -- End function
	.globl	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE ; -- Begin function _Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.weak_def_can_be_hidden	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.p2align	2
__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE: ; @_Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	ldr	x22, [x2]
	str	x22, [x2, #8]
	cmp	x0, #0
	cneg	x8, x0, mi
	ldr	x9, [x2, #16]
	sub	x9, x9, x22
	cmp	x8, x9, asr #3
	b.ls	LBB6_4
; %bb.1:
	lsr	x9, x8, #61
	cbnz	x9, LBB6_29
; %bb.2:
	lsl	x23, x8, #3
	mov	x0, x23
	bl	__Znwm
	add	x8, x0, x23
	stp	x0, x0, [x19]
	str	x8, [x19, #16]
	cbz	x22, LBB6_4
; %bb.3:
	mov	x0, x22
	bl	__ZdlPv
LBB6_4:
	cmp	x21, #1
	b.lt	LBB6_16
; %bb.5:
	ldr	x27, [x19, #8]
	mov	x25, #9223372036854775800       ; =0x7ffffffffffffff8
	mov	x26, #2305843009213693951       ; =0x1fffffffffffffff
	b	LBB6_8
LBB6_6:                                 ;   in Loop: Header=BB6_8 Depth=1
	ldr	x8, [x20]
	str	x8, [x27], #8
LBB6_7:                                 ;   in Loop: Header=BB6_8 Depth=1
	str	x27, [x19, #8]
	subs	x21, x21, #1
	b.eq	LBB6_17
LBB6_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19, #16]
	cmp	x27, x8
	b.lo	LBB6_6
; %bb.9:                                ;   in Loop: Header=BB6_8 Depth=1
	ldr	x22, [x19]
	sub	x23, x27, x22
	asr	x27, x23, #3
	add	x9, x27, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB6_29
; %bb.10:                               ;   in Loop: Header=BB6_8 Depth=1
	sub	x8, x8, x22
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	cmp	x8, x25
	csel	x28, x9, x26, lo
	cbz	x28, LBB6_13
; %bb.11:                               ;   in Loop: Header=BB6_8 Depth=1
	lsr	x8, x28, #61
	cbnz	x8, LBB6_30
; %bb.12:                               ;   in Loop: Header=BB6_8 Depth=1
	lsl	x0, x28, #3
	bl	__Znwm
	mov	x24, x0
	b	LBB6_14
LBB6_13:                                ;   in Loop: Header=BB6_8 Depth=1
	mov	x24, #0                         ; =0x0
LBB6_14:                                ;   in Loop: Header=BB6_8 Depth=1
	add	x27, x24, x27, lsl #3
	add	x28, x24, x28, lsl #3
	ldr	x8, [x20]
	str	x8, [x27], #8
	mov	x0, x24
	mov	x1, x22
	mov	x2, x23
	bl	_memcpy
	stp	x24, x27, [x19]
	str	x28, [x19, #16]
	cbz	x22, LBB6_7
; %bb.15:                               ;   in Loop: Header=BB6_8 Depth=1
	mov	x0, x22
	bl	__ZdlPv
	b	LBB6_7
LBB6_16:
	tbnz	x21, #63, LBB6_18
LBB6_17:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB6_18:
	neg	x8, x21
	cmp	x8, #1
	mov	w8, #1                          ; =0x1
	csneg	x24, x8, x21, le
	ldr	x27, [x19, #8]
	mov	x26, #2305843009213693951       ; =0x1fffffffffffffff
	b	LBB6_21
LBB6_19:                                ;   in Loop: Header=BB6_21 Depth=1
	str	x28, [x27], #8
LBB6_20:                                ;   in Loop: Header=BB6_21 Depth=1
	str	x27, [x19, #8]
	subs	x24, x24, #1
	b.eq	LBB6_17
LBB6_21:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x20]
	neg	x28, x8
	ldr	x8, [x19, #16]
	cmp	x27, x8
	b.lo	LBB6_19
; %bb.22:                               ;   in Loop: Header=BB6_21 Depth=1
	ldr	x21, [x19]
	sub	x22, x27, x21
	asr	x27, x22, #3
	add	x9, x27, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB6_29
; %bb.23:                               ;   in Loop: Header=BB6_21 Depth=1
	sub	x8, x8, x21
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	csel	x25, x9, x26, lo
	cbz	x25, LBB6_26
; %bb.24:                               ;   in Loop: Header=BB6_21 Depth=1
	lsr	x8, x25, #61
	cbnz	x8, LBB6_30
; %bb.25:                               ;   in Loop: Header=BB6_21 Depth=1
	lsl	x0, x25, #3
	bl	__Znwm
	mov	x23, x0
	b	LBB6_27
LBB6_26:                                ;   in Loop: Header=BB6_21 Depth=1
	mov	x23, #0                         ; =0x0
LBB6_27:                                ;   in Loop: Header=BB6_21 Depth=1
	add	x27, x23, x27, lsl #3
	add	x25, x23, x25, lsl #3
	str	x28, [x27], #8
	mov	x0, x23
	mov	x1, x21
	mov	x2, x22
	bl	_memcpy
	stp	x23, x27, [x19]
	str	x25, [x19, #16]
	cbz	x21, LBB6_20
; %bb.28:                               ;   in Loop: Header=BB6_21 Depth=1
	mov	x0, x21
	bl	__ZdlPv
	b	LBB6_20
LBB6_29:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB6_30:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb ; -- Begin function _Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
	.weak_def_can_be_hidden	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
	.p2align	2
__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb: ; @_Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	ldp	x19, x8, [x0]
	cmp	x19, x8
	b.eq	LBB7_3
; %bb.1:
	sub	x24, x8, x19
	cmp	x24, #8
	b.ne	LBB7_4
; %bb.2:
	ldr	x0, [x19]
	b	LBB7_72
LBB7_3:
	mov	x0, #0                          ; =0x0
	b	LBB7_72
LBB7_4:
	tbnz	x24, #63, LBB7_79
; %bb.5:
	mov	x0, x24
	bl	__Znwm
	mov	x21, x0
	mov	x1, x19
	mov	x2, x24
	bl	_memcpy
	cmp	x24, #9
	b.lo	LBB7_71
; %bb.6:
	mov	w22, #0                         ; =0x0
	lsr	x25, x24, #3
Lloh196:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh197:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x19, x21, x24
	b	LBB7_8
LBB7_7:                                 ;   in Loop: Header=BB7_8 Depth=1
	add	w22, w22, #1
	sub	x24, x19, x28
	asr	x25, x24, #3
	mov	x21, x28
	cmp	x25, #1
	b.ls	LBB7_64
LBB7_8:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_39 Depth 2
	add	x8, x25, #1
	cmp	x8, #2
	str	x21, [sp, #24]                  ; 8-byte Folded Spill
	str	x19, [sp, #8]                   ; 8-byte Folded Spill
	b.hs	LBB7_10
; %bb.9:                                ;   in Loop: Header=BB7_8 Depth=1
	mov	x27, #0                         ; =0x0
	mov	x28, #0                         ; =0x0
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	cbnz	w8, LBB7_13
	b	LBB7_36
LBB7_10:                                ;   in Loop: Header=BB7_8 Depth=1
	lsr	x9, x8, #62
	cbnz	x9, LBB7_75
; %bb.11:                               ;   in Loop: Header=BB7_8 Depth=1
	lsr	x19, x8, #1
	lsl	x0, x19, #3
Ltmp42:
	mov	x28, #0                         ; =0x0
	bl	__Znwm
Ltmp43:
; %bb.12:                               ;   in Loop: Header=BB7_8 Depth=1
	add	x27, x0, x19, lsl #3
	mov	x28, x0
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	cbz	w8, LBB7_36
LBB7_13:                                ;   in Loop: Header=BB7_8 Depth=1
Ltmp46:
	mov	x0, x23
Lloh198:
	adrp	x1, l_.str.76@PAGE
Lloh199:
	add	x1, x1, l_.str.76@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp47:
; %bb.14:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp48:
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp49:
; %bb.15:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp50:
Lloh200:
	adrp	x1, l_.str.77@PAGE
Lloh201:
	add	x1, x1, l_.str.77@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp51:
; %bb.16:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp52:
	mov	x1, x25
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp53:
; %bb.17:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp54:
Lloh202:
	adrp	x1, l_.str.78@PAGE
Lloh203:
	add	x1, x1, l_.str.78@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp55:
; %bb.18:                               ;   in Loop: Header=BB7_8 Depth=1
	cmp	x25, #4
	mov	w8, #4                          ; =0x4
	csel	x19, x25, x8, lo
	ldr	x1, [x21]
Ltmp56:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp57:
; %bb.19:                               ;   in Loop: Header=BB7_8 Depth=1
	sub	x19, x19, #1
	cbz	x19, LBB7_21
; %bb.20:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp58:
	mov	x0, x23
Lloh204:
	adrp	x1, l_.str.79@PAGE
Lloh205:
	add	x1, x1, l_.str.79@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp59:
LBB7_21:                                ;   in Loop: Header=BB7_8 Depth=1
	cmp	x25, #2
	b.lo	LBB7_33
; %bb.22:                               ;   in Loop: Header=BB7_8 Depth=1
	ldr	x1, [x21, #8]
Ltmp60:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp61:
; %bb.23:                               ;   in Loop: Header=BB7_8 Depth=1
	cmp	x19, #2
	b.lo	LBB7_25
; %bb.24:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp62:
	mov	x0, x23
Lloh206:
	adrp	x1, l_.str.79@PAGE
Lloh207:
	add	x1, x1, l_.str.79@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
LBB7_25:                                ;   in Loop: Header=BB7_8 Depth=1
	cmp	x25, #2
	b.eq	LBB7_33
; %bb.26:                               ;   in Loop: Header=BB7_8 Depth=1
	ldr	x1, [x21, #16]
Ltmp64:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp65:
; %bb.27:                               ;   in Loop: Header=BB7_8 Depth=1
	cmp	x19, #3
	b.lo	LBB7_29
; %bb.28:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp66:
	mov	x0, x23
Lloh208:
	adrp	x1, l_.str.79@PAGE
Lloh209:
	add	x1, x1, l_.str.79@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
LBB7_29:                                ;   in Loop: Header=BB7_8 Depth=1
	cmp	x25, #3
	b.eq	LBB7_33
; %bb.30:                               ;   in Loop: Header=BB7_8 Depth=1
	ldr	x1, [x21, #24]
Ltmp68:
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp69:
; %bb.31:                               ;   in Loop: Header=BB7_8 Depth=1
	cmp	x19, #4
	b.lo	LBB7_33
; %bb.32:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp70:
	mov	x0, x23
Lloh210:
	adrp	x1, l_.str.79@PAGE
Lloh211:
	add	x1, x1, l_.str.79@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp71:
LBB7_33:                                ;   in Loop: Header=BB7_8 Depth=1
	cmp	x25, #4
	b.ls	LBB7_35
; %bb.34:                               ;   in Loop: Header=BB7_8 Depth=1
Ltmp73:
	mov	x0, x23
Lloh212:
	adrp	x1, l_.str.80@PAGE
Lloh213:
	add	x1, x1, l_.str.80@PAGEOFF
	mov	w2, #5                          ; =0x5
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp74:
LBB7_35:                                ;   in Loop: Header=BB7_8 Depth=1
Ltmp75:
	mov	x0, x23
Lloh214:
	adrp	x1, l_.str.81@PAGE
Lloh215:
	add	x1, x1, l_.str.81@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
LBB7_36:                                ;   in Loop: Header=BB7_8 Depth=1
	str	w22, [sp, #20]                  ; 4-byte Folded Spill
	cmp	x25, #2
	b.lo	LBB7_51
; %bb.37:                               ;   in Loop: Header=BB7_8 Depth=1
	add	x21, x21, #8
	mov	w23, #1                         ; =0x1
	mov	x19, x28
	b	LBB7_39
LBB7_38:                                ;   in Loop: Header=BB7_39 Depth=2
	str	x22, [x19], #8
	add	x21, x21, #16
	add	x23, x23, #2
	cmp	x23, x25
	b.hs	LBB7_49
LBB7_39:                                ;   Parent Loop BB7_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	x8, x9, [x21, #-8]
	add	x22, x9, x8
	cmp	x19, x27
	b.lo	LBB7_38
; %bb.40:                               ;   in Loop: Header=BB7_39 Depth=2
	sub	x26, x19, x28
	asr	x19, x26, #3
	add	x8, x19, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB7_73
; %bb.41:                               ;   in Loop: Header=BB7_39 Depth=2
	sub	x9, x27, x28
	asr	x10, x9, #2
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x9, x10
	mov	x9, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x27, x8, x9, lo
	cbz	x27, LBB7_45
; %bb.42:                               ;   in Loop: Header=BB7_39 Depth=2
	lsr	x8, x27, #61
	cbnz	x8, LBB7_74
; %bb.43:                               ;   in Loop: Header=BB7_39 Depth=2
	lsl	x0, x27, #3
Ltmp77:
	bl	__Znwm
Ltmp78:
; %bb.44:                               ;   in Loop: Header=BB7_39 Depth=2
	mov	x20, x0
	b	LBB7_46
LBB7_45:                                ;   in Loop: Header=BB7_39 Depth=2
	mov	x20, #0                         ; =0x0
LBB7_46:                                ;   in Loop: Header=BB7_39 Depth=2
	add	x19, x20, x19, lsl #3
	add	x27, x20, x27, lsl #3
	str	x22, [x19], #8
	mov	x0, x20
	mov	x1, x28
	mov	x2, x26
	bl	_memcpy
	cbz	x28, LBB7_48
; %bb.47:                               ;   in Loop: Header=BB7_39 Depth=2
	mov	x0, x28
	bl	__ZdlPv
LBB7_48:                                ;   in Loop: Header=BB7_39 Depth=2
	mov	x28, x20
	add	x21, x21, #16
	add	x23, x23, #2
	cmp	x23, x25
	b.lo	LBB7_39
LBB7_49:                                ;   in Loop: Header=BB7_8 Depth=1
	tbnz	w24, #3, LBB7_52
LBB7_50:                                ;   in Loop: Header=BB7_8 Depth=1
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	ldr	w22, [sp, #20]                  ; 4-byte Folded Reload
Lloh216:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh217:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
	cbnz	x21, LBB7_63
	b	LBB7_7
LBB7_51:                                ;   in Loop: Header=BB7_8 Depth=1
	mov	x19, x28
	tbz	w24, #3, LBB7_50
LBB7_52:                                ;   in Loop: Header=BB7_8 Depth=1
	cmp	x19, x27
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	ldr	w22, [sp, #20]                  ; 4-byte Folded Reload
Lloh218:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh219:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
	b.hs	LBB7_54
; %bb.53:                               ;   in Loop: Header=BB7_8 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x8, #-8]
	str	x8, [x19], #8
	cbnz	x21, LBB7_63
	b	LBB7_7
LBB7_54:                                ;   in Loop: Header=BB7_8 Depth=1
	sub	x24, x19, x28
	asr	x19, x24, #3
	add	x8, x19, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB7_76
; %bb.55:                               ;   in Loop: Header=BB7_8 Depth=1
	sub	x9, x27, x28
	asr	x10, x9, #2
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x9, x10
	mov	x9, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x8, x8, x9, lo
	cbz	x8, LBB7_59
; %bb.56:                               ;   in Loop: Header=BB7_8 Depth=1
	lsr	x9, x8, #61
	cbnz	x9, LBB7_77
; %bb.57:                               ;   in Loop: Header=BB7_8 Depth=1
	lsl	x0, x8, #3
Ltmp85:
	bl	__Znwm
Ltmp86:
; %bb.58:                               ;   in Loop: Header=BB7_8 Depth=1
	mov	x20, x0
	b	LBB7_60
LBB7_59:                                ;   in Loop: Header=BB7_8 Depth=1
	mov	x20, #0                         ; =0x0
LBB7_60:                                ;   in Loop: Header=BB7_8 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x8, #-8]
	add	x19, x20, x19, lsl #3
	str	x8, [x19], #8
	mov	x0, x20
	mov	x1, x28
	mov	x2, x24
	bl	_memcpy
	cbz	x28, LBB7_62
; %bb.61:                               ;   in Loop: Header=BB7_8 Depth=1
	mov	x0, x28
	bl	__ZdlPv
LBB7_62:                                ;   in Loop: Header=BB7_8 Depth=1
	mov	x28, x20
	cbz	x21, LBB7_7
LBB7_63:                                ;   in Loop: Header=BB7_8 Depth=1
	mov	x0, x21
	bl	__ZdlPv
	b	LBB7_7
LBB7_64:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	cbz	w8, LBB7_70
; %bb.65:
Ltmp93:
Lloh220:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh221:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh222:
	adrp	x1, l_.str.76@PAGE
Lloh223:
	add	x1, x1, l_.str.76@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp94:
; %bb.66:
Ltmp95:
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp96:
; %bb.67:
Ltmp97:
Lloh224:
	adrp	x1, l_.str.82@PAGE
Lloh225:
	add	x1, x1, l_.str.82@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp98:
; %bb.68:
	ldr	x1, [x28]
Ltmp99:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp100:
; %bb.69:
Ltmp101:
Lloh226:
	adrp	x1, l_.str.81@PAGE
Lloh227:
	add	x1, x1, l_.str.81@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp102:
LBB7_70:
	mov	x21, x28
LBB7_71:
	ldr	x19, [x21]
	mov	x0, x21
	bl	__ZdlPv
	mov	x0, x19
LBB7_72:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB7_73:
Ltmp82:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
Ltmp83:
	b	LBB7_78
LBB7_74:
Ltmp80:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
Ltmp81:
	b	LBB7_78
LBB7_75:
Ltmp44:
	mov	x28, #0                         ; =0x0
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
Ltmp45:
	b	LBB7_78
LBB7_76:
Ltmp90:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
Ltmp91:
	b	LBB7_78
LBB7_77:
Ltmp88:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
Ltmp89:
LBB7_78:
	brk	#0x1
LBB7_79:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB7_80:
Ltmp103:
	mov	x21, x0
	b	LBB7_89
LBB7_81:
Ltmp92:
	b	LBB7_86
LBB7_82:
Ltmp72:
	b	LBB7_86
LBB7_83:
Ltmp87:
	b	LBB7_86
LBB7_84:
Ltmp79:
	b	LBB7_86
LBB7_85:
Ltmp84:
LBB7_86:
	mov	x21, x0
	cbz	x28, LBB7_88
; %bb.87:
	mov	x0, x28
	bl	__ZdlPv
LBB7_88:
	ldr	x28, [sp, #24]                  ; 8-byte Folded Reload
LBB7_89:
	cbz	x28, LBB7_91
; %bb.90:
	mov	x0, x28
	bl	__ZdlPv
LBB7_91:
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh196, Lloh197
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh214, Lloh215
	.loh AdrpLdrGot	Lloh216, Lloh217
	.loh AdrpLdrGot	Lloh218, Lloh219
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpLdrGot	Lloh220, Lloh221
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpAdd	Lloh226, Lloh227
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp42-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp55-Ltmp42                  ;   Call between Ltmp42 and Ltmp55
	.uleb128 Ltmp87-Lfunc_begin2            ;     jumps to Ltmp87
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp71-Ltmp56                  ;   Call between Ltmp56 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin2            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp76-Ltmp73                  ;   Call between Ltmp73 and Ltmp76
	.uleb128 Ltmp87-Lfunc_begin2            ;     jumps to Ltmp87
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin2            ;     jumps to Ltmp79
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp85-Ltmp78                  ;   Call between Ltmp78 and Ltmp85
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp85-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp86-Ltmp85                  ;   Call between Ltmp85 and Ltmp86
	.uleb128 Ltmp87-Lfunc_begin2            ;     jumps to Ltmp87
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp86-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp93-Ltmp86                  ;   Call between Ltmp86 and Ltmp93
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp93-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp102-Ltmp93                 ;   Call between Ltmp93 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin2           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp82-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Ltmp81-Ltmp82                  ;   Call between Ltmp82 and Ltmp81
	.uleb128 Ltmp84-Lfunc_begin2            ;     jumps to Ltmp84
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin2            ; >> Call Site 11 <<
	.uleb128 Ltmp89-Ltmp44                  ;   Call between Ltmp44 and Ltmp89
	.uleb128 Ltmp92-Lfunc_begin2            ;     jumps to Ltmp92
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin2            ; >> Call Site 12 <<
	.uleb128 Lfunc_end2-Ltmp89              ;   Call between Ltmp89 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh228:
	adrp	x0, l_.str.75@PAGE
Lloh229:
	add	x0, x0, l_.str.75@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh228, Lloh229
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp104:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp105:
; %bb.1:
Lloh230:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh231:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh232:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh233:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB10_2:
Ltmp106:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh232, Lloh233
	.loh AdrpLdrGot	Lloh230, Lloh231
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp104-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp104
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp105-Ltmp104                ;   Call between Ltmp104 and Ltmp105
	.uleb128 Ltmp106-Lfunc_begin3           ;     jumps to Ltmp106
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp105-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp105             ;   Call between Ltmp105 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
Lloh234:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh235:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh234, Lloh235
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne200100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne200100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne200100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne200100v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh236:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh237:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh238:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh239:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh238, Lloh239
	.loh AdrpLdrGot	Lloh236, Lloh237
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
Ltmp107:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp108:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB13_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB13_7
; %bb.3:
Ltmp110:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp111:
; %bb.4:
Ltmp112:
Lloh240:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh241:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp113:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp114:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp115:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB13_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp117:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp118:
; %bb.8:
	cbnz	x0, LBB13_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp120:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp121:
LBB13_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB13_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB13_12:
Ltmp122:
	b	LBB13_15
LBB13_13:
Ltmp116:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB13_16
LBB13_14:
Ltmp119:
LBB13_15:
	mov	x20, x0
LBB13_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB13_18
LBB13_17:
Ltmp109:
	mov	x20, x0
LBB13_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp123:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp124:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB13_11
LBB13_20:
Ltmp125:
	mov	x19, x0
Ltmp126:
	bl	___cxa_end_catch
Ltmp127:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB13_22:
Ltmp128:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh240, Lloh241
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp107-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp108-Ltmp107                ;   Call between Ltmp107 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin4           ;     jumps to Ltmp109
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp110-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp111-Ltmp110                ;   Call between Ltmp110 and Ltmp111
	.uleb128 Ltmp119-Lfunc_begin4           ;     jumps to Ltmp119
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp112-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp115-Ltmp112                ;   Call between Ltmp112 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin4           ;     jumps to Ltmp116
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp117-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp118-Ltmp117                ;   Call between Ltmp117 and Ltmp118
	.uleb128 Ltmp119-Lfunc_begin4           ;     jumps to Ltmp119
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp120-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp121-Ltmp120                ;   Call between Ltmp120 and Ltmp121
	.uleb128 Ltmp122-Lfunc_begin4           ;     jumps to Ltmp122
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp121-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp123-Ltmp121                ;   Call between Ltmp121 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Ltmp124-Ltmp123                ;   Call between Ltmp123 and Ltmp124
	.uleb128 Ltmp125-Lfunc_begin4           ;     jumps to Ltmp125
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin4           ; >> Call Site 8 <<
	.uleb128 Ltmp126-Ltmp124                ;   Call between Ltmp124 and Ltmp126
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp126-Lfunc_begin4           ; >> Call Site 9 <<
	.uleb128 Ltmp127-Ltmp126                ;   Call between Ltmp126 and Ltmp127
	.uleb128 Ltmp128-Lfunc_begin4           ;     jumps to Ltmp128
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp127-Lfunc_begin4           ; >> Call Site 10 <<
	.uleb128 Lfunc_end4-Ltmp127             ;   Call between Ltmp127 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
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
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	cbz	x0, LBB14_16
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
	b.lt	LBB14_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB14_15
LBB14_3:
	cmp	x23, #1
	b.lt	LBB14_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB14_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB14_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB14_8
LBB14_7:
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
LBB14_8:
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
Ltmp129:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp130:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB14_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB14_15
	b	LBB14_12
LBB14_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB14_15
LBB14_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB14_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB14_15
LBB14_14:
	str	xzr, [x20, #24]
	b	LBB14_16
LBB14_15:
	mov	x19, #0                         ; =0x0
LBB14_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB14_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB14_18:
Ltmp131:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB14_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB14_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp129-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp129
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp129-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp130-Ltmp129                ;   Call between Ltmp129 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin5           ;     jumps to Ltmp131
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp130             ;   Call between Ltmp130 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh242:
	adrp	x0, l_.str.83@PAGE
Lloh243:
	add	x0, x0, l_.str.83@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh242, Lloh243
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z16test_equivalencexx.cold.1
__Z16test_equivalencexx.cold.1:         ; @_Z16test_equivalencexx.cold.1
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	mov	x20, x0
Lloh244:
	adrp	x21, __ZNSt3__14coutE@GOTPAGE
Lloh245:
	ldr	x21, [x21, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh246:
	adrp	x1, l_.str.26@PAGE
Lloh247:
	add	x1, x1, l_.str.26@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
Lloh248:
	adrp	x1, l_.str.27@PAGE
Lloh249:
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh250:
	adrp	x20, l_.str.11@PAGE
Lloh251:
	add	x20, x20, l_.str.11@PAGEOFF
	mov	x1, x20
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Lloh252:
	adrp	x1, l_.str.28@PAGE
Lloh253:
	add	x1, x1, l_.str.28@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x20
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Lloh254:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
Lloh255:
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
Lloh256:
	adrp	x1, l_.str.29@PAGE
Lloh257:
	add	x1, x1, l_.str.29@PAGEOFF
Lloh258:
	adrp	x3, l_.str.30@PAGE
Lloh259:
	add	x3, x3, l_.str.30@PAGEOFF
	mov	w2, #312                        ; =0x138
	bl	___assert_rtn
	.loh AdrpAdd	Lloh258, Lloh259
	.loh AdrpAdd	Lloh256, Lloh257
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpAdd	Lloh252, Lloh253
	.loh AdrpAdd	Lloh250, Lloh251
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpAdd	Lloh246, Lloh247
	.loh AdrpLdrGot	Lloh244, Lloh245
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z16test_equivalencexx.cold.2
__Z16test_equivalencexx.cold.2:         ; @_Z16test_equivalencexx.cold.2
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh260:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
Lloh261:
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
Lloh262:
	adrp	x1, l_.str.29@PAGE
Lloh263:
	add	x1, x1, l_.str.29@PAGEOFF
Lloh264:
	adrp	x3, l_.str.33@PAGE
Lloh265:
	add	x3, x3, l_.str.33@PAGEOFF
	mov	w2, #321                        ; =0x141
	bl	___assert_rtn
	.loh AdrpAdd	Lloh264, Lloh265
	.loh AdrpAdd	Lloh262, Lloh263
	.loh AdrpAdd	Lloh260, Lloh261
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z16test_equivalencexx.cold.3
__Z16test_equivalencexx.cold.3:         ; @_Z16test_equivalencexx.cold.3
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh266:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
Lloh267:
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
Lloh268:
	adrp	x1, l_.str.29@PAGE
Lloh269:
	add	x1, x1, l_.str.29@PAGEOFF
Lloh270:
	adrp	x3, l_.str.31@PAGE
Lloh271:
	add	x3, x3, l_.str.31@PAGEOFF
	mov	w2, #316                        ; =0x13c
	bl	___assert_rtn
	.loh AdrpAdd	Lloh270, Lloh271
	.loh AdrpAdd	Lloh268, Lloh269
	.loh AdrpAdd	Lloh266, Lloh267
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_0
_OUTLINED_FUNCTION_0:                   ; @OUTLINED_FUNCTION_0 Thunk
	.cfi_startproc
; %bb.0:
	mov	x0, x21
	b	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\n--- Testing Independent Evaluation Formula ---\n"

l_.str.1:                               ; @.str.1
	.asciz	"R0="

l_.str.2:                               ; @.str.2
	.asciz	", B="

l_.str.3:                               ; @.str.3
	.asciz	", half="

l_.str.4:                               ; @.str.4
	.asciz	"\n\n"

l_.str.5:                               ; @.str.5
	.asciz	"k = "

l_.str.6:                               ; @.str.6
	.asciz	"Testing condition: c_i = B if (R0 - i*B) > half\n"

l_.str.7:                               ; @.str.7
	.asciz	"i"

l_.str.8:                               ; @.str.8
	.asciz	"R0 - i*B"

l_.str.9:                               ; @.str.9
	.asciz	"> half?"

l_.str.10:                              ; @.str.10
	.asciz	"c_i"

l_.str.11:                              ; @.str.11
	.asciz	"\n"

l_.str.12:                              ; @.str.12
	.asciz	"YES"

l_.str.13:                              ; @.str.13
	.asciz	"NO"

l_.str.14:                              ; @.str.14
	.asciz	"  ... ("

l_.str.15:                              ; @.str.15
	.asciz	" more corrections)\n"

l_.str.16:                              ; @.str.16
	.asciz	"\n========================================\n"

l_.str.17:                              ; @.str.17
	.asciz	"Testing: T="

l_.str.18:                              ; @.str.18
	.asciz	"========================================\n"

l_.str.19:                              ; @.str.19
	.asciz	"\n--- REIST-Linear ---\n"

l_.str.20:                              ; @.str.20
	.asciz	"Result: "

l_.str.21:                              ; @.str.21
	.asciz	"\n--- REIST-Tree (Corrected) ---\n"

l_.str.22:                              ; @.str.22
	.asciz	"\n--- Verification ---\n"

l_.str.23:                              ; @.str.23
	.asciz	"Linear result: "

l_.str.24:                              ; @.str.24
	.asciz	"Tree result:   "

l_.str.25:                              ; @.str.25
	.asciz	"\342\234\223 Results match!\n"

l_.str.26:                              ; @.str.26
	.asciz	"\342\234\227 MISMATCH!\n"

l_.str.27:                              ; @.str.27
	.asciz	"  Expected (linear): "

l_.str.28:                              ; @.str.28
	.asciz	"  Got (tree):        "

l___func__._Z16test_equivalencexx:      ; @__func__._Z16test_equivalencexx
	.asciz	"test_equivalence"

l_.str.29:                              ; @.str.29
	.asciz	"bench_tree_reist.cpp"

l_.str.30:                              ; @.str.30
	.asciz	"false && \"Results don't match!\""

l_.str.31:                              ; @.str.31
	.asciz	"r_linear > -ctx.half && r_linear <= ctx.half"

l_.str.33:                              ; @.str.33
	.asciz	"T == q_linear * ctx.B + r_linear"

l_.str.35:                              ; @.str.35
	.asciz	"\n--- Complexity Analysis ---\n"

l_.str.36:                              ; @.str.36
	.asciz	"T="

l_.str.37:                              ; @.str.37
	.asciz	"Initial remainder R="

l_.str.38:                              ; @.str.38
	.asciz	"Corrections needed: k="

l_.str.39:                              ; @.str.39
	.asciz	"\nLinear method:\n"

l_.str.40:                              ; @.str.40
	.asciz	"  Critical path: O("

l_.str.41:                              ; @.str.41
	.asciz	") = "

l_.str.42:                              ; @.str.42
	.asciz	" sequential steps\n"

l_.str.43:                              ; @.str.43
	.asciz	"  Total work: "

l_.str.44:                              ; @.str.44
	.asciz	" corrections\n"

l_.str.45:                              ; @.str.45
	.asciz	"  Parallelism: None (fully sequential)\n"

l_.str.46:                              ; @.str.46
	.asciz	"\nTree method:\n"

l_.str.47:                              ; @.str.47
	.asciz	"  Critical path: O(log "

l_.str.48:                              ; @.str.48
	.asciz	" levels\n"

l_.str.49:                              ; @.str.49
	.asciz	" corrections (same)\n"

l_.str.50:                              ; @.str.50
	.asciz	"  Parallelism: Up to "

l_.str.51:                              ; @.str.51
	.asciz	" parallel evaluations\n"

l_.str.52:                              ; @.str.52
	.asciz	"\nTheoretical speedup: "

l_.str.53:                              ; @.str.53
	.asciz	"x\n"

l_.str.54:                              ; @.str.54
	.asciz	"(assuming perfect parallelization)\n"

l_.str.55:                              ; @.str.55
	.asciz	"\nSIMD Analysis (AVX2, 8-wide):\n"

l_.str.56:                              ; @.str.56
	.asciz	"  Evaluation phase: "

l_.str.57:                              ; @.str.57
	.asciz	" SIMD operations\n"

l_.str.58:                              ; @.str.58
	.asciz	"  Reduction phase: "

l_.str.59:                              ; @.str.59
	.asciz	"REIST Tree: Corrected Scalar Implementation\n"

l_.str.60:                              ; @.str.60
	.asciz	"============================================\n"

l_.str.61:                              ; @.str.61
	.asciz	"Using CEILING division for correct k calculation\n"

l_.str.62:                              ; @.str.62
	.asciz	"Independent evaluation: c_i = B if (R0 - i*B) > half\n\n"

l_.str.63:                              ; @.str.63
	.asciz	"All tests completed successfully! \342\234\223\n"

l_.str.64:                              ; @.str.64
	.asciz	"Initial: Q="

l_.str.65:                              ; @.str.65
	.asciz	", R="

l_.str.66:                              ; @.str.66
	.asciz	"Using linear correction (k too small)\n"

l_.str.67:                              ; @.str.67
	.asciz	"Correction terms: k="

l_.str.68:                              ; @.str.68
	.asciz	" terms of "

l_.str.69:                              ; @.str.69
	.asciz	" each\n"

l_.str.70:                              ; @.str.70
	.asciz	"Tree reduction:\n"

l_.str.71:                              ; @.str.71
	.asciz	"Total correction: "

l_.str.72:                              ; @.str.72
	.asciz	"After correction: R="

l_.str.73:                              ; @.str.73
	.asciz	"\342\232\240\357\270\217  Warning: "

l_.str.74:                              ; @.str.74
	.asciz	" final corrections needed!\n"

l_.str.75:                              ; @.str.75
	.asciz	"vector"

l_.str.76:                              ; @.str.76
	.asciz	"  Level "

l_.str.77:                              ; @.str.77
	.asciz	" (size="

l_.str.78:                              ; @.str.78
	.asciz	"): ["

l_.str.79:                              ; @.str.79
	.asciz	", "

l_.str.80:                              ; @.str.80
	.asciz	", ..."

l_.str.81:                              ; @.str.81
	.asciz	"]\n"

l_.str.82:                              ; @.str.82
	.asciz	" (size=1): ["

l_.str.83:                              ; @.str.83
	.asciz	"basic_string"

.subsections_via_symbols
